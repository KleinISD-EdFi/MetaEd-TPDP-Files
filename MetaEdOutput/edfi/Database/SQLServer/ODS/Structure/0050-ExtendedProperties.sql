-- Extended Properties [edfi].[AbsenceEventCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes the type of absence', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AbsenceEventCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryDescriptorId'
GO

-- Extended Properties [edfi].[AcademicHonorCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A designation of the type of academic distinctions earned by or awarded to the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AcademicHonorCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AcademicHonorCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AcademicHonorCategoryDescriptorId'
GO

-- Extended Properties [edfi].[AcademicSubjectDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AcademicSubjectDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AcademicSubjectDescriptor', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO

-- Extended Properties [edfi].[AcademicWeek] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the academic weeks for a school year, optionally captured to support analyses.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AcademicWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AcademicWeek', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school label for the week.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AcademicWeek', @level2type=N'COLUMN', @level2name=N'WeekIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The start date for the academic week.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AcademicWeek', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the academic week.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AcademicWeek', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total instructional days during the academic week.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AcademicWeek', @level2type=N'COLUMN', @level2name=N'TotalInstructionalDays'
GO

-- Extended Properties [edfi].[AccommodationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines variations used in how an assessment is presented or taken.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AccommodationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccommodationDescriptor', @level2type=N'COLUMN', @level2name=N'AccommodationDescriptorId'
GO

-- Extended Properties [edfi].[Account] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This financial entity represents a funding source combined with its purpose and type of transaction. It provides a formal record of the debits and credits relating to the specific account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Account'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alphanumeric string that identifies the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The financial accounting year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A descriptive name for the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Account', @level2type=N'COLUMN', @level2name=N'AccountName'
GO

-- Extended Properties [edfi].[AccountabilityRating] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An accountability rating for a school or district.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AccountabilityRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountabilityRating', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the rating (e.g., School Rating, Safety Score).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountabilityRating', @level2type=N'COLUMN', @level2name=N'RatingTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the AccountabilityRating is assessed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountabilityRating', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An accountability rating level, designation, or assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountabilityRating', @level2type=N'COLUMN', @level2name=N'Rating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the rating was awarded.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountabilityRating', @level2type=N'COLUMN', @level2name=N'RatingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization that assessed the rating.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountabilityRating', @level2type=N'COLUMN', @level2name=N'RatingOrganization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The program associated with the AccountabilityRating (e.g., NCLB, AEIS).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountabilityRating', @level2type=N'COLUMN', @level2name=N'RatingProgram'
GO

-- Extended Properties [edfi].[AccountAccountCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of account codes defined for the education accounting system organized by account code type (e.g., fund, function, object) that map to the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AccountAccountCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of account code associated with the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountAccountCode', @level2type=N'COLUMN', @level2name=N'AccountClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An account code defined for the education accounting system by the education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountAccountCode', @level2type=N'COLUMN', @level2name=N'AccountCodeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alphanumeric string that identifies the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountAccountCode', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountAccountCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The financial accounting year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountAccountCode', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO

-- Extended Properties [edfi].[AccountClassificationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the set of account code categories defined for the education accounting system organized by account code type (e.g., fund, function, object).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AccountClassificationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountClassificationDescriptor', @level2type=N'COLUMN', @level2name=N'AccountClassificationDescriptorId'
GO

-- Extended Properties [edfi].[AccountCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of account codes defined by an education organization for a fiscal year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AccountCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of account code associated with the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountCode', @level2type=N'COLUMN', @level2name=N'AccountClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An account code defined for the education accounting system by the education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountCode', @level2type=N'COLUMN', @level2name=N'AccountCodeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The financial accounting year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountCode', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the account code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AccountCode', @level2type=N'COLUMN', @level2name=N'AccountCodeDescription'
GO

-- Extended Properties [edfi].[AchievementCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AchievementCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AchievementCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO

-- Extended Properties [edfi].[Actual] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This financial entity represents the sum of the financial transactions to date relating to a specific account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Actual'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alphanumeric string that identifies the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Actual', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the reported actual element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Actual', @level2type=N'COLUMN', @level2name=N'AsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Actual', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The financial accounting year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Actual', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current balance for the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Actual', @level2type=N'COLUMN', @level2name=N'AmountToDate'
GO

-- Extended Properties [edfi].[AdditionalCreditTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of additional credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AdditionalCreditTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AdditionalCreditTypeDescriptor', @level2type=N'COLUMN', @level2name=N'AdditionalCreditTypeDescriptorId'
GO

-- Extended Properties [edfi].[AddressTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AddressTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AddressTypeDescriptor', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO

-- Extended Properties [edfi].[AdministrationEnvironmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The environment in which the test was administered. For example:
    Electronic
    Classroom
    Testing Center
    ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AdministrationEnvironmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AdministrationEnvironmentDescriptor', @level2type=N'COLUMN', @level2name=N'AdministrationEnvironmentDescriptorId'
GO

-- Extended Properties [edfi].[AdministrativeFundingControlDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the type of education institution as classified by its funding source (e.g., public or private).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AdministrativeFundingControlDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AdministrativeFundingControlDescriptor', @level2type=N'COLUMN', @level2name=N'AdministrativeFundingControlDescriptorId'
GO

-- Extended Properties [edfi].[Assessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents a tool, instrument, process, or exhibition composed of a systematic sampling of behavior for measuring a student''s competence, knowledge,skills, or behavior. An assessment can be used to measure differences in individuals or groups and changes in performance from one occasion to the next.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Assessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of an assessment based on format and content. For example:
        Achievement test
        Advanced placement test
        Alternate assessment/grade-level standards
        Attitudinal test
        Cognitive and perceptual skills test
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'AssessmentCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'If the assessment spans a range of grades, then this attribute holds the lowest grade assessed. If only one grade level is assessed, then this attribute is omitted. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'LowestAssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the form of the assessment, for example a regular versus makeup form, multiple choice versus constructed response, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'AssessmentForm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year that the conceptual design for the assessment was most recently revised substantially.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'RevisionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum raw score achievable across all assessment items that are correct and scored at the maximum.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'MaxRawScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the specific nomenclature used for Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'Nomenclature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The AssessmentFamily this Assessment is a member of.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'AssessmentFamily'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Assessment', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

-- Extended Properties [edfi].[AssessmentCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the category of an assessment based on format and content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentCategoryDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentContentStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication as to whether an assessment conforms to a standard (e.g., local standard, statewide standard, regional standard, association standard).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentContentStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the content standard, for example Common Core.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unambiguous reference to the standards using a network-resolvable URI.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'URI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year at which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'MandatingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The beginning of the period during which this learning standard document is intended for use.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end of the period during which this learning standard document is intended for use.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandard', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[AssessmentContentStandardAuthor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person or organization chiefly responsible for the intellectual content of the standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentContentStandardAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person or organization chiefly responsible for the intellectual content of the standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'Author'
GO

-- Extended Properties [edfi].[AssessmentIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an assessment by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationCode', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssessmentIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an assessment by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the assessment identification code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO

-- Extended Properties [edfi].[AssessmentIdentificationSystemDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds a coding scheme that is used for identification and record-keeping purposes by schools, social services or other agencies to refer to an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentIdentificationSystemDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentIdentificationSystemDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentIdentificationSystemDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentItem] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents one of many single measures that make up an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category or type of the AssessmentItem. For example:
        Multiple choice
        Analytic
        Prose
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentItemCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum raw score achievable across all assessment items that are correct and scored at the maximum.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'MaxRawScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The correct response for the AssessmentItem.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'CorrectResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The duration of time allotted for the AssessmentItem.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'ExpectedTimeAssessed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the specific nomenclature used for AssessmentItem.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'Nomenclature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the entry in an assessment item bank, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItem', @level2type=N'COLUMN', @level2name=N'AsessmentItemURI'
GO

-- Extended Properties [edfi].[AssessmentItemCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Category or type of the assessment item (e.g., Multiple Choice, Analytic, Prose).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentItemCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentItemCategoryDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentItemLearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LearningStandard tested by this item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentItemLearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemLearningStandard', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemLearningStandard', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemLearningStandard', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemLearningStandard', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemLearningStandard', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemLearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO

-- Extended Properties [edfi].[AssessmentItemResultDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The analyzed result of a student''s response to an assessment item.. For example:
    Correct
    Incorrect
    Met standard
    ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentItemResultDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentItemResultDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentItemResultDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the languages in which the assessment is designed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentLanguage', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentLanguage', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentLanguage', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentLanguage', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the languages in which the assessment is designed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Definition of the performance levels and the associated cut scores. Three styles are supported:
        1. Specification of performance level by minimum and maximum score
        2. Specification of performance level by cut score, using only minimum score
        3. Specification of performance level without any mapping to scores.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The performance level(s) defined for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score required to make the indicated level of performance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'MinimumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score to make the indicated level of performance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'MaximumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile,range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The period or window in which an assessment is supposed to be administered.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriod', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriod', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriod', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriod', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The period of time in which an assessment is supposed to be administered (e.g., Beginning of Year, Middle of Year, End of Year).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriod', @level2type=N'COLUMN', @level2name=N'AssessmentPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the assessment is to be administered.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the assessment is to be administered.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[AssessmentPeriodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the period of time window in which an assessment is supposed to be administered (e.g., Beginning of Year, Middle of Year, End of Year).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentPeriodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentPeriodDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The programs associated with the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentProgram', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentProgram', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentProgram', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentProgram', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentProgram', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentProgram', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentReportingMethodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentReportingMethodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentReportingMethodDescriptor', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentScore] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Definition of the scores to be expected from this assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'MinimumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'MaximumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentScore', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[AssessmentSection] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Section(s) to which the Assessment is associated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AssessmentSection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AssessmentSection', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[AttemptStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor describes a student''s attempt status for a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AttemptStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AttemptStatusDescriptor', @level2type=N'COLUMN', @level2name=N'AttemptStatusDescriptorId'
GO

-- Extended Properties [edfi].[AttendanceEventCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the category of the attendance event (e.g., tardy). The map to known enumeration values is required.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'AttendanceEventCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'AttendanceEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO

-- Extended Properties [edfi].[BehaviorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the categories of behavior describing a discipline incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'BehaviorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BehaviorDescriptor', @level2type=N'COLUMN', @level2name=N'BehaviorDescriptorId'
GO

-- Extended Properties [edfi].[BellSchedule] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the schedule of class period meeting times.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'BellSchedule'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name or title of the BellSchedule.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellSchedule', @level2type=N'COLUMN', @level2name=N'BellScheduleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellSchedule', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An alternate name for the day (e.g., Red, Blue).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellSchedule', @level2type=N'COLUMN', @level2name=N'AlternateDayName'
GO

-- Extended Properties [edfi].[BellScheduleClassPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The class periods that compose this BellSchedule.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'BellScheduleClassPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name or title of the BellSchedule.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleClassPeriod', @level2type=N'COLUMN', @level2name=N'BellScheduleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleClassPeriod', @level2type=N'COLUMN', @level2name=N'ClassPeriodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleClassPeriod', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

-- Extended Properties [edfi].[BellScheduleDate] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The dates for which the BellSchedule applies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'BellScheduleDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name or title of the BellSchedule.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleDate', @level2type=N'COLUMN', @level2name=N'BellScheduleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The dates for which the BellSchedule applies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleDate', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleDate', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

-- Extended Properties [edfi].[BellScheduleGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels the particular BellSchedule applies to.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'BellScheduleGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name or title of the BellSchedule.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleGradeLevel', @level2type=N'COLUMN', @level2name=N'BellScheduleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels the particular BellSchedule applies to.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'BellScheduleGradeLevel', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

-- Extended Properties [edfi].[Budget] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This financial entity represents the amount of monies allocated to be spent or received by an education organization as related to a specific account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Budget'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alphanumeric string that identifies the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Budget', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the reported budget element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Budget', @level2type=N'COLUMN', @level2name=N'AsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Budget', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The financial accounting year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Budget', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Amount budgeted for the account for this fiscal year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Budget', @level2type=N'COLUMN', @level2name=N'Amount'
GO

-- Extended Properties [edfi].[Calendar] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A set of dates associated with an organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Calendar'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Calendar', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Calendar', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Calendar', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type of Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Calendar', @level2type=N'COLUMN', @level2name=N'CalendarTypeDescriptorId'
GO

-- Extended Properties [edfi].[CalendarDate] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of scheduled or unscheduled event for the day.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CalendarDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDate', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the CalendarEvent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDate', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDate', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDate', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [edfi].[CalendarDateCalendarEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of scheduled or unscheduled event for the day.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CalendarDateCalendarEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDateCalendarEvent', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of scheduled or unscheduled event for the day.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDateCalendarEvent', @level2type=N'COLUMN', @level2name=N'CalendarEventDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the CalendarEvent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDateCalendarEvent', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDateCalendarEvent', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarDateCalendarEvent', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [edfi].[CalendarEventDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the types of scheduled or unscheduled event for the day (e.g., Instructional day, Teacher only day, Holiday, Make-up day, Weather day, Student late arrival/early dismissal day).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CalendarEventDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarEventDescriptor', @level2type=N'COLUMN', @level2name=N'CalendarEventDescriptorId'
GO

-- Extended Properties [edfi].[CalendarGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the GradeLevel associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CalendarGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarGradeLevel', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the GradeLevel associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarGradeLevel', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year associated with the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarGradeLevel', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [edfi].[CalendarTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the calendar types.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CalendarTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CalendarTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CalendarTypeDescriptorId'
GO

-- Extended Properties [edfi].[CareerPathwayDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CareerPathwayDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CareerPathwayDescriptor', @level2type=N'COLUMN', @level2name=N'CareerPathwayDescriptorId'
GO

-- Extended Properties [edfi].[CharterApprovalAgencyTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of agency that approved the establishment or continuation of a charter school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CharterApprovalAgencyTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CharterApprovalAgencyTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CharterApprovalAgencyTypeDescriptorId'
GO

-- Extended Properties [edfi].[CharterStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of charter school. For example: School Charter, Open Enrollment Charter.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CharterStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CharterStatusDescriptor', @level2type=N'COLUMN', @level2name=N'CharterStatusDescriptorId'
GO

-- Extended Properties [edfi].[CitizenshipStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the person is a U.S. citizen.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CitizenshipStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CitizenshipStatusDescriptor', @level2type=N'COLUMN', @level2name=N'CitizenshipStatusDescriptorId'
GO

-- Extended Properties [edfi].[ClassPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the designation of a regularly scheduled series of class meetings at designated times and days of the week.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ClassPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassPeriod', @level2type=N'COLUMN', @level2name=N'ClassPeriodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassPeriod', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether this class period is used for official daily attendance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassPeriod', @level2type=N'COLUMN', @level2name=N'OfficialAttendancePeriod'
GO

-- Extended Properties [edfi].[ClassPeriodMeetingTime] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The meeting time(s) for a class period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ClassPeriodMeetingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassPeriodMeetingTime', @level2type=N'COLUMN', @level2name=N'ClassPeriodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the time of day the meeting time ends.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassPeriodMeetingTime', @level2type=N'COLUMN', @level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassPeriodMeetingTime', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the time of day the meeting time begins.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassPeriodMeetingTime', @level2type=N'COLUMN', @level2name=N'StartTime'
GO

-- Extended Properties [edfi].[ClassroomPositionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the type of position the staff member holds in a specific class/section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ClassroomPositionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ClassroomPositionDescriptor', @level2type=N'COLUMN', @level2name=N'ClassroomPositionDescriptorId'
GO

-- Extended Properties [edfi].[Cohort] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents any type of list of designated students for tracking, analysis, or intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Cohort'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or ID for the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Cohort', @level2type=N'COLUMN', @level2name=N'CohortIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Cohort', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the Cohort and its purpose.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Cohort', @level2type=N'COLUMN', @level2name=N'CohortDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of cohort (e.g., academic intervention, classroom breakout).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Cohort', @level2type=N'COLUMN', @level2name=N'CohortTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The scope of cohort (e.g., school, district, classroom).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Cohort', @level2type=N'COLUMN', @level2name=N'CohortScopeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject associated with an academic intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Cohort', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO

-- Extended Properties [edfi].[CohortProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The (optional) program associated with this Cohort (e.g., special education).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CohortProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or ID for the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortProgram', @level2type=N'COLUMN', @level2name=N'CohortIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortProgram', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortProgram', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortProgram', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [edfi].[CohortScopeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The scope of cohort (e.g., school, district, classroom).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CohortScopeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortScopeDescriptor', @level2type=N'COLUMN', @level2name=N'CohortScopeDescriptorId'
GO

-- Extended Properties [edfi].[CohortTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the cohort (e.g., academic intervention, classroom breakout).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CohortTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CohortTypeDescriptorId'
GO

-- Extended Properties [edfi].[CohortYearTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The enumeration items for the set of cohort years.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CohortYearTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CohortYearTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CohortYearTypeDescriptorId'
GO

-- Extended Properties [edfi].[CommunityOrganization] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an administrative unit at the state level which exists primarily to operate local community providers.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CommunityOrganization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a CommunityOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityOrganization', @level2type=N'COLUMN', @level2name=N'CommunityOrganizationId'
GO

-- Extended Properties [edfi].[CommunityProvider] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CommunityProvider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a CommunityProvider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProvider', @level2type=N'COLUMN', @level2name=N'CommunityProviderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a CommunityOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProvider', @level2type=N'COLUMN', @level2name=N'CommunityOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the profitability status of the provider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProvider', @level2type=N'COLUMN', @level2name=N'ProviderProfitabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the status of the provider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProvider', @level2type=N'COLUMN', @level2name=N'ProviderStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the category of the provider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProvider', @level2type=N'COLUMN', @level2name=N'ProviderCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the community provider is a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProvider', @level2type=N'COLUMN', @level2name=N'SchoolIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the provider is exempt from having a license.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProvider', @level2type=N'COLUMN', @level2name=N'LicenseExemptIndicator'
GO

-- Extended Properties [edfi].[CommunityProviderLicense] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal document held by the CommunityProvider that authorizes the holder to perform certain functions and or services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CommunityProviderLicense'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a CommunityProvider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'CommunityProviderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier issued by the licensing organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'LicenseIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization issuing the license.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'LicensingOrganization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which a license is active or becomes effective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'LicenseEffectiveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which a license will expire.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'LicenseExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active license was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'LicenseIssueDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the status of the license.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'LicenseStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of the license.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'LicenseTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum number that can be contained or accommodated which a provider is authorized or licensed to serve.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'AuthorizedFacilityCapacity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The oldest age of children a provider is authorized or licensed to serve.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'OldestAgeAuthorizedToServe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The youngest age of children a provider is authorized or licensed to serve.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CommunityProviderLicense', @level2type=N'COLUMN', @level2name=N'YoungestAgeAuthorizedToServe'
GO

-- Extended Properties [edfi].[CompetencyLevelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines various levels for assessed competencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CompetencyLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CompetencyLevelDescriptor', @level2type=N'COLUMN', @level2name=N'CompetencyLevelDescriptorId'
GO

-- Extended Properties [edfi].[CompetencyObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity holds additional competencies for student achievement that are not associated with specific learning objectives (e.g., paying attention in class).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CompetencyObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CompetencyObjective', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CompetencyObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the CompetencyObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CompetencyObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Identifier for the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CompetencyObjective', @level2type=N'COLUMN', @level2name=N'CompetencyObjectiveId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the student competency objective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CompetencyObjective', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One or more statements that describes the criteria used by teachers and students to check for attainment of a competency objective. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CompetencyObjective', @level2type=N'COLUMN', @level2name=N'SuccessCriteria'
GO

-- Extended Properties [edfi].[ContactTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the set of contact types.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ContactTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContactTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ContactTypeDescriptorId'
GO

-- Extended Properties [edfi].[ContentClassDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The predominate type or kind characterizing the learning resource.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ContentClassDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContentClassDescriptor', @level2type=N'COLUMN', @level2name=N'ContentClassDescriptorId'
GO

-- Extended Properties [edfi].[ContinuationOfServicesReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'In the Migrant Education program, a provision allows continuation of services after a child is no longer considered migratory for certain reasons. This descriptor holds the reasons prescribed in the statute. The mapping of descriptor values to known Ed-Fi enumeration values is required.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ContinuationOfServicesReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContinuationOfServicesReasonDescriptor', @level2type=N'COLUMN', @level2name=N'ContinuationOfServicesReasonDescriptorId'
GO

-- Extended Properties [edfi].[ContractedStaff] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This financial entity represents the sum of the financial transactions to date for contracted staff. ContractedStaff includes "contractors" or "consultants" who perform services for an agreed upon fee, or an employee of a management service contracted to work on site.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ContractedStaff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alphanumeric string that identifies the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContractedStaff', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the reported contracted staff element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContractedStaff', @level2type=N'COLUMN', @level2name=N'AsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContractedStaff', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The financial accounting year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContractedStaff', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContractedStaff', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current balance (amount paid to contractor) for account for the fiscal year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ContractedStaff', @level2type=N'COLUMN', @level2name=N'AmountToDate'
GO

-- Extended Properties [edfi].[CostRateDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rate by which a cost applies (e.g. $1 per student).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CostRateDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CostRateDescriptor', @level2type=N'COLUMN', @level2name=N'CostRateDescriptorId'
GO

-- Extended Properties [edfi].[CountryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the name and code of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CountryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CountryDescriptor', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO

-- Extended Properties [edfi].[Course] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This educational entity represents the organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Course'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, and language arts).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of parts identified for a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'NumberOfParts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the content standards and goals covered in the course. Reference may be made to state or national content standards.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'CourseDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actual or estimated number of clock minutes required for class completion.  This number is especially important for career and technical education classes and may represent (in minutes) the clock hour requirement of the class.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'TimeRequiredForCompletion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the course was adopted by the education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'DateCourseAdopted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that this course may satisfy high school graduation requirements in the course''s subject area.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'HighSchoolCourseRequirement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the course being described is included in the computation of the student''s Grade Point Average, and if so, if it is weighted differently from regular courses.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'CourseGPAApplicabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies whether the course was defined by the SEA, LEA, School, or national organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'CourseDefinedByDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'MinimumAvailableCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'MinimumAvailableCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'MinimumAvailableCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'MaximumAvailableCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'MaximumAvailableCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'MaximumAvailableCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the career cluster or pathway the course is associated with as part of a CTE curriculum.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'CareerPathwayDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Designates how many times the course may be taken with credit received by the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Course', @level2type=N'COLUMN', @level2name=N'MaxCompletionsForCredit'
GO

-- Extended Properties [edfi].[CourseAttemptResultDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
    Pass
    Fail
    Incomplete
    Withdrawn', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseAttemptResultDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseAttemptResultDescriptor', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO

-- Extended Properties [edfi].[CourseCompetencyLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The competency levels defined to rate the student for the course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseCompetencyLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The competency levels defined to rate the student for the course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseCompetencyLevel', @level2type=N'COLUMN', @level2name=N'CompetencyLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseCompetencyLevel', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseCompetencyLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

-- Extended Properties [edfi].[CourseDefinedByDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies whether the course was defined by the state education agency, local education agency, school, or national organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseDefinedByDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseDefinedByDescriptor', @level2type=N'COLUMN', @level2name=N'CourseDefinedByDescriptorId'
GO

-- Extended Properties [edfi].[CourseGPAApplicabilityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not this course being described is included in the computation of the student''s Grade Point Average, and if so, if it is weighted differently than regular courses.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseGPAApplicabilityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseGPAApplicabilityDescriptor', @level2type=N'COLUMN', @level2name=N'CourseGPAApplicabilityDescriptorId'
GO

-- Extended Properties [edfi].[CourseIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code that identifies the organization of subject matter and related learning experiences provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a "/". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the Identification Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO

-- Extended Properties [edfi].[CourseIdentificationSystemDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines a standard code that identifies the organization of subject matter and related learning experiences provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseIdentificationSystemDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseIdentificationSystemDescriptor', @level2type=N'COLUMN', @level2name=N'CourseIdentificationSystemDescriptorId'
GO

-- Extended Properties [edfi].[CourseLearningObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Learning Objectives to be mastered in the course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseLearningObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningObjective', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningObjective', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningObjective', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO

-- Extended Properties [edfi].[CourseLearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Learning Standard(s) to be taught by the course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseLearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningStandard', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningStandard', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO

-- Extended Properties [edfi].[CourseLevelCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseLevelCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'CourseLevelCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

-- Extended Properties [edfi].[CourseLevelCharacteristicDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The item for indication of the nature and difficulty of instruction: Remedial, Basic, Honors, Ap, IB, Dual Credit, CTE. etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseLevelCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseLevelCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'CourseLevelCharacteristicDescriptorId'
GO

-- Extended Properties [edfi].[CourseOfferedGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels in which the course is offered.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseOfferedGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferedGradeLevel', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferedGradeLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels in which the course is offered.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferedGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO

-- Extended Properties [edfi].[CourseOffering] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an entry in the course catalog of available courses offered by the school during a session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseOffering'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in the school, if different from the CourseTitle.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'LocalCourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The planned total number of clock minutes of instruction for this course offering. Generally, this should be at least as many minutes as is required for completion by the related state- or district-defined course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'InstructionalTimePlanned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOffering', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

-- Extended Properties [edfi].[CourseOfferingCurriculumUsed] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of curriculum used in an early learning classroom or group.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseOfferingCurriculumUsed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of curriculum used in an early learning classroom or group.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferingCurriculumUsed', @level2type=N'COLUMN', @level2name=N'CurriculumUsedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferingCurriculumUsed', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferingCurriculumUsed', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferingCurriculumUsed', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseOfferingCurriculumUsed', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[CourseRepeatCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseRepeatCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseRepeatCodeDescriptor', @level2type=N'COLUMN', @level2name=N'CourseRepeatCodeDescriptorId'
GO

-- Extended Properties [edfi].[CourseTranscript] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity is the final record of a student''s performance in their courses at the end of a semester or school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscript'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s grade level at time of course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'WhenTakenGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method the credits were earned (e.g., Classroom, Examination, Transfer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'MethodCreditEarnedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalLetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseRepeatCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in the school, if different from the CourseTitle.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'AlternativeCourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the school that identifies the course offering, the code from an external educational organization, or other alternate course code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'AlternativeCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscript', @level2type=N'COLUMN', @level2name=N'ExternalEducationOrganizationId'
GO

-- Extended Properties [edfi].[CourseTranscriptEarnedAdditionalCredits] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of additional credits a student attempted and could earn for successfully completing a given course (e.g., dual credit, AP, IB).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CourseTranscriptEarnedAdditionalCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'AdditionalCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'Credits'
GO

-- Extended Properties [edfi].[Credential] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal document giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Credential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year, month and day on which an active credential held by an individual was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'EffectiveDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active credential held by an individual will expire.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'ExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field of certification for the certificate (e.g., Mathematics, Music).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'CredentialFieldDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active credential was issued to an individual.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'IssuanceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of credential an individual holds.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'CredentialTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'TeachingCredentialDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the pre-determined criteria for granting the teaching credential that an individual holds.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'TeachingCredentialBasisDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the Credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Credential', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

-- Extended Properties [edfi].[CredentialAcademicSubject] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subjects to which the credential pertains.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CredentialAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subjects to which the credential pertains.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialAcademicSubject', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialAcademicSubject', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[CredentialEndorsement] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endorsements are attachments to teaching certificates and indicate areas of specialization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CredentialEndorsement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Endorsements are attachments to teaching certificates and indicate areas of specialization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialEndorsement', @level2type=N'COLUMN', @level2name=N'CredentialEndorsement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialEndorsement', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialEndorsement', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[CredentialFieldDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the fields of certification that the state education agency offers to teachers.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CredentialFieldDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialFieldDescriptor', @level2type=N'COLUMN', @level2name=N'CredentialFieldDescriptorId'
GO

-- Extended Properties [edfi].[CredentialGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level(s) certified for teaching.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CredentialGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialGradeLevel', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level(s) certified for teaching.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialGradeLevel', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[CredentialTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of credential an individual holds.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CredentialTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CredentialTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CredentialTypeDescriptorId'
GO

-- Extended Properties [edfi].[CreditTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CreditTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CreditTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CreditTypeDescriptorId'
GO

-- Extended Properties [edfi].[CurriculumUsedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of curriculum used in an early learning classroom or group.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'CurriculumUsedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'CurriculumUsedDescriptor', @level2type=N'COLUMN', @level2name=N'CurriculumUsedDescriptorId'
GO

-- Extended Properties [edfi].[DeliveryMethodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DeliveryMethodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DeliveryMethodDescriptor', @level2type=N'COLUMN', @level2name=N'DeliveryMethodDescriptorId'
GO

-- Extended Properties [edfi].[Descriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This is the base entity for the descriptor pattern.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Descriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'DescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A globally unique namespace that identifies this descriptor set. Author is strongly encouraged to use the Universal Resource Identifier (http, ftp, file, etc.) for the source of the descriptor definition. Best practice is for this source to be the descriptor file itself, so that it can be machine-readable and be fetched in real-time, if necessary.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'Namespace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code or abbreviation that is used to refer to the descriptor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A shortened description for the descriptor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the descriptor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'PriorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The beginning date of the period when the descriptor is in effect. If omitted, the default is immediate effectiveness.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'EffectiveBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date of the period when the descriptor is in effect.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Descriptor', @level2type=N'COLUMN', @level2name=N'EffectiveEndDate'
GO

-- Extended Properties [edfi].[DiagnosisDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines diagnoses that interventions are intended to target.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DiagnosisDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DiagnosisDescriptor', @level2type=N'COLUMN', @level2name=N'DiagnosisDescriptorId'
GO

-- Extended Properties [edfi].[DiplomaLevelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DiplomaLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DiplomaLevelDescriptor', @level2type=N'COLUMN', @level2name=N'DiplomaLevelDescriptorId'
GO

-- Extended Properties [edfi].[DiplomaTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DiplomaTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DiplomaTypeDescriptor', @level2type=N'COLUMN', @level2name=N'DiplomaTypeDescriptorId'
GO

-- Extended Properties [edfi].[DisabilityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines a student''s impairment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisabilityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisabilityDescriptor', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO

-- Extended Properties [edfi].[DisabilityDesignationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of disability designation (e.g., IDEA, Section 504).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisabilityDesignationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisabilityDesignationDescriptor', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO

-- Extended Properties [edfi].[DisabilityDeterminationSourceTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisabilityDeterminationSourceTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisabilityDeterminationSourceTypeDescriptor', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO

-- Extended Properties [edfi].[DisciplineAction] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents actions taken by an education organization after a disruptive event that is recorded as a discipline incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineAction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The length of time in school days for the DisciplineAction (e.g. removal, detention), if applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'DisciplineActionLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the actual length in school days of a student''s disciplinary assignment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'ActualDisciplineActionLength'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the reason for the difference, if any, between the official and actual lengths of a student''s disciplinary assignment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'DisciplineActionLengthDifferenceReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not this disciplinary action taken against a student was imposed as a consequence of state or local zero tolerance policies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'RelatedToZeroTolerancePolicy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'ResponsibilitySchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'AssignmentSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the student received educational services when removed from the regular school program for disciplinary reasons.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineAction', @level2type=N'COLUMN', @level2name=N'ReceivedEducationServicesDuringExpulsion'
GO

-- Extended Properties [edfi].[DisciplineActionDiscipline] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action, such as removal from the classroom, used to discipline the student involved as a perpetrator in a discipline incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineActionDiscipline'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionDiscipline', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionDiscipline', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of action, such as removal from the classroom, used to discipline the student involved as a perpetrator in a discipline incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionDiscipline', @level2type=N'COLUMN', @level2name=N'DisciplineDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionDiscipline', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[DisciplineActionLengthDifferenceReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the reason for the difference, if any, between the official and actual lengths of a student''s disciplinary assignment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineActionLengthDifferenceReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionLengthDifferenceReasonDescriptor', @level2type=N'COLUMN', @level2name=N'DisciplineActionLengthDifferenceReasonDescriptorId'
GO

-- Extended Properties [edfi].[DisciplineActionStaff] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The staff responsible for enforcing the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineActionStaff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStaff', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStaff', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStaff', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStaff', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[DisciplineActionStudentDisciplineIncidentAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference to the DisciplineIncident associated with the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineActionStudentDisciplineIncidentAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned by the education organization to the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'DisciplineActionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the DisciplineAction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'DisciplineDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineActionStudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[DisciplineDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the type of action or removal from the classroom used to discipline the student involved as a perpetrator in a discipline incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineDescriptor', @level2type=N'COLUMN', @level2name=N'DisciplineDescriptorId'
GO

-- Extended Properties [edfi].[DisciplineIncident] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents an occurrence of an infraction ranging from a minor behavioral problem that disrupts the orderly functioning of a school or classroom (such as tardiness) to a criminal act that results in the involvement of a law enforcement official (such as robbery). A single event (e.g., a fight) is one incident regardless of how many perpetrators or victims are involved. Discipline incidents are events classified as warranting discipline action.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineIncident'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the DisciplineIncident occurred.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'IncidentDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the time of day the incident took place.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'IncidentTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies where the DisciplineIncident occurred and whether or not it occurred on school, for example:
        On school
        Administrative offices area
        Cafeteria area
        Classroom
        Hallway or stairs
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'IncidentLocationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for an incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'IncidentDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information on the type of individual who reported the DisciplineIncident. When known and/or if useful, use a more specific option code (e.g., "Counselor" rather than "Professional Staff"); for example:
        Student
        Parent/guardian
        Law enforcement officer
        Nonschool personnel
        Representative of visiting school
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'ReporterDescriptionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the reporter of the DisciplineIncident by name.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'ReporterName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the incident was reported to law enforcement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'ReportedToLawEnforcement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The case number assigned to the DisciplineIncident by law enforcement or other organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'CaseNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of any quantifiable monetary loss directly resulting from the DisciplineIncident. Examples include the value of repairs necessitated by vandalism of a school facility, or the value of personnel resources used for repairs or consumed by the incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'IncidentCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncident', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[DisciplineIncidentBehavior] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes behavior by category and provides a detailed description.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineIncidentBehavior'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes behavior by category and provides a detailed description.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncidentBehavior', @level2type=N'COLUMN', @level2name=N'BehaviorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncidentBehavior', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncidentBehavior', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies a more granular level of detail of a behavior involved in the incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncidentBehavior', @level2type=N'COLUMN', @level2name=N'BehaviorDetailedDescription'
GO

-- Extended Properties [edfi].[DisciplineIncidentWeapon] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'DisciplineIncidentWeapon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncidentWeapon', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncidentWeapon', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the type of weapon used during an incident. The Federal Gun-Free Schools Act requires states to report the number of students expelled for bringing firearms to school by type of firearm.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'DisciplineIncidentWeapon', @level2type=N'COLUMN', @level2name=N'WeaponDescriptorId'
GO

-- Extended Properties [edfi].[EducationalEnvironmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The setting in which a child receives education and related services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationalEnvironmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationalEnvironmentDescriptor', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO

-- Extended Properties [edfi].[EducationContent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents materials for students or teachers that can be used for teaching, learning, research, and more. Education content includes full courses, course materials, modules, intervention descriptions, textbooks, streaming videos, tests, software, and any other tools, materials, or techniques used to support access to knowledge.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'LearningResourceMetadataURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A short description or name of the entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An extended written representation of the education content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether there are additional un-named authors. In a research report, this is often marked by the abbreviation "et al".', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'AdditionalAuthorsIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization credited with publishing the resource.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'Publisher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Approximate or typical time it takes to work with or through this learning resource for the typical intended target audience.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'TimeRequired'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'InteractivityStyleDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The predominate type or kind characterizing the learning resource.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'ContentClassDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URL where the owner specifies permissions for using the resource.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'UseRightsURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'PublicationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year at which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'PublicationYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An amount that has to be paid or spent to buy or obtain the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'Cost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rate by which the cost applies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'CostRateDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContent', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

-- Extended Properties [edfi].[EducationContentAppropriateGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels for which this education content is applicable-if omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContentAppropriateGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels for which this education content is applicable-if omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO

-- Extended Properties [edfi].[EducationContentAppropriateSex] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes for which this education content is applicable. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContentAppropriateSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentAppropriateSex', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes for which this education content is applicable. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentAppropriateSex', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO

-- Extended Properties [edfi].[EducationContentAuthor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual credited with the creation of the resource.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContentAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The individual credited with the creation of the resource.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentAuthor', @level2type=N'COLUMN', @level2name=N'Author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentAuthor', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO

-- Extended Properties [edfi].[EducationContentDerivativeSourceEducationContent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the education content source to the education content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContentDerivativeSourceEducationContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentDerivativeSourceEducationContent', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentDerivativeSourceEducationContent', @level2type=N'COLUMN', @level2name=N'DerivativeSourceContentIdentifier'
GO

-- Extended Properties [edfi].[EducationContentDerivativeSourceLearningResourceMetadataURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContentDerivativeSourceLearningResourceMetadataURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentDerivativeSourceLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentDerivativeSourceLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'DerivativeSourceLearningResourceMetadataURI'
GO

-- Extended Properties [edfi].[EducationContentDerivativeSourceURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContentDerivativeSourceURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentDerivativeSourceURI', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentDerivativeSourceURI', @level2type=N'COLUMN', @level2name=N'DerivativeSourceURI'
GO

-- Extended Properties [edfi].[EducationContentLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the languages in which the Education Content is designed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationContentLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentLanguage', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the languages in which the Education Content is designed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationContentLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO

-- Extended Properties [edfi].[EducationOrganization] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganization', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganization', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A short name for the institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganization', @level2type=N'COLUMN', @level2name=N'ShortNameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The public web site address (URL) for the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganization', @level2type=N'COLUMN', @level2name=N'WebSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current operational status of the EducationOrganization (e.g., active, inactive).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganization', @level2type=N'COLUMN', @level2name=N'OperationalStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(TPDP Extension) The federal locale code associated with an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganization', @level2type=N'COLUMN', @level2name=N'FederalLocaleCodeDescriptorId'
GO

-- Extended Properties [edfi].[EducationOrganizationAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes the physical location of the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[EducationOrganizationAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[EducationOrganizationCategory] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationCategory', @level2type=N'COLUMN', @level2name=N'EducationOrganizationCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationCategory', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

-- Extended Properties [edfi].[EducationOrganizationCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'EducationOrganizationCategoryDescriptorId'
GO

-- Extended Properties [edfi].[EducationOrganizationIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationIdentificationCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school system, state, or agency assigning the identification code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationIdentificationCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO

-- Extended Properties [edfi].[EducationOrganizationIdentificationSystemDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the originating record system and code that is used for record-keeping purposes by education organizations.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationIdentificationSystemDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationIdentificationSystemDescriptor', @level2type=N'COLUMN', @level2name=N'EducationOrganizationIdentificationSystemDescriptorId'
GO

-- Extended Properties [edfi].[EducationOrganizationInstitutionTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the education entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationInstitutionTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInstitutionTelephone', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInstitutionTelephone', @level2type=N'COLUMN', @level2name=N'InstitutionTelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInstitutionTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO

-- Extended Properties [edfi].[EducationOrganizationInternationalAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes the international physical location of the education entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[EducationOrganizationInterventionPrescriptionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates interventions made available by an education organization. Often, a district-level education organization purchases a set of intervention prescriptions and makes them available to its schools for use on demand.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationInterventionPrescriptionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInterventionPrescriptionAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInterventionPrescriptionAssociation', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInterventionPrescriptionAssociation', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The begin date of the period during which the InterventionPrescription is available.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInterventionPrescriptionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date of the period during which the InterventionPrescription is available.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationInterventionPrescriptionAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[EducationOrganizationNetwork] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity is a self-organized membership network of peer-level education organizations intended to provide shared services or collective procurement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationNetwork'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a network of education organizations.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationNetwork', @level2type=N'COLUMN', @level2name=N'EducationOrganizationNetworkId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The purpose(s) of the network (e.g., shared services, collective procurement).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationNetwork', @level2type=N'COLUMN', @level2name=N'NetworkPurposeDescriptorId'
GO

-- Extended Properties [edfi].[EducationOrganizationNetworkAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Properties of the association between the EducationOrganization and its network(s).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationNetworkAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a network of education organizations.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationNetworkAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationNetworkId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationNetworkAssociation', @level2type=N'COLUMN', @level2name=N'MemberEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the EducationOrganization joined this network.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationNetworkAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the EducationOrganization left this network.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationNetworkAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[EducationOrganizationPeerAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The association from an education organization to its peers.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationOrganizationPeerAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationPeerAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationOrganizationPeerAssociation', @level2type=N'COLUMN', @level2name=N'PeerEducationOrganizationId'
GO

-- Extended Properties [edfi].[EducationPlanDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of education plan(s) the student is following, if appropriate. For example:
    Special education
    Vocational.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationPlanDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationPlanDescriptor', @level2type=N'COLUMN', @level2name=N'EducationPlanDescriptorId'
GO

-- Extended Properties [edfi].[EducationServiceCenter] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents a regional, multi-services public agency authorized by state law to develop, manage and provide services, programs, or other support options (e.g., construction, food services, and technology services) to LEAs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EducationServiceCenter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education service center.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationServiceCenter', @level2type=N'COLUMN', @level2name=N'EducationServiceCenterId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a state education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EducationServiceCenter', @level2type=N'COLUMN', @level2name=N'StateEducationAgencyId'
GO

-- Extended Properties [edfi].[ElectronicMailTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ElectronicMailTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ElectronicMailTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeDescriptorId'
GO

-- Extended Properties [edfi].[EmploymentStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the type of employment or contract.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EmploymentStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EmploymentStatusDescriptor', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO

-- Extended Properties [edfi].[EntryGradeLevelReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EntryGradeLevelReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EntryGradeLevelReasonDescriptor', @level2type=N'COLUMN', @level2name=N'EntryGradeLevelReasonDescriptorId'
GO

-- Extended Properties [edfi].[EntryTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the process by which a student enters a school during a given academic session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EntryTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EntryTypeDescriptor', @level2type=N'COLUMN', @level2name=N'EntryTypeDescriptorId'
GO

-- Extended Properties [edfi].[EventCircumstanceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'EventCircumstanceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'EventCircumstanceDescriptor', @level2type=N'COLUMN', @level2name=N'EventCircumstanceDescriptorId'
GO

-- Extended Properties [edfi].[ExitWithdrawTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the circumstances under which the student exited from membership in an educational institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ExitWithdrawTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ExitWithdrawTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ExitWithdrawTypeDescriptorId'
GO

-- Extended Properties [edfi].[FederalLocaleCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'(TPDP Extension) The descriptor holds the federal locale code applicable to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'FederalLocaleCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'FederalLocaleCodeDescriptor', @level2type=N'COLUMN', @level2name=N'FederalLocaleCodeDescriptorId'
GO

-- Extended Properties [edfi].[FeederSchoolAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The association from feeder school to the receiving school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'FeederSchoolAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the first day of the feeder school association.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'FeederSchoolAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'FeederSchoolAssociation', @level2type=N'COLUMN', @level2name=N'FeederSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'FeederSchoolAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the last day of the feeder school association.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'FeederSchoolAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes the relationship from the feeder school to the receiving school, for example by program emphasis, such as special education, language immersion, science, or performing art.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'FeederSchoolAssociation', @level2type=N'COLUMN', @level2name=N'FeederRelationshipDescription'
GO

-- Extended Properties [edfi].[GeneralStudentProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association base class represents the basic relationship between students and programs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GeneralStudentProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student exited the Program or stopped receiving services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reason the child left the Program within a school or district.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ReasonExitedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the Student received services during the summer session or between sessions.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GeneralStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ServedOutsideOfRegularSession'
GO

-- Extended Properties [edfi].[Grade] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This educational entity represents an overall score or assessment tied to a course over a period of time (i.e., the grading period). Student grades are usually a compilation of marks and other scores.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Grade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of grade reported (e.g., Exam, Final, Grading Period).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'GradeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'LetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'NumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'DiagnosticStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A conversion of the level to a standard set of performance levels.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Grade', @level2type=N'COLUMN', @level2name=N'PerformanceBaseConversionDescriptorId'
GO

-- Extended Properties [edfi].[GradebookEntry] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an assignment, homework, or classroom assessment to be recorded in a gradebook.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradebookEntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the assignment, homework, or assessment was assigned or executed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'DateAssigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the activity to be recorded in the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'GradebookEntryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the GradebookEntry; for example, homework, assignment, quiz, unit test, oral presentation, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'GradebookEntryTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the assignment, homework, or classroom assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntry', @level2type=N'COLUMN', @level2name=N'PeriodSequence'
GO

-- Extended Properties [edfi].[GradebookEntryLearningObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LearningObjectives associated with the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradebookEntryLearningObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the assignment, homework, or assessment was assigned or executed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'DateAssigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the activity to be recorded in the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'GradebookEntryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningObjective', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[GradebookEntryLearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LearningStandard(s) associated with the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradebookEntryLearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the assignment, homework, or assessment was assigned or executed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'DateAssigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the activity to be recorded in the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'GradebookEntryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryLearningStandard', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[GradebookEntryTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of the gradebook entry; for example, homework, assignment, quiz, unit test, oral presentation, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradebookEntryTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradebookEntryTypeDescriptor', @level2type=N'COLUMN', @level2name=N'GradebookEntryTypeDescriptorId'
GO

-- Extended Properties [edfi].[GradeLevelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradeLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradeLevelDescriptor', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO

-- Extended Properties [edfi].[GradeTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of grade in a report card or transcript (e.g., Final, Exam, Grading Period).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradeTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'GradeTypeDescriptorId'
GO

-- Extended Properties [edfi].[GradingPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the time span for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradingPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriod', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriod', @level2type=N'COLUMN', @level2name=N'PeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriod', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriod', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the first day of the GradingPeriod.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the last day of the GradingPeriod.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Total days available for educational instruction during the GradingPeriod.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriod', @level2type=N'COLUMN', @level2name=N'TotalInstructionalDays'
GO

-- Extended Properties [edfi].[GradingPeriodDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the name of the period for which grades are reported. The mapping of descriptor values to known Ed-Fi enumeration values is required.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GradingPeriodDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GradingPeriodDescriptor', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO

-- Extended Properties [edfi].[GraduationPlan] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity is a plan outlining the required credits,credits by subject, credits by course, and other criteria required for graduation. A graduation plan may be one or more standard plans defined by an education organization and/or individual plans for some or all students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlan', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlan', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlan', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether the GraduationPlan is tailored for an individual.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlan', @level2type=N'COLUMN', @level2name=N'IndividualPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlan', @level2type=N'COLUMN', @level2name=N'TotalRequiredCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlan', @level2type=N'COLUMN', @level2name=N'TotalRequiredCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlan', @level2type=N'COLUMN', @level2name=N'TotalRequiredCreditConversion'
GO

-- Extended Properties [edfi].[GraduationPlanCreditsByCourse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total credits required for graduation by taking a specific course, or by taking one or more from a set of courses.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCourse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifying name given to a collection of courses.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'CourseSetName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'Credits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'CreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'CreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level when the student is planned to take the course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourse', @level2type=N'COLUMN', @level2name=N'WhenTakenGradeLevelDescriptorId'
GO

-- Extended Properties [edfi].[GraduationPlanCreditsByCourseCourse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The course reference that identifies the organization of subject matter and related learning experiences provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsByCourseCourse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourseCourse', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourseCourse', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifying name given to a collection of courses.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourseCourse', @level2type=N'COLUMN', @level2name=N'CourseSetName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourseCourse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourseCourse', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsByCourseCourse', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO

-- Extended Properties [edfi].[GraduationPlanCreditsBySubject] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total credits required in subject to graduate. Only those courses identified as a high school course requirement are eligible to meet subject credit requirements.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanCreditsBySubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the graduation requirement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsBySubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsBySubject', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsBySubject', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsBySubject', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsBySubject', @level2type=N'COLUMN', @level2name=N'Credits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsBySubject', @level2type=N'COLUMN', @level2name=N'CreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanCreditsBySubject', @level2type=N'COLUMN', @level2name=N'CreditConversion'
GO

-- Extended Properties [edfi].[GraduationPlanRequiredAssessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The assessments and associated required score and performance level needed to satisfy graduation requirements.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanRequiredAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessment', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessment', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessment', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessment', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO

-- Extended Properties [edfi].[GraduationPlanRequiredAssessmentPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Performance level required to be met or exceeded.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The performance level(s) defined for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score required to make the indicated level of performance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'MinimumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score to make the indicated level of performance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'MaximumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile,range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[GraduationPlanRequiredAssessmentScore] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Score required to be met or exceeded.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanRequiredAssessmentScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'MinimumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'MaximumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanRequiredAssessmentScore', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[GraduationPlanTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the set of graduation plan types.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GraduationPlanTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GraduationPlanTypeDescriptor', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO

-- Extended Properties [edfi].[GunFreeSchoolsActReportingStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'GunFreeSchoolsActReportingStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'GunFreeSchoolsActReportingStatusDescriptor', @level2type=N'COLUMN', @level2name=N'GunFreeSchoolsActReportingStatusDescriptorId'
GO

-- Extended Properties [edfi].[HomelessPrimaryNighttimeResidenceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary nighttime residence of the student at the time the student is identified as homeless.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'HomelessPrimaryNighttimeResidenceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'HomelessPrimaryNighttimeResidenceDescriptor', @level2type=N'COLUMN', @level2name=N'HomelessPrimaryNighttimeResidenceDescriptorId'
GO

-- Extended Properties [edfi].[HomelessProgramServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the services provided by an education organization to populations of students associated with a homeless program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'HomelessProgramServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'HomelessProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'HomelessProgramServiceDescriptorId'
GO

-- Extended Properties [edfi].[IdentificationDocumentUseDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the type of use given to an identification document.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'IdentificationDocumentUseDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'IdentificationDocumentUseDescriptor', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO

-- Extended Properties [edfi].[IncidentLocationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies where the incident occurred and whether or not it occurred on school property.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'IncidentLocationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'IncidentLocationDescriptor', @level2type=N'COLUMN', @level2name=N'IncidentLocationDescriptorId'
GO

-- Extended Properties [edfi].[InstitutionTelephoneNumberTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InstitutionTelephoneNumberTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InstitutionTelephoneNumberTypeDescriptor', @level2type=N'COLUMN', @level2name=N'InstitutionTelephoneNumberTypeDescriptorId'
GO

-- Extended Properties [edfi].[InteractivityStyleDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InteractivityStyleDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InteractivityStyleDescriptor', @level2type=N'COLUMN', @level2name=N'InteractivityStyleDescriptorId'
GO

-- Extended Properties [edfi].[InternetAccessDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of Internet access available.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InternetAccessDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InternetAccessDescriptor', @level2type=N'COLUMN', @level2name=N'InternetAccessDescriptorId'
GO

-- Extended Properties [edfi].[Intervention] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An implementation of an instructional approach focusing on the specific techniques and materials used to teach a given subject.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Intervention'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention is used: curriculum, supplement, or practice.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'InterventionClassDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'DeliveryMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The start date for the intervention implementation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the intervention implementation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum duration of time in minutes that may be assigned for the intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'MinDosage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum duration of time in minutes that may be assigned for the intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Intervention', @level2type=N'COLUMN', @level2name=N'MaxDosage'
GO

-- Extended Properties [edfi].[InterventionAppropriateGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels for the Intervention-if omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionAppropriateGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels for the Intervention-if omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionAppropriateSex] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes for the Intervention. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionAppropriateSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionAppropriateSex', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionAppropriateSex', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes for the Intervention. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionAppropriateSex', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO

-- Extended Properties [edfi].[InterventionClassDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention is used: curriculum, supplement, or practice.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionClassDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionClassDescriptor', @level2type=N'COLUMN', @level2name=N'InterventionClassDescriptorId'
GO

-- Extended Properties [edfi].[InterventionDiagnosis] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targeted purpose of the Intervention (e.g., attendance issue, dropout risk).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targeted purpose of the Intervention (e.g., attendance issue, dropout risk).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionDiagnosis', @level2type=N'COLUMN', @level2name=N'DiagnosisDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionDiagnosis', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionDiagnosis', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionEducationContent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the education content source to the education content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionEducationContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionEducationContent', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionEducationContent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionEducationContent', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionEffectivenessRatingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Rating Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionEffectivenessRatingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionEffectivenessRatingDescriptor', @level2type=N'COLUMN', @level2name=N'InterventionEffectivenessRatingDescriptorId'
GO

-- Extended Properties [edfi].[InterventionInterventionPrescription] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reference to the intervention prescription being followed in this intervention implementation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionInterventionPrescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionInterventionPrescription', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionInterventionPrescription', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionInterventionPrescription', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionInterventionPrescription', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionLearningResourceMetadataURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionLearningResourceMetadataURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'LearningResourceMetadataURI'
GO

-- Extended Properties [edfi].[InterventionMeetingTime] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The times at which this intervention is scheduled to meet.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionMeetingTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionMeetingTime', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the time of day the meeting time ends.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionMeetingTime', @level2type=N'COLUMN', @level2name=N'EndTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionMeetingTime', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the time of day the meeting time begins.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionMeetingTime', @level2type=N'COLUMN', @level2name=N'StartTime'
GO

-- Extended Properties [edfi].[InterventionPopulationServed] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A subset of students that are the focus of the Intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPopulationServed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPopulationServed', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPopulationServed', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A subset of students that are the focus of the Intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPopulationServed', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO

-- Extended Properties [edfi].[InterventionPrescription] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents a formal prescription of an instructional approach focusing on the specific techniques and materials used to teach a given subject. This can be prescribed by academic research, an interventions vendor, or another entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescription', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescription', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention is used: curriculum, supplement, or practice.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescription', @level2type=N'COLUMN', @level2name=N'InterventionClassDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescription', @level2type=N'COLUMN', @level2name=N'DeliveryMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum duration of time in minutes that is recommended for the intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescription', @level2type=N'COLUMN', @level2name=N'MinDosage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum duration of time in minutes that is recommended for the intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescription', @level2type=N'COLUMN', @level2name=N'MaxDosage'
GO

-- Extended Properties [edfi].[InterventionPrescriptionAppropriateGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels for the prescribed intervention. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescriptionAppropriateGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels for the prescribed intervention. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionPrescriptionAppropriateSex] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes for the InterventionPrescription. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescriptionAppropriateSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionAppropriateSex', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionAppropriateSex', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes for the InterventionPrescription. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionAppropriateSex', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO

-- Extended Properties [edfi].[InterventionPrescriptionDiagnosis] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targeted purpose of the InterventionPrescription (e.g., attendance issue, dropout risk).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescriptionDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targeted purpose of the InterventionPrescription (e.g., attendance issue, dropout risk).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionDiagnosis', @level2type=N'COLUMN', @level2name=N'DiagnosisDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionDiagnosis', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionDiagnosis', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionPrescriptionEducationContent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the education content source to the education content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescriptionEducationContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionEducationContent', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionEducationContent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionEducationContent', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionPrescriptionLearningResourceMetadataURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescriptionLearningResourceMetadataURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'LearningResourceMetadataURI'
GO

-- Extended Properties [edfi].[InterventionPrescriptionPopulationServed] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A subset of students that are the focus of the InterventionPrescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescriptionPopulationServed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionPopulationServed', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionPopulationServed', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A subset of students that are the focus of the InterventionPrescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionPopulationServed', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO

-- Extended Properties [edfi].[InterventionPrescriptionURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionPrescriptionURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionURI', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionURI', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionPrescriptionURI', @level2type=N'COLUMN', @level2name=N'URI'
GO

-- Extended Properties [edfi].[InterventionStaff] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the staff member associated with the Intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStaff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStaff', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStaff', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStaff', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[InterventionStudy] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An experimental or quasi-experimental study of an intervention technique.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudy', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudy', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudy', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention prescription.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudy', @level2type=N'COLUMN', @level2name=N'InterventionPrescriptionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of participants observed in the study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudy', @level2type=N'COLUMN', @level2name=N'Participants'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention was implemented: individual, small group, whole class, or whole school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudy', @level2type=N'COLUMN', @level2name=N'DeliveryMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The way in which an intervention is used: curriculum, supplement, or practice.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudy', @level2type=N'COLUMN', @level2name=N'InterventionClassDescriptorId'
GO

-- Extended Properties [edfi].[InterventionStudyAppropriateGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels participating in this study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyAppropriateGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade levels participating in this study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyAppropriateGradeLevel', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionStudyAppropriateSex] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes participating in this study. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyAppropriateSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyAppropriateSex', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyAppropriateSex', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sexes participating in this study. If omitted, considered generally applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyAppropriateSex', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO

-- Extended Properties [edfi].[InterventionStudyEducationContent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the education content source to the education content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyEducationContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier for the EducationContent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyEducationContent', @level2type=N'COLUMN', @level2name=N'ContentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyEducationContent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyEducationContent', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO

-- Extended Properties [edfi].[InterventionStudyInterventionEffectiveness] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Measurement of the effectiveness of the InterventionStudy per diagnosis.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyInterventionEffectiveness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targeted purpose of the intervention (e.g., attendance issue, dropout risk) for which the effectiveness is measured.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'DiagnosisDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade level for which effectiveness is measured.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Population for which effectiveness is measured.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Along a percentile distribution of students, the improvement index represents the change in an average student''s percentile rank that is considered to be due to the intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'ImprovementIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'InterventionEffectivenessRatingDescriptorId'
GO

-- Extended Properties [edfi].[InterventionStudyLearningResourceMetadataURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyLearningResourceMetadataURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to the metadata entry in a LRMI metadata repository, which describes this content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyLearningResourceMetadataURI', @level2type=N'COLUMN', @level2name=N'LearningResourceMetadataURI'
GO

-- Extended Properties [edfi].[InterventionStudyPopulationServed] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A subset of students that are the focus of the InterventionStudy.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyPopulationServed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyPopulationServed', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyPopulationServed', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A subset of students that are the focus of the InterventionStudy.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyPopulationServed', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO

-- Extended Properties [edfi].[InterventionStudyStateAbbreviation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area, the school system of which the participants of the study are considered to be a part.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyStateAbbreviation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyStateAbbreviation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyStateAbbreviation', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area, the school system of which the participants of the study are considered to be a part.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyStateAbbreviation', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[InterventionStudyURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionStudyURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyURI', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention study.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyURI', @level2type=N'COLUMN', @level2name=N'InterventionStudyIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionStudyURI', @level2type=N'COLUMN', @level2name=N'URI'
GO

-- Extended Properties [edfi].[InterventionURI] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'InterventionURI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionURI', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionURI', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The URI (typical a URL) pointing to an education content item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'InterventionURI', @level2type=N'COLUMN', @level2name=N'URI'
GO

-- Extended Properties [edfi].[LanguageDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the language(s) that are spoken or written. It is strongly recommended that entries use only ISO 639-3 language codes: for CodeValue, use the 3 character code; for ShortDescription and Description use the full language name.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LanguageDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LanguageDescriptor', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO

-- Extended Properties [edfi].[LanguageInstructionProgramServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the services provided by an education organization to populations of students associated with a language instruction program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LanguageInstructionProgramServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LanguageInstructionProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'LanguageInstructionProgramServiceDescriptorId'
GO

-- Extended Properties [edfi].[LanguageUseDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category denoting how a language is used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LanguageUseDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LanguageUseDescriptor', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO

-- Extended Properties [edfi].[LearningObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents identified learning objectives for courses in specific grades.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning objective in the context of a standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'LearningObjectiveId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the specific nomenclature used for the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'Nomenclature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One or more statements that describes the criteria used by teachers and students to check for attainment of a learning objective. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'SuccessCriteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'ParentObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'ParentAcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'ParentObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjective', @level2type=N'COLUMN', @level2name=N'Namespace'
GO

-- Extended Properties [edfi].[LearningObjectiveContentStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A reference to the type of content standard (e.g., state, national)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningObjectiveContentStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the content standard, for example Common Core.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unambiguous reference to the standards using a network-resolvable URI.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'URI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year at which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'MandatingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The beginning of the period during which this learning standard document is intended for use.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end of the period during which this learning standard document is intended for use.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandard', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[LearningObjectiveContentStandardAuthor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person or organization chiefly responsible for the intellectual content of the standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningObjectiveContentStandardAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person or organization chiefly responsible for the intellectual content of the standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'Author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO

-- Extended Properties [edfi].[LearningObjectiveLearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LearningStandard(s) included in this objective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningObjectiveLearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveLearningStandard', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveLearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveLearningStandard', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningObjectiveLearningStandard', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO

-- Extended Properties [edfi].[LearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity is a sub-element of a learning objective consisting of a precise statement of the expectation of a student''s proficiency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text of the statement. The textual content that either describes a specific competency such as "Apply the Pythagorean Theorem to determine unknown side lengths in right triangles in real-world and mathematical problems in two and three dimensions." or describes a less granular group of competencies within the taxonomy of the standards document, e.g. "Understand and apply the Pythagorean Theorem," or "Geometry".', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code designated by the promulgating body to identify the statement, e.g. 1.N.3 (usually not globally unique).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardItemCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unambiguous reference to the statement using a network-resolvable URI.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'URI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Subject area for the LearningStandard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The official Course Title with which this learning standard is associated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'One or more statements that describes the criteria used by teachers and students to check for attainment of a learning standard. This criteria gives clear indications as to the degree to which learning is moving through the Zone or Proximal Development toward independent achievement of the LearningStandard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'SuccessCriteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'ParentLearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Namespace for the LearningStandard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'Namespace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An additional classification of the type of a specific learning standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardCategoryDescriptorId'
GO

-- Extended Properties [edfi].[LearningStandardCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An additional classification of the type of a specific learning standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningStandardCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'LearningStandardCategoryDescriptorId'
GO

-- Extended Properties [edfi].[LearningStandardContentStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The content standard from which the LearningStandard was derived.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningStandardContentStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the content standard, for example Common Core.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'Title'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the content.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'Version'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unambiguous reference to the standards using a network-resolvable URI.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'URI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The year at which this content was first published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'PublicationStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'MandatingEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The beginning of the period during which this learning standard document is intended for use.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end of the period during which this learning standard document is intended for use.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandard', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[LearningStandardContentStandardAuthor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person or organization chiefly responsible for the intellectual content of the standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningStandardContentStandardAuthor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person or organization chiefly responsible for the intellectual content of the standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'Author'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardContentStandardAuthor', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO

-- Extended Properties [edfi].[LearningStandardGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the specific learning standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningStandardGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the specific learning standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardGradeLevel', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO

-- Extended Properties [edfi].[LearningStandardIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a learning standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningStandardIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the content standard, for example Common Core.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardIdentificationCode', @level2type=N'COLUMN', @level2name=N'ContentStandardName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a Learning Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardIdentificationCode', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO

-- Extended Properties [edfi].[LearningStandardPrerequisiteLearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier of a prerequisite learning standard item, a competency needed prior to learning this one. (Some items may have no prerequisites others may have one or more prerequisites. This should only be used to represent the immediate predecessors in a competency-based pathway, i.e. not prerequisites of prerequisites).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LearningStandardPrerequisiteLearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardPrerequisiteLearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LearningStandardPrerequisiteLearningStandard', @level2type=N'COLUMN', @level2name=N'PrerequisiteLearningStandardId'
GO

-- Extended Properties [edfi].[LevelOfEducationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the different levels of education achievable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LevelOfEducationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LevelOfEducationDescriptor', @level2type=N'COLUMN', @level2name=N'LevelOfEducationDescriptorId'
GO

-- Extended Properties [edfi].[LicenseStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the license statuses.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LicenseStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LicenseStatusDescriptor', @level2type=N'COLUMN', @level2name=N'LicenseStatusDescriptorId'
GO

-- Extended Properties [edfi].[LicenseTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the type of a license.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LicenseTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LicenseTypeDescriptor', @level2type=N'COLUMN', @level2name=N'LicenseTypeDescriptorId'
GO

-- Extended Properties [edfi].[LimitedEnglishProficiencyDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LimitedEnglishProficiencyDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LimitedEnglishProficiencyDescriptor', @level2type=N'COLUMN', @level2name=N'LimitedEnglishProficiencyDescriptorId'
GO

-- Extended Properties [edfi].[LocalEducationAgency] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an administrative unit at the local level which exists primarily to operate schools or to contract for educational services. It includes school districts, charter schools, charter management organizations, or other local administrative organizations.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LocalEducationAgency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgency', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of local education agency/district. For example: Independent or Charter.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgency', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgency', @level2type=N'COLUMN', @level2name=N'CharterStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgency', @level2type=N'COLUMN', @level2name=N'ParentLocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education service center.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgency', @level2type=N'COLUMN', @level2name=N'EducationServiceCenterId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a state education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgency', @level2type=N'COLUMN', @level2name=N'StateEducationAgencyId'
GO

-- Extended Properties [edfi].[LocalEducationAgencyAccountability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity maintains information about federal reporting and accountability for local education agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyAccountability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyAccountability', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the accountability is reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyAccountability', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the school or Local Education Agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyAccountability', @level2type=N'COLUMN', @level2name=N'GunFreeSchoolsActReportingStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA as amended.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyAccountability', @level2type=N'COLUMN', @level2name=N'SchoolChoiceImplementStatusDescriptorId'
GO

-- Extended Properties [edfi].[LocalEducationAgencyCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of local education agency/district. For example: Independent or Charter.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyCategoryDescriptorId'
GO

-- Extended Properties [edfi].[LocalEducationAgencyFederalFunds] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the information about the reception and use of federal funds for reporting purposes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'LocalEducationAgencyFederalFunds'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the accountability is reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total Title V, Part A funds expended by LEAs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'InnovativeDollarsSpent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total amount of Title V, Part A funds expended by LEAs for the four strategic priorities.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'InnovativeDollarsSpentStrategicPriorities'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total Title V, Part A funds received by LEAs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'InnovativeProgramsFundsReceived'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of Section 1003(a) and 1003(g) allocations to LEAs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'SchoolImprovementAllocation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the percentage of the Title I, Part A allocation that the SEA reserved in accordance with Section 1003(a) of ESEA and §200.100(a) of ED''s regulations governing the reservation of funds for school improvement under Section 1003(a) of ESEA.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'SchoolImprovementReservedFundsPercentage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The dollar amount spent on supplemental educational services during the school year under Title I, Part A, Section 1116 of ESEA as amended.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'SupplementalEducationalServicesFundsSpent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum dollar amount that may be spent per child for expenditures related to supplemental educational services under Title I of the ESEA.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'SupplementalEducationalServicesPerPupilExpenditure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of funds used to administer assessments required by Section 1111(b) or to carry out other activities described in Section 6111 and other activities related to ensuring that the state''s schools and LEAs are held accountable for results.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'LocalEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'StateAssessmentAdministrationFunding'
GO

-- Extended Properties [edfi].[Location] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the physical space where students gather for a particular class/section. The Location may be an indoor or outdoor area designated for the purpose of meeting the educational needs of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Location', @level2type=N'COLUMN', @level2name=N'ClassroomIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Location', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The most number of seats the class can maintain.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Location', @level2type=N'COLUMN', @level2name=N'MaximumNumberOfSeats'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of seats that is most favorable to the class.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Location', @level2type=N'COLUMN', @level2name=N'OptimalNumberOfSeats'
GO

-- Extended Properties [edfi].[MagnetSpecialProgramEmphasisSchoolDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A school that has been designed to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing or eliminating racial isolation; and/or to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'MagnetSpecialProgramEmphasisSchoolDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'MagnetSpecialProgramEmphasisSchoolDescriptor', @level2type=N'COLUMN', @level2name=N'MagnetSpecialProgramEmphasisSchoolDescriptorId'
GO

-- Extended Properties [edfi].[MediumOfInstructionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media through which teachers provide instruction to students and students and teachers communicate about instructional matters.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'MediumOfInstructionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'MediumOfInstructionDescriptor', @level2type=N'COLUMN', @level2name=N'MediumOfInstructionDescriptorId'
GO

-- Extended Properties [edfi].[MethodCreditEarnedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method the credits were earned, for example:  Classroom, Examination, Transfer.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'MethodCreditEarnedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'MethodCreditEarnedDescriptor', @level2type=N'COLUMN', @level2name=N'MethodCreditEarnedDescriptorId'
GO

-- Extended Properties [edfi].[MigrantEducationProgramServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the services provided by an education organization to populations of students associated with a migrant education program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'MigrantEducationProgramServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'MigrantEducationProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'MigrantEducationProgramServiceDescriptorId'
GO

-- Extended Properties [edfi].[MonitoredDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines monitorization statuses for students who are no longer receiving language instruction program services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'MonitoredDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'MonitoredDescriptor', @level2type=N'COLUMN', @level2name=N'MonitoredDescriptorId'
GO

-- Extended Properties [edfi].[NeglectedOrDelinquentProgramDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'NeglectedOrDelinquentProgramDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'NeglectedOrDelinquentProgramDescriptor', @level2type=N'COLUMN', @level2name=N'NeglectedOrDelinquentProgramDescriptorId'
GO

-- Extended Properties [edfi].[NeglectedOrDelinquentProgramServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the services provided by an education organization to populations of students associated with a neglected or delinquent program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'NeglectedOrDelinquentProgramServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'NeglectedOrDelinquentProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'NeglectedOrDelinquentProgramServiceDescriptorId'
GO

-- Extended Properties [edfi].[NetworkPurposeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The purpose(s) of the network, e.g. shared services, collective procurement, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'NetworkPurposeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'NetworkPurposeDescriptor', @level2type=N'COLUMN', @level2name=N'NetworkPurposeDescriptorId'
GO

-- Extended Properties [edfi].[ObjectiveAssessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents subtests that assess specific learning objectives.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ObjectiveAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum raw score achievable across all assessment items that are correct and scored at the maximum.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'MaxRawScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of the Assessment that tests this objective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'PercentOfAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the specific nomenclature used for this level of ObjectiveAssessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'Nomenclature'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the ObjectiveAssessment (e.g., vocabulary, measurement, or geometry).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'ParentIdentificationCode'
GO

-- Extended Properties [edfi].[ObjectiveAssessmentAssessmentItem] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'References individual test items, if appropriate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ObjectiveAssessmentAssessmentItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentItemIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentAssessmentItem', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO

-- Extended Properties [edfi].[ObjectiveAssessmentLearningObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'References the LearningObjective(s) the ObjectiveAssessment tests.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ObjectiveAssessmentLearningObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningObjective', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningObjective', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningObjective', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningObjective', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningObjective', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO

-- Extended Properties [edfi].[ObjectiveAssessmentLearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LearningStandard tested by this ObjectiveAssessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ObjectiveAssessmentLearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningStandard', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningStandard', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningStandard', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningStandard', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningStandard', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentLearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO

-- Extended Properties [edfi].[ObjectiveAssessmentPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Definition of the performance levels and the associated cut scores. Three styles are supported:
        1. Specification of performance level by minimum and maximum score    
        2. Specification of performance level by cut score, using only minimum score    
        3. Specification of performance level without any mapping to scores.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ObjectiveAssessmentPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The performance level(s) defined for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score required to make the indicated level of performance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'MinimumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score to make the indicated level of performance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'MaximumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile,range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[ObjectiveAssessmentScore] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Definition of the scores to be expected from this objective assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ObjectiveAssessmentScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'MinimumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score possible on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'MaximumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ObjectiveAssessmentScore', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[OldEthnicityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Previous definition of Ethnicity combining Hispanic/Latino and Race.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'OldEthnicityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OldEthnicityDescriptor', @level2type=N'COLUMN', @level2name=N'OldEthnicityDescriptorId'
GO

-- Extended Properties [edfi].[OpenStaffPosition] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an open staff position that the education organization is seeking to fill.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'OpenStaffPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract desired for the position; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name of an individual''s position.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'PositionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the program for which the OpenStaffPosition will be assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education''
        Bilingual/English as a Second Language.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'ProgramAssignmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the OpenStaffPosition was posted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'DatePosted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the posting was removed or filled.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'DatePostingRemoved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indication of whether the OpenStaffPosition was filled or retired without filling.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPosition', @level2type=N'COLUMN', @level2name=N'PostingResultDescriptorId'
GO

-- Extended Properties [edfi].[OpenStaffPositionAcademicSubject] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The teaching field required for the OpenStaffPosition, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'OpenStaffPositionAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The teaching field required for the OpenStaffPosition, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPositionAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPositionAcademicSubject', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPositionAcademicSubject', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO

-- Extended Properties [edfi].[OpenStaffPositionInstructionalGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the position''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'OpenStaffPositionInstructionalGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPositionInstructionalGradeLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the position''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPositionInstructionalGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number or identifier assigned to an open staff position, typically a requisition number assigned by Human Resources.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OpenStaffPositionInstructionalGradeLevel', @level2type=N'COLUMN', @level2name=N'RequisitionNumber'
GO

-- Extended Properties [edfi].[OperationalStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current operational status of the education organization (e.g., active, inactive).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'OperationalStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OperationalStatusDescriptor', @level2type=N'COLUMN', @level2name=N'OperationalStatusDescriptorId'
GO

-- Extended Properties [edfi].[OtherNameTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of alternate names for a person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'OtherNameTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'OtherNameTypeDescriptor', @level2type=N'COLUMN', @level2name=N'OtherNameTypeDescriptorId'
GO

-- Extended Properties [edfi].[Parent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents a parent or guardian of a student, such as mother, father, or caretaker.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Parent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The login ID for the user; used for security access control interface.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Parent', @level2type=N'COLUMN', @level2name=N'ParentUniqueId'
GO

-- Extended Properties [edfi].[ParentAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Parent''s address, if different from the student address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[ParentAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[ParentElectronicMail] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentElectronicMail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentElectronicMail', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The electronic mail (e-mail) address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentElectronicMail', @level2type=N'COLUMN', @level2name=N'PrimaryEmailAddressIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic email address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentElectronicMail', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[ParentInternationalAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an international address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[ParentLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-3 language codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentLanguage', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO

-- Extended Properties [edfi].[ParentLanguageUse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentLanguageUse', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO

-- Extended Properties [edfi].[ParentOtherName] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentOtherName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of alternate names for a person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentOtherName', @level2type=N'COLUMN', @level2name=N'OtherNameTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentOtherName', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentOtherName', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentOtherName', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentOtherName', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentOtherName', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentOtherName', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO

-- Extended Properties [edfi].[ParentPersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentPersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [edfi].[ParentTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParentTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentTelephone', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParentTelephone', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[ParticipationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines participation in a yearly English language assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ParticipationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ParticipationDescriptor', @level2type=N'COLUMN', @level2name=N'ParticipationDescriptorId'
GO

-- Extended Properties [edfi].[Payroll] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This financial entity represents the sum of the financial transactions to date for employee compensation. An "employee" who performs services under the direction of the employing institution or agency, is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Payroll'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The alphanumeric string that identifies the account.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Payroll', @level2type=N'COLUMN', @level2name=N'AccountIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the reported payroll element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Payroll', @level2type=N'COLUMN', @level2name=N'AsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Payroll', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The financial accounting year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Payroll', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Payroll', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Current balance (amount paid to employee) for account for the fiscal year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Payroll', @level2type=N'COLUMN', @level2name=N'AmountToDate'
GO

-- Extended Properties [edfi].[PerformanceBaseConversionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines standard levels of competency or performance that can be used for dashboard visualizations: advanced, proficient, basic, and below basic.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PerformanceBaseConversionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PerformanceBaseConversionDescriptor', @level2type=N'COLUMN', @level2name=N'PerformanceBaseConversionDescriptorId'
GO

-- Extended Properties [edfi].[PerformanceLevelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines various levels or thresholds for performance on the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PerformanceLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PerformanceLevelDescriptor', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO

-- Extended Properties [edfi].[PersonalInformationVerificationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The evidence presented to verify one''s personal identity; for example: driver''s license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PersonalInformationVerificationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PersonalInformationVerificationDescriptor', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO

-- Extended Properties [edfi].[PopulationServedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of students the Section is offered and tailored to.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PopulationServedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PopulationServedDescriptor', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO

-- Extended Properties [edfi].[PostingResultDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indication of whether the position was filled or retired without filling.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PostingResultDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostingResultDescriptor', @level2type=N'COLUMN', @level2name=N'PostingResultDescriptorId'
GO

-- Extended Properties [edfi].[PostSecondaryEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity captures significant postsecondary events during a student''s high school tenure (e.g., FAFSA application or college application, acceptance, and enrollment) or during a student''s enrollment at a post-secondary institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PostSecondaryEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the event occurred or was recorded.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PostSecondaryEvent that is logged (e.g., FAFSA application, college application, college acceptance).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryEvent', @level2type=N'COLUMN', @level2name=N'PostSecondaryEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the post secondary institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryEvent', @level2type=N'COLUMN', @level2name=N'PostSecondaryInstitutionId'
GO

-- Extended Properties [edfi].[PostSecondaryEventCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the type of post-secondary event (e.g., college application or acceptance).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PostSecondaryEventCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'PostSecondaryEventCategoryDescriptorId'
GO

-- Extended Properties [edfi].[PostSecondaryInstitution] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An organization that provides educational programs for individuals who have completed or otherwise left educational programs in secondary school(s).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PostSecondaryInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the post secondary institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryInstitution', @level2type=N'COLUMN', @level2name=N'PostSecondaryInstitutionId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A classification of whether a post secondary institution''s highest level of offering is a program of 4-years or higher (4 year), 2-but-less-than 4-years (2 year), or less than 2-years.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryInstitution', @level2type=N'COLUMN', @level2name=N'PostSecondaryInstitutionLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A classification of whether a postsecondary institution is operated by publicly elected or appointed officials (public control) or by privately elected or appointed officials and derives its major source of funds from private sources (private control).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryInstitution', @level2type=N'COLUMN', @level2name=N'AdministrativeFundingControlDescriptorId'
GO

-- Extended Properties [edfi].[PostSecondaryInstitutionLevelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A classification of whether a post-secondary institution''s highest level of offering is a program of 4 years or higher (4 year), 2 but less than 4 years (2 year) or less than 2 years.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PostSecondaryInstitutionLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryInstitutionLevelDescriptor', @level2type=N'COLUMN', @level2name=N'PostSecondaryInstitutionLevelDescriptorId'
GO

-- Extended Properties [edfi].[PostSecondaryInstitutionMediumOfInstruction] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The categories in which an institution serves the students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PostSecondaryInstitutionMediumOfInstruction'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The categories in which an institution serves the students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryInstitutionMediumOfInstruction', @level2type=N'COLUMN', @level2name=N'MediumOfInstructionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ID of the post secondary institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PostSecondaryInstitutionMediumOfInstruction', @level2type=N'COLUMN', @level2name=N'PostSecondaryInstitutionId'
GO

-- Extended Properties [edfi].[ProficiencyDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines proficiency levels for a yearly English language assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProficiencyDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProficiencyDescriptor', @level2type=N'COLUMN', @level2name=N'ProficiencyDescriptorId'
GO

-- Extended Properties [edfi].[Program] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Program'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Program', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Program', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Program', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a program by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Program', @level2type=N'COLUMN', @level2name=N'ProgramId'
GO

-- Extended Properties [edfi].[ProgramAssignmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the name of the education program for which a teacher is assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramAssignmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramAssignmentDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramAssignmentDescriptorId'
GO

-- Extended Properties [edfi].[ProgramCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Program, such as categories or particular indications.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Program, such as categories or particular indications.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'ProgramCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [edfi].[ProgramCharacteristicDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines important characteristics of the Program, such as categories or particular indications.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramCharacteristicDescriptorId'
GO

-- Extended Properties [edfi].[ProgramLearningObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'References the LearningObjective(s) with which the Program is associated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramLearningObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningObjective', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningObjective', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningObjective', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningObjective', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [edfi].[ProgramLearningStandard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'LearningStandard followed by this program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramLearningStandard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningStandard', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the specific learning standard (e.g., 111.15.3.1.A).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningStandard', @level2type=N'COLUMN', @level2name=N'LearningStandardId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningStandard', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramLearningStandard', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [edfi].[ProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the services this program provides to students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Defines the services this program provides to students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramService', @level2type=N'COLUMN', @level2name=N'ServiceDescriptorId'
GO

-- Extended Properties [edfi].[ProgramSponsor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ultimate and intermediate providers of funds for a particular educational or service program or activity, or for an individual''s participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Organization).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramSponsor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramSponsor', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramSponsor', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ultimate and intermediate providers of funds for a particular educational or service program or activity, or for an individual''s participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Organization).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramSponsor', @level2type=N'COLUMN', @level2name=N'ProgramSponsorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramSponsor', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [edfi].[ProgramSponsorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ultimate and intermediate providers of funds for a particular educational or service program or activity or for an individual''s participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Org).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramSponsorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramSponsorDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramSponsorDescriptorId'
GO

-- Extended Properties [edfi].[ProgramTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [edfi].[ProgressDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines yearly progress or growth from last year’s assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgressDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgressDescriptor', @level2type=N'COLUMN', @level2name=N'ProgressDescriptorId'
GO

-- Extended Properties [edfi].[ProgressLevelDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines progress measured from pre- to post-test.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProgressLevelDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProgressLevelDescriptor', @level2type=N'COLUMN', @level2name=N'ProgressLevelDescriptorId'
GO

-- Extended Properties [edfi].[ProviderCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the category of the provider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProviderCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProviderCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'ProviderCategoryDescriptorId'
GO

-- Extended Properties [edfi].[ProviderProfitabilityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor indicates the profitability status of the provider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProviderProfitabilityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProviderProfitabilityDescriptor', @level2type=N'COLUMN', @level2name=N'ProviderProfitabilityDescriptorId'
GO

-- Extended Properties [edfi].[ProviderStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the status of the provider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ProviderStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ProviderStatusDescriptor', @level2type=N'COLUMN', @level2name=N'ProviderStatusDescriptorId'
GO

-- Extended Properties [edfi].[PublicationStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'PublicationStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'PublicationStatusDescriptor', @level2type=N'COLUMN', @level2name=N'PublicationStatusDescriptorId'
GO

-- Extended Properties [edfi].[RaceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The enumeration items defining the racial categories which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RaceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RaceDescriptor', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO

-- Extended Properties [edfi].[ReasonExitedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the reason a student exited a program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReasonExitedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReasonExitedDescriptor', @level2type=N'COLUMN', @level2name=N'ReasonExitedDescriptorId'
GO

-- Extended Properties [edfi].[ReasonNotTestedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason student is not tested. For example:
    Absent
    Refusal by parent
    Refusal by student
    Medical waiver
    Illness
    Disruptive behavior
    LEP Exempt
    ''...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReasonNotTestedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReasonNotTestedDescriptor', @level2type=N'COLUMN', @level2name=N'ReasonNotTestedDescriptorId'
GO

-- Extended Properties [edfi].[RecognitionTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RecognitionTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RecognitionTypeDescriptor', @level2type=N'COLUMN', @level2name=N'RecognitionTypeDescriptorId'
GO

-- Extended Properties [edfi].[RelationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The nature of an individual''s relationship to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RelationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RelationDescriptor', @level2type=N'COLUMN', @level2name=N'RelationDescriptorId'
GO

-- Extended Properties [edfi].[RepeatIdentifierDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication as to whether a student has previously taken a given course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RepeatIdentifierDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RepeatIdentifierDescriptor', @level2type=N'COLUMN', @level2name=N'RepeatIdentifierDescriptorId'
GO

-- Extended Properties [edfi].[ReportCard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This educational entity represents the collection of student grades for courses taken during a grading period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReportCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure of average performance in all courses taken by an individual for the current grading period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'GPAGivenGradingPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure of cumulative average performance in all courses taken by an individual from the beginning of the school year through the current grading period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'GPACumulative'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of days an individual is absent when school is in session during a given reporting period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'NumberOfDaysAbsent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of days an individual is present when school is in session during a given reporting period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'NumberOfDaysInAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of days an individual is tardy during a given reporting period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCard', @level2type=N'COLUMN', @level2name=N'NumberOfDaysTardy'
GO

-- Extended Properties [edfi].[ReportCardGrade] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grades for the classes attended by the Student for this grading period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReportCardGrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of grade reported (e.g., Exam, Final, Grading Period).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'GradeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardGrade', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[ReportCardStudentCompetencyObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Student competency evaluations associated for this grading period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReportCardStudentCompetencyObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the CompetencyObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[ReportCardStudentLearningObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The StudentLearningObjective evaluations associated for this grading period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReportCardStudentLearningObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReportCardStudentLearningObjective', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[ReporterDescriptionDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the type of individual who reported an incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ReporterDescriptionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ReporterDescriptionDescriptor', @level2type=N'COLUMN', @level2name=N'ReporterDescriptionDescriptorId'
GO

-- Extended Properties [edfi].[ResidencyStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines indications of the location of a person''s legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ResidencyStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ResidencyStatusDescriptor', @level2type=N'COLUMN', @level2name=N'ResidencyStatusDescriptorId'
GO

-- Extended Properties [edfi].[ResponseIndicatorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of the response.  For example:
    Nonscorable response
    Ineffective response
    Effective response
    Partial response
    ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ResponseIndicatorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ResponseIndicatorDescriptor', @level2type=N'COLUMN', @level2name=N'ResponseIndicatorDescriptorId'
GO

-- Extended Properties [edfi].[ResponsibilityDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines types of responsibility an education organization may have for a student (e.g., accountability, attendance, funding).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ResponsibilityDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ResponsibilityDescriptor', @level2type=N'COLUMN', @level2name=N'ResponsibilityDescriptorId'
GO

-- Extended Properties [edfi].[RestraintEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the instances where a special education student was physically or mechanically restrained due to imminent serious physical harm to themselves or others, imminent serious property destruction or a combination of both imminent serious physical harm to themselves or others and imminent serious property destruction.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RestraintEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEvent', @level2type=N'COLUMN', @level2name=N'RestraintEventIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEvent', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the RestraintEvent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The setting where the RestraintEvent was exercised.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEvent', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO

-- Extended Properties [edfi].[RestraintEventProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The special education program associated with the RestraintEvent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RestraintEventProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventProgram', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventProgram', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventProgram', @level2type=N'COLUMN', @level2name=N'RestraintEventIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventProgram', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventProgram', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[RestraintEventReason] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization of the circumstances or reason for the RestraintEvent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RestraintEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a restraint event by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventReason', @level2type=N'COLUMN', @level2name=N'RestraintEventIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A categorization of the circumstances or reason for the RestraintEvent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventReason', @level2type=N'COLUMN', @level2name=N'RestraintEventReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventReason', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventReason', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[RestraintEventReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The items of categorization of the circumstances or reason for the restraint.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RestraintEventReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RestraintEventReasonDescriptor', @level2type=N'COLUMN', @level2name=N'RestraintEventReasonDescriptorId'
GO

-- Extended Properties [edfi].[ResultDatatypeTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ResultDatatypeTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ResultDatatypeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[RetestIndicatorDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator if the test was retaken.  For example:
    Primary administration
    First retest
    Second retest
    ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'RetestIndicatorDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'RetestIndicatorDescriptor', @level2type=N'COLUMN', @level2name=N'RetestIndicatorDescriptorId'
GO

-- Extended Properties [edfi].[School] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'School'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of education institution as classified by its primary focus.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'SchoolTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A school or agency providing free public elementary or secondary education to eligible students under a specific charter granted by the state legislature or other appropriate authority and designated by such authority to be a charter school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'CharterStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Denotes the Title I Part A designation for the school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'TitleIPartASchoolDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A school that has been designed: 1) to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing, or eliminating racial isolation; and/or 2) to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'MagnetSpecialProgramEmphasisSchoolDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of education institution as classified by its funding source, for example public or private.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'AdministrativeFundingControlDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of Internet access available.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'InternetAccessDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a local education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'LocalEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of agency that approved the establishment or continuation of a charter school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'CharterApprovalAgencyTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year in which a charter school was initially approved.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'School', @level2type=N'COLUMN', @level2name=N'CharterApprovalSchoolYear'
GO

-- Extended Properties [edfi].[SchoolCategory] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The one or more categories of school. For example: High School, Middle School, and/or Elementary School.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SchoolCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The one or more categories of school. For example: High School, Middle School, and/or Elementary School.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolCategory', @level2type=N'COLUMN', @level2name=N'SchoolCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolCategory', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

-- Extended Properties [edfi].[SchoolCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of school. For example: High School, Middle School, Elementary School.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SchoolCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'SchoolCategoryDescriptorId'
GO

-- Extended Properties [edfi].[SchoolChoiceImplementStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA, as amended.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SchoolChoiceImplementStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolChoiceImplementStatusDescriptor', @level2type=N'COLUMN', @level2name=N'SchoolChoiceImplementStatusDescriptorId'
GO

-- Extended Properties [edfi].[SchoolFoodServiceProgramServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the services provided by an education organization to populations of students associated with a school food service program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SchoolFoodServiceProgramServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolFoodServiceProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'SchoolFoodServiceProgramServiceDescriptorId'
GO

-- Extended Properties [edfi].[SchoolGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels served at the school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SchoolGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels served at the school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolGradeLevel', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

-- Extended Properties [edfi].[SchoolTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of education institution as classified by its primary focus.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SchoolTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolTypeDescriptor', @level2type=N'COLUMN', @level2name=N'SchoolTypeDescriptorId'
GO

-- Extended Properties [edfi].[SchoolYearType] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier for a school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SchoolYearType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for School Year', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolYearType', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the SchoolYear type.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolYearType', @level2type=N'COLUMN', @level2name=N'SchoolYearDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SchoolYearType', @level2type=N'COLUMN', @level2name=N'CurrentSchoolYear'
GO

-- Extended Properties [edfi].[Section] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Section'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'When a section is part of a sequence of parts for a course, the number of the sequence. If the course has only one part, the value of this section attribute should be 1.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'SequenceOfCourse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The setting in which a child receives education and related services; for example:
        Center-based instruction
        Home-based instruction
        Hospital class
        Mainstream
        Residential care and treatment facility
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The media through which teachers provide instruction to students and students and teachers communicate about instructional matters; for example:
        Technology-based instruction in classroom
        Correspondence instruction
        Face-to-face instruction
        Virtual/On-line Distance learning
        Center-based instruction
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'MediumOfInstructionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of students the Section is offered and tailored to; for example:
        Bilingual students
        Remedial education students
        Gifted and talented students
        Career and Technical Education students
        Special education students
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'AvailableCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'AvailableCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'AvailableCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary language of instruction, if omitted English is assumed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'InstructionLanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'LocationSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a room by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Section', @level2type=N'COLUMN', @level2name=N'LocationClassroomIdentificationCode'
GO

-- Extended Properties [edfi].[SectionAttendanceTakenEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Captures attendance taken event for given section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SectionAttendanceTakenEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the CalendarEvent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'Date'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the SectionAttendanceTakenEvent was submitted, which could be a different date than the instructional day.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionAttendanceTakenEvent', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[SectionCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Section, such as whether or not attendance is taken and the Section is graded.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SectionCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionCharacteristic', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionCharacteristic', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionCharacteristic', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Section, such as whether or not attendance is taken and the Section is graded.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionCharacteristic', @level2type=N'COLUMN', @level2name=N'SectionCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionCharacteristic', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionCharacteristic', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[SectionCharacteristicDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines characteristics of a Section, such as whether attendance is taken and the Section is graded.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SectionCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'SectionCharacteristicDescriptorId'
GO

-- Extended Properties [edfi].[SectionClassPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The class period during which the Section meets.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SectionClassPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the portion of a typical daily session in which students receive instruction in a specified subject (e.g., morning, sixth period, block period, or AB schedules).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionClassPeriod', @level2type=N'COLUMN', @level2name=N'ClassPeriodName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionClassPeriod', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionClassPeriod', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionClassPeriod', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionClassPeriod', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionClassPeriod', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[SectionProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional reference to program (e.g., CTE) to which the Section is associated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SectionProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SectionProgram', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[SeparationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of employment separation; for example:  Voluntary separation, Involuntary separation, Mutual agreement. Other, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SeparationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SeparationDescriptor', @level2type=N'COLUMN', @level2name=N'SeparationDescriptorId'
GO

-- Extended Properties [edfi].[SeparationReasonDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the reasons for terminating the employment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SeparationReasonDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SeparationReasonDescriptor', @level2type=N'COLUMN', @level2name=N'SeparationReasonDescriptorId'
GO

-- Extended Properties [edfi].[ServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the services provided by an education organization to populations of students associated with a program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'ServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'ServiceDescriptor', @level2type=N'COLUMN', @level2name=N'ServiceDescriptorId'
GO

-- Extended Properties [edfi].[Session] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A term in the school year, generally a unit of time into which courses are scheduled, instruction occurs and by which credits are awarded. Sessions may be interrupted by vacations or other events.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Session'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the first day of the Session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day and year of the last day of the Session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An descriptor value indicating the term (e.g. ''Fall Semester'', ''Second Quarter'', ''Summer Semester'', etc.).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of instructional days in the school calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Session', @level2type=N'COLUMN', @level2name=N'TotalInstructionalDays'
GO

-- Extended Properties [edfi].[SessionAcademicWeek] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic weeks associated with the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SessionAcademicWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionAcademicWeek', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionAcademicWeek', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionAcademicWeek', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school label for the week.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionAcademicWeek', @level2type=N'COLUMN', @level2name=N'WeekIdentifier'
GO

-- Extended Properties [edfi].[SessionGradingPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grading periods associated with the session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SessionGradingPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionGradingPeriod', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionGradingPeriod', @level2type=N'COLUMN', @level2name=N'PeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionGradingPeriod', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionGradingPeriod', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SessionGradingPeriod', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [edfi].[SexDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SexDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SexDescriptor', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO

-- Extended Properties [edfi].[SpecialEducationProgramServiceDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the services provided by an education organization to populations of students associated with a special education program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SpecialEducationProgramServiceDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SpecialEducationProgramServiceDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationProgramServiceDescriptorId'
GO

-- Extended Properties [edfi].[SpecialEducationSettingDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the major instructional setting (more than 50 percent of a student''s special education program).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'SpecialEducationSettingDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'SpecialEducationSettingDescriptor', @level2type=N'COLUMN', @level2name=N'SpecialEducationSettingDescriptorId'
GO

-- Extended Properties [edfi].[Staff] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an individual who performs specified activities for any public or private education institution or agency that provides instructional and/or support services to students or staff at the early childhood level through high school completion. For example, this includes:
    1. An "employee" who performs services under the direction of the employing institution or agency is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings
    2. A "contractor" or "consultant" who performs services for an agreed upon fee or an employee of a management service contracted to work on site
    3. A "volunteer" who performs services on a voluntary and uncompensated basis
    4. An in-kind service provider
    5. An independent contractor or businessperson working at a school site.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Staff'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Previous definition of Ethnicity combining Hispanic/Latino and race:
        1 - American Indian or Alaskan Native
        2 - Asian or Pacific Islander
        3 - Black, not of Hispanic origin
        4 - Hispanic
        5 - White, not of Hispanic origin.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'OldEthnicityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the person is a U.S. citizen.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'CitizenshipStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'HighestCompletedLevelOfEducationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a similar professional position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'YearsOfPriorProfessionalExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a teaching position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'YearsOfPriorTeachingExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The login ID for the user; used for security access control interface.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'HighlyQualifiedTeacher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Staff', @level2type=N'COLUMN', @level2name=N'StaffUniqueId'
GO

-- Extended Properties [edfi].[StaffAbsenceEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of the dates of staff absence.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffAbsenceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code describing the type of absence.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this leave event.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the staff absence.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The hours the staff was absent, if not the entire working day.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAbsenceEvent', @level2type=N'COLUMN', @level2name=N'HoursAbsent'
GO

-- Extended Properties [edfi].[StaffAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StaffAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StaffClassificationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines an individual''s title of employment, official status or rank.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffClassificationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffClassificationDescriptor', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO

-- Extended Properties [edfi].[StaffCohortAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the Staff associated with a cohort of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffCohortAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the association of staff to this cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCohortAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or ID for the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCohortAssociation', @level2type=N'COLUMN', @level2name=N'CohortIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCohortAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCohortAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the association of staff to this cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCohortAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the staff has access to the student records of the cohort per district interpretation of FERPA and other privacy laws, regulations, and policies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCohortAssociation', @level2type=N'COLUMN', @level2name=N'StudentRecordAccess'
GO

-- Extended Properties [edfi].[StaffCredential] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal document giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffCredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCredential', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCredential', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffCredential', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[StaffEducationOrganizationAssignmentAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the education organization to which a staff member provides services; also known as school of service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the LEA.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name of an individual''s position.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'PositionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the end or termination date of a staff member''s employment, contract, or relationship with the LEA.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes whether the assignment is this the staff member''s primary assignment, secondary assignment, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'OrderOfAssignment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'EmploymentEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'EmploymentHireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociation', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[StaffEducationOrganizationContactAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association provides the contact information of the staff associated with the education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationContactAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the contact in the context of the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociation', @level2type=N'COLUMN', @level2name=N'ContactTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the type for the contact information.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociation', @level2type=N'COLUMN', @level2name=N'ContactTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The email for the contact associated with the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociation', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO

-- Extended Properties [edfi].[StaffEducationOrganizationContactAssociationAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The optional address for the contact associated with the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationContactAssociationAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the contact in the context of the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'ContactTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StaffEducationOrganizationContactAssociationAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationContactAssociationAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the contact in the context of the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'ContactTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StaffEducationOrganizationContactAssociationTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The optional telephone for the contact associated with the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationContactAssociationTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the contact in the context of the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'ContactTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationContactAssociationTelephone', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StaffEducationOrganizationEmploymentAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the EducationOrganization an employee, contractor, volunteer, or other service provider is formally associated with typically indicated by which organization the staff member has a services contract with or receives compensation from.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationEmploymentAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects the type of employment or contract; for example:
        Probationary
        Contractual
        Substitute/temporary
        Tenured or permanent
        Volunteer/no contract
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'EmploymentStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was hired for a position.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'HireDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which a contract between an individual and a governing authority ends or is terminated under the provisions of the contract (or the date on which the agreement is made invalid).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Type of employment separation; for example: Voluntary separation, Involuntary separation,
        Mutual agreement
        Other, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'SeparationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason for terminating the employment; for example:
        Employment in education
        Employment outside of education
        Retirement
        Family/personal relocation
        Change of assignment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'SeparationReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The department or suborganization the employee/contractor is associated with in the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'Department'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The ratio between the hours of work expected in a position and the hours of work normally expected in a full-time position in the same setting.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'FullTimeEquivalency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date at which the staff member was made an official offer for this employment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'OfferDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Hourly wage associated with the employment position being reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'HourlyWage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationEmploymentAssociation', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[StaffElectronicMail] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffElectronicMail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffElectronicMail', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The electronic mail (e-mail) address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffElectronicMail', @level2type=N'COLUMN', @level2name=N'PrimaryEmailAddressIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic email address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffElectronicMail', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StaffIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'StaffIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the staff Identification Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO

-- Extended Properties [edfi].[StaffIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe the documentation of citizenship.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [edfi].[StaffIdentificationSystemDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the originating record system and code that is used for record-keeping purposes of the staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffIdentificationSystemDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffIdentificationSystemDescriptor', @level2type=N'COLUMN', @level2name=N'StaffIdentificationSystemDescriptorId'
GO

-- Extended Properties [edfi].[StaffInternationalAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an international address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StaffLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-3 language codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLanguage', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[StaffLanguageUse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLanguageUse', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[StaffLeave] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the recording of the dates of staff leave (e.g., sick leave, personal time, vacation).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffLeave'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The begin date of the staff leave.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLeave', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code describing the type of leave taken, for example:
        Sick
        Personal
        Vacation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLeave', @level2type=N'COLUMN', @level2name=N'StaffLeaveEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLeave', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date of the staff leave.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLeave', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the staff leave.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLeave', @level2type=N'COLUMN', @level2name=N'Reason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether a substitute was assigned during the period of staff leave.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLeave', @level2type=N'COLUMN', @level2name=N'SubstituteAssigned'
GO

-- Extended Properties [edfi].[StaffLeaveEventCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the type of the leave event.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffLeaveEventCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffLeaveEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'StaffLeaveEventCategoryDescriptorId'
GO

-- Extended Properties [edfi].[StaffOtherName] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffOtherName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of alternate names for a person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffOtherName', @level2type=N'COLUMN', @level2name=N'OtherNameTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffOtherName', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffOtherName', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffOtherName', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffOtherName', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffOtherName', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffOtherName', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO

-- Extended Properties [edfi].[StaffPersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffPersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [edfi].[StaffProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the Staff associated with a program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the association of staff to this program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffProgramAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the association of staff to this program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffProgramAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the staff has access to the student records of the program per district interpretation of FERPA and other privacy laws, regulations, and policies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentRecordAccess'
GO

-- Extended Properties [edfi].[StaffRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRace', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[StaffRecognition] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recognitions given to the staff for accomplishments in a co-curricular or extracurricular activity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffRecognition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The nature of recognition given to the learner for accomplishments in a co-curricular, or extra-curricular activity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of academic distinctions earned by or awarded to the individual.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the recognition was awarded or earned.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardExpiresDate'
GO

-- Extended Properties [edfi].[StaffSchoolAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the School(s) to which a staff member provides instructional services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffSchoolAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the program for which the individual is assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education
        Bilingual/English as a Second Language.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociation', @level2type=N'COLUMN', @level2name=N'ProgramAssignmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociation', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier for a school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [edfi].[StaffSchoolAssociationAcademicSubject] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The teaching field taught by an individual, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffSchoolAssociationAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The teaching field taught by an individual, for example English/Language Arts, Reading, Mathematics, Science, Social Sciences, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the program for which the individual is assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education
        Bilingual/English as a Second Language.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'ProgramAssignmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[StaffSchoolAssociationGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the individual''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffSchoolAssociationGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the individual''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the program for which the individual is assigned; for example:
        Regular education
        Title I-Academic
        Title I-Non-Academic
        Special Education
        Bilingual/English as a Second Language.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'ProgramAssignmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSchoolAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [edfi].[StaffSectionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the class sections to which a staff member is assigned.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffSectionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of position the Staff member holds in the specific class/section; for example:
        Teacher of Record, Assistant Teacher, Support Teacher, Substitute Teacher...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'ClassroomPositionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of a teacher''s assignment to the Section. If blank, defaults to the first day of the first grading period for the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the last day of a staff member''s assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for this section being taught.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'HighlyQualifiedTeacher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the entire section is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'TeacherStudentDataLinkExclusion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the percentage of the total scheduled course time, academic standards, and/or learning activities delivered in this section by this staff member. A teacher of record designation may be based solely or partially on this contribution percentage.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffSectionAssociation', @level2type=N'COLUMN', @level2name=N'PercentageContribution'
GO

-- Extended Properties [edfi].[StaffTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTelephone', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTelephone', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StaffTribalAffiliation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An American Indian tribe with which the staff member is affiliated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffTribalAffiliation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTribalAffiliation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An American Indian tribe with which the staff member is affiliated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffTribalAffiliation', @level2type=N'COLUMN', @level2name=N'TribalAffiliationDescriptorId'
GO

-- Extended Properties [edfi].[StaffVisa] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StaffVisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffVisa', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StaffVisa', @level2type=N'COLUMN', @level2name=N'VisaDescriptorId'
GO

-- Extended Properties [edfi].[StateAbbreviationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StateAbbreviationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateAbbreviationDescriptor', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO

-- Extended Properties [edfi].[StateEducationAgency] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the agency of the state charged with the primary responsibility for coordinating and supervising public instruction, including the setting of standards for elementary and secondary instructional programs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StateEducationAgency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a state education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateEducationAgency', @level2type=N'COLUMN', @level2name=N'StateEducationAgencyId'
GO

-- Extended Properties [edfi].[StateEducationAgencyAccountability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity maintains information about federal reporting and accountability for state education agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StateEducationAgencyAccountability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the accountability is reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateEducationAgencyAccountability', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a state education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateEducationAgencyAccountability', @level2type=N'COLUMN', @level2name=N'StateEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether CTE concentrators are included in the state''s computation of its graduation rate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateEducationAgencyAccountability', @level2type=N'COLUMN', @level2name=N'CTEGraduationRateInclusion'
GO

-- Extended Properties [edfi].[StateEducationAgencyFederalFunds] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Contains the information about the reception and use of federal funds for reporting purposes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StateEducationAgencyFederalFunds'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fiscal year for which the federal funds are received.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'FiscalYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a state education agency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'StateEducationAgencyId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of federal dollars distributed to Local Education Agencies (LEAs), retained by the State Education Agency (SEA) for program administration or other approved state-level activities (including unallocated, transferred to another state agency, or distributed to entities other than LEAs).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StateEducationAgencyFederalFunds', @level2type=N'COLUMN', @level2name=N'FederalProgramsFundingAllocation'
GO

-- Extended Properties [edfi].[Student] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'Student'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city the student was born in.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'BirthCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'BirthStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'BirthInternationalProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'BirthCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the date the student entered the U.S.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'DateEnteredUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'MultipleBirthStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender at birth.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'BirthSexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locator reference for the student photo. The specification for that reference is left to local definition.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'ProfileThumbnail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Previous definition of Ethnicity combining Hispanic/Latino and race:
        1 - American Indian or Alaskan Native
        2 - Asian or Pacific Islander
        3 - Black, not of Hispanic origin
        4 - Hispanic
        5 - White, not of Hispanic origin.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'OldEthnicityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the person is a U.S. citizen.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'CitizenshipStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The login ID for the user; used for security access control interface.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'Student', @level2type=N'COLUMN', @level2name=N'StudentUniqueId'
GO

-- Extended Properties [edfi].[StudentAcademicRecord] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This educational entity represents the cumulative record of academic achievement for a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAcademicRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cumulative number of grade points an individual earns by successfully completing courses or examinations during his or her enrollment in the current school as well as those transferred from schools in which the individual had been previously enrolled.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeGradePointsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure of average performance in all courses taken by an individual during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the individual was previously enrolled.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'GradeValueQualifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month and year the student is projected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'ProjectedGraduationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of grade points an individual earned for this session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionGradePointsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade point average for an individual computed as the grade points earned during the session divided by the number of credits attempted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionGradePointAverage'
GO

-- Extended Properties [edfi].[StudentAcademicRecordAcademicHonor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Academic distinctions earned by or awarded to the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordAcademicHonor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A designation of the type of academic distinctions earned by or awarded to the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AcademicHonorCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of academic distinctions earned by or awarded to the individual.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the honor was awarded or earned.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorAwardExpiresDate'
GO

-- Extended Properties [edfi].[StudentAcademicRecordClassRanking] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic rank information of a student in relation to his or her graduating class.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordClassRanking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic rank of a student in relation to his or her graduating class (e.g., 1st, 2nd, 3rd).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'ClassRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students in the student''s graduating class.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'TotalNumberInClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic percentage rank of a student in relation to his or her graduating class (e.g., 95%, 80%, 50%).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'PercentageRanking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date class ranking was determined.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'ClassRankingDate'
GO

-- Extended Properties [edfi].[StudentAcademicRecordDiploma] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Diploma(s) earned by the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordDiploma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.
        Minimum high school program
        Recommended high school program
        Distinguished Achievement Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicated a student who reached a state-defined threshold of vocational education and who attained a high school diploma or its recognized state equivalent or GED.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'CTECompleter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of diploma given to the student for accomplishments.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaAwardExpiresDate'
GO

-- Extended Properties [edfi].[StudentAcademicRecordRecognition] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recognitions given to the student for accomplishments in a co-curricular or extracurricular activity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordRecognition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The nature of recognition given to the learner for accomplishments in a co-curricular, or extra-curricular activity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of academic distinctions earned by or awarded to the individual.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the recognition was awarded or earned.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardExpiresDate'
GO

-- Extended Properties [edfi].[StudentAcademicRecordReportCard] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Report cards for the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAcademicRecordReportCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAcademicRecordReportCard', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [edfi].[StudentAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StudentAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddressPeriod', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StudentAssessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the analysis or scoring of a student''s response on an assessment. The analysis results in a value that represents a student''s performance on a set of items on a test.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Assessment Administration End Date, if administered over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AdministrationEndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique number for the assessment form or answer document.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'SerialNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language in which an assessment is written and/or administered.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AdministrationLanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The environment in which the test was administered. For example:
        Electronic
        Classroom
        Testing Center
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'AdministrationEnvironmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator if the test was retaken. For example:
        Primary administration
        First retest
        Second retest
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'RetestIndicatorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason student is not tested. For example:
        Absent
        Refusal by parent
        Refusal by student
        Medical waiver
        Illness
        Disruptive behavior
        LEP Exempt
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'ReasonNotTestedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level of a student when assessed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'WhenAssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'EventCircumstanceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes special events that occur before during or after the assessment session that may impact use of results.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'EventDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the assessment was administered to a student. Among other uses, handles cases in which a student takes a prior-year exam in a subsequent school year during an exam re-test.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessment', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [edfi].[StudentAssessmentAccommodation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria. For example:
        Braille
        Enlarged monitor view
        Extra time
        Large Print
        Setting
        Oral Administration
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessmentAccommodation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The specific type of special variation used in how an examination is presented, how it is administered, or how the test taker is allowed to respond. This generally refers to changes that do not substantially alter what the examination measures. The proper use of accommodations does not substantially change academic level or performance criteria. For example:
        Braille
        Enlarged monitor view
        Extra time
        Large Print
        Setting
        Oral Administration
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AccommodationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentAccommodation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentAssessmentItem] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The student''s response to an assessment item and the item-level scores such as correct, incorrect, or met standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessmentItem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A student''s response to a stimulus on a test.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formative descriptive feedback that was given to a learner in response to the results from a scored/evaluated assessment item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'DescriptiveFeedback'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of the response. For example:
        Nonscorable response
        Ineffective response
        Effective response
        Partial response
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'ResponseIndicatorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The analyzed result of a student''s response to an assessment item. For example:
        Correct
        Incorrect
         Met standard
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'AssessmentItemResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A meaningful raw score of the performance of an individual on an assessment item.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'RawScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The overall time a student actually spent during the AssessmentItem.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentItem', @level2type=N'COLUMN', @level2name=N'TimeAssessed'
GO

-- Extended Properties [edfi].[StudentAssessmentPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The performance level(s) achieved for the StudentAssessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessmentPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the instructor of the class uses to report the performance and achievement. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which performance level value describes the student proficiency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional indicator of whether the performance level was met.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMet'
GO

-- Extended Properties [edfi].[StudentAssessmentScoreResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessmentScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of a meaningful raw score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[StudentAssessmentStudentObjectiveAssessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The student''s score and/or performance levels earned for an ObjectiveAssessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessmentStudentObjectiveAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessment', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentAssessmentStudentObjectiveAssessmentPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The PerformanceLevel(s) achieved for the ObjectiveAssessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the instructor of the class uses to report the performance and achievement. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which performance level value describes the student proficiency.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional indicator of whether the performance level was met.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMet'
GO

-- Extended Properties [edfi].[StudentAssessmentStudentObjectiveAssessmentScoreResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month(s), day(s), and year on which an assessment is administered or first day of administration if over multiple days.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a space, room, site, building, individual, organization, program, or institution by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of a meaningful raw score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentAssessmentStudentObjectiveAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [edfi].[StudentCharacteristicDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor captures important characteristics of the student''s environment or situation. Generally used for non-program-based student characteristics.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'StudentCharacteristicDescriptorId'
GO

-- Extended Properties [edfi].[StudentCohortAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Cohort(s) for which a student is designated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCohortAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student was first identified as part of the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or ID for the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociation', @level2type=N'COLUMN', @level2name=N'CohortIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student was removed as part of the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StudentCohortAssociationSection] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Cohort representing the subdivision of students within one or more sections. For example, a group of students may be given additional instruction and tracked as a cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCohortAssociationSection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student was first identified as part of the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or ID for the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'CohortIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortAssociationSection', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentCohortYear] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type and year of a cohort (e.g., 9th grade) the student belongs to as determined by the year that student entered a specific grade.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCohortYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of cohort year (9th grade, graduation).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortYear', @level2type=N'COLUMN', @level2name=N'CohortYearTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the  school year for the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortYear', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCohortYear', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentCompetencyObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the competency assessed or evaluated for the student against a specific learning  objective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCompetencyObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the CompetencyObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The CompetencyLevel assessed for the student for the referenced LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'CompetencyLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjective', @level2type=N'COLUMN', @level2name=N'DiagnosticStatement'
GO

-- Extended Properties [edfi].[StudentCompetencyObjectiveStudentProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the Student and Program associated with the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCompetencyObjectiveStudentProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ObjectiveEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the CompetencyObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentCompetencyObjectiveStudentSectionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the Student and Section associated with the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCompetencyObjectiveStudentSectionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the CompetencyObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'ObjectiveEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the CompetencyObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCompetencyObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentCTEProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the career and technical education (CTE) program that a student participates in. The association is an extension of the StudentProgramAssociation particular for CTE programs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator that student is from a gender group that comprises less than 25% of the individuals employed in an occupation or field of work.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'NonTraditionalGenderStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator that student participated in career and technical education at private agencies or institutions that are reported by the state for purposes of the Elementary and Secondary Education Act (ESEA).
Students in private institutions which do not receive Perkins funding are reported only in the state file.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'PrivateCTEProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Results of technical skills assessment aligned with industry recognized standards.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociation', @level2type=N'COLUMN', @level2name=N'TechnicalSkillsAssessmentDescriptorId'
GO

-- Extended Properties [edfi].[StudentCTEProgramAssociationCTEProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career cluster representing the career path of the Vocational/Career Tech concentrator.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationCTEProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A sequence of courses within an area of interest that is a student''s educational road map to a chosen career.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'CareerPathwayDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number and description of the CIP Code associated with the student''s CTEProgram.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'CIPCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A boolean indicator of whether this CTEProgram, is the student''s primary CTEProgram.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'PrimaryCTEProgramIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A boolean indicator of whether the Student has completed the CTEProgram.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationCTEProgram', @level2type=N'COLUMN', @level2name=N'CTEProgramCompletionIndicator'
GO

-- Extended Properties [edfi].[StudentCTEProgramAssociationService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service(s) being provided to the Student by the Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentCTEProgramAssociationService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service being provided to the student by the Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentCTEProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentDisciplineIncidentAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates those students who were victims, perpetrators, witnesses, and reporters for a discipline incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The role or type of participation of a student in a discipline incident; 
        for example:
        Victim
        Perpetrator
        Witness
        Reporter.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociation', @level2type=N'COLUMN', @level2name=N'StudentParticipationCodeDescriptorId'
GO

-- Extended Properties [edfi].[StudentDisciplineIncidentAssociationBehavior] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes behavior by category and provides a detailed description.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentDisciplineIncidentAssociationBehavior'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describes behavior by category and provides a detailed description.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociationBehavior', @level2type=N'COLUMN', @level2name=N'BehaviorDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A locally assigned unique identifier (within the school or school district) to identify each specific DisciplineIncident or occurrence. The same identifier should be used to document the entire DisciplineIncident even if it included multiple offenses and multiple offenders.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociationBehavior', @level2type=N'COLUMN', @level2name=N'IncidentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociationBehavior', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociationBehavior', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Specifies a more granular level of detail of a behavior involved in the incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentDisciplineIncidentAssociationBehavior', @level2type=N'COLUMN', @level2name=N'BehaviorDetailedDescription'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents student information that is specific to a student''s relationship with an EducationOrganization. Enrollment relationship semantics are covered by StudentSchoolAssociation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'LimitedEnglishProficiencyDescriptorId'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disability condition(s) that best describes an individual''s impairment, as determined by evaluation(s) conducted by the education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisability', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisability', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationDisabilityDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationDisabilityDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationProgramParticipation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key programs the student is participating in or receives services from.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationProgramParticipation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the Student was associated with the Program or service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the Program participation ended.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the program association.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipation', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Program, such as categories or particular indications.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Program, such as categories or particular indications.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'ProgramCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationProgramParticipationProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationStudentCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the student''s home situation:
        Displaced Homemaker, Immigrant, Migratory, Military Parent, Pregnant Teen, Single Parent, and Unaccompanied Youth.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationStudentCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristic', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The characteristic designated for the Student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristic', @level2type=N'COLUMN', @level2name=N'StudentCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristic', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the characteristic.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristic', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationStudentCharacteristicPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which characteristic was effective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The characteristic designated for the Student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod', @level2type=N'COLUMN', @level2name=N'StudentCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentCharacteristicPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationStudentIndicator] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator(s) or metric(s) computed for the student (e.g., at risk) to influence more effective education or direct specific interventions.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationStudentIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicator', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the indicator or metric.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicator', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name for a group of indicators.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the indicator or metric.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicator', @level2type=N'COLUMN', @level2name=N'Indicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the program association.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicator', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationAssociationStudentIndicatorPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the indicator was effective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationAssociationStudentIndicatorPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicatorPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicatorPeriod', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the indicator or metric.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicatorPeriod', @level2type=N'COLUMN', @level2name=N'IndicatorName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicatorPeriod', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationAssociationStudentIndicatorPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StudentEducationOrganizationResponsibilityAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates any relationship between a student and an education organization other than how the state views enrollment. Enrollment relationship semantics are covered by StudentSchoolAssociation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentEducationOrganizationResponsibilityAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start date of an education organization''s responsibility for a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationResponsibilityAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationResponsibilityAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indications of an education organization''s responsibility for a student, such as accountability, attendance, funding, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationResponsibilityAssociation', @level2type=N'COLUMN', @level2name=N'ResponsibilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationResponsibilityAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the end date of an education organization''s responsibility for a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentEducationOrganizationResponsibilityAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StudentElectronicMail] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentElectronicMail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentElectronicMail', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The electronic mail (e-mail) address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentElectronicMail', @level2type=N'COLUMN', @level2name=N'PrimaryEmailAddressIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic email address should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentElectronicMail', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StudentGradebookEntry] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity holds a student''s grade or competency level for a gradebook entry.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentGradebookEntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the assignment, homework, or assessment was assigned or executed.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'DateAssigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the activity to be recorded in the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'GradebookEntryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date an assignment was turned in or the date of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'DateFulfilled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'LetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A final or interim (grading period) indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'NumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The CompetencyLevel assessed for the student for the referenced LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'CompetencyLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentGradebookEntry', @level2type=N'COLUMN', @level2name=N'DiagnosticStatement'
GO

-- Extended Properties [edfi].[StudentHomelessProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the McKinney-Vento Homeless Program program(s) that a student participates in or from which the Student receives services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentHomelessProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary nighttime residence of the student at the time the student is identified as homeless.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'HomelessPrimaryNighttimeResidenceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'State defined definition for awaiting foster care.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'AwaitingFosterCare'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A homeless unaccompanied youth is a youth who is not in the physical custody of a parent or guardian and who fits the McKinney-Vento definition of homeless. Students must be both unaccompanied and homeless to be included as an unaccompanied homeless youth.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociation', @level2type=N'COLUMN', @level2name=N'HomelessUnaccompaniedYouth'
GO

-- Extended Properties [edfi].[StudentHomelessProgramAssociationHomelessProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service(s) being provided to the Student by the Homeless Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentHomelessProgramAssociationHomelessProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service being provided to the student by the Homeless Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'HomelessProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentHomelessProgramAssociationHomelessProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the StudentIdentificationCode.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationCode', @level2type=N'COLUMN', @level2name=N'StudentIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationCode', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO

-- Extended Properties [edfi].[StudentIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe the documentation of citizenship.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [edfi].[StudentIdentificationSystemDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the originating record system and code that is used for record-keeping purposes of the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentIdentificationSystemDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentIdentificationSystemDescriptor', @level2type=N'COLUMN', @level2name=N'StudentIdentificationSystemDescriptorId'
GO

-- Extended Properties [edfi].[StudentInternationalAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an international address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [edfi].[StudentInterventionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the students participating in an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentInterventionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociation', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or ID for the Cohort.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociation', @level2type=N'COLUMN', @level2name=N'CohortIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociation', @level2type=N'COLUMN', @level2name=N'CohortEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement provided by the assigner that provides information regarding why the student was assigned to this intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociation', @level2type=N'COLUMN', @level2name=N'DiagnosticStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The duration of time in minutes for which the student was assigned to participate in the intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociation', @level2type=N'COLUMN', @level2name=N'Dosage'
GO

-- Extended Properties [edfi].[StudentInterventionAssociationInterventionEffectiveness] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure of the effects of an intervention in each outcome domain. The rating of effectiveness takes into account four factors: the quality of the research on the intervention, the statistical significance of the research findings, the size of the differences between participants in the intervention and comparison groups and the consistency in results.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentInterventionAssociationInterventionEffectiveness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targeted purpose of the intervention (e.g., attendance issue, dropout risk) for which the effectiveness is measured.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'DiagnosisDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade level for which effectiveness is measured.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Population for which effectiveness is measured.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'PopulationServedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Along a percentile distribution of students, the improvement index represents the change in an average student''s percentile rank that is considered to be due to the intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'ImprovementIndex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAssociationInterventionEffectiveness', @level2type=N'COLUMN', @level2name=N'InterventionEffectivenessRatingDescriptorId'
GO

-- Extended Properties [edfi].[StudentInterventionAttendanceEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of whether a student is in attendance for an intervention service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentInterventionAttendanceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this attendance event.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an intervention.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'InterventionIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a student''s absence.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDuration'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The duration in minutes in which the student participated in the intervention during this instance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentInterventionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'InterventionDuration'
GO

-- Extended Properties [edfi].[StudentLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate. It is strongly recommended that entries use only ISO 639-3 language codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguage', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentLanguageInstructionProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Title III Language Instruction for Limited English Proficient and Immigrant Students program(s) that a student participates in or from which the Student receives services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that an English Learner student is served by an English language instruction educational program supported with Title III of ESEA funds.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociation', @level2type=N'COLUMN', @level2name=N'EnglishLearnerParticipation'
GO

-- Extended Properties [edfi].[StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Results of yearly English language assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The School Year for which the Assessment was administered.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Field indicating the participation in the yearly English language assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'ParticipationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The proficiency level for the yearly English language assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'ProficiencyDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The yearly progress or growth from last year’s assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'ProgressDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student is monitored on content achievement who are no longer receiving services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationEnglishLanguageProficiencyAssessment', @level2type=N'COLUMN', @level2name=N'MonitoredDescriptorId'
GO

-- Extended Properties [edfi].[StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service(s) being provided to the Student by the Language Instruction Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service being provided to the student by the Language Instruction Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'LanguageInstructionProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageInstructionProgramAssociationLanguageInstructionProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentLanguageUse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLanguageUse', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentLearningObjective] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the competency assessed or evaluated for the student against a specific LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLearningObjective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The CompetencyLevel assessed for the student for the referenced LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'CompetencyLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement provided by the teacher that provides information in addition to the grade or assessment score.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjective', @level2type=N'COLUMN', @level2name=N'DiagnosticStatement'
GO

-- Extended Properties [edfi].[StudentLearningObjectiveStudentProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the Student and Program associated with the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLearningObjectiveStudentProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentLearningObjectiveStudentSectionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Relates the Student and Section associated with the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentLearningObjectiveStudentSectionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the period for which grades are reported.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the grading period school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The sequential order of this period relative to other periods.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'GradingPeriodSequence'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The designated title of the LearningObjective.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'Objective'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level for which the LearningObjective is targeted.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'ObjectiveGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentLearningObjectiveStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentMigrantEducationProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the migrant education program(s) that a student participates in or receives services from. The association is an extension of the StudentProgramAssociation with added elements particular to migrant education programs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentMigrantEducationProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Report migratory children who are classified as having "priority for services" because they are failing, or most at risk of failing to meet the State''s challenging State academic content standards and challenging State student academic achievement standards, and their education has been interrupted during the regular school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'PriorityForServices'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the last qualifying move occurred; used to compute MEP status.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'LastQualifyingMove'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The "continuation of services" provision found in Section 1304(e) of the statute provides that (1) a child who ceases to be a migratory child during a school term shall be eligible for services until the end of such term; (2) a child who is no longer a migratory child may continue to receive services for one additional school year, but only if comparable services are not available through other programs; and (3) secondary school students who were eligible for services in secondary school may continue to be served through credit accrual programs until graduation. Only students who received services at any time during their 36 month eligibility period may continue to receive services (not necessarily the same service).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ContinuationOfServicesReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first entered the U.S.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'USInitialEntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the Student''s most recent entry into the U.S.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'USMostRecentEntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first entered a U.S. school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'USInitialSchoolEntry'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Qualifying Arrival Date (QAD) is the date the child joins the worker who has already moved, or the date when the worker joins the child who has already moved. The QAD is the date that the child’s eligibility for the MEP begins. The QAD is not affected by subsequent non-qualifying moves.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'QualifyingArrivalDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The verified State residency for the student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'StateResidencyDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Eligibility Expiration Date is used to determine end of eligibility and to account for a child’s eligibility expiring earlier than 36 months from the child’s QAD. A child’s eligibility would end earlier than 36 months from the child’s QAD, if the child is no longer entitled to a free public education (e.g., graduated with a high school diploma, obtained a high school equivalency diploma (HSED), or for other reasons as determined by States’ requirements), or if the child passes away.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'EligibilityExpirationDate'
GO

-- Extended Properties [edfi].[StudentMigrantEducationProgramAssociationMigrantEducationProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service(s) being provided to the Student by the Migrant Education Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service being provided to the student by the Migrant Education Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'MigrantEducationProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentMigrantEducationProgramAssociationMigrantEducationProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentNeglectedOrDelinquentProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Title I Part D Neglected or Delinquent program(s) that a student participates in or from which the Student receives services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentNeglectedOrDelinquentProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'NeglectedOrDelinquentProgramDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The progress measured from pre- to post- test for ELA.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ELAProgressLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The progress measured from pre- to post-test for Mathematics.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociation', @level2type=N'COLUMN', @level2name=N'MathematicsProgressLevelDescriptorId'
GO

-- Extended Properties [edfi].[StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service(s) being provided to the Student by the Neglected or Delinquent Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service being provided to the student by the Neglected or Delinquent Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'NeglectedOrDelinquentProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentNeglectedOrDelinquentProgramAssociationNeglectedOrDelinquentProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentOtherName] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentOtherName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of alternate names for a person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentOtherName', @level2type=N'COLUMN', @level2name=N'OtherNameTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentOtherName', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentOtherName', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentOtherName', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentOtherName', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentOtherName', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentOtherName', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO

-- Extended Properties [edfi].[StudentParentAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association relates students to their parents, guardians, or caretakers.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentParentAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The nature of an individual''s relationship to a student; for example:
        Father, Mother, Step Father, Step Mother, Foster Father, Foster Mother, Guardian, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'RelationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the person is a primary parental contact for the Student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'PrimaryContactStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the Student lives with the associated parent.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'LivesWith'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the person is a designated emergency contact for the Student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'EmergencyContactStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numeric order of the preferred sequence or priority of contact.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'ContactPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Restrictions for student and/or teacher contact with the individual (e.g., the student may not be picked up by the individual).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParentAssociation', @level2type=N'COLUMN', @level2name=N'ContactRestrictions'
GO

-- Extended Properties [edfi].[StudentParticipationCodeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The role or type of participation of a student in a discipline incident; for example: Victim, Perpetrator, Witness, Reporter.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentParticipationCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentParticipationCodeDescriptor', @level2type=N'COLUMN', @level2name=N'StudentParticipationCodeDescriptorId'
GO

-- Extended Properties [edfi].[StudentPersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentPersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [edfi].[StudentProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Program(s) that a student participates in or is served by.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentProgramAssociationService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service(s) being provided to the Student by the Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentProgramAssociationService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service being provided to the student by the Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentProgramAttendanceEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of whether a student is in attendance to receive or participate in program services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentProgramAttendanceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this attendance event.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a student''s absence.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentProgramAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDuration'
GO

-- Extended Properties [edfi].[StudentRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentRace', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentSchoolAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the School in which a student is enrolled. The semantics of enrollment may differ slightly by state. Non-enrollment relationships between a student and an education organization may be described using the StudentEducationOrganizationAssociation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates if a given enrollment record should be considered the primary record for a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'PrimarySchool'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level or primary instructional level at which a student enters and receives services in a school or an educational institution during a given academic session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'EntryGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'EntryGradeLevelReasonDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The process by which a student enters a school during a given academic session.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'EntryTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether the student is enrolling to repeat a grade level, either by failure or an agreement to hold the student back.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'RepeatGradeIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Projected High School graduation year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'ClassOfSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether students transferred in or out of the school did so during the school year under the provisions for public school choice in accordance with Title I, Part A, Section 1116.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'SchoolChoiceTransfer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year of the first day after the date of an individual''s last attendance at a school (if known), the day on which an individual graduated, or the date on which it becomes known officially that an individual left school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'ExitWithdrawDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The circumstances under which the student exited from membership in an educational institution.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'ExitWithdrawTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the location of a persons legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'ResidencyStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of academic plan the student is following for graduation: for example, Minimum, Recommended, Distinguished, or Standard.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'GraduationPlanTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the student is expected to graduate.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'GraduationSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An individual who is a paid employee or works in his or her own business, profession, or farm and at the same time is enrolled in secondary, postsecondary, or adult education.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'EmployedWhileEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the Calendar.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'CalendarCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year associated with the student''s enrollment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [edfi].[StudentSchoolAssociationEducationPlan] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of EducationPlan(s) the student is following, if appropriate. For example:
        Special education IEP
        Vocational.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSchoolAssociationEducationPlan'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of EducationPlan(s) the student is following, if appropriate. For example:
        Special education IEP
        Vocational.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociationEducationPlan', @level2type=N'COLUMN', @level2name=N'EducationPlanDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual enters and begins to receive instructional services in a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociationEducationPlan', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociationEducationPlan', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAssociationEducationPlan', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentSchoolAttendanceEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of whether a student is in attendance for a school day.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSchoolAttendanceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this attendance event.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a student''s absence.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDuration'
GO

-- Extended Properties [edfi].[StudentSchoolFoodServiceProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the school food services program(s), such as the Free or Reduced Lunch Program, that a student participates in or from which the Student receives services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the student''s National School Lunch Program (NSLP) eligibility has been determined through direct certification.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociation', @level2type=N'COLUMN', @level2name=N'DirectCertification'
GO

-- Extended Properties [edfi].[StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service(s) being provided to the Student by the School Food Service Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service being provided to the student by the School Food Service Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SchoolFoodServiceProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSchoolFoodServiceProgramAssociationSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentSectionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the course sections to which a student is assigned.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSectionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the withdrawal or exit of the Student from the Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Section is the student''s homeroom. Homeroom period may the convention for taking daily attendance.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'HomeroomIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication as to whether a student has previously taken a given course.
        Repeated, counted in grade point average
        Repeated, not counted in grade point average
        Not repeated
        Other.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'RepeatIdentifierDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that the student-section combination is excluded from calculation of value-added or growth attribution calculations used for a particular teacher evaluation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'TeacherStudentDataLinkExclusion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the student''s attempt status for the section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'AttemptStatusDescriptorId'
GO

-- Extended Properties [edfi].[StudentSectionAttendanceEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of whether a student is in attendance for a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSectionAttendanceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the attendance event, for example:
        Present
        Unexcused absence
        Excused absence
        Tardy.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this attendance event.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a student''s absence.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'AttendanceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The setting in which a child receives education and related services. This attribute is only used if it differs from the EducationalEnvironment of the Section. This is only used in the AttendanceEvent if different from the associated Section.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EducationalEnvironmentDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of time for the event as recognized by the school: 1 day = 1, 1/2 day = 0.5, 1/3 day = 0.33.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSectionAttendanceEvent', @level2type=N'COLUMN', @level2name=N'EventDuration'
GO

-- Extended Properties [edfi].[StudentSpecialEducationProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the special education program(s) that a student participates in or receives services from. The association is an extension of the StudentProgramAssociation particular for special education programs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of the eligibility of the student to receive special education services according to the Individuals with Disabilities Education Act (IDEA).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'IdeaEligibility'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The major instructional setting (more than 50 percent of a student''s special education program).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'SpecialEducationSettingDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of hours per week for special education instruction and therapy.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'SpecialEducationHoursPerWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicate the total number of hours of instructional time per week for the school that the student attends.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'SchoolHoursPerWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the Student receiving special education and related services has been designated as multiply disabled by the admission, review, and dismissal committee as aligned with federal requirements.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'MultiplyDisabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates whether the Student receiving special education and related services is:
        1) in the age range of birth to 22 years, and
        2) has a serious, ongoing illness or a chronic condition that has lasted or is anticipated to last at least 12 or more months or has required at least one month of hospitalization, and that requires daily, ongoing medical treatments and monitoring by appropriately trained personnel which may include parents or other family members, and
        3) requires the routine use of medical device or of assistive technology to compensate for the loss of usefulness of a body function needed to participate in activities of daily living, and
        4) lives with ongoing threat to his or her continued well-being.
        Aligns with federal requirements.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'MedicallyFragile'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the last special education evaluation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'LastEvaluationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the last IEP review.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'IEPReviewDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The effective date of the most recent IEP.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'IEPBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date of the most recent IEP.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociation', @level2type=N'COLUMN', @level2name=N'IEPEndDate'
GO

-- Extended Properties [edfi].[StudentSpecialEducationProgramAssociationDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disability condition(s) that best describes an individual''s impairment, as related to special education services received.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO

-- Extended Properties [edfi].[StudentSpecialEducationProgramAssociationDisabilityDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [edfi].[StudentSpecialEducationProgramAssociationServiceProvider] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Staff providing special education services to the Student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationServiceProvider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Primary ServiceProvider.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationServiceProvider', @level2type=N'COLUMN', @level2name=N'PrimaryProvider'
GO

-- Extended Properties [edfi].[StudentSpecialEducationProgramAssociationSpecialEducationProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service(s) being provided to the Student by the Special Education Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the service being provided to the student by the Special Education Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'SpecialEducationProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentSpecialEducationProgramAssociationSpecialEducationProgramService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTelephone', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number should not be published.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTelephone', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [edfi].[StudentTitleIPartAProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association represents the Title I Part A program(s) that a student participates in or from which the Student receives services. The association is an extension of the StudentProgramAssociation particular for Title I Part A programs.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the type of Title I program, if any, in which the student is participating and by which the student is served:
        Public Targeted Assistance Program
        Public Schoolwide Program
        Private School Students Participating
        Local Neglected Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociation', @level2type=N'COLUMN', @level2name=N'TitleIPartAParticipantDescriptorId'
GO

-- Extended Properties [edfi].[StudentTitleIPartAProgramAssociationService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service(s) being provided to the Student by the Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentTitleIPartAProgramAssociationService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the Student first received services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the Service being provided to the student by the Program.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'True if service is a primary service.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'PrimaryIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'First date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Last date the Student was in this option for the current school year.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTitleIPartAProgramAssociationService', @level2type=N'COLUMN', @level2name=N'ServiceEndDate'
GO

-- Extended Properties [edfi].[StudentTribalAffiliation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An American Indian tribe with which the student is affiliated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentTribalAffiliation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTribalAffiliation', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An American Indian tribe with which the student is affiliated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentTribalAffiliation', @level2type=N'COLUMN', @level2name=N'TribalAffiliationDescriptorId'
GO

-- Extended Properties [edfi].[StudentVisa] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'StudentVisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentVisa', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'StudentVisa', @level2type=N'COLUMN', @level2name=N'VisaDescriptorId'
GO

-- Extended Properties [edfi].[TeachingCredentialBasisDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the pre-determined criteria for granting the teaching credential that an individual holds.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TeachingCredentialBasisDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TeachingCredentialBasisDescriptor', @level2type=N'COLUMN', @level2name=N'TeachingCredentialBasisDescriptorId'
GO

-- Extended Properties [edfi].[TeachingCredentialDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TeachingCredentialDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TeachingCredentialDescriptor', @level2type=N'COLUMN', @level2name=N'TeachingCredentialDescriptorId'
GO

-- Extended Properties [edfi].[TechnicalSkillsAssessmentDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the results of technical skills assessment aligned with industry recognized standards.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TechnicalSkillsAssessmentDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TechnicalSkillsAssessmentDescriptor', @level2type=N'COLUMN', @level2name=N'TechnicalSkillsAssessmentDescriptorId'
GO

-- Extended Properties [edfi].[TelephoneNumberTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TelephoneNumberTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TelephoneNumberTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO

-- Extended Properties [edfi].[TermDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the term of a session during the school year (e.g., Fall Semester).', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TermDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TermDescriptor', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [edfi].[TitleIPartAParticipantDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the type of Title I program, if any, in which the student is participating and served.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TitleIPartAParticipantDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TitleIPartAParticipantDescriptor', @level2type=N'COLUMN', @level2name=N'TitleIPartAParticipantDescriptorId'
GO

-- Extended Properties [edfi].[TitleIPartASchoolDesignationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Denotes the Title I Part A designation for the school.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TitleIPartASchoolDesignationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TitleIPartASchoolDesignationDescriptor', @level2type=N'COLUMN', @level2name=N'TitleIPartASchoolDesignationDescriptorId'
GO

-- Extended Properties [edfi].[TribalAffiliationDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An American Indian tribe with which an individual is affiliated.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'TribalAffiliationDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'TribalAffiliationDescriptor', @level2type=N'COLUMN', @level2name=N'TribalAffiliationDescriptorId'
GO

-- Extended Properties [edfi].[VisaDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-U.S. citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'VisaDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'VisaDescriptor', @level2type=N'COLUMN', @level2name=N'VisaDescriptorId'
GO

-- Extended Properties [edfi].[WeaponDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the types of weapon used during an incident.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE', @level1name=N'WeaponDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'edfi', @level1type=N'TABLE',@level1name=N'WeaponDescriptor', @level2type=N'COLUMN', @level2name=N'WeaponDescriptorId'
GO

