-- Table [extension].[AidTypeDescriptor] --
CREATE TABLE [extension].[AidTypeDescriptor] (
    [AidTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [AidTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AidTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[AnonymizedStudent] --
CREATE TABLE [extension].[AnonymizedStudent] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [EducationOrganizationId] [INT] NULL,
    [CourseCode] [NVARCHAR](60) NULL,
    [SectionIdentifier] [NVARCHAR](255) NULL,
    [LocalCourseCode] [NVARCHAR](60) NULL,
    [SessionName] [NVARCHAR](60) NULL,
    [SchoolYear] [SMALLINT] NULL,
    [SchoolId] [INT] NULL,
    [SexDescriptorId] [INT] NULL,
    [GenderDescriptorId] [INT] NULL,
    [HispanicLatinoEthnicity] [BIT] NULL,
    [Section504Enrollment] [BIT] NULL,
    [ELLEnrollment] [BIT] NULL,
    [ESLEnrollment] [BIT] NULL,
    [SPEDEnrollment] [BIT] NULL,
    [TitleIEnrollment] [BIT] NULL,
    [AtriskIndicator] [BIT] NULL,
    [Mobility] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AnonymizedStudent_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [FactsAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudent] ADD CONSTRAINT [AnonymizedStudent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AnonymizedStudent] ADD CONSTRAINT [AnonymizedStudent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AnonymizedStudent] ADD CONSTRAINT [AnonymizedStudent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[AnonymizedStudentAcademicRecord] --
CREATE TABLE [extension].[AnonymizedStudentAcademicRecord] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [SessionGradePointAverage] [DECIMAL](18, 4) NULL,
    [CumulativeGradePointAverage] [DECIMAL](18, 4) NULL,
    [GPAMax] [DECIMAL](18, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AnonymizedStudentAcademicRecord_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentAcademicRecord] ADD CONSTRAINT [AnonymizedStudentAcademicRecord_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AnonymizedStudentAcademicRecord] ADD CONSTRAINT [AnonymizedStudentAcademicRecord_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AnonymizedStudentAcademicRecord] ADD CONSTRAINT [AnonymizedStudentAcademicRecord_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[AnonymizedStudentAssessment] --
CREATE TABLE [extension].[AnonymizedStudentAssessment] (
    [AdministrationDate] [DATE] NOT NULL,
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NULL,
    [AssessmentTitle] [NVARCHAR](60) NULL,
    [AssessmentCategoryDescriptorId] [INT] NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [CourseCode] [NVARCHAR](60) NULL,
    [EducationOrganizationId] [INT] NULL,
    [SectionIdentifier] [NVARCHAR](255) NULL,
    [LocalCourseCode] [NVARCHAR](60) NULL,
    [SessionName] [NVARCHAR](60) NULL,
    [SchoolYear] [SMALLINT] NULL,
    [SchoolId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AnonymizedStudentAssessment_PK] PRIMARY KEY CLUSTERED (
        [AdministrationDate] ASC,
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [AssessmentIdentifier] ASC,
        [FactsAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentAssessment] ADD CONSTRAINT [AnonymizedStudentAssessment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AnonymizedStudentAssessment] ADD CONSTRAINT [AnonymizedStudentAssessment_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AnonymizedStudentAssessment] ADD CONSTRAINT [AnonymizedStudentAssessment_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[AnonymizedStudentAssessmentPerformanceLevel] --
CREATE TABLE [extension].[AnonymizedStudentAssessmentPerformanceLevel] (
    [AdministrationDate] [DATE] NOT NULL,
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [PerformanceLevelMet] [BIT] NOT NULL,
    [PerformanceLevelDescriptorId] [INT] NOT NULL,
    [AssessmentReportingMethodDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AnonymizedStudentAssessmentPerformanceLevel_PK] PRIMARY KEY CLUSTERED (
        [AdministrationDate] ASC,
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [AssessmentIdentifier] ASC,
        [FactsAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentAssessmentPerformanceLevel] ADD CONSTRAINT [AnonymizedStudentAssessmentPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AnonymizedStudentAssessmentScoreResult] --
CREATE TABLE [extension].[AnonymizedStudentAssessmentScoreResult] (
    [AdministrationDate] [DATE] NOT NULL,
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentIdentifier] [NVARCHAR](60) NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [Result] [NVARCHAR](35) NOT NULL,
    [ResultDatatypeTypeDescriptorId] [INT] NOT NULL,
    [AssessmentReportingMethodDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AnonymizedStudentAssessmentScoreResult_PK] PRIMARY KEY CLUSTERED (
        [AdministrationDate] ASC,
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [AssessmentIdentifier] ASC,
        [FactsAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentAssessmentScoreResult] ADD CONSTRAINT [AnonymizedStudentAssessmentScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AnonymizedStudentCourseAssociation] --
CREATE TABLE [extension].[AnonymizedStudentCourseAssociation] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AnonymizedStudentCourseAssociation_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [BeginDate] ASC,
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentCourseAssociation] ADD CONSTRAINT [AnonymizedStudentCourseAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AnonymizedStudentCourseAssociation] ADD CONSTRAINT [AnonymizedStudentCourseAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AnonymizedStudentCourseAssociation] ADD CONSTRAINT [AnonymizedStudentCourseAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[AnonymizedStudentCourseTranscript] --
CREATE TABLE [extension].[AnonymizedStudentCourseTranscript] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [FinalLetterGradeEarned] [NVARCHAR](20) NULL,
    [FinalNumericGradeEarned] [DECIMAL](9, 2) NULL,
    [CourseRepeatCodeDescriptorId] [INT] NULL,
    [CourseTitle] [NVARCHAR](60) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AnonymizedStudentCourseTranscript_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentCourseTranscript] ADD CONSTRAINT [AnonymizedStudentCourseTranscript_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AnonymizedStudentCourseTranscript] ADD CONSTRAINT [AnonymizedStudentCourseTranscript_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AnonymizedStudentCourseTranscript] ADD CONSTRAINT [AnonymizedStudentCourseTranscript_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[AnonymizedStudentDisability] --
CREATE TABLE [extension].[AnonymizedStudentDisability] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [DisabilityDeterminationSourceTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AnonymizedStudentDisability_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [DisabilityDescriptorId] ASC,
        [FactsAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentDisability] ADD CONSTRAINT [AnonymizedStudentDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AnonymizedStudentDisabilityDesignation] --
CREATE TABLE [extension].[AnonymizedStudentDisabilityDesignation] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDesignationDescriptorId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AnonymizedStudentDisabilityDesignation_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [DisabilityDescriptorId] ASC,
        [DisabilityDesignationDescriptorId] ASC,
        [FactsAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentDisabilityDesignation] ADD CONSTRAINT [AnonymizedStudentDisabilityDesignation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AnonymizedStudentEducationOrganizationAssociation] --
CREATE TABLE [extension].[AnonymizedStudentEducationOrganizationAssociation] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AnonymizedStudentEducationOrganizationAssociation_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentEducationOrganizationAssociation] ADD CONSTRAINT [AnonymizedStudentEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AnonymizedStudentEducationOrganizationAssociation] ADD CONSTRAINT [AnonymizedStudentEducationOrganizationAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AnonymizedStudentEducationOrganizationAssociation] ADD CONSTRAINT [AnonymizedStudentEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[AnonymizedStudentLanguage] --
CREATE TABLE [extension].[AnonymizedStudentLanguage] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AnonymizedStudentLanguage_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [FactsAsOfDate] ASC,
        [LanguageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentLanguage] ADD CONSTRAINT [AnonymizedStudentLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AnonymizedStudentLanguageUse] --
CREATE TABLE [extension].[AnonymizedStudentLanguageUse] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [LanguageUseDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AnonymizedStudentLanguageUse_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [FactsAsOfDate] ASC,
        [LanguageDescriptorId] ASC,
        [LanguageUseDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentLanguageUse] ADD CONSTRAINT [AnonymizedStudentLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AnonymizedStudentRace] --
CREATE TABLE [extension].[AnonymizedStudentRace] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [RaceDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AnonymizedStudentRace_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [FactsAsOfDate] ASC,
        [RaceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentRace] ADD CONSTRAINT [AnonymizedStudentRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AnonymizedStudentSectionAssociation] --
CREATE TABLE [extension].[AnonymizedStudentSectionAssociation] (
    [AnonymizedStudentIdentifier] [NVARCHAR](60) NOT NULL,
    [AnonymizedStudentSchoolYear] [SMALLINT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [AnonymizedStudentSectionAssociation_PK] PRIMARY KEY CLUSTERED (
        [AnonymizedStudentIdentifier] ASC,
        [AnonymizedStudentSchoolYear] ASC,
        [BeginDate] ASC,
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AnonymizedStudentSectionAssociation] ADD CONSTRAINT [AnonymizedStudentSectionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AnonymizedStudentSectionAssociation] ADD CONSTRAINT [AnonymizedStudentSectionAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AnonymizedStudentSectionAssociation] ADD CONSTRAINT [AnonymizedStudentSectionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[Applicant] --
CREATE TABLE [extension].[Applicant] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [SexDescriptorId] [INT] NULL,
    [BirthDate] [DATE] NULL,
    [HispanicLatinoEthnicity] [BIT] NULL,
    [CitizenshipStatusDescriptorId] [INT] NULL,
    [HighestCompletedLevelOfEducationDescriptorId] [INT] NULL,
    [YearsOfPriorProfessionalExperience] [DECIMAL](5, 2) NULL,
    [YearsOfPriorTeachingExperience] [DECIMAL](5, 2) NULL,
    [LoginId] [NVARCHAR](60) NULL,
    [HighlyQualifiedTeacher] [BIT] NULL,
    [HighlyQualifiedAcademicSubjectDescriptorId] [INT] NULL,
    [ProspectIdentifier] [NVARCHAR](32) NULL,
    [ProspectEducationOrganizationId] [INT] NULL,
    [GenderDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [Applicant_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Applicant] ADD CONSTRAINT [Applicant_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Applicant] ADD CONSTRAINT [Applicant_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Applicant] ADD CONSTRAINT [Applicant_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[ApplicantAddress] --
CREATE TABLE [extension].[ApplicantAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantAddress] ADD CONSTRAINT [ApplicantAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantAddressPeriod] --
CREATE TABLE [extension].[ApplicantAddressPeriod] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantAddressPeriod_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantAddressPeriod] ADD CONSTRAINT [ApplicantAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantAid] --
CREATE TABLE [extension].[ApplicantAid] (
    [AidTypeDescriptorId] [INT] NOT NULL,
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [AidConditionDescription] [NVARCHAR](1024) NULL,
    [AidAmount] [MONEY] NULL,
    [PellGrantRecipient] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantAid_PK] PRIMARY KEY CLUSTERED (
        [AidTypeDescriptorId] ASC,
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [BeginDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantAid] ADD CONSTRAINT [ApplicantAid_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantBackgroundCheck] --
CREATE TABLE [extension].[ApplicantBackgroundCheck] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [BackgroundCheckTypeDescriptorId] [INT] NOT NULL,
    [BackgroundCheckRequestedDate] [DATE] NOT NULL,
    [BackgroundCheckStatusDescriptorId] [INT] NULL,
    [BackgroundCheckCompletedDate] [DATE] NULL,
    [Fingerprint] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantBackgroundCheck_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [BackgroundCheckTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantBackgroundCheck] ADD CONSTRAINT [ApplicantBackgroundCheck_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantCredential] --
CREATE TABLE [extension].[ApplicantCredential] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantCredential_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [CredentialIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantCredential] ADD CONSTRAINT [ApplicantCredential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantDisability] --
CREATE TABLE [extension].[ApplicantDisability] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [DisabilityDeterminationSourceTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantDisability_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [DisabilityDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantDisability] ADD CONSTRAINT [ApplicantDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantDisabilityDesignation] --
CREATE TABLE [extension].[ApplicantDisabilityDesignation] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDesignationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantDisabilityDesignation_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [DisabilityDescriptorId] ASC,
        [DisabilityDesignationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantDisabilityDesignation] ADD CONSTRAINT [ApplicantDisabilityDesignation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantElectronicMail] --
CREATE TABLE [extension].[ApplicantElectronicMail] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [ElectronicMailTypeDescriptorId] [INT] NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [PrimaryEmailAddressIndicator] [BIT] NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantElectronicMail_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [ElectronicMailTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantElectronicMail] ADD CONSTRAINT [ApplicantElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantIdentificationDocument] --
CREATE TABLE [extension].[ApplicantIdentificationDocument] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantIdentificationDocument] ADD CONSTRAINT [ApplicantIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantInternationalAddress] --
CREATE TABLE [extension].[ApplicantInternationalAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [AddressLine1] [NVARCHAR](150) NOT NULL,
    [AddressLine2] [NVARCHAR](150) NULL,
    [AddressLine3] [NVARCHAR](150) NULL,
    [AddressLine4] [NVARCHAR](150) NULL,
    [CountryDescriptorId] [INT] NOT NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantInternationalAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantInternationalAddress] ADD CONSTRAINT [ApplicantInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantLanguage] --
CREATE TABLE [extension].[ApplicantLanguage] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantLanguage_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [LanguageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantLanguage] ADD CONSTRAINT [ApplicantLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantLanguageUse] --
CREATE TABLE [extension].[ApplicantLanguageUse] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [LanguageUseDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantLanguageUse_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [LanguageDescriptorId] ASC,
        [LanguageUseDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantLanguageUse] ADD CONSTRAINT [ApplicantLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantPersonalIdentificationDocument] --
CREATE TABLE [extension].[ApplicantPersonalIdentificationDocument] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantPersonalIdentificationDocument] ADD CONSTRAINT [ApplicantPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantRace] --
CREATE TABLE [extension].[ApplicantRace] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [RaceDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantRace_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [RaceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantRace] ADD CONSTRAINT [ApplicantRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantScoreResult] --
CREATE TABLE [extension].[ApplicantScoreResult] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [AssessmentReportingMethodDescriptorId] [INT] NOT NULL,
    [Result] [NVARCHAR](35) NOT NULL,
    [ResultDatatypeTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantScoreResult_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [AssessmentReportingMethodDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantScoreResult] ADD CONSTRAINT [ApplicantScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantStaffIdentificationCode] --
CREATE TABLE [extension].[ApplicantStaffIdentificationCode] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [StaffIdentificationSystemDescriptorId] [INT] NOT NULL,
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [AssigningOrganizationIdentificationCode] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantStaffIdentificationCode_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [StaffIdentificationSystemDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantStaffIdentificationCode] ADD CONSTRAINT [ApplicantStaffIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantTeacherPreparationProgram] --
CREATE TABLE [extension].[ApplicantTeacherPreparationProgram] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [TeacherPreparationProgramIdentifier] [NVARCHAR](75) NULL,
    [TeacherPreparationProgramTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [MajorSpecialization] [NVARCHAR](75) NOT NULL,
    [GPA] [DECIMAL](18, 4) NULL,
    [LevelOfDegreeAwardedDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantTeacherPreparationProgram_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] ADD CONSTRAINT [ApplicantTeacherPreparationProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantTeacherPreparationProgramAddress] --
CREATE TABLE [extension].[ApplicantTeacherPreparationProgramAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantTeacherPreparationProgramAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] ADD CONSTRAINT [ApplicantTeacherPreparationProgramAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantTeacherPreparationProgramAddressPeriod] --
CREATE TABLE [extension].[ApplicantTeacherPreparationProgramAddressPeriod] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantTeacherPreparationProgramAddressPeriod_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [BeginDate] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddressPeriod] ADD CONSTRAINT [ApplicantTeacherPreparationProgramAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantTelephone] --
CREATE TABLE [extension].[ApplicantTelephone] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [TelephoneNumberTypeDescriptorId] [INT] NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [OrderOfPriority] [INT] NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantTelephone_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [TelephoneNumberTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantTelephone] ADD CONSTRAINT [ApplicantTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ApplicantVisa] --
CREATE TABLE [extension].[ApplicantVisa] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [VisaDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ApplicantVisa_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [VisaDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ApplicantVisa] ADD CONSTRAINT [ApplicantVisa_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[AssessmentExtension] --
CREATE TABLE [extension].[AssessmentExtension] (
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [AssessedGradeLevelDescriptorId] [INT] NOT NULL,
    [AssessmentTitle] [NVARCHAR](60) NOT NULL,
    [AssessmentVersion] [INT] NOT NULL,
    [ProgramGatewayDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [AssessmentExtension_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [AssessedGradeLevelDescriptorId] ASC,
        [AssessmentTitle] ASC,
        [AssessmentVersion] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AssessmentExtension] ADD CONSTRAINT [AssessmentExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[BackgroundCheckStatusDescriptor] --
CREATE TABLE [extension].[BackgroundCheckStatusDescriptor] (
    [BackgroundCheckStatusDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BackgroundCheckStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[BackgroundCheckTypeDescriptor] --
CREATE TABLE [extension].[BackgroundCheckTypeDescriptor] (
    [BackgroundCheckTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BackgroundCheckTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[BoardCertificationTypeDescriptor] --
CREATE TABLE [extension].[BoardCertificationTypeDescriptor] (
    [BoardCertificationTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [BoardCertificationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BoardCertificationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[CertificationExamTypeDescriptor] --
CREATE TABLE [extension].[CertificationExamTypeDescriptor] (
    [CertificationExamTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [CertificationExamTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CertificationExamTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[CourseCourseTranscriptFacts] --
CREATE TABLE [extension].[CourseCourseTranscriptFacts] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [CourseTitle] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CourseCourseTranscriptFacts_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseCourseTranscriptFacts] ADD CONSTRAINT [CourseCourseTranscriptFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CourseCourseTranscriptFacts] ADD CONSTRAINT [CourseCourseTranscriptFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CourseCourseTranscriptFacts] ADD CONSTRAINT [CourseCourseTranscriptFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned] --
CREATE TABLE [extension].[CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [FinalLetterGrade] [NVARCHAR](20) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [LetterGradeTypeNumber] [INT] NULL,
    [LetterGradeTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [FinalLetterGrade] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned] ADD CONSTRAINT [CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseCourseTranscriptFactsAggregatedNumericGradeEarned] --
CREATE TABLE [extension].[CourseCourseTranscriptFactsAggregatedNumericGradeEarned] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AverageFinalNumericGradeEarned] [DECIMAL](9, 2) NOT NULL,
    [NumericGradeNCount] [INT] NULL,
    [NumericGradeStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseCourseTranscriptFactsAggregatedNumericGradeEarned_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseCourseTranscriptFactsAggregatedNumericGradeEarned] ADD CONSTRAINT [CourseCourseTranscriptFactsAggregatedNumericGradeEarned_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseCourseTranscriptFactsStudentsEnrolled] --
CREATE TABLE [extension].[CourseCourseTranscriptFactsStudentsEnrolled] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseCourseTranscriptFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseCourseTranscriptFactsStudentsEnrolled] ADD CONSTRAINT [CourseCourseTranscriptFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentAcademicRecordFacts] --
CREATE TABLE [extension].[CourseStudentAcademicRecordFacts] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AggregatedGPAMax] [DECIMAL](18, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CourseStudentAcademicRecordFacts_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAcademicRecordFacts] ADD CONSTRAINT [CourseStudentAcademicRecordFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CourseStudentAcademicRecordFacts] ADD CONSTRAINT [CourseStudentAcademicRecordFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CourseStudentAcademicRecordFacts] ADD CONSTRAINT [CourseStudentAcademicRecordFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] --
CREATE TABLE [extension].[CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [GradePointAverage] [DECIMAL](18, 4) NOT NULL,
    [GradePointNCount] [INT] NULL,
    [GradePointStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] ADD CONSTRAINT [CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage] --
CREATE TABLE [extension].[CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [GradePointAverage] [DECIMAL](18, 4) NOT NULL,
    [GradePointNCount] [INT] NULL,
    [GradePointStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage] ADD CONSTRAINT [CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentAcademicRecordFactsStudentsEnrolled] --
CREATE TABLE [extension].[CourseStudentAcademicRecordFactsStudentsEnrolled] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentAcademicRecordFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAcademicRecordFactsStudentsEnrolled] ADD CONSTRAINT [CourseStudentAcademicRecordFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentAssessmentFacts] --
CREATE TABLE [extension].[CourseStudentAssessmentFacts] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentTitle] [NVARCHAR](60) NULL,
    [AssessmentCategoryDescriptorId] [INT] NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [AdministrationDate] [DATE] NULL,
    [TermDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CourseStudentAssessmentFacts_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAssessmentFacts] ADD CONSTRAINT [CourseStudentAssessmentFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CourseStudentAssessmentFacts] ADD CONSTRAINT [CourseStudentAssessmentFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CourseStudentAssessmentFacts] ADD CONSTRAINT [CourseStudentAssessmentFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] --
CREATE TABLE [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [PerformanceLevelDescriptorId] [INT] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [PerformanceLevelMetNumber] [INT] NULL,
    [PerformanceLevelMetPercentage] [DECIMAL](5, 4) NULL,
    [PerformanceLevelTypeNumber] [INT] NULL,
    [PerformanceLevelTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentAssessmentFactsAggregatedPerformanceLevel_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [PerformanceLevelDescriptorId] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] ADD CONSTRAINT [CourseStudentAssessmentFactsAggregatedPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] --
CREATE TABLE [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentReportingMethodDescriptorId] [INT] NOT NULL,
    [AverageScoreResultDatatypeTypeDescriptorId] [INT] NOT NULL,
    [AverageScoreResult] [NVARCHAR](35) NOT NULL,
    [ScoreNCount] [INT] NULL,
    [ScoreStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentAssessmentFactsAggregatedScoreResult_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] ADD CONSTRAINT [CourseStudentAssessmentFactsAggregatedScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentAssessmentFactsStudentsEnrolled] --
CREATE TABLE [extension].[CourseStudentAssessmentFactsStudentsEnrolled] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentAssessmentFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentAssessmentFactsStudentsEnrolled] ADD CONSTRAINT [CourseStudentAssessmentFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFacts] --
CREATE TABLE [extension].[CourseStudentFacts] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CourseStudentFacts_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFacts] ADD CONSTRAINT [CourseStudentFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CourseStudentFacts] ADD CONSTRAINT [CourseStudentFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CourseStudentFacts] ADD CONSTRAINT [CourseStudentFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedByDisability] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedByDisability] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TypeNumber] [INT] NULL,
    [Percentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedByDisability_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [DisabilityDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedByDisability] ADD CONSTRAINT [CourseStudentFactsAggregatedByDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [StudentsDisabledNumber] [INT] NULL,
    [StudentsDisabledPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled] ADD CONSTRAINT [CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedELLEnrollment] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedELLEnrollment] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [ELLEnrollmentNumber] [INT] NULL,
    [ELLEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedELLEnrollment_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedELLEnrollment] ADD CONSTRAINT [CourseStudentFactsAggregatedELLEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedESLEnrollment] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedESLEnrollment] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [ESLEnrollmentNumber] [INT] NULL,
    [ESLEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedESLEnrollment_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedESLEnrollment] ADD CONSTRAINT [CourseStudentFactsAggregatedESLEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedGender] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedGender] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [GenderDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [GenderTypeNumber] [INT] NULL,
    [GenderTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedGender_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [GenderDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedGender] ADD CONSTRAINT [CourseStudentFactsAggregatedGender_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [HispanicLatinoEthnicity] [BIT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [HispanicLatinoEthnicityNumber] [INT] NULL,
    [HispanicLatinoEthnicityPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedHispanicLatinoEthnicity_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [HispanicLatinoEthnicity] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] ADD CONSTRAINT [CourseStudentFactsAggregatedHispanicLatinoEthnicity_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedLanguage] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedLanguage] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [LanguageTypeNumber] [INT] NULL,
    [LanguageTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedLanguage_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [LanguageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedLanguage] ADD CONSTRAINT [CourseStudentFactsAggregatedLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedRace] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedRace] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [RaceDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [RaceTypeNumber] [INT] NULL,
    [RaceTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedRace_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [RaceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedRace] ADD CONSTRAINT [CourseStudentFactsAggregatedRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolFoodServiceProgramServiceDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TypeNumber] [INT] NULL,
    [TypePercentage] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedSchoolFoodServiceProgramService_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolFoodServiceProgramServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] ADD CONSTRAINT [CourseStudentFactsAggregatedSchoolFoodServiceProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedSection504Enrollment] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedSection504Enrollment] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [Number504Enrolled] [INT] NULL,
    [Percentage504Enrolled] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedSection504Enrollment_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedSection504Enrollment] ADD CONSTRAINT [CourseStudentFactsAggregatedSection504Enrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedSex] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedSex] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SexDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [SexTypeNumber] [INT] NULL,
    [SexTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedSex_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SexDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedSex] ADD CONSTRAINT [CourseStudentFactsAggregatedSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedSPED] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedSPED] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [SPEDEnrollmentNumber] [INT] NULL,
    [SPEDEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedSPED_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedSPED] ADD CONSTRAINT [CourseStudentFactsAggregatedSPED_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsAggregatedTitleIEnrollment] --
CREATE TABLE [extension].[CourseStudentFactsAggregatedTitleIEnrollment] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TitleIEnrollmentNumber] [INT] NULL,
    [TitleIEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsAggregatedTitleIEnrollment_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsAggregatedTitleIEnrollment] ADD CONSTRAINT [CourseStudentFactsAggregatedTitleIEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseStudentFactsStudentsEnrolled] --
CREATE TABLE [extension].[CourseStudentFactsStudentsEnrolled] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseStudentFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseStudentFactsStudentsEnrolled] ADD CONSTRAINT [CourseStudentFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseSurveyQuestionResponseFacts] --
CREATE TABLE [extension].[CourseSurveyQuestionResponseFacts] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CourseSurveyQuestionResponseFacts_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseSurveyQuestionResponseFacts] ADD CONSTRAINT [CourseSurveyQuestionResponseFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CourseSurveyQuestionResponseFacts] ADD CONSTRAINT [CourseSurveyQuestionResponseFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CourseSurveyQuestionResponseFacts] ADD CONSTRAINT [CourseSurveyQuestionResponseFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[CourseSurveyQuestionResponseFactsAggregatedNumericResponse] --
CREATE TABLE [extension].[CourseSurveyQuestionResponseFactsAggregatedNumericResponse] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseSurveyQuestionResponseFactsAggregatedNumericResponse_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseSurveyQuestionResponseFactsAggregatedNumericResponse] ADD CONSTRAINT [CourseSurveyQuestionResponseFactsAggregatedNumericResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] --
CREATE TABLE [extension].[CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] (
    [AggregatedMatrixElement] [NVARCHAR](50) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_PK] PRIMARY KEY CLUSTERED (
        [AggregatedMatrixElement] ASC,
        [AverageNumericResponse] ASC,
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] ADD CONSTRAINT [CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CourseSurveyResponseFacts] --
CREATE TABLE [extension].[CourseSurveyResponseFacts] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CourseSurveyResponseFacts_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseSurveyResponseFacts] ADD CONSTRAINT [CourseSurveyResponseFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CourseSurveyResponseFacts] ADD CONSTRAINT [CourseSurveyResponseFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CourseSurveyResponseFacts] ADD CONSTRAINT [CourseSurveyResponseFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[CourseSurveySectionResponseRatingFacts] --
CREATE TABLE [extension].[CourseSurveySectionResponseRatingFacts] (
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [CourseSurveySectionResponseRatingFacts_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseSurveySectionResponseRatingFacts] ADD CONSTRAINT [CourseSurveySectionResponseRatingFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CourseSurveySectionResponseRatingFacts] ADD CONSTRAINT [CourseSurveySectionResponseRatingFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CourseSurveySectionResponseRatingFacts] ADD CONSTRAINT [CourseSurveySectionResponseRatingFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[CourseSurveySectionResponseRatingFactsAggregatedNumericResponse] --
CREATE TABLE [extension].[CourseSurveySectionResponseRatingFactsAggregatedNumericResponse] (
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CourseSurveySectionResponseRatingFactsAggregatedNumericResponse_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CourseSurveySectionResponseRatingFactsAggregatedNumericResponse] ADD CONSTRAINT [CourseSurveySectionResponseRatingFactsAggregatedNumericResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CredentialBoardCertification] --
CREATE TABLE [extension].[CredentialBoardCertification] (
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [BoardCertification] [BIT] NULL,
    [BoardCertificationDate] [DATE] NULL,
    [BoardCertificationTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CredentialBoardCertification_PK] PRIMARY KEY CLUSTERED (
        [CredentialIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CredentialBoardCertification] ADD CONSTRAINT [CredentialBoardCertification_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CredentialCertificationExam] --
CREATE TABLE [extension].[CredentialCertificationExam] (
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [CertificationExamTitle] [NVARCHAR](60) NOT NULL,
    [CertificationExamTypeDescriptorId] [INT] NULL,
    [CertificationExamOverallScore] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CredentialCertificationExam_PK] PRIMARY KEY CLUSTERED (
        [CredentialIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CredentialCertificationExam] ADD CONSTRAINT [CredentialCertificationExam_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CredentialExtension] --
CREATE TABLE [extension].[CredentialExtension] (
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [CurrentCredential] [BIT] NULL,
    [RevocationDate] [DATE] NULL,
    [RevocationReason] [NVARCHAR](40) NULL,
    [SuspensionDate] [DATE] NULL,
    [SuspensionReason] [NVARCHAR](40) NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CredentialExtension_PK] PRIMARY KEY CLUSTERED (
        [CredentialIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CredentialExtension] ADD CONSTRAINT [CredentialExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CredentialRecommendation] --
CREATE TABLE [extension].[CredentialRecommendation] (
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [CredentialFieldDescriptorId] [INT] NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [TeachingCredentialDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CredentialRecommendation_PK] PRIMARY KEY CLUSTERED (
        [CredentialIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CredentialRecommendation] ADD CONSTRAINT [CredentialRecommendation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[CredentialRecommendingInstitution] --
CREATE TABLE [extension].[CredentialRecommendingInstitution] (
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [RecommendingInstutionName] [NVARCHAR](75) NOT NULL,
    [RecommendingDate] [DATE] NULL,
    [RecommendingInstitutionCountryDescriptorId] [INT] NULL,
    [RecommendingInstitutionStateAbbreviationDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [CredentialRecommendingInstitution_PK] PRIMARY KEY CLUSTERED (
        [CredentialIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CredentialRecommendingInstitution] ADD CONSTRAINT [CredentialRecommendingInstitution_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationCourseTranscriptFacts] --
CREATE TABLE [extension].[EducationOrganizationCourseTranscriptFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [CourseTitle] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationCourseTranscriptFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFacts] ADD CONSTRAINT [EducationOrganizationCourseTranscriptFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFacts] ADD CONSTRAINT [EducationOrganizationCourseTranscriptFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFacts] ADD CONSTRAINT [EducationOrganizationCourseTranscriptFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned] --
CREATE TABLE [extension].[EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [FinalLetterGrade] [NVARCHAR](20) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [LetterGradeTypeNumber] [INT] NULL,
    [LetterGradeTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [FinalLetterGrade] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned] ADD CONSTRAINT [EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned] --
CREATE TABLE [extension].[EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AverageFinalNumericGradeEarned] [DECIMAL](9, 2) NOT NULL,
    [NumericGradeNCount] [INT] NULL,
    [NumericGradeStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned] ADD CONSTRAINT [EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationCourseTranscriptFactsStudentsEnrolled] --
CREATE TABLE [extension].[EducationOrganizationCourseTranscriptFactsStudentsEnrolled] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationCourseTranscriptFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFactsStudentsEnrolled] ADD CONSTRAINT [EducationOrganizationCourseTranscriptFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationFacts] --
CREATE TABLE [extension].[EducationOrganizationFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [NumberAdministratorsEmployed] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [NumberTeachersEmployed] [INT] NULL,
    [PercentStudentsFreeReducedLunch] [DECIMAL](5, 4) NULL,
    [PercentStudentsLimitedEnglishProficiency] [DECIMAL](5, 4) NULL,
    [PercentStudentsSpecialEducation] [DECIMAL](5, 4) NULL,
    [HiringRate] [DECIMAL](5, 4) NULL,
    [RetentionRate] [DECIMAL](5, 4) NULL,
    [RetirementRate] [DECIMAL](5, 4) NULL,
    [AverageYearsInDistrictEmployed] [DECIMAL](5, 2) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationFacts] ADD CONSTRAINT [EducationOrganizationFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationFacts] ADD CONSTRAINT [EducationOrganizationFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationFacts] ADD CONSTRAINT [EducationOrganizationFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationFactsAggregatedSalary] --
CREATE TABLE [extension].[EducationOrganizationFactsAggregatedSalary] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [AverageSalary] [MONEY] NOT NULL,
    [CountOfSalariesAveraged] [INT] NULL,
    [StandardDeviation] [INT] NULL,
    [SalaryMinRange] [INT] NULL,
    [SalaryMaxRange] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationFactsAggregatedSalary_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationFactsAggregatedSalary] ADD CONSTRAINT [EducationOrganizationFactsAggregatedSalary_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationFactsVacancies] --
CREATE TABLE [extension].[EducationOrganizationFactsVacancies] (
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberOfVacancies] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationFactsVacancies_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationFactsVacancies] ADD CONSTRAINT [EducationOrganizationFactsVacancies_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentAcademicRecordFacts] --
CREATE TABLE [extension].[EducationOrganizationStudentAcademicRecordFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AggregatedGPAMax] [DECIMAL](18, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAcademicRecordFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFacts] ADD CONSTRAINT [EducationOrganizationStudentAcademicRecordFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFacts] ADD CONSTRAINT [EducationOrganizationStudentAcademicRecordFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFacts] ADD CONSTRAINT [EducationOrganizationStudentAcademicRecordFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] --
CREATE TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [GradePointAverage] [DECIMAL](18, 4) NOT NULL,
    [GradePointNCount] [INT] NULL,
    [GradePointStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] ADD CONSTRAINT [EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage] --
CREATE TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [GradePointAverage] [DECIMAL](18, 4) NOT NULL,
    [GradePointNCount] [INT] NULL,
    [GradePointStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage] ADD CONSTRAINT [EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled] --
CREATE TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled] ADD CONSTRAINT [EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentAssessmentFacts] --
CREATE TABLE [extension].[EducationOrganizationStudentAssessmentFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentTitle] [NVARCHAR](60) NULL,
    [AssessmentCategoryDescriptorId] [INT] NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [AdministrationDate] [DATE] NULL,
    [TermDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAssessmentFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] ADD CONSTRAINT [EducationOrganizationStudentAssessmentFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] ADD CONSTRAINT [EducationOrganizationStudentAssessmentFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] ADD CONSTRAINT [EducationOrganizationStudentAssessmentFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] --
CREATE TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [PerformanceLevelDescriptorId] [INT] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [PerformanceLevelMetNumber] [INT] NULL,
    [PerformanceLevelMetPercentage] [DECIMAL](5, 4) NULL,
    [PerformanceLevelTypeNumber] [INT] NULL,
    [PerformanceLevelTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [PerformanceLevelDescriptorId] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] ADD CONSTRAINT [EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] --
CREATE TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentReportingMethodDescriptorId] [INT] NOT NULL,
    [AverageScoreResultDatatypeTypeDescriptorId] [INT] NOT NULL,
    [AverageScoreResult] [NVARCHAR](35) NOT NULL,
    [ScoreNCount] [INT] NULL,
    [ScoreStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAssessmentFactsAggregatedScoreResult_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] ADD CONSTRAINT [EducationOrganizationStudentAssessmentFactsAggregatedScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentAssessmentFactsStudentsEnrolled] --
CREATE TABLE [extension].[EducationOrganizationStudentAssessmentFactsStudentsEnrolled] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentAssessmentFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsStudentsEnrolled] ADD CONSTRAINT [EducationOrganizationStudentAssessmentFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFacts] --
CREATE TABLE [extension].[EducationOrganizationStudentFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFacts] ADD CONSTRAINT [EducationOrganizationStudentFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFacts] ADD CONSTRAINT [EducationOrganizationStudentFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFacts] ADD CONSTRAINT [EducationOrganizationStudentFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedByDisability] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedByDisability] (
    [DisabilityDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TypeNumber] [INT] NULL,
    [Percentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedByDisability_PK] PRIMARY KEY CLUSTERED (
        [DisabilityDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedByDisability] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedByDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [StudentsDisabledNumber] [INT] NULL,
    [StudentsDisabledPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedELLEnrollment] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedELLEnrollment] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [ELLEnrollmentNumber] [INT] NULL,
    [ELLEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedELLEnrollment_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedELLEnrollment] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedELLEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedESLEnrollment] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedESLEnrollment] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [ESLEnrollmentNumber] [INT] NULL,
    [ESLEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedESLEnrollment_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedESLEnrollment] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedESLEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedGender] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedGender] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [GenderDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [GenderTypeNumber] [INT] NULL,
    [GenderTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedGender_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [GenderDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedGender] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedGender_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [HispanicLatinoEthnicity] [BIT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [HispanicLatinoEthnicityNumber] [INT] NULL,
    [HispanicLatinoEthnicityPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [HispanicLatinoEthnicity] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedLanguage] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedLanguage] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [LanguageTypeNumber] [INT] NULL,
    [LanguageTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedLanguage_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [LanguageDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedLanguage] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedRace] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedRace] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [RaceDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [RaceTypeNumber] [INT] NULL,
    [RaceTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedRace_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [RaceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedRace] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolFoodServiceProgramServiceDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TypeNumber] [INT] NULL,
    [TypePercentage] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolFoodServiceProgramServiceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedSection504Enrollment] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedSection504Enrollment] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [Number504Enrolled] [INT] NULL,
    [Percentage504Enrolled] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedSection504Enrollment_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSection504Enrollment] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedSection504Enrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedSex] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedSex] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SexDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [SexTypeNumber] [INT] NULL,
    [SexTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedSex_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SexDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSex] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedSPED] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedSPED] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [SPEDEnrollmentNumber] [INT] NULL,
    [SPEDEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedSPED_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSPED] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedSPED_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsAggregatedTitleIEnrollment] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsAggregatedTitleIEnrollment] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TitleIEnrollmentNumber] [INT] NULL,
    [TitleIEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsAggregatedTitleIEnrollment_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedTitleIEnrollment] ADD CONSTRAINT [EducationOrganizationStudentFactsAggregatedTitleIEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationStudentFactsStudentsEnrolled] --
CREATE TABLE [extension].[EducationOrganizationStudentFactsStudentsEnrolled] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationStudentFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationStudentFactsStudentsEnrolled] ADD CONSTRAINT [EducationOrganizationStudentFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationSurveyQuestionResponseFacts] --
CREATE TABLE [extension].[EducationOrganizationSurveyQuestionResponseFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationSurveyQuestionResponseFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFacts] ADD CONSTRAINT [EducationOrganizationSurveyQuestionResponseFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFacts] ADD CONSTRAINT [EducationOrganizationSurveyQuestionResponseFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFacts] ADD CONSTRAINT [EducationOrganizationSurveyQuestionResponseFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse] --
CREATE TABLE [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse] ADD CONSTRAINT [EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] --
CREATE TABLE [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] (
    [AggregatedMatrixElement] [NVARCHAR](50) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_PK] PRIMARY KEY CLUSTERED (
        [AggregatedMatrixElement] ASC,
        [AverageNumericResponse] ASC,
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] ADD CONSTRAINT [EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EducationOrganizationSurveyResponseFacts] --
CREATE TABLE [extension].[EducationOrganizationSurveyResponseFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationSurveyResponseFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyResponseFacts] ADD CONSTRAINT [EducationOrganizationSurveyResponseFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyResponseFacts] ADD CONSTRAINT [EducationOrganizationSurveyResponseFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationSurveyResponseFacts] ADD CONSTRAINT [EducationOrganizationSurveyResponseFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationSurveySectionResponseRatingFacts] --
CREATE TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFacts] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [EducationOrganizationSurveySectionResponseRatingFacts_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFacts] ADD CONSTRAINT [EducationOrganizationSurveySectionResponseRatingFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFacts] ADD CONSTRAINT [EducationOrganizationSurveySectionResponseRatingFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFacts] ADD CONSTRAINT [EducationOrganizationSurveySectionResponseRatingFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse] --
CREATE TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactsAsOfDate] ASC,
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse] ADD CONSTRAINT [EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[EnglishLanguageExamDescriptor] --
CREATE TABLE [extension].[EnglishLanguageExamDescriptor] (
    [EnglishLanguageExamDescriptorId] [INT] NOT NULL,
    CONSTRAINT [EnglishLanguageExamDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EnglishLanguageExamDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[ExternalCourseTranscript] --
CREATE TABLE [extension].[ExternalCourseTranscript] (
    [ExternalCourseCode] [NVARCHAR](60) NOT NULL,
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CourseAttemptResultDescriptorId] [INT] NOT NULL,
    [AttemptedCredits] [DECIMAL](9, 3) NULL,
    [AttemptedCreditTypeDescriptorId] [INT] NULL,
    [AttemptedCreditConversion] [DECIMAL](9, 2) NULL,
    [EarnedCredits] [DECIMAL](9, 3) NOT NULL,
    [EarnedCreditTypeDescriptorId] [INT] NULL,
    [EarnedCreditConversion] [DECIMAL](9, 2) NULL,
    [WhenTakenGradeLevelDescriptorId] [INT] NULL,
    [OfferedGradeLevelDescriptorId] [INT] NULL,
    [MethodCreditEarnedDescriptorId] [INT] NULL,
    [FinalLetterGradeEarned] [NVARCHAR](20) NULL,
    [FinalNumericGradeEarned] [DECIMAL](9, 2) NULL,
    [CourseRepeatCodeDescriptorId] [INT] NULL,
    [CourseCode] [NVARCHAR](60) NULL,
    [CourseEducationOrganizationId] [INT] NULL,
    [ExternalCourseTitle] [NVARCHAR](60) NOT NULL,
    [AlternativeCourseTitle] [NVARCHAR](60) NULL,
    [AlternativeCourseCode] [NVARCHAR](60) NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [CareerPathwayDescriptorId] [INT] NULL,
    [CourseDescription] [NVARCHAR](1024) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ExternalCourseTranscript_PK] PRIMARY KEY CLUSTERED (
        [ExternalCourseCode] ASC,
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalCourseTranscript] ADD CONSTRAINT [ExternalCourseTranscript_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ExternalCourseTranscript] ADD CONSTRAINT [ExternalCourseTranscript_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ExternalCourseTranscript] ADD CONSTRAINT [ExternalCourseTranscript_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[ExternalCourseTranscriptCourseIdentificationCode] --
CREATE TABLE [extension].[ExternalCourseTranscriptCourseIdentificationCode] (
    [CourseIdentificationSystemDescriptorId] [INT] NOT NULL,
    [ExternalCourseCode] [NVARCHAR](60) NOT NULL,
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [AssigningOrganizationIdentificationCode] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalCourseTranscriptCourseIdentificationCode_PK] PRIMARY KEY CLUSTERED (
        [CourseIdentificationSystemDescriptorId] ASC,
        [ExternalCourseCode] ASC,
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalCourseTranscriptCourseIdentificationCode] ADD CONSTRAINT [ExternalCourseTranscriptCourseIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] --
CREATE TABLE [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] (
    [CourseLevelCharacteristicDescriptorId] [INT] NOT NULL,
    [ExternalCourseCode] [NVARCHAR](60) NOT NULL,
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalCourseTranscriptCourseLevelCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [CourseLevelCharacteristicDescriptorId] ASC,
        [ExternalCourseCode] ASC,
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] ADD CONSTRAINT [ExternalCourseTranscriptCourseLevelCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] --
CREATE TABLE [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] (
    [AdditionalCreditTypeDescriptorId] [INT] NOT NULL,
    [ExternalCourseCode] [NVARCHAR](60) NOT NULL,
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [Credits] [DECIMAL](9, 3) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalCourseTranscriptEarnedAdditionalCredits_PK] PRIMARY KEY CLUSTERED (
        [AdditionalCreditTypeDescriptorId] ASC,
        [ExternalCourseCode] ASC,
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [ExternalCourseTranscriptEarnedAdditionalCredits_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalEducationOrganization] --
CREATE TABLE [extension].[ExternalEducationOrganization] (
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [ShortNameOfInstitution] [NVARCHAR](75) NULL,
    [WebSite] [NVARCHAR](255) NULL,
    [OperationalStatusDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ExternalEducationOrganization_PK] PRIMARY KEY CLUSTERED (
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalEducationOrganization] ADD CONSTRAINT [ExternalEducationOrganization_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ExternalEducationOrganization] ADD CONSTRAINT [ExternalEducationOrganization_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ExternalEducationOrganization] ADD CONSTRAINT [ExternalEducationOrganization_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[ExternalEducationOrganizationAddress] --
CREATE TABLE [extension].[ExternalEducationOrganizationAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalEducationOrganizationAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalEducationOrganizationAddress] ADD CONSTRAINT [ExternalEducationOrganizationAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalEducationOrganizationAddressPeriod] --
CREATE TABLE [extension].[ExternalEducationOrganizationAddressPeriod] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalEducationOrganizationAddressPeriod_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [BeginDate] ASC,
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalEducationOrganizationAddressPeriod] ADD CONSTRAINT [ExternalEducationOrganizationAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalEducationOrganizationCategory] --
CREATE TABLE [extension].[ExternalEducationOrganizationCategory] (
    [EducationOrganizationCategoryDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalEducationOrganizationCategory_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationCategoryDescriptorId] ASC,
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalEducationOrganizationCategory] ADD CONSTRAINT [ExternalEducationOrganizationCategory_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalEducationOrganizationIdentificationCode] --
CREATE TABLE [extension].[ExternalEducationOrganizationIdentificationCode] (
    [EducationOrganizationIdentificationSystemDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalEducationOrganizationIdentificationCode_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationIdentificationSystemDescriptorId] ASC,
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalEducationOrganizationIdentificationCode] ADD CONSTRAINT [ExternalEducationOrganizationIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalEducationOrganizationInstitutionTelephone] --
CREATE TABLE [extension].[ExternalEducationOrganizationInstitutionTelephone] (
    [InstitutionTelephoneNumberTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalEducationOrganizationInstitutionTelephone_PK] PRIMARY KEY CLUSTERED (
        [InstitutionTelephoneNumberTypeDescriptorId] ASC,
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalEducationOrganizationInstitutionTelephone] ADD CONSTRAINT [ExternalEducationOrganizationInstitutionTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalEducationOrganizationInternationalAddress] --
CREATE TABLE [extension].[ExternalEducationOrganizationInternationalAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [AddressLine1] [NVARCHAR](150) NOT NULL,
    [AddressLine2] [NVARCHAR](150) NULL,
    [AddressLine3] [NVARCHAR](150) NULL,
    [AddressLine4] [NVARCHAR](150) NULL,
    [CountryDescriptorId] [INT] NOT NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalEducationOrganizationInternationalAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [NameOfInstitution] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalEducationOrganizationInternationalAddress] ADD CONSTRAINT [ExternalEducationOrganizationInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalStudentAcademicRecord] --
CREATE TABLE [extension].[ExternalStudentAcademicRecord] (
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [CumulativeEarnedCredits] [DECIMAL](9, 3) NULL,
    [CumulativeEarnedCreditTypeDescriptorId] [INT] NULL,
    [CumulativeEarnedCreditConversion] [DECIMAL](9, 2) NULL,
    [CumulativeAttemptedCredits] [DECIMAL](9, 3) NULL,
    [CumulativeAttemptedCreditTypeDescriptorId] [INT] NULL,
    [CumulativeAttemptedCreditConversion] [DECIMAL](9, 2) NULL,
    [CumulativeGradePointsEarned] [DECIMAL](18, 4) NULL,
    [CumulativeGradePointAverage] [DECIMAL](18, 4) NULL,
    [GradeValueQualifier] [NVARCHAR](80) NULL,
    [ProjectedGraduationDate] [DATE] NULL,
    [SessionEarnedCredits] [DECIMAL](9, 3) NULL,
    [SessionEarnedCreditTypeDescriptorId] [INT] NULL,
    [SessionEarnedCreditConversion] [DECIMAL](9, 2) NULL,
    [SessionAttemptedCredits] [DECIMAL](9, 3) NULL,
    [SessionAttemptedCreditTypeDescriptorId] [INT] NULL,
    [SessionAttemptedCreditConversion] [DECIMAL](9, 2) NULL,
    [SessionGradePointsEarned] [DECIMAL](18, 4) NULL,
    [SessionGradePointAverage] [DECIMAL](18, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ExternalStudentAcademicRecord_PK] PRIMARY KEY CLUSTERED (
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalStudentAcademicRecord] ADD CONSTRAINT [ExternalStudentAcademicRecord_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ExternalStudentAcademicRecord] ADD CONSTRAINT [ExternalStudentAcademicRecord_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ExternalStudentAcademicRecord] ADD CONSTRAINT [ExternalStudentAcademicRecord_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[ExternalStudentAcademicRecordAcademicHonor] --
CREATE TABLE [extension].[ExternalStudentAcademicRecordAcademicHonor] (
    [AcademicHonorCategoryDescriptorId] [INT] NOT NULL,
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [HonorDescription] [NVARCHAR](80) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AchievementTitle] [NVARCHAR](60) NULL,
    [AchievementCategoryDescriptorId] [INT] NULL,
    [AchievementCategorySystem] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerOriginURL] [NVARCHAR](255) NULL,
    [Criteria] [NVARCHAR](150) NULL,
    [CriteriaURL] [NVARCHAR](255) NULL,
    [EvidenceStatement] [NVARCHAR](150) NULL,
    [ImageURL] [NVARCHAR](255) NULL,
    [HonorAwardDate] [DATE] NULL,
    [HonorAwardExpiresDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalStudentAcademicRecordAcademicHonor_PK] PRIMARY KEY CLUSTERED (
        [AcademicHonorCategoryDescriptorId] ASC,
        [ExternalTerm] ASC,
        [HonorDescription] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalStudentAcademicRecordAcademicHonor] ADD CONSTRAINT [ExternalStudentAcademicRecordAcademicHonor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalStudentAcademicRecordClassRanking] --
CREATE TABLE [extension].[ExternalStudentAcademicRecordClassRanking] (
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [ClassRank] [INT] NOT NULL,
    [TotalNumberInClass] [INT] NOT NULL,
    [PercentageRanking] [INT] NULL,
    [ClassRankingDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalStudentAcademicRecordClassRanking_PK] PRIMARY KEY CLUSTERED (
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalStudentAcademicRecordClassRanking] ADD CONSTRAINT [ExternalStudentAcademicRecordClassRanking_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalStudentAcademicRecordDiploma] --
CREATE TABLE [extension].[ExternalStudentAcademicRecordDiploma] (
    [DiplomaAwardDate] [DATE] NOT NULL,
    [DiplomaTypeDescriptorId] [INT] NOT NULL,
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AchievementTitle] [NVARCHAR](60) NULL,
    [AchievementCategoryDescriptorId] [INT] NULL,
    [AchievementCategorySystem] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerOriginURL] [NVARCHAR](255) NULL,
    [Criteria] [NVARCHAR](150) NULL,
    [CriteriaURL] [NVARCHAR](255) NULL,
    [EvidenceStatement] [NVARCHAR](150) NULL,
    [ImageURL] [NVARCHAR](255) NULL,
    [DiplomaLevelDescriptorId] [INT] NULL,
    [CTECompleter] [BIT] NULL,
    [DiplomaDescription] [NVARCHAR](80) NULL,
    [DiplomaAwardExpiresDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalStudentAcademicRecordDiploma_PK] PRIMARY KEY CLUSTERED (
        [DiplomaAwardDate] ASC,
        [DiplomaTypeDescriptorId] ASC,
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalStudentAcademicRecordDiploma] ADD CONSTRAINT [ExternalStudentAcademicRecordDiploma_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ExternalStudentAcademicRecordRecognition] --
CREATE TABLE [extension].[ExternalStudentAcademicRecordRecognition] (
    [ExternalTerm] [NVARCHAR](75) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [RecognitionTypeDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [AchievementTitle] [NVARCHAR](60) NULL,
    [AchievementCategoryDescriptorId] [INT] NULL,
    [AchievementCategorySystem] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerOriginURL] [NVARCHAR](255) NULL,
    [Criteria] [NVARCHAR](150) NULL,
    [CriteriaURL] [NVARCHAR](255) NULL,
    [EvidenceStatement] [NVARCHAR](150) NULL,
    [ImageURL] [NVARCHAR](255) NULL,
    [RecognitionDescription] [NVARCHAR](80) NULL,
    [RecognitionAwardDate] [DATE] NULL,
    [RecognitionAwardExpiresDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ExternalStudentAcademicRecordRecognition_PK] PRIMARY KEY CLUSTERED (
        [ExternalTerm] ASC,
        [NameOfInstitution] ASC,
        [RecognitionTypeDescriptorId] ASC,
        [SchoolYear] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ExternalStudentAcademicRecordRecognition] ADD CONSTRAINT [ExternalStudentAcademicRecordRecognition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[FieldworkTypeDescriptor] --
CREATE TABLE [extension].[FieldworkTypeDescriptor] (
    [FieldworkTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [FieldworkTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FieldworkTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[GenderDescriptor] --
CREATE TABLE [extension].[GenderDescriptor] (
    [GenderDescriptorId] [INT] NOT NULL,
    CONSTRAINT [GenderDescriptor_PK] PRIMARY KEY CLUSTERED (
        [GenderDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[GradebookEntryExtension] --
CREATE TABLE [extension].[GradebookEntryExtension] (
    [DateAssigned] [DATE] NOT NULL,
    [GradebookEntryTitle] [NVARCHAR](60) NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [DueDate] [DATE] NULL,
    [ProgramGatewayDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [GradebookEntryExtension_PK] PRIMARY KEY CLUSTERED (
        [DateAssigned] ASC,
        [GradebookEntryTitle] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[GradebookEntryExtension] ADD CONSTRAINT [GradebookEntryExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[LevelOfDegreeAwardedDescriptor] --
CREATE TABLE [extension].[LevelOfDegreeAwardedDescriptor] (
    [LevelOfDegreeAwardedDescriptorId] [INT] NOT NULL,
    CONSTRAINT [LevelOfDegreeAwardedDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LevelOfDegreeAwardedDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[LevelTypeDescriptor] --
CREATE TABLE [extension].[LevelTypeDescriptor] (
    [LevelTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [LevelTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LevelTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[PerformanceMeasure] --
CREATE TABLE [extension].[PerformanceMeasure] (
    [PerformanceMeasureIdentifier] [NVARCHAR](64) NOT NULL,
    [PerformanceMeasureTypeDescriptorId] [INT] NOT NULL,
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [CourseCode] [NVARCHAR](60) NULL,
    [EducationOrganizationId] [INT] NULL,
    [ScheduleDateOfPerformanceMeasure] [DATE] NULL,
    [ActualDateOfPerformanceMeasure] [DATE] NOT NULL,
    [TimeOfPerformanceMeasure] [TIME](7) NULL,
    [DurationOfPerformanceMeasure] [INT] NULL,
    [Announced] [BIT] NULL,
    [CoteachingObserved] [BIT] NULL,
    [Comments] [NVARCHAR](1024) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PerformanceMeasure_PK] PRIMARY KEY CLUSTERED (
        [PerformanceMeasureIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasure] ADD CONSTRAINT [PerformanceMeasure_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[PerformanceMeasure] ADD CONSTRAINT [PerformanceMeasure_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[PerformanceMeasure] ADD CONSTRAINT [PerformanceMeasure_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[PerformanceMeasureFacts] --
CREATE TABLE [extension].[PerformanceMeasureFacts] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [PerformanceMeasureTypeDescriptorId] [INT] NOT NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [PerformanceMeasureFacts_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [RubricEducationOrganizationId] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasureFacts] ADD CONSTRAINT [PerformanceMeasureFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[PerformanceMeasureFacts] ADD CONSTRAINT [PerformanceMeasureFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[PerformanceMeasureFacts] ADD CONSTRAINT [PerformanceMeasureFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[PerformanceMeasureFactsGradeLevel] --
CREATE TABLE [extension].[PerformanceMeasureFactsGradeLevel] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [PerformanceMeasureFactsGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [GradeLevelDescriptorId] ASC,
        [RubricEducationOrganizationId] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasureFactsGradeLevel] ADD CONSTRAINT [PerformanceMeasureFactsGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[PerformanceMeasureGradeLevel] --
CREATE TABLE [extension].[PerformanceMeasureGradeLevel] (
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [PerformanceMeasureIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [PerformanceMeasureGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelDescriptorId] ASC,
        [PerformanceMeasureIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasureGradeLevel] ADD CONSTRAINT [PerformanceMeasureGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[PerformanceMeasurePersonBeingReviewed] --
CREATE TABLE [extension].[PerformanceMeasurePersonBeingReviewed] (
    [PerformanceMeasureIdentifier] [NVARCHAR](64) NOT NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NULL,
    [ProspectEducationOrganizationId] [INT] NULL,
    [PersonBeingReviewedStaffUSI] [INT] NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [PerformanceMeasurePersonBeingReviewed_PK] PRIMARY KEY CLUSTERED (
        [PerformanceMeasureIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasurePersonBeingReviewed] ADD CONSTRAINT [PerformanceMeasurePersonBeingReviewed_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[PerformanceMeasureProgramGateway] --
CREATE TABLE [extension].[PerformanceMeasureProgramGateway] (
    [PerformanceMeasureIdentifier] [NVARCHAR](64) NOT NULL,
    [ProgramGatewayDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [PerformanceMeasureProgramGateway_PK] PRIMARY KEY CLUSTERED (
        [PerformanceMeasureIdentifier] ASC,
        [ProgramGatewayDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasureProgramGateway] ADD CONSTRAINT [PerformanceMeasureProgramGateway_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[PerformanceMeasureReviewer] --
CREATE TABLE [extension].[PerformanceMeasureReviewer] (
    [FirstName] [NVARCHAR](75) NOT NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [PerformanceMeasureIdentifier] [NVARCHAR](64) NOT NULL,
    [ReviewerStaffUSI] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [PerformanceMeasureReviewer_PK] PRIMARY KEY CLUSTERED (
        [FirstName] ASC,
        [LastSurname] ASC,
        [PerformanceMeasureIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasureReviewer] ADD CONSTRAINT [PerformanceMeasureReviewer_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[PerformanceMeasureReviewerReceivedTraining] --
CREATE TABLE [extension].[PerformanceMeasureReviewerReceivedTraining] (
    [FirstName] [NVARCHAR](75) NOT NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [PerformanceMeasureIdentifier] [NVARCHAR](64) NOT NULL,
    [ReceivedTrainingDate] [DATE] NULL,
    [InterRaterReliabilityScore] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [PerformanceMeasureReviewerReceivedTraining_PK] PRIMARY KEY CLUSTERED (
        [FirstName] ASC,
        [LastSurname] ASC,
        [PerformanceMeasureIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PerformanceMeasureReviewerReceivedTraining] ADD CONSTRAINT [PerformanceMeasureReviewerReceivedTraining_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[PerformanceMeasureTypeDescriptor] --
CREATE TABLE [extension].[PerformanceMeasureTypeDescriptor] (
    [PerformanceMeasureTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PerformanceMeasureTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PerformanceMeasureTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[PreviousCareerDescriptor] --
CREATE TABLE [extension].[PreviousCareerDescriptor] (
    [PreviousCareerDescriptorId] [INT] NOT NULL,
    CONSTRAINT [PreviousCareerDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PreviousCareerDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[ProfessionalDevelopmentEvent] --
CREATE TABLE [extension].[ProfessionalDevelopmentEvent] (
    [ProfessionalDevelopmentTitle] [NVARCHAR](60) NOT NULL,
    [ProfessionalDevelopmentOfferedByDescriptorId] [INT] NOT NULL,
    [TotalHours] [INT] NULL,
    [Required] [BIT] NULL,
    [MultipleSession] [BIT] NULL,
    [ProfessionalDevelopmentReason] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ProfessionalDevelopmentEvent_PK] PRIMARY KEY CLUSTERED (
        [ProfessionalDevelopmentTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProfessionalDevelopmentEvent] ADD CONSTRAINT [ProfessionalDevelopmentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ProfessionalDevelopmentEvent] ADD CONSTRAINT [ProfessionalDevelopmentEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ProfessionalDevelopmentEvent] ADD CONSTRAINT [ProfessionalDevelopmentEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[ProfessionalDevelopmentOfferedByDescriptor] --
CREATE TABLE [extension].[ProfessionalDevelopmentOfferedByDescriptor] (
    [ProfessionalDevelopmentOfferedByDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProfessionalDevelopmentOfferedByDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProfessionalDevelopmentOfferedByDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[ProgramGatewayDescriptor] --
CREATE TABLE [extension].[ProgramGatewayDescriptor] (
    [ProgramGatewayDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ProgramGatewayDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramGatewayDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[Prospect] --
CREATE TABLE [extension].[Prospect] (
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [Applied] [BIT] NULL,
    [HispanicLatinoEthnicity] [BIT] NULL,
    [Met] [BIT] NULL,
    [Notes] [NVARCHAR](255) NULL,
    [PreScreeningRating] [INT] NULL,
    [Referral] [BIT] NULL,
    [ReferredBy] [NVARCHAR](50) NULL,
    [SexDescriptorId] [INT] NULL,
    [SocialMediaUserName] [NVARCHAR](50) NULL,
    [SocialMediaNetworkName] [NVARCHAR](50) NULL,
    [GenderDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [Prospect_PK] PRIMARY KEY CLUSTERED (
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Prospect] ADD CONSTRAINT [Prospect_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Prospect] ADD CONSTRAINT [Prospect_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Prospect] ADD CONSTRAINT [Prospect_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[ProspectCredential] --
CREATE TABLE [extension].[ProspectCredential] (
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectCredential_PK] PRIMARY KEY CLUSTERED (
        [CredentialIdentifier] ASC,
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectCredential] ADD CONSTRAINT [ProspectCredential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectCurrentPosition] --
CREATE TABLE [extension].[ProspectCurrentPosition] (
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [Location] [NVARCHAR](75) NOT NULL,
    [PositionTitle] [NVARCHAR](100) NOT NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectCurrentPosition_PK] PRIMARY KEY CLUSTERED (
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectCurrentPosition] ADD CONSTRAINT [ProspectCurrentPosition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectCurrentPositionGradeLevel] --
CREATE TABLE [extension].[ProspectCurrentPositionGradeLevel] (
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectCurrentPositionGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelDescriptorId] ASC,
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] ADD CONSTRAINT [ProspectCurrentPositionGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectDisability] --
CREATE TABLE [extension].[ProspectDisability] (
    [DisabilityDescriptorId] [INT] NOT NULL,
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [DisabilityDeterminationSourceTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectDisability_PK] PRIMARY KEY CLUSTERED (
        [DisabilityDescriptorId] ASC,
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectDisability] ADD CONSTRAINT [ProspectDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectDisabilityDesignation] --
CREATE TABLE [extension].[ProspectDisabilityDesignation] (
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDesignationDescriptorId] [INT] NOT NULL,
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectDisabilityDesignation_PK] PRIMARY KEY CLUSTERED (
        [DisabilityDescriptorId] ASC,
        [DisabilityDesignationDescriptorId] ASC,
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectDisabilityDesignation] ADD CONSTRAINT [ProspectDisabilityDesignation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectPersonalIdentificationDocument] --
CREATE TABLE [extension].[ProspectPersonalIdentificationDocument] (
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectPersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC,
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectPersonalIdentificationDocument] ADD CONSTRAINT [ProspectPersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectProfessionalDevelopmentEventAttendance] --
CREATE TABLE [extension].[ProspectProfessionalDevelopmentEventAttendance] (
    [AttendanceDate] [DATE] NOT NULL,
    [ProfessionalDevelopmentTitle] [NVARCHAR](60) NOT NULL,
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [AttendanceEventCategoryDescriptorId] [INT] NOT NULL,
    [AttendanceEventReason] [NVARCHAR](40) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [ProspectProfessionalDevelopmentEventAttendance_PK] PRIMARY KEY CLUSTERED (
        [AttendanceDate] ASC,
        [ProfessionalDevelopmentTitle] ASC,
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [ProspectProfessionalDevelopmentEventAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ProspectProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [ProspectProfessionalDevelopmentEventAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ProspectProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [ProspectProfessionalDevelopmentEventAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[ProspectQualifications] --
CREATE TABLE [extension].[ProspectQualifications] (
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [Eligible] [BIT] NOT NULL,
    [CapacityToServe] [BIT] NULL,
    [YearsOfServiceCurrentPlacement] [DECIMAL](5, 2) NULL,
    [YearsOfServiceTotal] [DECIMAL](5, 2) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectQualifications_PK] PRIMARY KEY CLUSTERED (
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectQualifications] ADD CONSTRAINT [ProspectQualifications_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectRace] --
CREATE TABLE [extension].[ProspectRace] (
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [RaceDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectRace_PK] PRIMARY KEY CLUSTERED (
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC,
        [RaceDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectRace] ADD CONSTRAINT [ProspectRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectRecruitmentEvent] --
CREATE TABLE [extension].[ProspectRecruitmentEvent] (
    [EventDate] [DATE] NOT NULL,
    [EventTitle] [NVARCHAR](50) NOT NULL,
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectRecruitmentEvent_PK] PRIMARY KEY CLUSTERED (
        [EventDate] ASC,
        [EventTitle] ASC,
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectRecruitmentEvent] ADD CONSTRAINT [ProspectRecruitmentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectTelephone] --
CREATE TABLE [extension].[ProspectTelephone] (
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [TelephoneNumberTypeDescriptorId] [INT] NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [OrderOfPriority] [INT] NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectTelephone_PK] PRIMARY KEY CLUSTERED (
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC,
        [TelephoneNumberTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectTelephone] ADD CONSTRAINT [ProspectTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ProspectTouchpoint] --
CREATE TABLE [extension].[ProspectTouchpoint] (
    [ProspectEducationOrganizationId] [INT] NOT NULL,
    [ProspectIdentifier] [NVARCHAR](32) NOT NULL,
    [TouchpointContent] [NVARCHAR](255) NOT NULL,
    [TouchpointDate] [DATE] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [ProspectTouchpoint_PK] PRIMARY KEY CLUSTERED (
        [ProspectEducationOrganizationId] ASC,
        [ProspectIdentifier] ASC,
        [TouchpointContent] ASC,
        [TouchpointDate] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProspectTouchpoint] ADD CONSTRAINT [ProspectTouchpoint_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[QuestionFormDescriptor] --
CREATE TABLE [extension].[QuestionFormDescriptor] (
    [QuestionFormDescriptorId] [INT] NOT NULL,
    CONSTRAINT [QuestionFormDescriptor_PK] PRIMARY KEY CLUSTERED (
        [QuestionFormDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[RecruitmentEvent] --
CREATE TABLE [extension].[RecruitmentEvent] (
    [EventDate] [DATE] NOT NULL,
    [EventTitle] [NVARCHAR](50) NOT NULL,
    [EventDescription] [NVARCHAR](255) NULL,
    [EventLocation] [NVARCHAR](255) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [RecruitmentEvent_PK] PRIMARY KEY CLUSTERED (
        [EventDate] ASC,
        [EventTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RecruitmentEvent] ADD CONSTRAINT [RecruitmentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[RecruitmentEvent] ADD CONSTRAINT [RecruitmentEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[RecruitmentEvent] ADD CONSTRAINT [RecruitmentEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[Rubric] --
CREATE TABLE [extension].[Rubric] (
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [RubricDescription] [NVARCHAR](255) NULL,
    [InterRaterReliabilityScore] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [Rubric_PK] PRIMARY KEY CLUSTERED (
        [RubricEducationOrganizationId] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Rubric] ADD CONSTRAINT [Rubric_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Rubric] ADD CONSTRAINT [Rubric_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Rubric] ADD CONSTRAINT [Rubric_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[RubricLevel] --
CREATE TABLE [extension].[RubricLevel] (
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricLevelCode] [NVARCHAR](20) NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [RubricLevel_PK] PRIMARY KEY CLUSTERED (
        [RubricEducationOrganizationId] ASC,
        [RubricLevelCode] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RubricLevel] ADD CONSTRAINT [RubricLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[RubricLevel] ADD CONSTRAINT [RubricLevel_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[RubricLevel] ADD CONSTRAINT [RubricLevel_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[RubricLevelInformation] --
CREATE TABLE [extension].[RubricLevelInformation] (
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricLevelCode] [NVARCHAR](20) NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [LevelTypeDescriptorId] [INT] NOT NULL,
    [LevelTitle] [NVARCHAR](60) NOT NULL,
    [LevelDescription] [NVARCHAR](255) NULL,
    [MinimumScore] [NVARCHAR](35) NULL,
    [MaximumScore] [NVARCHAR](35) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [RubricLevelInformation_PK] PRIMARY KEY CLUSTERED (
        [RubricEducationOrganizationId] ASC,
        [RubricLevelCode] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RubricLevelInformation] ADD CONSTRAINT [RubricLevelInformation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[RubricLevelResponse] --
CREATE TABLE [extension].[RubricLevelResponse] (
    [PerformanceMeasureIdentifier] [NVARCHAR](64) NOT NULL,
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricLevelCode] [NVARCHAR](20) NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [NumericResponse] [INT] NOT NULL,
    [TextResponse] [NVARCHAR](255) NULL,
    [AreaOfRefinement] [BIT] NULL,
    [AreaOfReinforcement] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [RubricLevelResponse_PK] PRIMARY KEY CLUSTERED (
        [PerformanceMeasureIdentifier] ASC,
        [RubricEducationOrganizationId] ASC,
        [RubricLevelCode] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RubricLevelResponse] ADD CONSTRAINT [RubricLevelResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[RubricLevelResponse] ADD CONSTRAINT [RubricLevelResponse_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[RubricLevelResponse] ADD CONSTRAINT [RubricLevelResponse_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[RubricLevelResponseFacts] --
CREATE TABLE [extension].[RubricLevelResponseFacts] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricLevelCode] [NVARCHAR](20) NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [RubricLevelResponseFacts_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [RubricEducationOrganizationId] ASC,
        [RubricLevelCode] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RubricLevelResponseFacts] ADD CONSTRAINT [RubricLevelResponseFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[RubricLevelResponseFacts] ADD CONSTRAINT [RubricLevelResponseFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[RubricLevelResponseFacts] ADD CONSTRAINT [RubricLevelResponseFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[RubricLevelResponseFactsAggregatedNumericResponse] --
CREATE TABLE [extension].[RubricLevelResponseFactsAggregatedNumericResponse] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricLevelCode] [NVARCHAR](20) NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [RubricLevelResponseFactsAggregatedNumericResponse_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [RubricEducationOrganizationId] ASC,
        [RubricLevelCode] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC,
        [SchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RubricLevelResponseFactsAggregatedNumericResponse] ADD CONSTRAINT [RubricLevelResponseFactsAggregatedNumericResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[RubricLevelTheme] --
CREATE TABLE [extension].[RubricLevelTheme] (
    [RubricEducationOrganizationId] [INT] NOT NULL,
    [RubricLevelCode] [NVARCHAR](20) NOT NULL,
    [RubricTitle] [NVARCHAR](60) NOT NULL,
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [ThemeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [RubricLevelTheme_PK] PRIMARY KEY CLUSTERED (
        [RubricEducationOrganizationId] ASC,
        [RubricLevelCode] ASC,
        [RubricTitle] ASC,
        [RubricTypeDescriptorId] ASC,
        [ThemeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RubricLevelTheme] ADD CONSTRAINT [RubricLevelTheme_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[RubricTypeDescriptor] --
CREATE TABLE [extension].[RubricTypeDescriptor] (
    [RubricTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [RubricTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RubricTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[SalaryTypeDescriptor] --
CREATE TABLE [extension].[SalaryTypeDescriptor] (
    [SalaryTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SalaryTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SalaryTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[SectionCourseTranscriptFacts] --
CREATE TABLE [extension].[SectionCourseTranscriptFacts] (
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [CourseTitle] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionCourseTranscriptFacts_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionCourseTranscriptFacts] ADD CONSTRAINT [SectionCourseTranscriptFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SectionCourseTranscriptFacts] ADD CONSTRAINT [SectionCourseTranscriptFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SectionCourseTranscriptFacts] ADD CONSTRAINT [SectionCourseTranscriptFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned] --
CREATE TABLE [extension].[SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned] (
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [FinalLetterGrade] [NVARCHAR](20) NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [LetterGradeTypeNumber] [INT] NULL,
    [LetterGradeTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [FinalLetterGrade] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned] ADD CONSTRAINT [SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionCourseTranscriptFactsAggregatedNumericGradeEarned] --
CREATE TABLE [extension].[SectionCourseTranscriptFactsAggregatedNumericGradeEarned] (
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [AverageFinalNumericGradeEarned] [DECIMAL](9, 2) NOT NULL,
    [NumericGradeNCount] [INT] NULL,
    [NumericGradeStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionCourseTranscriptFactsAggregatedNumericGradeEarned_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionCourseTranscriptFactsAggregatedNumericGradeEarned] ADD CONSTRAINT [SectionCourseTranscriptFactsAggregatedNumericGradeEarned_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionCourseTranscriptFactsStudentsEnrolled] --
CREATE TABLE [extension].[SectionCourseTranscriptFactsStudentsEnrolled] (
    [FactAsOfDate] [DATE] NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionCourseTranscriptFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionCourseTranscriptFactsStudentsEnrolled] ADD CONSTRAINT [SectionCourseTranscriptFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentAcademicRecordFacts] --
CREATE TABLE [extension].[SectionStudentAcademicRecordFacts] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [AggregatedGPAMax] [DECIMAL](18, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionStudentAcademicRecordFacts_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAcademicRecordFacts] ADD CONSTRAINT [SectionStudentAcademicRecordFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SectionStudentAcademicRecordFacts] ADD CONSTRAINT [SectionStudentAcademicRecordFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SectionStudentAcademicRecordFacts] ADD CONSTRAINT [SectionStudentAcademicRecordFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] --
CREATE TABLE [extension].[SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [GradePointAverage] [DECIMAL](18, 4) NOT NULL,
    [GradePointNCount] [INT] NULL,
    [GradePointStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] ADD CONSTRAINT [SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage] --
CREATE TABLE [extension].[SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [GradePointAverage] [DECIMAL](18, 4) NOT NULL,
    [GradePointNCount] [INT] NULL,
    [GradePointStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage] ADD CONSTRAINT [SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentAcademicRecordFactsStudentsEnrolled] --
CREATE TABLE [extension].[SectionStudentAcademicRecordFactsStudentsEnrolled] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentAcademicRecordFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAcademicRecordFactsStudentsEnrolled] ADD CONSTRAINT [SectionStudentAcademicRecordFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentAssessmentFacts] --
CREATE TABLE [extension].[SectionStudentAssessmentFacts] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentTitle] [NVARCHAR](60) NULL,
    [AssessmentCategoryDescriptorId] [INT] NULL,
    [AcademicSubjectDescriptorId] [INT] NULL,
    [GradeLevelDescriptorId] [INT] NULL,
    [AdministrationDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionStudentAssessmentFacts_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAssessmentFacts] ADD CONSTRAINT [SectionStudentAssessmentFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SectionStudentAssessmentFacts] ADD CONSTRAINT [SectionStudentAssessmentFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SectionStudentAssessmentFacts] ADD CONSTRAINT [SectionStudentAssessmentFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] --
CREATE TABLE [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [PerformanceLevelDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [PerformanceLevelMetNumber] [INT] NULL,
    [PerformanceLevelMetPercentage] [DECIMAL](5, 4) NULL,
    [PerformanceLevelTypeNumber] [INT] NULL,
    [PerformanceLevelTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentAssessmentFactsAggregatedPerformanceLevel_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [PerformanceLevelDescriptorId] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] ADD CONSTRAINT [SectionStudentAssessmentFactsAggregatedPerformanceLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] --
CREATE TABLE [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [AssessmentReportingMethodDescriptorId] [INT] NOT NULL,
    [AverageScoreResultDatatypeTypeDescriptorId] [INT] NOT NULL,
    [AverageScoreResult] [NVARCHAR](35) NOT NULL,
    [ScoreNCount] [INT] NULL,
    [ScoreStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentAssessmentFactsAggregatedScoreResult_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] ADD CONSTRAINT [SectionStudentAssessmentFactsAggregatedScoreResult_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentAssessmentFactsStudentsEnrolled] --
CREATE TABLE [extension].[SectionStudentAssessmentFactsStudentsEnrolled] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [TakenSchoolYear] [SMALLINT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentAssessmentFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [TakenSchoolYear] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentAssessmentFactsStudentsEnrolled] ADD CONSTRAINT [SectionStudentAssessmentFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFacts] --
CREATE TABLE [extension].[SectionStudentFacts] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionStudentFacts_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFacts] ADD CONSTRAINT [SectionStudentFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SectionStudentFacts] ADD CONSTRAINT [SectionStudentFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SectionStudentFacts] ADD CONSTRAINT [SectionStudentFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedByDisability] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedByDisability] (
    [DisabilityDescriptorId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TypeNumber] [INT] NULL,
    [Percentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedByDisability_PK] PRIMARY KEY CLUSTERED (
        [DisabilityDescriptorId] ASC,
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedByDisability] ADD CONSTRAINT [SectionStudentFactsAggregatedByDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [StudentsDisabledNumber] [INT] NULL,
    [StudentsDisabledPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled] ADD CONSTRAINT [SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedELLEnrollment] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedELLEnrollment] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [ELLEnrollmentNumber] [INT] NULL,
    [ELLEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedELLEnrollment_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedELLEnrollment] ADD CONSTRAINT [SectionStudentFactsAggregatedELLEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedESLEnrollment] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedESLEnrollment] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [ESLEnrollmentNumber] [INT] NULL,
    [ESLEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedESLEnrollment_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedESLEnrollment] ADD CONSTRAINT [SectionStudentFactsAggregatedESLEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedGender] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedGender] (
    [FactAsOfDate] [DATE] NOT NULL,
    [GenderDescriptorId] [INT] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [GenderTypeNumber] [INT] NULL,
    [GenderTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedGender_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [GenderDescriptorId] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedGender] ADD CONSTRAINT [SectionStudentFactsAggregatedGender_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] (
    [FactAsOfDate] [DATE] NOT NULL,
    [HispanicLatinoEthnicity] [BIT] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [HispanicLatinoEthnicityNumber] [INT] NULL,
    [HispanicLatinoEthnicityPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedHispanicLatinoEthnicity_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [HispanicLatinoEthnicity] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] ADD CONSTRAINT [SectionStudentFactsAggregatedHispanicLatinoEthnicity_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedLanguage] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedLanguage] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [LanguageTypeNumber] [INT] NULL,
    [LanguageTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedLanguage_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LanguageDescriptorId] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedLanguage] ADD CONSTRAINT [SectionStudentFactsAggregatedLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedRace] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedRace] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [RaceDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [RaceTypeNumber] [INT] NULL,
    [RaceTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedRace_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [RaceDescriptorId] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedRace] ADD CONSTRAINT [SectionStudentFactsAggregatedRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolFoodServiceProgramServiceDescriptorId] [INT] NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TypeNumber] [INT] NULL,
    [TypePercentage] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedSchoolFoodServiceProgramService_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolFoodServiceProgramServiceDescriptorId] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] ADD CONSTRAINT [SectionStudentFactsAggregatedSchoolFoodServiceProgramService_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedSection504Enrollment] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedSection504Enrollment] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [Number504Enrolled] [INT] NULL,
    [Percentage504Enrolled] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedSection504Enrollment_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedSection504Enrollment] ADD CONSTRAINT [SectionStudentFactsAggregatedSection504Enrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedSex] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedSex] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [SexDescriptorId] [INT] NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [SexTypeNumber] [INT] NULL,
    [SexTypePercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedSex_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [SexDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedSex] ADD CONSTRAINT [SectionStudentFactsAggregatedSex_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedSPED] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedSPED] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [SPEDEnrollmentNumber] [INT] NULL,
    [SPEDEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedSPED_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedSPED] ADD CONSTRAINT [SectionStudentFactsAggregatedSPED_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsAggregatedTitleIEnrollment] --
CREATE TABLE [extension].[SectionStudentFactsAggregatedTitleIEnrollment] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [TitleIEnrollmentNumber] [INT] NULL,
    [TitleIEnrollmentPercentage] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsAggregatedTitleIEnrollment_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsAggregatedTitleIEnrollment] ADD CONSTRAINT [SectionStudentFactsAggregatedTitleIEnrollment_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionStudentFactsStudentsEnrolled] --
CREATE TABLE [extension].[SectionStudentFactsStudentsEnrolled] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [ValueTypeDescriptorId] [INT] NULL,
    [NumberStudentsEnrolled] [INT] NULL,
    [PercentAtRisk] [DECIMAL](5, 4) NULL,
    [PercentMobility] [DECIMAL](5, 4) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionStudentFactsStudentsEnrolled_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionStudentFactsStudentsEnrolled] ADD CONSTRAINT [SectionStudentFactsStudentsEnrolled_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionSurveyQuestionResponseFacts] --
CREATE TABLE [extension].[SectionSurveyQuestionResponseFacts] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionSurveyQuestionResponseFacts_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [QuestionCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionSurveyQuestionResponseFacts] ADD CONSTRAINT [SectionSurveyQuestionResponseFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SectionSurveyQuestionResponseFacts] ADD CONSTRAINT [SectionSurveyQuestionResponseFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SectionSurveyQuestionResponseFacts] ADD CONSTRAINT [SectionSurveyQuestionResponseFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SectionSurveyQuestionResponseFactsAggregatedNumericResponse] --
CREATE TABLE [extension].[SectionSurveyQuestionResponseFactsAggregatedNumericResponse] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionSurveyQuestionResponseFactsAggregatedNumericResponse_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [QuestionCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionSurveyQuestionResponseFactsAggregatedNumericResponse] ADD CONSTRAINT [SectionSurveyQuestionResponseFactsAggregatedNumericResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] --
CREATE TABLE [extension].[SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] (
    [AggregatedMatrixElement] [NVARCHAR](50) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_PK] PRIMARY KEY CLUSTERED (
        [AggregatedMatrixElement] ASC,
        [AverageNumericResponse] ASC,
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [QuestionCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] ADD CONSTRAINT [SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SectionSurveyResponseFacts] --
CREATE TABLE [extension].[SectionSurveyResponseFacts] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionSurveyResponseFacts_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionSurveyResponseFacts] ADD CONSTRAINT [SectionSurveyResponseFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SectionSurveyResponseFacts] ADD CONSTRAINT [SectionSurveyResponseFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SectionSurveyResponseFacts] ADD CONSTRAINT [SectionSurveyResponseFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SectionSurveySectionResponseRatingFacts] --
CREATE TABLE [extension].[SectionSurveySectionResponseRatingFacts] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SectionSurveySectionResponseRatingFacts_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionSurveySectionResponseRatingFacts] ADD CONSTRAINT [SectionSurveySectionResponseRatingFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SectionSurveySectionResponseRatingFacts] ADD CONSTRAINT [SectionSurveySectionResponseRatingFacts_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SectionSurveySectionResponseRatingFacts] ADD CONSTRAINT [SectionSurveySectionResponseRatingFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SectionSurveySectionResponseRatingFactsAggregatedNumericResponse] --
CREATE TABLE [extension].[SectionSurveySectionResponseRatingFactsAggregatedNumericResponse] (
    [FactsAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [AverageNumericResponse] [DECIMAL](18, 4) NOT NULL,
    [NumericResponseNCount] [INT] NULL,
    [NumericResponseStandardDeviation] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SectionSurveySectionResponseRatingFactsAggregatedNumericResponse_PK] PRIMARY KEY CLUSTERED (
        [FactsAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SectionSurveySectionResponseRatingFactsAggregatedNumericResponse] ADD CONSTRAINT [SectionSurveySectionResponseRatingFactsAggregatedNumericResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffApplicant] --
CREATE TABLE [extension].[StaffApplicant] (
    [ApplicantEducationOrganizationId] [INT] NOT NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffApplicant_PK] PRIMARY KEY CLUSTERED (
        [ApplicantEducationOrganizationId] ASC,
        [ApplicantIdentifier] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffApplicant] ADD CONSTRAINT [StaffApplicant_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffBackgroundCheck] --
CREATE TABLE [extension].[StaffBackgroundCheck] (
    [BackgroundCheckTypeDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [BackgroundCheckRequestedDate] [DATE] NOT NULL,
    [BackgroundCheckStatusDescriptorId] [INT] NULL,
    [BackgroundCheckCompletedDate] [DATE] NULL,
    [Fingerprint] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffBackgroundCheck_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckTypeDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffBackgroundCheck] ADD CONSTRAINT [StaffBackgroundCheck_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffEducationOrganizationAssignmentAssociationExtension] --
CREATE TABLE [extension].[StaffEducationOrganizationAssignmentAssociationExtension] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [StaffClassificationDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [YearsOfExperienceAtCurrentEducationOrganization] [DECIMAL](5, 2) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [StaffClassificationDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffEducationOrganizationAssignmentAssociationExtension] ADD CONSTRAINT [StaffEducationOrganizationAssignmentAssociationExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffExtension] --
CREATE TABLE [extension].[StaffExtension] (
    [StaffUSI] [INT] NOT NULL,
    [ProbationCompleteDate] [DATE] NULL,
    [Tenured] [BIT] NULL,
    [GenderDescriptorId] [INT] NULL,
    [TenureTrack] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffExtension_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffExtension] ADD CONSTRAINT [StaffExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffFieldworkAbsenceEvent] --
CREATE TABLE [extension].[StaffFieldworkAbsenceEvent] (
    [AbsenceEventCategoryDescriptorId] [INT] NOT NULL,
    [EventDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [AbsenceEventReason] [NVARCHAR](40) NULL,
    [HoursAbsent] [DECIMAL](3, 2) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffFieldworkAbsenceEvent_PK] PRIMARY KEY CLUSTERED (
        [AbsenceEventCategoryDescriptorId] ASC,
        [EventDate] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffFieldworkAbsenceEvent] ADD CONSTRAINT [StaffFieldworkAbsenceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffFieldworkAbsenceEvent] ADD CONSTRAINT [StaffFieldworkAbsenceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffFieldworkAbsenceEvent] ADD CONSTRAINT [StaffFieldworkAbsenceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffFieldworkExperience] --
CREATE TABLE [extension].[StaffFieldworkExperience] (
    [BeginDate] [DATE] NOT NULL,
    [FieldworkExperienceSchoolId] [INT] NOT NULL,
    [FieldworkIdentifier] [NVARCHAR](20) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NULL,
    [LocalCourseCode] [NVARCHAR](60) NULL,
    [SessionName] [NVARCHAR](60) NULL,
    [SchoolYear] [SMALLINT] NULL,
    [SchoolId] [INT] NULL,
    [FieldworkTypeDescriptorId] [INT] NOT NULL,
    [HoursPerWeek] [DECIMAL](5, 2) NULL,
    [EndDate] [DATE] NULL,
    [ProgramGatewayDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffFieldworkExperience_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [FieldworkExperienceSchoolId] ASC,
        [FieldworkIdentifier] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffFieldworkExperience] ADD CONSTRAINT [StaffFieldworkExperience_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffFieldworkExperience] ADD CONSTRAINT [StaffFieldworkExperience_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffFieldworkExperience] ADD CONSTRAINT [StaffFieldworkExperience_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffFieldworkExperienceCoteaching] --
CREATE TABLE [extension].[StaffFieldworkExperienceCoteaching] (
    [BeginDate] [DATE] NOT NULL,
    [FieldworkExperienceSchoolId] [INT] NOT NULL,
    [FieldworkIdentifier] [NVARCHAR](20) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [CoteachingBeginDate] [DATE] NOT NULL,
    [CoteachingEndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffFieldworkExperienceCoteaching_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [FieldworkExperienceSchoolId] ASC,
        [FieldworkIdentifier] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffFieldworkExperienceCoteaching] ADD CONSTRAINT [StaffFieldworkExperienceCoteaching_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffHighlyQualifiedAcademicSubject] --
CREATE TABLE [extension].[StaffHighlyQualifiedAcademicSubject] (
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffHighlyQualifiedAcademicSubject_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] ADD CONSTRAINT [StaffHighlyQualifiedAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffProfessionalDevelopmentEventAttendance] --
CREATE TABLE [extension].[StaffProfessionalDevelopmentEventAttendance] (
    [AttendanceDate] [DATE] NOT NULL,
    [ProfessionalDevelopmentTitle] [NVARCHAR](60) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [AttendanceEventCategoryDescriptorId] [INT] NOT NULL,
    [AttendanceEventReason] [NVARCHAR](40) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffProfessionalDevelopmentEventAttendance_PK] PRIMARY KEY CLUSTERED (
        [AttendanceDate] ASC,
        [ProfessionalDevelopmentTitle] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [StaffProfessionalDevelopmentEventAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [StaffProfessionalDevelopmentEventAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [StaffProfessionalDevelopmentEventAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffSalary] --
CREATE TABLE [extension].[StaffSalary] (
    [StaffUSI] [INT] NOT NULL,
    [SalaryMinRange] [INT] NULL,
    [SalaryMaxRange] [INT] NULL,
    [SalaryTypeDescriptorId] [INT] NULL,
    [SalaryAmount] [MONEY] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffSalary_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffSalary] ADD CONSTRAINT [StaffSalary_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffSeniority] --
CREATE TABLE [extension].[StaffSeniority] (
    [CredentialFieldDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [YearsExperience] [DECIMAL](5, 2) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffSeniority_PK] PRIMARY KEY CLUSTERED (
        [CredentialFieldDescriptorId] ASC,
        [NameOfInstitution] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffSeniority] ADD CONSTRAINT [StaffSeniority_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffStudentGrowthMeasure] --
CREATE TABLE [extension].[StaffStudentGrowthMeasure] (
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [StudentGrowthMeasureDate] [DATE] NULL,
    [ResultDatatypeTypeDescriptorId] [INT] NULL,
    [StudentGrowthTypeDescriptorId] [INT] NULL,
    [StudentGrowthTargetScore] [INT] NULL,
    [StudentGrowthActualScore] [INT] NOT NULL,
    [StudentGrowthMet] [BIT] NOT NULL,
    [StudentGrowthNCount] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffStudentGrowthMeasure_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasure] ADD CONSTRAINT [StaffStudentGrowthMeasure_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasure] ADD CONSTRAINT [StaffStudentGrowthMeasure_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasure] ADD CONSTRAINT [StaffStudentGrowthMeasure_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffStudentGrowthMeasureCourseAssociation] --
CREATE TABLE [extension].[StaffStudentGrowthMeasureCourseAssociation] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffStudentGrowthMeasureCourseAssociation_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureCourseAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureCourseAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureCourseAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureCourseAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureCourseAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureCourseAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] --
CREATE TABLE [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffStudentGrowthMeasureEducationOrganizationAssociation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureEducationOrganizationAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffStudentGrowthMeasureSectionAssociation] --
CREATE TABLE [extension].[StaffStudentGrowthMeasureSectionAssociation] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffStudentGrowthMeasureSectionAssociation_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureSectionAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureSectionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureSectionAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureSectionAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffStudentGrowthMeasureSectionAssociation] ADD CONSTRAINT [StaffStudentGrowthMeasureSectionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffTeacherEducatorResearch] --
CREATE TABLE [extension].[StaffTeacherEducatorResearch] (
    [StaffUSI] [INT] NOT NULL,
    [ResearchExperienceDate] [DATE] NOT NULL,
    [ResearchExperienceTitle] [NVARCHAR](60) NULL,
    [ResearchExperienceDescription] [NVARCHAR](1024) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffTeacherEducatorResearch_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherEducatorResearch] ADD CONSTRAINT [StaffTeacherEducatorResearch_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffTeacherPreparationProgram] --
CREATE TABLE [extension].[StaffTeacherPreparationProgram] (
    [StaffUSI] [INT] NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [TeacherPreparationProgramIdentifier] [NVARCHAR](75) NULL,
    [TeacherPreparationProgramTypeDescriptorId] [INT] NOT NULL,
    [NameOfInstitution] [NVARCHAR](75) NOT NULL,
    [MajorSpecialization] [NVARCHAR](75) NOT NULL,
    [GPA] [DECIMAL](18, 4) NULL,
    [LevelOfDegreeAwardedDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffTeacherPreparationProgram_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProgram] ADD CONSTRAINT [StaffTeacherPreparationProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffTeacherPreparationProgramAddress] --
CREATE TABLE [extension].[StaffTeacherPreparationProgramAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffTeacherPreparationProgramAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [StaffUSI] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] ADD CONSTRAINT [StaffTeacherPreparationProgramAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffTeacherPreparationProgramAddressPeriod] --
CREATE TABLE [extension].[StaffTeacherPreparationProgramAddressPeriod] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [TeacherPreparationProgramName] [NVARCHAR](75) NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffTeacherPreparationProgramAddressPeriod_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [BeginDate] ASC,
        [StaffUSI] ASC,
        [TeacherPreparationProgramName] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProgramAddressPeriod] ADD CONSTRAINT [StaffTeacherPreparationProgramAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffTeacherPreparationProviderAssociation] --
CREATE TABLE [extension].[StaffTeacherPreparationProviderAssociation] (
    [StaffUSI] [INT] NOT NULL,
    [TeacherPreparationProviderId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [ProgramAssignmentDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffTeacherPreparationProviderAssociation_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC,
        [TeacherPreparationProviderId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociation] ADD CONSTRAINT [StaffTeacherPreparationProviderAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociation] ADD CONSTRAINT [StaffTeacherPreparationProviderAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociation] ADD CONSTRAINT [StaffTeacherPreparationProviderAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] --
CREATE TABLE [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] (
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [TeacherPreparationProviderId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffTeacherPreparationProviderAssociationAcademicSubject_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectDescriptorId] ASC,
        [StaffUSI] ASC,
        [TeacherPreparationProviderId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] ADD CONSTRAINT [StaffTeacherPreparationProviderAssociationAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] --
CREATE TABLE [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] (
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [TeacherPreparationProviderId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StaffTeacherPreparationProviderAssociationGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelDescriptorId] ASC,
        [StaffUSI] ASC,
        [TeacherPreparationProviderId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] ADD CONSTRAINT [StaffTeacherPreparationProviderAssociationGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StaffTeacherPreparationProviderProgramAssociation] --
CREATE TABLE [extension].[StaffTeacherPreparationProviderProgramAssociation] (
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [StaffUSI] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [StudentRecordAccess] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [StaffTeacherPreparationProviderProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [StaffUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderProgramAssociation] ADD CONSTRAINT [StaffTeacherPreparationProviderProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderProgramAssociation] ADD CONSTRAINT [StaffTeacherPreparationProviderProgramAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffTeacherPreparationProviderProgramAssociation] ADD CONSTRAINT [StaffTeacherPreparationProviderProgramAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[StudentGradebookEntryExtension] --
CREATE TABLE [extension].[StudentGradebookEntryExtension] (
    [BeginDate] [DATE] NOT NULL,
    [DateAssigned] [DATE] NOT NULL,
    [GradebookEntryTitle] [NVARCHAR](60) NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [StudentUSI] [INT] NOT NULL,
    [DateCompleted] [DATE] NULL,
    [AssignmentPassed] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [StudentGradebookEntryExtension_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [DateAssigned] ASC,
        [GradebookEntryTitle] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [StudentUSI] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StudentGradebookEntryExtension] ADD CONSTRAINT [StudentGradebookEntryExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[StudentGrowthTypeDescriptor] --
CREATE TABLE [extension].[StudentGrowthTypeDescriptor] (
    [StudentGrowthTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [StudentGrowthTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StudentGrowthTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[Survey] --
CREATE TABLE [extension].[Survey] (
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [EducationOrganizationId] [INT] NULL,
    [SurveyTitle] [NVARCHAR](50) NOT NULL,
    [SurveySchoolYear] [SMALLINT] NOT NULL,
    [TermDescriptorId] [INT] NULL,
    [SurveyCategoryDescriptorId] [INT] NULL,
    [ProgramName] [NVARCHAR](60) NULL,
    [ProgramTypeDescriptorId] [INT] NULL,
    [CourseCode] [NVARCHAR](60) NULL,
    [SectionIdentifier] [NVARCHAR](255) NULL,
    [LocalCourseCode] [NVARCHAR](60) NULL,
    [SessionName] [NVARCHAR](60) NULL,
    [SchoolYear] [SMALLINT] NULL,
    [SchoolId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [Survey_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[Survey] ADD CONSTRAINT [Survey_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[Survey] ADD CONSTRAINT [Survey_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[Survey] ADD CONSTRAINT [Survey_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SurveyCategoryDescriptor] --
CREATE TABLE [extension].[SurveyCategoryDescriptor] (
    [SurveyCategoryDescriptorId] [INT] NOT NULL,
    CONSTRAINT [SurveyCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SurveyCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[SurveyQuestion] --
CREATE TABLE [extension].[SurveyQuestion] (
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [QuestionFormDescriptorId] [INT] NOT NULL,
    [QuestionText] [NVARCHAR](255) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SurveyQuestion_PK] PRIMARY KEY CLUSTERED (
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestion] ADD CONSTRAINT [SurveyQuestion_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyQuestion] ADD CONSTRAINT [SurveyQuestion_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyQuestion] ADD CONSTRAINT [SurveyQuestion_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SurveyQuestionMatrix] --
CREATE TABLE [extension].[SurveyQuestionMatrix] (
    [MatrixElement] [NVARCHAR](50) NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [MinRawScore] [INT] NULL,
    [MaxRawScore] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SurveyQuestionMatrix_PK] PRIMARY KEY CLUSTERED (
        [MatrixElement] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionMatrix] ADD CONSTRAINT [SurveyQuestionMatrix_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SurveyQuestionNumericChoice] --
CREATE TABLE [extension].[SurveyQuestionNumericChoice] (
    [NumericChoice] [INT] NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SurveyQuestionNumericChoice_PK] PRIMARY KEY CLUSTERED (
        [NumericChoice] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionNumericChoice] ADD CONSTRAINT [SurveyQuestionNumericChoice_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SurveyQuestionResponse] --
CREATE TABLE [extension].[SurveyQuestionResponse] (
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [NoResponse] [BIT] NULL,
    [NumericResponse] [INT] NULL,
    [TextResponse] [NVARCHAR](255) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SurveyQuestionResponse_PK] PRIMARY KEY CLUSTERED (
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionResponse] ADD CONSTRAINT [SurveyQuestionResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyQuestionResponse] ADD CONSTRAINT [SurveyQuestionResponse_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyQuestionResponse] ADD CONSTRAINT [SurveyQuestionResponse_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] --
CREATE TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] (
    [MatrixElement] [NVARCHAR](50) NOT NULL,
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [NumericResponse] [INT] NULL,
    [TextResponse] [NVARCHAR](255) NULL,
    [NoResponse] [BIT] NULL,
    [MinNumericResponse] [INT] NULL,
    [MaxNumericResponse] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_PK] PRIMARY KEY CLUSTERED (
        [MatrixElement] ASC,
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] ADD CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SurveyQuestionTextChoice] --
CREATE TABLE [extension].[SurveyQuestionTextChoice] (
    [QuestionCode] [NVARCHAR](20) NOT NULL,
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [TextChoice] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [SurveyQuestionTextChoice_PK] PRIMARY KEY CLUSTERED (
        [QuestionCode] ASC,
        [SurveyIdentifier] ASC,
        [TextChoice] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyQuestionTextChoice] ADD CONSTRAINT [SurveyQuestionTextChoice_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[SurveyResponse] --
CREATE TABLE [extension].[SurveyResponse] (
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [ResponseDate] [DATE] NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NULL,
    [FullName] [NVARCHAR](80) NULL,
    [Location] [NVARCHAR](75) NULL,
    [StudentUSI] [INT] NULL,
    [ParentUSI] [INT] NULL,
    [StaffUSI] [INT] NULL,
    [ApplicantIdentifier] [NVARCHAR](32) NULL,
    [ApplicantEducationOrganizationId] [INT] NULL,
    [ProspectIdentifier] [NVARCHAR](32) NULL,
    [ProspectEducationOrganizationId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SurveyResponse_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyResponse] ADD CONSTRAINT [SurveyResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyResponse] ADD CONSTRAINT [SurveyResponse_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyResponse] ADD CONSTRAINT [SurveyResponse_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SurveySection] --
CREATE TABLE [extension].[SurveySection] (
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SurveySection_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveySection] ADD CONSTRAINT [SurveySection_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveySection] ADD CONSTRAINT [SurveySection_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveySection] ADD CONSTRAINT [SurveySection_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[SurveySectionResponseRating] --
CREATE TABLE [extension].[SurveySectionResponseRating] (
    [SurveyIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveyResponseIdentifier] [NVARCHAR](64) NOT NULL,
    [SurveySectionTitle] [NVARCHAR](50) NOT NULL,
    [SectionRating] [DECIMAL](9, 3) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [SurveySectionResponseRating_PK] PRIMARY KEY CLUSTERED (
        [SurveyIdentifier] ASC,
        [SurveyResponseIdentifier] ASC,
        [SurveySectionTitle] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveySectionResponseRating] ADD CONSTRAINT [SurveySectionResponseRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveySectionResponseRating] ADD CONSTRAINT [SurveySectionResponseRating_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveySectionResponseRating] ADD CONSTRAINT [SurveySectionResponseRating_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidate] --
CREATE TABLE [extension].[TeacherCandidate] (
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [SexDescriptorId] [INT] NOT NULL,
    [BirthDate] [DATE] NOT NULL,
    [BirthCity] [NVARCHAR](30) NULL,
    [BirthStateAbbreviationDescriptorId] [INT] NULL,
    [BirthInternationalProvince] [NVARCHAR](150) NULL,
    [BirthCountryDescriptorId] [INT] NULL,
    [DateEnteredUS] [DATE] NULL,
    [MultipleBirthStatus] [BIT] NULL,
    [BirthSexDescriptorId] [INT] NULL,
    [ProfileThumbnail] [NVARCHAR](255) NULL,
    [HispanicLatinoEthnicity] [BIT] NOT NULL,
    [OldEthnicityDescriptorId] [INT] NULL,
    [CitizenshipStatusDescriptorId] [INT] NULL,
    [EconomicDisadvantaged] [BIT] NULL,
    [LimitedEnglishProficiencyDescriptorId] [INT] NULL,
    [DisplacementStatus] [NVARCHAR](30) NULL,
    [LoginId] [NVARCHAR](60) NULL,
    [GenderDescriptorId] [INT] NULL,
    [TuitionCost] [MONEY] NULL,
    [EnglishLanguageExamDescriptorId] [INT] NULL,
    [PreviousCareerDescriptorId] [INT] NULL,
    [ProgramComplete] [BIT] NULL,
    [StudentUSI] [INT] NOT NULL,
    [StaffUSI] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidate_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidate] ADD CONSTRAINT [TeacherCandidate_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidate] ADD CONSTRAINT [TeacherCandidate_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidate] ADD CONSTRAINT [TeacherCandidate_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateAcademicRecord] --
CREATE TABLE [extension].[TeacherCandidateAcademicRecord] (
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [CumulativeEarnedCredits] [DECIMAL](9, 3) NULL,
    [CumulativeEarnedCreditTypeDescriptorId] [INT] NULL,
    [CumulativeEarnedCreditConversion] [DECIMAL](9, 2) NULL,
    [CumulativeAttemptedCredits] [DECIMAL](9, 3) NULL,
    [CumulativeAttemptedCreditTypeDescriptorId] [INT] NULL,
    [CumulativeAttemptedCreditConversion] [DECIMAL](9, 2) NULL,
    [CumulativeGradePointsEarned] [DECIMAL](18, 4) NULL,
    [CumulativeGradePointAverage] [DECIMAL](18, 4) NULL,
    [GradeValueQualifier] [NVARCHAR](80) NULL,
    [ProjectedGraduationDate] [DATE] NULL,
    [SessionEarnedCredits] [DECIMAL](9, 3) NULL,
    [SessionEarnedCreditTypeDescriptorId] [INT] NULL,
    [SessionEarnedCreditConversion] [DECIMAL](9, 2) NULL,
    [SessionAttemptedCredits] [DECIMAL](9, 3) NULL,
    [SessionAttemptedCreditTypeDescriptorId] [INT] NULL,
    [SessionAttemptedCreditConversion] [DECIMAL](9, 2) NULL,
    [SessionGradePointsEarned] [DECIMAL](18, 4) NULL,
    [SessionGradePointAverage] [DECIMAL](18, 4) NULL,
    [ContentGradePointAverage] [DECIMAL](18, 4) NULL,
    [ContentGradePointEarned] [DECIMAL](18, 4) NULL,
    [ProgramGatewayDescriptorId] [INT] NOT NULL,
    [TPPDegreeTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateAcademicRecord_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAcademicRecord] ADD CONSTRAINT [TeacherCandidateAcademicRecord_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateAcademicRecord] ADD CONSTRAINT [TeacherCandidateAcademicRecord_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateAcademicRecord] ADD CONSTRAINT [TeacherCandidateAcademicRecord_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateAcademicRecordAcademicHonor] --
CREATE TABLE [extension].[TeacherCandidateAcademicRecordAcademicHonor] (
    [AcademicHonorCategoryDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [HonorDescription] [NVARCHAR](80) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AchievementTitle] [NVARCHAR](60) NULL,
    [AchievementCategoryDescriptorId] [INT] NULL,
    [AchievementCategorySystem] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerOriginURL] [NVARCHAR](255) NULL,
    [Criteria] [NVARCHAR](150) NULL,
    [CriteriaURL] [NVARCHAR](255) NULL,
    [EvidenceStatement] [NVARCHAR](150) NULL,
    [ImageURL] [NVARCHAR](255) NULL,
    [HonorAwardDate] [DATE] NULL,
    [HonorAwardExpiresDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateAcademicRecordAcademicHonor_PK] PRIMARY KEY CLUSTERED (
        [AcademicHonorCategoryDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [HonorDescription] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAcademicRecordAcademicHonor] ADD CONSTRAINT [TeacherCandidateAcademicRecordAcademicHonor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateAcademicRecordClassRanking] --
CREATE TABLE [extension].[TeacherCandidateAcademicRecordClassRanking] (
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [ClassRank] [INT] NOT NULL,
    [TotalNumberInClass] [INT] NOT NULL,
    [PercentageRanking] [INT] NULL,
    [ClassRankingDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateAcademicRecordClassRanking_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAcademicRecordClassRanking] ADD CONSTRAINT [TeacherCandidateAcademicRecordClassRanking_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateAcademicRecordDiploma] --
CREATE TABLE [extension].[TeacherCandidateAcademicRecordDiploma] (
    [DiplomaAwardDate] [DATE] NOT NULL,
    [DiplomaTypeDescriptorId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AchievementTitle] [NVARCHAR](60) NULL,
    [AchievementCategoryDescriptorId] [INT] NULL,
    [AchievementCategorySystem] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerOriginURL] [NVARCHAR](255) NULL,
    [Criteria] [NVARCHAR](150) NULL,
    [CriteriaURL] [NVARCHAR](255) NULL,
    [EvidenceStatement] [NVARCHAR](150) NULL,
    [ImageURL] [NVARCHAR](255) NULL,
    [DiplomaLevelDescriptorId] [INT] NULL,
    [CTECompleter] [BIT] NULL,
    [DiplomaDescription] [NVARCHAR](80) NULL,
    [DiplomaAwardExpiresDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateAcademicRecordDiploma_PK] PRIMARY KEY CLUSTERED (
        [DiplomaAwardDate] ASC,
        [DiplomaTypeDescriptorId] ASC,
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAcademicRecordDiploma] ADD CONSTRAINT [TeacherCandidateAcademicRecordDiploma_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateAcademicRecordRecognition] --
CREATE TABLE [extension].[TeacherCandidateAcademicRecordRecognition] (
    [EducationOrganizationId] [INT] NOT NULL,
    [RecognitionTypeDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AchievementTitle] [NVARCHAR](60) NULL,
    [AchievementCategoryDescriptorId] [INT] NULL,
    [AchievementCategorySystem] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerOriginURL] [NVARCHAR](255) NULL,
    [Criteria] [NVARCHAR](150) NULL,
    [CriteriaURL] [NVARCHAR](255) NULL,
    [EvidenceStatement] [NVARCHAR](150) NULL,
    [ImageURL] [NVARCHAR](255) NULL,
    [RecognitionDescription] [NVARCHAR](80) NULL,
    [RecognitionAwardDate] [DATE] NULL,
    [RecognitionAwardExpiresDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateAcademicRecordRecognition_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [RecognitionTypeDescriptorId] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAcademicRecordRecognition] ADD CONSTRAINT [TeacherCandidateAcademicRecordRecognition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateAddress] --
CREATE TABLE [extension].[TeacherCandidateAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationDescriptorId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAddress] ADD CONSTRAINT [TeacherCandidateAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateAddressPeriod] --
CREATE TABLE [extension].[TeacherCandidateAddressPeriod] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateAddressPeriod_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [BeginDate] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAddressPeriod] ADD CONSTRAINT [TeacherCandidateAddressPeriod_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateAid] --
CREATE TABLE [extension].[TeacherCandidateAid] (
    [AidTypeDescriptorId] [INT] NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [EndDate] [DATE] NULL,
    [AidConditionDescription] [NVARCHAR](1024) NULL,
    [AidAmount] [MONEY] NULL,
    [PellGrantRecipient] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateAid_PK] PRIMARY KEY CLUSTERED (
        [AidTypeDescriptorId] ASC,
        [BeginDate] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAid] ADD CONSTRAINT [TeacherCandidateAid_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateBackgroundCheck] --
CREATE TABLE [extension].[TeacherCandidateBackgroundCheck] (
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [BackgroundCheckTypeDescriptorId] [INT] NOT NULL,
    [BackgroundCheckRequestedDate] [DATE] NOT NULL,
    [BackgroundCheckStatusDescriptorId] [INT] NULL,
    [BackgroundCheckCompletedDate] [DATE] NULL,
    [Fingerprint] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateBackgroundCheck_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateBackgroundCheck] ADD CONSTRAINT [TeacherCandidateBackgroundCheck_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateCharacteristic] --
CREATE TABLE [extension].[TeacherCandidateCharacteristic] (
    [StudentCharacteristicDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [DesignatedBy] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [StudentCharacteristicDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCharacteristic] ADD CONSTRAINT [TeacherCandidateCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateCharacteristicDescriptor] --
CREATE TABLE [extension].[TeacherCandidateCharacteristicDescriptor] (
    [TeacherCandidateCharacteristicDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TeacherCandidateCharacteristicDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateCharacteristicDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[TeacherCandidateCohortYear] --
CREATE TABLE [extension].[TeacherCandidateCohortYear] (
    [CohortYearTypeDescriptorId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateCohortYear_PK] PRIMARY KEY CLUSTERED (
        [CohortYearTypeDescriptorId] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCohortYear] ADD CONSTRAINT [TeacherCandidateCohortYear_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateCourseTranscript] --
CREATE TABLE [extension].[TeacherCandidateCourseTranscript] (
    [CourseAttemptResultDescriptorId] [INT] NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [CourseEducationOrganizationId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [AttemptedCredits] [DECIMAL](9, 3) NULL,
    [AttemptedCreditTypeDescriptorId] [INT] NULL,
    [AttemptedCreditConversion] [DECIMAL](9, 2) NULL,
    [EarnedCredits] [DECIMAL](9, 3) NOT NULL,
    [EarnedCreditTypeDescriptorId] [INT] NULL,
    [EarnedCreditConversion] [DECIMAL](9, 2) NULL,
    [WhenTakenGradeLevelDescriptorId] [INT] NULL,
    [MethodCreditEarnedDescriptorId] [INT] NULL,
    [FinalLetterGradeEarned] [NVARCHAR](20) NULL,
    [FinalNumericGradeEarned] [DECIMAL](9, 2) NULL,
    [CourseRepeatCodeDescriptorId] [INT] NULL,
    [SchoolId] [INT] NULL,
    [CourseTitle] [NVARCHAR](60) NULL,
    [AlternativeCourseTitle] [NVARCHAR](60) NULL,
    [AlternativeCourseCode] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateCourseTranscript_PK] PRIMARY KEY CLUSTERED (
        [CourseAttemptResultDescriptorId] ASC,
        [CourseCode] ASC,
        [CourseEducationOrganizationId] ASC,
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCourseTranscript] ADD CONSTRAINT [TeacherCandidateCourseTranscript_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateCourseTranscript] ADD CONSTRAINT [TeacherCandidateCourseTranscript_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateCourseTranscript] ADD CONSTRAINT [TeacherCandidateCourseTranscript_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] --
CREATE TABLE [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] (
    [AdditionalCreditTypeDescriptorId] [INT] NOT NULL,
    [CourseAttemptResultDescriptorId] [INT] NOT NULL,
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [CourseEducationOrganizationId] [INT] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TermDescriptorId] [INT] NOT NULL,
    [Credits] [DECIMAL](9, 3) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateCourseTranscriptEarnedAdditionalCredits_PK] PRIMARY KEY CLUSTERED (
        [AdditionalCreditTypeDescriptorId] ASC,
        [CourseAttemptResultDescriptorId] ASC,
        [CourseCode] ASC,
        [CourseEducationOrganizationId] ASC,
        [EducationOrganizationId] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TermDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] ADD CONSTRAINT [TeacherCandidateCourseTranscriptEarnedAdditionalCredits_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateCredential] --
CREATE TABLE [extension].[TeacherCandidateCredential] (
    [CredentialIdentifier] [NVARCHAR](60) NOT NULL,
    [StateOfIssueStateAbbreviationDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateCredential_PK] PRIMARY KEY CLUSTERED (
        [CredentialIdentifier] ASC,
        [StateOfIssueStateAbbreviationDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCredential] ADD CONSTRAINT [TeacherCandidateCredential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateDisability] --
CREATE TABLE [extension].[TeacherCandidateDisability] (
    [DisabilityDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [DisabilityDeterminationSourceTypeDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateDisability_PK] PRIMARY KEY CLUSTERED (
        [DisabilityDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateDisability] ADD CONSTRAINT [TeacherCandidateDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateDisabilityDesignation] --
CREATE TABLE [extension].[TeacherCandidateDisabilityDesignation] (
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDesignationDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateDisabilityDesignation_PK] PRIMARY KEY CLUSTERED (
        [DisabilityDescriptorId] ASC,
        [DisabilityDesignationDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateDisabilityDesignation] ADD CONSTRAINT [TeacherCandidateDisabilityDesignation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateElectronicMail] --
CREATE TABLE [extension].[TeacherCandidateElectronicMail] (
    [ElectronicMailTypeDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [PrimaryEmailAddressIndicator] [BIT] NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateElectronicMail_PK] PRIMARY KEY CLUSTERED (
        [ElectronicMailTypeDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateElectronicMail] ADD CONSTRAINT [TeacherCandidateElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateFieldworkAbsenceEvent] --
CREATE TABLE [extension].[TeacherCandidateFieldworkAbsenceEvent] (
    [AbsenceEventCategoryDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [EventDate] [DATE] NOT NULL,
    [AbsenceEventReason] [NVARCHAR](40) NULL,
    [HoursAbsent] [DECIMAL](3, 2) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateFieldworkAbsenceEvent_PK] PRIMARY KEY CLUSTERED (
        [AbsenceEventCategoryDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateFieldworkAbsenceEvent] ADD CONSTRAINT [TeacherCandidateFieldworkAbsenceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateFieldworkAbsenceEvent] ADD CONSTRAINT [TeacherCandidateFieldworkAbsenceEvent_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateFieldworkAbsenceEvent] ADD CONSTRAINT [TeacherCandidateFieldworkAbsenceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateFieldworkExperience] --
CREATE TABLE [extension].[TeacherCandidateFieldworkExperience] (
    [BeginDate] [DATE] NOT NULL,
    [FieldworkExperienceSchoolId] [INT] NOT NULL,
    [FieldworkIdentifier] [NVARCHAR](20) NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NULL,
    [LocalCourseCode] [NVARCHAR](60) NULL,
    [SessionName] [NVARCHAR](60) NULL,
    [SchoolYear] [SMALLINT] NULL,
    [SchoolId] [INT] NULL,
    [FieldworkTypeDescriptorId] [INT] NOT NULL,
    [HoursPerWeek] [DECIMAL](5, 2) NULL,
    [EndDate] [DATE] NULL,
    [ProgramGatewayDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateFieldworkExperience_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [FieldworkExperienceSchoolId] ASC,
        [FieldworkIdentifier] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] ADD CONSTRAINT [TeacherCandidateFieldworkExperience_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] ADD CONSTRAINT [TeacherCandidateFieldworkExperience_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] ADD CONSTRAINT [TeacherCandidateFieldworkExperience_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateFieldworkExperienceCoteaching] --
CREATE TABLE [extension].[TeacherCandidateFieldworkExperienceCoteaching] (
    [BeginDate] [DATE] NOT NULL,
    [FieldworkExperienceSchoolId] [INT] NOT NULL,
    [FieldworkIdentifier] [NVARCHAR](20) NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CoteachingBeginDate] [DATE] NOT NULL,
    [CoteachingEndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateFieldworkExperienceCoteaching_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [FieldworkExperienceSchoolId] ASC,
        [FieldworkIdentifier] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateFieldworkExperienceCoteaching] ADD CONSTRAINT [TeacherCandidateFieldworkExperienceCoteaching_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateIdentificationCode] --
CREATE TABLE [extension].[TeacherCandidateIdentificationCode] (
    [AssigningOrganizationIdentificationCode] [NVARCHAR](60) NOT NULL,
    [StudentIdentificationSystemDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateIdentificationCode_PK] PRIMARY KEY CLUSTERED (
        [AssigningOrganizationIdentificationCode] ASC,
        [StudentIdentificationSystemDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateIdentificationCode] ADD CONSTRAINT [TeacherCandidateIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateIdentificationDocument] --
CREATE TABLE [extension].[TeacherCandidateIdentificationDocument] (
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] ADD CONSTRAINT [TeacherCandidateIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateIndicator] --
CREATE TABLE [extension].[TeacherCandidateIndicator] (
    [IndicatorName] [NVARCHAR](60) NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [IndicatorGroup] [NVARCHAR](60) NULL,
    [Indicator] [NVARCHAR](35) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [DesignatedBy] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateIndicator_PK] PRIMARY KEY CLUSTERED (
        [IndicatorName] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateIndicator] ADD CONSTRAINT [TeacherCandidateIndicator_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateInternationalAddress] --
CREATE TABLE [extension].[TeacherCandidateInternationalAddress] (
    [AddressTypeDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [AddressLine1] [NVARCHAR](150) NOT NULL,
    [AddressLine2] [NVARCHAR](150) NULL,
    [AddressLine3] [NVARCHAR](150) NULL,
    [AddressLine4] [NVARCHAR](150) NULL,
    [CountryDescriptorId] [INT] NOT NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateInternationalAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateInternationalAddress] ADD CONSTRAINT [TeacherCandidateInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateLanguage] --
CREATE TABLE [extension].[TeacherCandidateLanguage] (
    [LanguageDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateLanguage_PK] PRIMARY KEY CLUSTERED (
        [LanguageDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateLanguage] ADD CONSTRAINT [TeacherCandidateLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateLanguageUse] --
CREATE TABLE [extension].[TeacherCandidateLanguageUse] (
    [LanguageDescriptorId] [INT] NOT NULL,
    [LanguageUseDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateLanguageUse_PK] PRIMARY KEY CLUSTERED (
        [LanguageDescriptorId] ASC,
        [LanguageUseDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateLanguageUse] ADD CONSTRAINT [TeacherCandidateLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateOtherName] --
CREATE TABLE [extension].[TeacherCandidateOtherName] (
    [OtherNameTypeDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateOtherName_PK] PRIMARY KEY CLUSTERED (
        [OtherNameTypeDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateOtherName] ADD CONSTRAINT [TeacherCandidateOtherName_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidatePersonalIdentificationDocument] --
CREATE TABLE [extension].[TeacherCandidatePersonalIdentificationDocument] (
    [IdentificationDocumentUseDescriptorId] [INT] NOT NULL,
    [PersonalInformationVerificationDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidatePersonalIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [IdentificationDocumentUseDescriptorId] ASC,
        [PersonalInformationVerificationDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidatePersonalIdentificationDocument] ADD CONSTRAINT [TeacherCandidatePersonalIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] --
CREATE TABLE [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] (
    [AttendanceDate] [DATE] NOT NULL,
    [ProfessionalDevelopmentTitle] [NVARCHAR](60) NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [AttendanceEventCategoryDescriptorId] [INT] NOT NULL,
    [AttendanceEventReason] [NVARCHAR](40) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateProfessionalDevelopmentEventAttendance_PK] PRIMARY KEY CLUSTERED (
        [AttendanceDate] ASC,
        [ProfessionalDevelopmentTitle] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [TeacherCandidateProfessionalDevelopmentEventAttendance_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [TeacherCandidateProfessionalDevelopmentEventAttendance_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] ADD CONSTRAINT [TeacherCandidateProfessionalDevelopmentEventAttendance_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateProgramParticipation] --
CREATE TABLE [extension].[TeacherCandidateProgramParticipation] (
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [DesignatedBy] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateProgramParticipation_PK] PRIMARY KEY CLUSTERED (
        [ProgramTypeDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateProgramParticipation] ADD CONSTRAINT [TeacherCandidateProgramParticipation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] --
CREATE TABLE [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] (
    [ProgramCharacteristicDescriptorId] [INT] NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateProgramParticipationProgramCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [ProgramCharacteristicDescriptorId] ASC,
        [ProgramTypeDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] ADD CONSTRAINT [TeacherCandidateProgramParticipationProgramCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateRace] --
CREATE TABLE [extension].[TeacherCandidateRace] (
    [RaceDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateRace_PK] PRIMARY KEY CLUSTERED (
        [RaceDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateRace] ADD CONSTRAINT [TeacherCandidateRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateStaffAssociation] --
CREATE TABLE [extension].[TeacherCandidateStaffAssociation] (
    [StaffUSI] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NOT NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateStaffAssociation_PK] PRIMARY KEY CLUSTERED (
        [StaffUSI] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateStaffAssociation] ADD CONSTRAINT [TeacherCandidateStaffAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateStaffAssociation] ADD CONSTRAINT [TeacherCandidateStaffAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateStaffAssociation] ADD CONSTRAINT [TeacherCandidateStaffAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateStudentGrowthMeasure] --
CREATE TABLE [extension].[TeacherCandidateStudentGrowthMeasure] (
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [StudentGrowthMeasureDate] [DATE] NULL,
    [ResultDatatypeTypeDescriptorId] [INT] NULL,
    [StudentGrowthTypeDescriptorId] [INT] NULL,
    [StudentGrowthTargetScore] [INT] NULL,
    [StudentGrowthActualScore] [INT] NOT NULL,
    [StudentGrowthMet] [BIT] NOT NULL,
    [StudentGrowthNCount] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateStudentGrowthMeasure_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasure] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasure_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasure] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasure_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasure] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasure_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] --
CREATE TABLE [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] (
    [CourseCode] [NVARCHAR](60) NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateStudentGrowthMeasureCourseAssociation_PK] PRIMARY KEY CLUSTERED (
        [CourseCode] ASC,
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureCourseAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureCourseAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureCourseAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] --
CREATE TABLE [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] (
    [EducationOrganizationId] [INT] NOT NULL,
    [FactAsOfDate] [DATE] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [FactAsOfDate] ASC,
        [SchoolYear] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] --
CREATE TABLE [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] (
    [FactAsOfDate] [DATE] NOT NULL,
    [LocalCourseCode] [NVARCHAR](60) NOT NULL,
    [SchoolId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [SectionIdentifier] [NVARCHAR](255) NOT NULL,
    [SessionName] [NVARCHAR](60) NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateStudentGrowthMeasureSectionAssociation_PK] PRIMARY KEY CLUSTERED (
        [FactAsOfDate] ASC,
        [LocalCourseCode] ASC,
        [SchoolId] ASC,
        [SchoolYear] ASC,
        [SectionIdentifier] ASC,
        [SessionName] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureSectionAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureSectionAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] ADD CONSTRAINT [TeacherCandidateStudentGrowthMeasureSectionAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateTeacherPreparationProviderAssociation] --
CREATE TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] (
    [EntryDate] [DATE] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TeacherPreparationProviderId] [INT] NOT NULL,
    [SchoolYear] [SMALLINT] NULL,
    [EntryTypeDescriptorId] [INT] NULL,
    [ExitWithdrawDate] [DATE] NULL,
    [ExitWithdrawTypeDescriptorId] [INT] NULL,
    [ClassOfSchoolYear] [SMALLINT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateTeacherPreparationProviderAssociation_PK] PRIMARY KEY CLUSTERED (
        [EntryDate] ASC,
        [TeacherCandidateIdentifier] ASC,
        [TeacherPreparationProviderId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ADD CONSTRAINT [TeacherCandidateTeacherPreparationProviderAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ADD CONSTRAINT [TeacherCandidateTeacherPreparationProviderAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ADD CONSTRAINT [TeacherCandidateTeacherPreparationProviderAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] --
CREATE TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] (
    [BeginDate] [DATE] NOT NULL,
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [EndDate] [DATE] NULL,
    [ReasonExitedDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherCandidateTeacherPreparationProviderProgramAssociation_PK] PRIMARY KEY CLUSTERED (
        [BeginDate] ASC,
        [EducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC,
        [TeacherCandidateIdentifier] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] ADD CONSTRAINT [TeacherCandidateTeacherPreparationProviderProgramAssociation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] ADD CONSTRAINT [TeacherCandidateTeacherPreparationProviderProgramAssociation_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] ADD CONSTRAINT [TeacherCandidateTeacherPreparationProviderProgramAssociation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherCandidateTelephone] --
CREATE TABLE [extension].[TeacherCandidateTelephone] (
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [TelephoneNumberTypeDescriptorId] [INT] NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [OrderOfPriority] [INT] NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [DoNotPublishIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateTelephone_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateIdentifier] ASC,
        [TelephoneNumberTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateTelephone] ADD CONSTRAINT [TeacherCandidateTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherCandidateVisa] --
CREATE TABLE [extension].[TeacherCandidateVisa] (
    [TeacherCandidateIdentifier] [NVARCHAR](32) NOT NULL,
    [VisaDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherCandidateVisa_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateIdentifier] ASC,
        [VisaDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateVisa] ADD CONSTRAINT [TeacherCandidateVisa_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherPreparationProgramTypeDescriptor] --
CREATE TABLE [extension].[TeacherPreparationProgramTypeDescriptor] (
    [TeacherPreparationProgramTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TeacherPreparationProgramTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherPreparationProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[TeacherPreparationProvider] --
CREATE TABLE [extension].[TeacherPreparationProvider] (
    [TeacherPreparationProviderId] [INT] NOT NULL,
    [UniversityId] [INT] NULL,
    CONSTRAINT [TeacherPreparationProvider_PK] PRIMARY KEY CLUSTERED (
        [TeacherPreparationProviderId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[TeacherPreparationProviderProgram] --
CREATE TABLE [extension].[TeacherPreparationProviderProgram] (
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [ProgramId] [NVARCHAR](20) NULL,
    [MajorSpecialization] [NVARCHAR](75) NULL,
    [MinorSpecialization] [NVARCHAR](75) NULL,
    [TeacherPreparationProgramTypeDescriptorId] [INT] NULL,
    [TPPProgramPathwayDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL,
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL,
    CONSTRAINT [TeacherPreparationProviderProgram_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherPreparationProviderProgram] ADD CONSTRAINT [TeacherPreparationProviderProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherPreparationProviderProgram] ADD CONSTRAINT [TeacherPreparationProviderProgram_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherPreparationProviderProgram] ADD CONSTRAINT [TeacherPreparationProviderProgram_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate]
GO

-- Table [extension].[TeacherPreparationProviderProgramGradeLevel] --
CREATE TABLE [extension].[TeacherPreparationProviderProgramGradeLevel] (
    [EducationOrganizationId] [INT] NOT NULL,
    [GradeLevelDescriptorId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherPreparationProviderProgramGradeLevel_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [GradeLevelDescriptorId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherPreparationProviderProgramGradeLevel] ADD CONSTRAINT [TeacherPreparationProviderProgramGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[TeacherPreparationProviderProgramTPPProgramDegree] --
CREATE TABLE [extension].[TeacherPreparationProviderProgramTPPProgramDegree] (
    [EducationOrganizationId] [INT] NOT NULL,
    [ProgramName] [NVARCHAR](60) NOT NULL,
    [ProgramTypeDescriptorId] [INT] NOT NULL,
    [AcademicSubjectDescriptorId] [INT] NOT NULL,
    [TPPDegreeTypeDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL,
    CONSTRAINT [TeacherPreparationProviderProgramTPPProgramDegree_PK] PRIMARY KEY CLUSTERED (
        [EducationOrganizationId] ASC,
        [ProgramName] ASC,
        [ProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherPreparationProviderProgramTPPProgramDegree] ADD CONSTRAINT [TeacherPreparationProviderProgramTPPProgramDegree_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

-- Table [extension].[ThemeDescriptor] --
CREATE TABLE [extension].[ThemeDescriptor] (
    [ThemeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ThemeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ThemeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[TPPDegreeTypeDescriptor] --
CREATE TABLE [extension].[TPPDegreeTypeDescriptor] (
    [TPPDegreeTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TPPDegreeTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TPPDegreeTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[TPPProgramPathwayDescriptor] --
CREATE TABLE [extension].[TPPProgramPathwayDescriptor] (
    [TPPProgramPathwayDescriptorId] [INT] NOT NULL,
    CONSTRAINT [TPPProgramPathwayDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TPPProgramPathwayDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[University] --
CREATE TABLE [extension].[University] (
    [UniversityId] [INT] NOT NULL,
    CONSTRAINT [University_PK] PRIMARY KEY CLUSTERED (
        [UniversityId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

-- Table [extension].[ValueTypeDescriptor] --
CREATE TABLE [extension].[ValueTypeDescriptor] (
    [ValueTypeDescriptorId] [INT] NOT NULL,
    CONSTRAINT [ValueTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ValueTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

