<#
.description
Functions used during Initialize-DevelopmentEnvironment
.notes
Scope is very weird inside SolutionScripts. AFAIK the only workaround is to
make all functions that will be directly called from the command line 
global.
#>

# Many assumptions are made that execution will stop on an error
# Without this, it's easy to trash working dev databases all the time, and
# harder to find the cause of an error
$ErrorActionPreference = "Stop"

# PathResolverRepositoryOverride should contain names of folders of each repo
# used by Powershell scripts in the project. For this project, we use -Common,
# -ODS, and -ODS-Implementation. Note that these must all exist in the same
# parents folders. This is an accomodation for a developer request to allow
# renaming the -ODS-Implementation repo (but, notably, not the other repos).
$ThisRepositoryName = Get-Item "$PSScriptRoot\..\.." | Select -Expand Name
$env:PathResolverRepositoryOverride = "Ed-Fi-Common;Ed-Fi-Ods;$ThisRepositoryName"
Get-Module -Name path-resolver | Remove-Module
Import-Module -Scope Global $PSScriptRoot\..\..\..\Ed-Fi-Common\logistics\scripts\modules\path-resolver.psm1

Import-Module -Force -Scope Global (Get-RepositoryResolvedPath "logistics\scripts\modules\DLP.EdFiDatabaseLifecycle.V1")
Import-Module -Force -Scope Global (Get-RepositoryResolvedPath "logistics\scripts\modules\EdFi.BusinessLogic.V1")
Import-Module -Force -Scope Global (Get-RepositoryResolvedPath "logistics\scripts\modules\database\database-management.psm1")

# The Update-SolutionScripts function exists in the SolutionScripts NuGet
# package. We also emulate it in Initialize-PowershellForDevelopment, which can
# be used which can be used outside of Visual Studio
Set-Alias -Scope Global initscript Update-SolutionScripts

function global:Initialize-DevelopmentEnvironment {
    param(
        [switch] $NoCompile,
        [switch] $NoResetDatabase
    )

    # Our psake scripts will throw if $error is not empty (this is a workaround for some TeamCity behavior).
    Write-Host -Foreground Cyan "Clearing `$error..."
    $error.clear()

    # Note: Recommend against this because it will not take effect until the next time this function is run
    #Update-SolutionScripts

    $tasks = @()

    if (-not $NoCompile) {
        # We only need the empty ODS DB for codegen
        if (-not $NoResetDatabase) {$tasks += @(Invoke-InitDevTask 'Reset-EmptyDatabase')}
        $tasks += @(Invoke-InitDevTask 'Restore-NuGetPackages')
        $tasks += @(Invoke-InitDevTask 'Rebuild-Solution')
    }

    if (-not $NoResetDatabase) {
		$tasks += @(Invoke-InitDevTask 'Reset-BulkLoadOdsDatabase')
        $tasks += @(Invoke-InitDevTask 'Remove-Sandboxes')
        $tasks += @(Invoke-InitDevTask 'Reset-SecurityDatabase')
        $tasks += @(Invoke-InitDevTask 'Reset-AdminDatabase')
        $tasks += @(Invoke-InitDevTask 'Reset-EdFiBulkDatabase')
        #$tasks += @(Invoke-InitDevTask 'Reset-PopulatedTemplate')
        $tasks += @(Invoke-InitDevTask 'Reset-MinimalTemplateDatabase')
    }

    $tasks
}
Set-Alias -Scope Global initdev Initialize-DevelopmentEnvironment
Function global:Restore-NuGetPackages {Invoke-InitDevTask 'Restore-NuGetPackages'}
Function global:Reset-EmptyDatabase {Invoke-InitDevTask 'Reset-EmptyDatabase'}
function global:Rebuild-Solution {Invoke-InitDevTask 'Rebuild-Solution'}
Function global:Remove-Sandboxes {Invoke-InitDevTask 'Remove-Sandboxes'}
Function global:Reset-SecurityDatabase {Invoke-InitDevTask 'Reset-SecurityDatabase'}
Function global:Reset-AdminDatabase {Invoke-InitDevTask 'Reset-AdminDatabase'}
function global:Reset-EdFiBulkDatabase {Invoke-InitDevTask 'Reset-EdFiBulkDatabase'}
Function global:Reset-PopulatedTemplate {Invoke-InitDevTask 'Reset-PopulatedTemplate'}
Function global:Reset-MinimalTemplateDatabase {Invoke-InitDevTask 'Reset-MinimalTemplateDatabase'}
function global:Reset-BulkLoadOdsDatabase {Invoke-InitDevTask 'Reset-BulkLoadOdsDatabase'}

function Invoke-InitDevTask {
    param(
        [Parameter(Mandatory=$true)] $taskName
    )
    Write-Host -Foreground Cyan "Invoking Task: $taskName"
    $start = Get-Date
    Invoke-Command -ScriptBlock $script:initdevTasks[$taskName] | Out-Host
    $end = Get-Date
    $minutes = '{0,10:N2}' -f $($end - $start | Select -Expand TotalMinutes)
    New-Object PSObject -property @{Task=$taskName; TotalMinutes=$minutes}
    if ($error) { throw "$($error.count) errors" }
}

$script:csbs = Get-CsbHashtableFromConfig (Get-RepositoryResolvedPath Application\EdFi.Ods.WebApi\Web.config)
$script:codeGenCsb = Get-DbConnectionStringBuilderFromConfig -configFile (Get-RepositoryResolvedPath Application\Templates\App.config) -connectionStringName "Ods" | Select -Expand Value
$script:edfiDatabaseIdTable = Get-EdFiDatabaseIdTable

$script:initdevTasks = @{
    'Restore-NuGetPackages' = {
        $solutionPath = Get-RepositoryResolvedPath "Application\Ed-Fi-Ods.sln"
        $nugetPath = Get-RepositoryResolvedPath "Application\.nuget\NuGet.exe"
        $configPath = Get-RepositoryResolvedPath "Application\.nuget\NuGet.config"
        $nugetCommandTemplate = '& "{0}" restore "{1}" -config "{2}"'
        $nugetCommand = $nugetCommandTemplate -f @($nugetPath, $solutionPath, $configPath)
        Write-Host "Starting NuGet Restore [$nugetCommand]" -ForegroundColor Cyan
        Invoke-Expression $nugetCommand | Write-Host

        $success = $LASTEXITCODE -eq 0
        if (-not $success) {
            throw "NuGet Package Restore Failed."
        }
    }
    'Rebuild-Solution' = {
        Param(
            [string] $buildConfiguration = "Debug",
            [int] $retryCount = 0
        )

        $msbuildPath2015 = "${env:ProgramFiles(x86)}\MSBuild\14.0\bin\MSBuild.exe"
        $msbuildPath2013 = "${env:ProgramFiles(x86)}\MSBuild\12.0\bin\MSBuild.exe"
        $msbuildPath2012 = "${env:WinDir}\Microsoft.NET\Framework\v4.0.30319\MSBuild.exe"
        # Order is very important here, 2015 is the only fully supported msbuild.
        # The other versions are checked and used as an unsupported convenience
        foreach ($possiblePath in @($msbuildPath2015, $msbuildPath2013, $msbuildPath2012)) {
            if (Test-Path $possiblePath) {
                $msbuildEXE = $possiblePath
                break
            }
        }

        $solutionPath = Get-RepositoryResolvedPath 'Application/Ed-Fi-Ods.sln'
        $msbuildCommandTemplate = '& "{0}" "{1}" "/verbosity:normal" "/target:rebuild" "/property:Configuration={2}" "/nr:false"'
        $msbuildCommand = $msbuildCommandTemplate -f @($msbuildEXE, $solutionPath,$buildConfiguration)

        $tryCounter = 0
        do {
            $tryCounter += 1
            if ($tryCounter -gt 1) {
                Write-Host "Retrying msbuild." -Fore Black -Back Yellow
            }
            Write-Host "Starting MSBUILD [$msbuildCommand]" -ForegroundColor Cyan
            Invoke-Expression $msbuildCommand | Write-Host
            $success = $LASTEXITCODE -eq 0
        } while (-not $success -and $tryCounter -le $retryCount)
        if (-not $success) {
            throw "MSBuild Failed."
        }
    }
    'Remove-Sandboxes' = {
        Remove-EdFiSandboxDatabases -masterCSB $script:CSBs[$edfiDatabaseIdTable.EdFiOdsMaster.DatabaseType] -edfiOdsTemplateCSB $script:CSBs[$edfiDatabaseIdTable.EdFiOds.DatabaseType]
    }
    'Reset-EmptyDatabase' = {
        $initdbArgs = @{
            csb = $script:codeGenCsb
            dbTypeName = $edfiDatabaseIdTable.EdFiOds.DatabaseType
            transient = $true
            ignoreMetadata = $true
        }
        $initdbArgs
        Initialize-EdFiDatabaseWithMigrations @initdbArgs
    }
	'Reset-BulkLoadOdsDatabase' = {
		$sourceCSB = $script:codeGenCsb
		$bulkOdsCSB = Get-DbConnectionStringBuilderFromTemplate -templateCSB $csbs[$edfiDatabaseIdTable.EdFiOds.DatabaseType] -replacementTokens "Ods_Bulk1"
		
		& $folders.activities.invoke('deployment/database/generate-bulkods.ps1') -sourceCSB $sourceCSB -bulkOdsCSB $bulkOdsCSB
		if ($error) {
			throw "$($error.count) errors"
		}
	}
    'Reset-EdFiBulkDatabase' = {
        $initdbArgs = @{
            csb = $script:csbs[$edfiDatabaseIdTable.EdFiOdsBulk.DatabaseType]
            dbTypeName = $edfiDatabaseIdTable.EdFiOdsBulk.DatabaseType
            transient = $true
            ignoreMetadata = $true
            applyEntityFrameworkMigrations = $true
        }
        Initialize-EdFiDatabaseWithMigrations @initdbArgs
    }
    'Reset-MinimalTemplateDatabase' = {
        $initdbArgs = @{
            csb = Get-DbConnectionStringBuilderFromTemplate -templateCSB $csbs[$edfiDatabaseIdTable.EdFiOds.DatabaseType] -replacementTokens "Ods_Minimal_Template"
            dbTypeName = $edfiDatabaseIdTable.EdFiOds.DatabaseType
            transient = $true
            ignoreMetadata = $true
            applyDescriptors = $true
            applyEdOrgs = $false
        }
        Initialize-EdFiDatabaseWithMigrations @initdbArgs
    }
    'Reset-SecurityDatabase' = {
        $initdbArgs = @{
            csb = $script:csbs[$edfiDatabaseIdTable.EdFiOdsSecurity.DatabaseType]
            dbTypeName = $edfiDatabaseIdTable.EdFiOdsSecurity.DatabaseType
            transient = $true
            ignoreMetadata = $true
            applyEntityFrameworkMigrations = $true
        }
        Initialize-EdFiDatabaseWithMigrations @initdbArgs
    }
    'Reset-AdminDatabase' = {
        $initdbArgs = @{
            csb = $script:csbs[$edfiDatabaseIdTable.EdFiOdsAdmin.DatabaseType]
            dbTypeName = $edfiDatabaseIdTable.EdFiOdsAdmin.DatabaseType
            transient = $true
            ignoreMetadata = $true
            applyEntityFrameworkMigrations = $true
        }
        Initialize-EdFiDatabaseWithMigrations @initdbArgs
    }
    'Reset-PopulatedTemplate' = {
        $initdbArgs = @{
            csb = Get-DbConnectionStringBuilderFromTemplate -templateCSB $csbs[$edfiDatabaseIdTable.EdFiOds.DatabaseType] -replacementTokens "Ods_Populated_Template"
            dbTypeName = $edfiDatabaseIdTable.EdFiOds.DatabaseType
            transient = $true
            ignoreMetadata = $true
            createByRestoringBackup = Get-EdFiOdsPopulatedTemplateBackupFile | Select -Expand FullName
        }
        Initialize-EdFiDatabaseWithMigrations @initdbArgs
    }
}

Export-ModuleMember -Function * -Alias *