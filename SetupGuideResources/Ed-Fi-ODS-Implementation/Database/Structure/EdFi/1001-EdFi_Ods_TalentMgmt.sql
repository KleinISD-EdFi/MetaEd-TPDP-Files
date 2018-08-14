GO
PRINT N'Creating [extension]...';


IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'extension')
BEGIN
EXEC sp_executesql N'CREATE SCHEMA [extension]
    AUTHORIZATION [dbo];'
END



GO
PRINT N'Creating [extension].[ApplicantLanguage]...';


GO
CREATE TABLE [extension].[ApplicantLanguage] (
    [EducationOrganizationId] INT           NOT NULL,
    [ApplicantIdentifier]     NVARCHAR (32) NOT NULL,
    [LanguageDescriptorId]    INT           NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantLanguage] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [LanguageDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantLanguage].[FK_ApplicantLanguages_LanguageDescriptor_LanguageDescriptorId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantLanguages_LanguageDescriptor_LanguageDescriptorId]
    ON [extension].[ApplicantLanguage]([LanguageDescriptorId] ASC);


GO
PRINT N'Creating [extension].[ApplicantLanguage].[FK_ApplicantLanguages_Staff_ApplicantIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantLanguages_Staff_ApplicantIdentifier]
    ON [extension].[ApplicantLanguage]([ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantLanguage].[FK_ApplicantLanguage_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantLanguage_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantLanguage]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress]...';


GO
CREATE TABLE [extension].[ApplicantInternationalAddress] (
    [EducationOrganizationId] INT            NOT NULL,
    [ApplicantIdentifier]     NVARCHAR (32)  NOT NULL,
    [AddressTypeId]           INT            NOT NULL,
    [AddressLine1]            NVARCHAR (150) NOT NULL,
    [AddressLine2]            NVARCHAR (150) NULL,
    [AddressLine3]            NVARCHAR (150) NULL,
    [AddressLine4]            NVARCHAR (150) NULL,
    [Latitude]                NVARCHAR (20)  NULL,
    [Longitude]               NVARCHAR (20)  NULL,
    [BeginDate]               DATE           NULL,
    [EndDate]                 DATE           NULL,
    [CountryDescriptorId]     INT            NOT NULL,
    [CreateDate]              DATETIME       NOT NULL,
    CONSTRAINT [PK_ApplicantInternationalAddress] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [AddressTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[FK_ApplicantInternationalAddress_AddressType_AddressTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_AddressType_AddressTypeId]
    ON [extension].[ApplicantInternationalAddress]([AddressTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[FK_ApplicantInternationalAddress_CountryDescriptorId_CountryDescriptor_CountryDescriptorId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_CountryDescriptorId_CountryDescriptor_CountryDescriptorId]
    ON [extension].[ApplicantInternationalAddress]([CountryDescriptorId] ASC);


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[FK_ApplicantInternationalAddress_Staff_ApplicantIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_Staff_ApplicantIdentifier]
    ON [extension].[ApplicantInternationalAddress]([ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[FK_ApplicantInternationalAddress_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantInternationalAddress]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantIdentificationDocument]...';


GO
CREATE TABLE [extension].[ApplicantIdentificationDocument] (
    [EducationOrganizationId]               INT            NOT NULL,
    [ApplicantIdentifier]                   NVARCHAR (32)  NOT NULL,
    [IdentificationDocumentUseTypeId]       INT            NOT NULL,
    [PersonalInformationVerificationTypeId] INT            NOT NULL,
    [DocumentTitle]                         NVARCHAR (60)  NULL,
    [DocumentExpirationDate]                DATE           NULL,
    [IssuerDocumentIdentificationCode]      NVARCHAR (60)  NOT NULL,
    [IssuerName]                            NVARCHAR (150) NULL,
    [IssuerCountryDescriptorId]             INT            NULL,
    [CreateDate]                            DATETIME       NOT NULL,
    CONSTRAINT [PK_ApplicantIdentificationDocument] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [PersonalInformationVerificationTypeId] ASC, [IdentificationDocumentUseTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantIdentificationDocument].[FK_ApplicantIdentificationDocument_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantIdentificationDocument]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantVisa]...';


GO
CREATE TABLE [extension].[ApplicantVisa] (
    [EducationOrganizationId] INT           NOT NULL,
    [ApplicantIdentifier]     NVARCHAR (32) NOT NULL,
    [VisaTypeId]              INT           NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantVisa] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [VisaTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantVisa].[FK_ApplicantVisa_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantVisa_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantVisa]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[BackgroundCheckStatusDescriptor]...';


GO
CREATE TABLE [extension].[BackgroundCheckStatusDescriptor] (
    [BackgroundCheckStatusDescriptorId] INT NOT NULL,
    [BackgroundCheckStatusTypeId]       INT NOT NULL,
    CONSTRAINT [PK_BackgroundCheckStatusDescriptor] PRIMARY KEY CLUSTERED ([BackgroundCheckStatusDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[BackgroundCheckTypeDescriptor]...';


GO
CREATE TABLE [extension].[BackgroundCheckTypeDescriptor] (
    [BackgroundCheckTypeDescriptorId] INT NOT NULL,
    [BackgroundCheckTypeId]           INT NOT NULL,
    CONSTRAINT [PK_BackgroundCheckTypeDescriptor] PRIMARY KEY CLUSTERED ([BackgroundCheckTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantBackgroundCheck]...';


GO
CREATE TABLE [extension].[ApplicantBackgroundCheck] (
    [EducationOrganizationId]           INT           NOT NULL,
    [ApplicantIdentifier]               NVARCHAR (32) NOT NULL,
    [BackgroundCheckTypeDescriptorId]   INT           NOT NULL,
    [BackgroundCheckRequestedDate]      DATE          NOT NULL,
    [BackgroundCheckCompletedDate]      DATE          NULL,
    [BackgroundCheckStatusDescriptorId] INT           NULL,
    [CreateDate]                        DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantBackgroundCheck] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [BackgroundCheckTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantBackgroundCheck].[FK_ApplicantBackgroundCheck_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantBackgroundCheck_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantBackgroundCheck]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantIdentificationCode]...';


GO
CREATE TABLE [extension].[ApplicantIdentificationCode] (
    [EducationOrganizationId]                 INT           NOT NULL,
    [ApplicantIdentifier]                     NVARCHAR (32) NOT NULL,
    [StaffIdentificationSystemDescriptorId]   INT           NOT NULL,
    [AssigningOrganizationIdentificationCode] NVARCHAR (60) NULL,
    [IdentificationCode]                      NVARCHAR (60) NOT NULL,
    [CreateDate]                              DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantIdentificationCode] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [StaffIdentificationSystemDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantIdentificationCode].[FK_ApplicantIdentificationCode_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationCode_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantIdentificationCode]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[Applicant]...';


GO
CREATE TABLE [extension].[Applicant] (
    [EducationOrganizationId]                      INT              NOT NULL,
    [ApplicantIdentifier]                          NVARCHAR (32)    NOT NULL,
    [PersonalTitlePrefix]                          NVARCHAR (30)    NULL,
    [FirstName]                                    NVARCHAR (75)    NOT NULL,
    [MiddleName]                                   NVARCHAR (75)    NULL,
    [LastSurname]                                  NVARCHAR (75)    NOT NULL,
    [GenerationCodeSuffix]                         NVARCHAR (10)    NULL,
    [MaidenName]                                   NVARCHAR (75)    NULL,
    [SexTypeId]                                    INT              NULL,
    [BirthDate]                                    DATE             NULL,
    [HispanicLatinoEthnicity]                      BIT              NULL,
    [CitizenshipStatusTypeId]                      INT              NULL,
    [HighestCompletedLevelOfEducationDescriptorId] INT              NULL,
    [YearsOfPriorProfessionalExperience]           DECIMAL (5, 2)   NULL,
    [YearsOfPriorTeachingExperience]               DECIMAL (5, 2)   NULL,
    [LoginId]                                      NVARCHAR (60)    NULL,
    [HighlyQualifiedTeacher]                       BIT              NULL,
    [HighlyQualifiedAcademicSubjectDescriptorId]   INT              NULL,
    [ProspectEducationOrganizationId]              INT              NULL,
    [ProspectIdentifier]                           NVARCHAR (32)    NULL,
    [Id]                                           UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                             DATETIME         NOT NULL,
    [CreateDate]                                   DATETIME         NOT NULL,
    CONSTRAINT [PK_Applicant] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC)
);


GO
PRINT N'Creating [extension].[Applicant].[FK_Applicant_Prospect_ProspectEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_Applicant_Prospect_ProspectEducationOrganizationId]
    ON [extension].[Applicant]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantAddress]...';


GO
CREATE TABLE [extension].[ApplicantAddress] (
    [EducationOrganizationId]  INT            NOT NULL,
    [ApplicantIdentifier]      NVARCHAR (32)  NOT NULL,
    [AddressTypeId]            INT            NOT NULL,
    [StreetNumberName]         NVARCHAR (150) NOT NULL,
    [ApartmentRoomSuiteNumber] NVARCHAR (50)  NULL,
    [BuildingSiteNumber]       NVARCHAR (20)  NULL,
    [City]                     NVARCHAR (30)  NOT NULL,
    [StateAbbreviationTypeId]  INT            NOT NULL,
    [PostalCode]               NVARCHAR (17)  NOT NULL,
    [NameOfCounty]             NVARCHAR (30)  NULL,
    [CountyFIPSCode]           NVARCHAR (5)   NULL,
    [Latitude]                 NVARCHAR (20)  NULL,
    [Longitude]                NVARCHAR (20)  NULL,
    [BeginDate]                DATE           NULL,
    [EndDate]                  DATE           NULL,
    [CreateDate]               DATETIME       NOT NULL,
    CONSTRAINT [PK_ApplicantAddress] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [AddressTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantAddress].[FK_ApplicantAddress_AddressType_AddressTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_AddressType_AddressTypeId]
    ON [extension].[ApplicantAddress]([AddressTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantAddress].[FK_ApplicantAddress_Applicant_ApplicantIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_Applicant_ApplicantIdentifier]
    ON [extension].[ApplicantAddress]([ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantAddress].[FK_ApplicantAddress_StateAbbreviationType_StateAbbreviationTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_StateAbbreviationType_StateAbbreviationTypeId]
    ON [extension].[ApplicantAddress]([StateAbbreviationTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantAddress].[FK_ApplicantAddress_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantAddress]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ProspectTouchpoint]...';


GO
CREATE TABLE [extension].[ProspectTouchpoint] (
    [EducationOrganizationId] INT            NOT NULL,
    [ProspectIdentifier]      NVARCHAR (32)  NOT NULL,
    [TouchpointDate]          DATE           NOT NULL,
    [TouchpointContent]       NVARCHAR (255) NOT NULL,
    [CreateDate]              DATETIME       NOT NULL,
    CONSTRAINT [PK_ProspectTouchpoint] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC, [TouchpointDate] ASC, [TouchpointContent] ASC)
);


GO
PRINT N'Creating [extension].[ProspectTouchpoint].[FK_ProspectTouchpoint_Prospect_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectTouchpoint_Prospect_EducationOrganizationId]
    ON [extension].[ProspectTouchpoint]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[ProspectTelephone]...';


GO
CREATE TABLE [extension].[ProspectTelephone] (
    [EducationOrganizationId]        INT           NOT NULL,
    [ProspectIdentifier]             NVARCHAR (32) NOT NULL,
    [TelephoneNumberTypeId]          INT           NOT NULL,
    [OrderOfPriority]                INT           NULL,
    [TextMessageCapabilityIndicator] BIT           NULL,
    [TelephoneNumber]                NVARCHAR (24) NOT NULL,
    [CreateDate]                     DATETIME      NOT NULL,
    CONSTRAINT [PK_ProspectTelephone] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC, [TelephoneNumberTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ProspectTelephone].[FK_ProspectTelephone_Prospect_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectTelephone_Prospect_EducationOrganizationId]
    ON [extension].[ProspectTelephone]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[ProspectRecruitmentEvent]...';


GO
CREATE TABLE [extension].[ProspectRecruitmentEvent] (
    [EducationOrganizationId] INT           NOT NULL,
    [ProspectIdentifier]      NVARCHAR (32) NOT NULL,
    [EventDate]               DATE          NOT NULL,
    [EventTitle]              NVARCHAR (50) NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ProspectRecruitmentEvent] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC, [EventDate] ASC, [EventTitle] ASC)
);


GO
PRINT N'Creating [extension].[ProspectRecruitmentEvent].[FK_ProspectRecruitmentEvent_RecruitmentEvent_EventDate]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectRecruitmentEvent_RecruitmentEvent_EventDate]
    ON [extension].[ProspectRecruitmentEvent]([EventDate] ASC, [EventTitle] ASC);


GO
PRINT N'Creating [extension].[ProspectRecruitmentEvent].[FK_ProspectRecruitmentEvent_Prospect_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectRecruitmentEvent_Prospect_EducationOrganizationId]
    ON [extension].[ProspectRecruitmentEvent]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[Prospect]...';


GO
CREATE TABLE [extension].[Prospect] (
    [EducationOrganizationId] INT              NOT NULL,
    [ProspectIdentifier]      NVARCHAR (32)    NOT NULL,
    [PersonalTitlePrefix]     NVARCHAR (30)    NULL,
    [FirstName]               NVARCHAR (75)    NOT NULL,
    [MiddleName]              NVARCHAR (75)    NULL,
    [LastSurname]             NVARCHAR (75)    NOT NULL,
    [GenerationCodeSuffix]    NVARCHAR (10)    NULL,
    [MaidenName]              NVARCHAR (75)    NULL,
    [ElectronicMailAddress]   NVARCHAR (128)   NOT NULL,
    [Applied]                 BIT              NULL,
    [HispanicLatinoEthnicity] BIT              NULL,
    [Met]                     BIT              NULL,
    [Notes]                   NVARCHAR (255)   NULL,
    [PreScreeningRating]      INT              NULL,
    [Referral]                BIT              NULL,
    [ReferredBy]              NVARCHAR (50)    NULL,
    [SexTypeId]               INT              NULL,
    [SocialMediaUserName]     NVARCHAR (50)    NULL,
    [SocialMediaNetworkName]  NVARCHAR (50)    NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]        DATETIME         NOT NULL,
    [CreateDate]              DATETIME         NOT NULL,
    CONSTRAINT [PK_Prospect] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentSeparationEvent]...';


GO
CREATE TABLE [extension].[EmploymentSeparationEvent] (
    [EducationOrganizationId]                INT              NOT NULL,
    [RequisitionNumber]                      NVARCHAR (20)    NOT NULL,
    [EmploymentSeparationDate]               DATE             NOT NULL,
    [EmploymentSeparationTypeDescriptorId]   INT              NULL,
    [EmploymentSeparationEnteredDate]        DATE             NULL,
    [EmploymentSeparationReasonDescriptorId] INT              NULL,
    [RemainingInDistrict]                    BIT              NULL,
    [Id]                                     UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                       DATETIME         NOT NULL,
    [CreateDate]                             DATETIME         NOT NULL,
    CONSTRAINT [PK_EmploymentSeparationEvent] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [RequisitionNumber] ASC, [EmploymentSeparationDate] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentSeparationEvent].[FK_EmploymentSeparationEvent_OpenStaffPosition_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_EmploymentSeparationEvent_OpenStaffPosition_EducationOrganizationId]
    ON [extension].[EmploymentSeparationEvent]([EducationOrganizationId] ASC, [RequisitionNumber] ASC);


GO
PRINT N'Creating [extension].[EmploymentEvent]...';


GO
CREATE TABLE [extension].[EmploymentEvent] (
    [EducationOrganizationId]         INT              NOT NULL,
    [RequisitionNumber]               NVARCHAR (20)    NOT NULL,
    [EmploymentEventTypeDescriptorId] INT              NOT NULL,
    [HireDate]                        DATE             NULL,
    [EarlyHire]                       BIT              NULL,
    [InternalExternalHireTypeId]      INT              NULL,
    [MutualConsent]                   BIT              NULL,
    [RestrictedChoice]                BIT              NULL,
    [Id]                              UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                DATETIME         NOT NULL,
    [CreateDate]                      DATETIME         NOT NULL,
    CONSTRAINT [PK_EmploymentEvent] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [RequisitionNumber] ASC, [EmploymentEventTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentEvent].[FK_EmploymentEvent_OpenStaffPosition_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_EmploymentEvent_OpenStaffPosition_EducationOrganizationId]
    ON [extension].[EmploymentEvent]([EducationOrganizationId] ASC, [RequisitionNumber] ASC);


GO
PRINT N'Creating [extension].[StaffAbsenceEvent]...';


GO
CREATE TABLE [extension].[StaffAbsenceEvent] (
    [StaffUSI]                         INT              NOT NULL,
    [EventDate]                        DATE             NOT NULL,
    [AbsenceEventCategoryDescriptorId] INT              NOT NULL,
    [AbsenceEventReason]               NVARCHAR (255)   NULL,
    [HoursAbsent]                      DECIMAL (3, 2)   NULL,
    [Id]                               UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                 DATETIME         NOT NULL,
    [CreateDate]                       DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffAbsenceEvent] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [EventDate] ASC, [AbsenceEventCategoryDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[StaffAbsenceEvent].[FK_StaffAbsenceEvent_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffAbsenceEvent_Staff_StaffUSI]
    ON [extension].[StaffAbsenceEvent]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationRating]...';


GO
CREATE TABLE [extension].[StaffEvaluationRating] (
    [EducationOrganizationId]                INT              NOT NULL,
    [SchoolYear]                             SMALLINT         NOT NULL,
    [StaffEvaluationTitle]                   NVARCHAR (50)    NOT NULL,
    [StaffUSI]                               INT              NOT NULL,
    [StaffEvaluationDate]                    DATE             NOT NULL,
    [StaffRating]                            DECIMAL (6, 3)   NOT NULL,
    [StaffEvaluationRatingLevelDescriptorId] INT              NULL,
    [EvaluatedByStaffUSI]                    INT              NULL,
    [Id]                                     UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                       DATETIME         NOT NULL,
    [CreateDate]                             DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationRating] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [StaffUSI] ASC, [StaffEvaluationDate] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationRating].[FK_StaffEvaluationRating_StaffEvaluation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRating_StaffEvaluation_EducationOrganizationId]
    ON [extension].[StaffEvaluationRating]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationRating].[FK_StaffEvaluationRating_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRating_Staff_StaffUSI]
    ON [extension].[StaffEvaluationRating]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationRating].[FK_StaffEvaluationRating_Staff_EvaluatedByStaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationRating_Staff_EvaluatedByStaffUSI]
    ON [extension].[StaffEvaluationRating]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluation]...';


GO
CREATE TABLE [extension].[StaffEvaluation] (
    [EducationOrganizationId]           INT              NOT NULL,
    [SchoolYear]                        SMALLINT         NOT NULL,
    [StaffEvaluationTitle]              NVARCHAR (50)    NOT NULL,
    [MaxRating]                         DECIMAL (6, 3)   NOT NULL,
    [MinRating]                         DECIMAL (6, 3)   NULL,
    [StaffEvaluationPeriodDescriptorId] INT              NULL,
    [StaffEvaluationTypeDescriptorId]   INT              NULL,
    [Id]                                UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                  DATETIME         NOT NULL,
    [CreateDate]                        DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluation] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluation].[FK_StaffEvaluation_SchoolYearType_SchoolYear]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluation_SchoolYearType_SchoolYear]
    ON [extension].[StaffEvaluation]([SchoolYear] ASC);


GO
PRINT N'Creating [extension].[EducationOrganizationFacts]...';


GO
CREATE TABLE [extension].[EducationOrganizationFacts] (
    [EducationOrganizationId]                  INT              NOT NULL,
    [SchoolYear]                               SMALLINT         NOT NULL,
    [FactsAsOfDate]                            DATE             NOT NULL,
    [NumberAdministratorsEmployed]             INT              NULL,
    [NumberStudentsEnrolled]                   INT              NULL,
    [NumberTeachersEmployed]                   INT              NULL,
    [PercentStudentsFreeReducedLunch]          DECIMAL (5, 4)   NULL,
    [PercentStudentsLimitedEnglishProficiency] DECIMAL (5, 4)   NULL,
    [PercentStudentsSpecialEducation]          DECIMAL (5, 4)   NULL,
    [Id]                                       UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                         DATETIME         NOT NULL,
    [CreateDate]                               DATETIME         NOT NULL,
    CONSTRAINT [PK_EducationOrganizationFacts] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [FactsAsOfDate] ASC)
);


GO
PRINT N'Creating [extension].[EducationOrganizationFacts].[FK_EducationOrganizationFacts_SchoolYearType_SchoolYear]...';


GO
CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFacts_SchoolYearType_SchoolYear]
    ON [extension].[EducationOrganizationFacts]([SchoolYear] ASC);


GO
PRINT N'Creating [extension].[TalentManagementGoal]...';


GO
CREATE TABLE [extension].[TalentManagementGoal] (
    [SchoolYear]       SMALLINT         NOT NULL,
    [GoalTitle]        NVARCHAR (255)   NOT NULL,
    [GoalValue]        DECIMAL (12, 3)  NOT NULL,
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate] DATETIME         NOT NULL,
    [CreateDate]       DATETIME         NOT NULL,
    CONSTRAINT [PK_TalentManagementGoal] PRIMARY KEY CLUSTERED ([GoalTitle] ASC, [SchoolYear] ASC)
);


GO
PRINT N'Creating [extension].[TalentManagementGoal].[FK_TalentManagementGoal_SchoolYearType_SchoolYear]...';


GO
CREATE NONCLUSTERED INDEX [FK_TalentManagementGoal_SchoolYearType_SchoolYear]
    ON [extension].[TalentManagementGoal]([SchoolYear] ASC);


GO
PRINT N'Creating [extension].[ApplicationStatusDescriptor]...';


GO
CREATE TABLE [extension].[ApplicationStatusDescriptor] (
    [ApplicationStatusDescriptorId] INT NOT NULL,
    [ApplicationStatusTypeId]       INT NOT NULL,
    CONSTRAINT [PK_ApplicationStatusDescriptor] PRIMARY KEY CLUSTERED ([ApplicationStatusDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[LevelOfDegreeAwardedDescriptor]...';


GO
CREATE TABLE [extension].[LevelOfDegreeAwardedDescriptor] (
    [LevelOfDegreeAwardedDescriptorId] INT      NOT NULL,
    [LevelOfDegreeAwardedTypeId]       INT      NOT NULL,
    [CreateDate]                       DATETIME NOT NULL,
    CONSTRAINT [PK_LevelOfDegreeAwardedDescriptor] PRIMARY KEY CLUSTERED ([LevelOfDegreeAwardedDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantCredential]...';


GO
CREATE TABLE [extension].[ApplicantCredential] (
    [EducationOrganizationId]             INT           NOT NULL,
    [ApplicantIdentifier]                 NVARCHAR (32) NOT NULL,
    [CredentialFieldDescriptorId]         INT           NOT NULL,
    [CredentialTypeId]                    INT           NOT NULL,
    [LevelDescriptorId]                   INT           NOT NULL,
    [TeachingCredentialDescriptorId]      INT           NOT NULL,
    [CredentialIssuanceDate]              DATE          NOT NULL,
    [CredentialExpirationDate]            DATE          NULL,
    [TeachingCredentialBasisTypeId]       INT           NULL,
    [StateOfIssueStateAbbreviationTypeId] INT           NULL,
    [CredentialIdentifier]                NVARCHAR (50) NULL,
    [CurrentCredential]                   BIT           NULL,
    [CreateDate]                          DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantCredential] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [CredentialFieldDescriptorId] ASC, [CredentialTypeId] ASC, [LevelDescriptorId] ASC, [TeachingCredentialDescriptorId] ASC, [CredentialIssuanceDate] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_CredentialFieldDescriptor_CredentialFieldDescriptorId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_CredentialFieldDescriptor_CredentialFieldDescriptorId]
    ON [extension].[ApplicantCredential]([CredentialFieldDescriptorId] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_CredentialType_CredentialTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_CredentialType_CredentialTypeId]
    ON [extension].[ApplicantCredential]([CredentialTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_LevelDescriptor_LevelDescriptorId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_LevelDescriptor_LevelDescriptorId]
    ON [extension].[ApplicantCredential]([LevelDescriptorId] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_Staff_ApplicantIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_Staff_ApplicantIdentifier]
    ON [extension].[ApplicantCredential]([ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_StateAbbreviationType_StateOfIssueAbbreviationTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_StateAbbreviationType_StateOfIssueAbbreviationTypeId]
    ON [extension].[ApplicantCredential]([StateOfIssueStateAbbreviationTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_TeachingCredentialBasisType_TeachingCredentialBasisTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_TeachingCredentialBasisType_TeachingCredentialBasisTypeId]
    ON [extension].[ApplicantCredential]([TeachingCredentialBasisTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_TeachingCredentialDescriptor_TeachingCredentialDescriptorId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_TeachingCredentialDescriptor_TeachingCredentialDescriptorId]
    ON [extension].[ApplicantCredential]([TeachingCredentialDescriptorId] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredential].[FK_ApplicantCredential_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantCredential]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantRace]...';


GO
CREATE TABLE [extension].[ApplicantRace] (
    [EducationOrganizationId] INT           NOT NULL,
    [ApplicantIdentifier]     NVARCHAR (32) NOT NULL,
    [RaceTypeId]              INT           NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantRace] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [RaceTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantRace].[FK_ApplicantRace_RaceType_RaceTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantRace_RaceType_RaceTypeId]
    ON [extension].[ApplicantRace]([RaceTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantRace].[FK_ApplicantRace_Staff_ApplicantIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantRace_Staff_ApplicantIdentifier]
    ON [extension].[ApplicantRace]([ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantRace].[FK_ApplicantRace_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantRace_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantRace]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantElectronicMail]...';


GO
CREATE TABLE [extension].[ApplicantElectronicMail] (
    [EducationOrganizationId]      INT            NOT NULL,
    [ApplicantIdentifier]          NVARCHAR (32)  NOT NULL,
    [ElectronicMailTypeId]         INT            NOT NULL,
    [ElectronicMailAddress]        NVARCHAR (128) NOT NULL,
    [PrimaryEmailAddressIndicator] BIT            NULL,
    [CreateDate]                   DATETIME       NOT NULL,
    CONSTRAINT [PK_ApplicantElectronicMail] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [ElectronicMailTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[FK_ApplicantElectronicMail_ElectronicMailType_ElectronicMailTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantElectronicMail_ElectronicMailType_ElectronicMailTypeId]
    ON [extension].[ApplicantElectronicMail]([ElectronicMailTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[FK_ApplicantElectronicMail_Staff_ApplicantIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantElectronicMail_Staff_ApplicantIdentifier]
    ON [extension].[ApplicantElectronicMail]([ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[FK_ApplicantElectronicMail_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantElectronicMail_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantElectronicMail]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse]...';


GO
CREATE TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] (
    [SurveyIdentifier]         NVARCHAR (64)  NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (64)  NOT NULL,
    [QuestionCode]             NVARCHAR (20)  NOT NULL,
    [MatrixElement]            NVARCHAR (50)  NOT NULL,
    [NoResponse]               BIT            NULL,
    [NumericResponse]          INT            NULL,
    [TextResponse]             NVARCHAR (255) NULL,
    [CreateDate]               DATETIME       NOT NULL,
    CONSTRAINT [PK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [QuestionCode] ASC, [MatrixElement] ASC)
);


GO
PRINT N'Creating [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse].[FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse_SurveyIdentifier]
    ON [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse]([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [QuestionCode] ASC);


GO
PRINT N'Creating [extension].[SurveyQuestionResponse]...';


GO
CREATE TABLE [extension].[SurveyQuestionResponse] (
    [SurveyIdentifier]         NVARCHAR (64)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (64)    NOT NULL,
    [QuestionCode]             NVARCHAR (20)    NOT NULL,
    [NoResponse]               BIT              NULL,
    [NumericResponse]          INT              NULL,
    [TextResponse]             NVARCHAR (255)   NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]         DATETIME         NOT NULL,
    [CreateDate]               DATETIME         NOT NULL,
    CONSTRAINT [PK_SurveyQuestionResponse] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [QuestionCode] ASC)
);


GO
PRINT N'Creating [extension].[SurveyQuestionResponse].[FK_SurveyQuestionResponse_SurveyResponse_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyResponse_SurveyIdentifier]
    ON [extension].[SurveyQuestionResponse]([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);


GO
PRINT N'Creating [extension].[SurveyQuestionResponse].[FK_SurveyQuestionResponse_SurveyQuestion_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyQuestion_SurveyIdentifier]
    ON [extension].[SurveyQuestionResponse]([SurveyIdentifier] ASC, [QuestionCode] ASC);


GO
PRINT N'Creating [extension].[SurveyResponse]...';


GO
CREATE TABLE [extension].[SurveyResponse] (
    [SurveyIdentifier]         NVARCHAR (64)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (64)    NOT NULL,
    [ResponseDate]             DATE             NOT NULL,
    [ElectronicMailAddress]    NVARCHAR (128)   NULL,
    [FullName]                 NVARCHAR (80)    NULL,
    [Locale]                   NVARCHAR (75)    NULL,
    [StudentUSI]               INT              NULL,
    [ParentUSI]                INT              NULL,
    [StaffUSI]                 INT              NULL,
    [EducationOrganizationId]  INT              NULL,
    [ApplicantIdentifier]      NVARCHAR (32)    NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]         DATETIME         NOT NULL,
    [CreateDate]               DATETIME         NOT NULL,
    CONSTRAINT [PK_SurveyResponse] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC)
);


GO
PRINT N'Creating [extension].[SurveyResponse].[FK_SurveyResponse_Survey_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Survey_SurveyIdentifier]
    ON [extension].[SurveyResponse]([SurveyIdentifier] ASC);


GO
PRINT N'Creating [extension].[SurveyResponse].[FK_SurveyResponse_Student_StudentUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Student_StudentUSI]
    ON [extension].[SurveyResponse]([StudentUSI] ASC);


GO
PRINT N'Creating [extension].[SurveyResponse].[FK_SurveyResponse_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Staff_StaffUSI]
    ON [extension].[SurveyResponse]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[SurveyResponse].[FK_SurveyResponse_Parent_ParentUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Parent_ParentUSI]
    ON [extension].[SurveyResponse]([ParentUSI] ASC);


GO
PRINT N'Creating [extension].[SurveyResponse].[FK_SurveyResponse_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Applicant_EducationOrganizationId]
    ON [extension].[SurveyResponse]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[SurveyQuestion]...';


GO
CREATE TABLE [extension].[SurveyQuestion] (
    [SurveyIdentifier]   NVARCHAR (64)    NOT NULL,
    [QuestionCode]       NVARCHAR (20)    NOT NULL,
    [SurveySectionTitle] NVARCHAR (50)    NOT NULL,
    [QuestionFormTypeId] INT              NOT NULL,
    [QuestionText]       NVARCHAR (255)   NOT NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]   DATETIME         NOT NULL,
    [CreateDate]         DATETIME         NOT NULL,
    CONSTRAINT [PK_SurveyQuestion] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [QuestionCode] ASC)
);


GO
PRINT N'Creating [extension].[SurveyQuestion].[FK_SurveyQuestion_SurveySection_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_SurveySection_SurveyIdentifier]
    ON [extension].[SurveyQuestion]([SurveyIdentifier] ASC, [SurveySectionTitle] ASC);


GO
PRINT N'Creating [extension].[SurveyQuestion].[FK_SurveyQuestion_Survey_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_Survey_SurveyIdentifier]
    ON [extension].[SurveyQuestion]([SurveyIdentifier] ASC);


GO
PRINT N'Creating [extension].[SurveySection]...';


GO
CREATE TABLE [extension].[SurveySection] (
    [SurveyIdentifier]   NVARCHAR (64)    NOT NULL,
    [SurveySectionTitle] NVARCHAR (50)    NOT NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]   DATETIME         NOT NULL,
    [CreateDate]         DATETIME         NOT NULL,
    CONSTRAINT [PK_SurveySection] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [SurveySectionTitle] ASC)
);


GO
PRINT N'Creating [extension].[SurveySection].[FK_SurveySection_Survey_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveySection_Survey_SurveyIdentifier]
    ON [extension].[SurveySection]([SurveyIdentifier] ASC);


GO
PRINT N'Creating [extension].[Survey]...';


GO
CREATE TABLE [extension].[Survey] (
    [SurveyIdentifier]           NVARCHAR (64)    NOT NULL,
    [EducationOrganizationId]    INT              NOT NULL,
    [SurveyTitle]                NVARCHAR (50)    NOT NULL,
    [SchoolYear]                 SMALLINT         NOT NULL,
    [TermDescriptorId]           INT              NULL,
    [SurveyCategoryDescriptorId] INT              NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]           DATETIME         NOT NULL,
    [CreateDate]                 DATETIME         NOT NULL,
    CONSTRAINT [PK_Survey] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC)
);


GO
PRINT N'Creating [extension].[Survey].[FK_Survey_SchoolYearType_SchoolYear]...';


GO
CREATE NONCLUSTERED INDEX [FK_Survey_SchoolYearType_SchoolYear]
    ON [extension].[Survey]([SchoolYear] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationComponentRating]...';


GO
CREATE TABLE [extension].[StaffEvaluationComponentRating] (
    [EducationOrganizationId]                INT              NOT NULL,
    [SchoolYear]                             SMALLINT         NOT NULL,
    [StaffEvaluationTitle]                   NVARCHAR (50)    NOT NULL,
    [StaffUSI]                               INT              NOT NULL,
    [StaffEvaluationDate]                    DATE             NOT NULL,
    [EvaluationComponent]                    NVARCHAR (50)    NOT NULL,
    [ComponentRating]                        DECIMAL (6, 3)   NOT NULL,
    [StaffEvaluationRatingLevelDescriptorId] INT              NULL,
    [Id]                                     UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                       DATETIME         NOT NULL,
    [CreateDate]                             DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationComponentRating] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [StaffUSI] ASC, [StaffEvaluationDate] ASC, [EvaluationComponent] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationComponentRating].[FK_StaffEvaluationComponentRating_StaffEvaluationRating_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponentRating_StaffEvaluationRating_EducationOrganizationId]
    ON [extension].[StaffEvaluationComponentRating]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [StaffUSI] ASC, [StaffEvaluationDate] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationComponentRating].[FK_StaffEvaluationComponentRating_StaffEvaluationComponent_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponentRating_StaffEvaluationComponent_EducationOrganizationId]
    ON [extension].[StaffEvaluationComponentRating]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationElement]...';


GO
CREATE TABLE [extension].[StaffEvaluationElement] (
    [EducationOrganizationId] INT              NOT NULL,
    [SchoolYear]              SMALLINT         NOT NULL,
    [StaffEvaluationTitle]    NVARCHAR (50)    NOT NULL,
    [EvaluationComponent]     NVARCHAR (50)    NOT NULL,
    [EvaluationElement]       NVARCHAR (255)   NOT NULL,
    [MaxRating]               DECIMAL (6, 3)   NOT NULL,
    [MinRating]               DECIMAL (6, 3)   NULL,
    [RubricReference]         NVARCHAR (255)   NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]        DATETIME         NOT NULL,
    [CreateDate]              DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationElement] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC, [EvaluationElement] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationElement].[FK_StaffEvaluationElement_StaffEvaluationComponent_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElement_StaffEvaluationComponent_EducationOrganizationId]
    ON [extension].[StaffEvaluationElement]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationComponent]...';


GO
CREATE TABLE [extension].[StaffEvaluationComponent] (
    [EducationOrganizationId]         INT              NOT NULL,
    [SchoolYear]                      SMALLINT         NOT NULL,
    [StaffEvaluationTitle]            NVARCHAR (50)    NOT NULL,
    [EvaluationComponent]             NVARCHAR (50)    NOT NULL,
    [MaxRating]                       DECIMAL (6, 3)   NOT NULL,
    [MinRating]                       DECIMAL (6, 3)   NULL,
    [RubricReference]                 NVARCHAR (255)   NULL,
    [StaffEvaluationTypeDescriptorId] INT              NULL,
    [Id]                              UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                DATETIME         NOT NULL,
    [CreateDate]                      DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationComponent] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationComponent].[FK_StaffEvaluationComponent_StaffEvaluation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponent_StaffEvaluation_EducationOrganizationId]
    ON [extension].[StaffEvaluationComponent]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationComponentStaffRatingLevel]...';


GO
CREATE TABLE [extension].[StaffEvaluationComponentStaffRatingLevel] (
    [EducationOrganizationId] INT            NOT NULL,
    [SchoolYear]              SMALLINT       NOT NULL,
    [StaffEvaluationTitle]    NVARCHAR (50)  NOT NULL,
    [EvaluationComponent]     NVARCHAR (50)  NOT NULL,
    [StaffEvaluationLevel]    NVARCHAR (50)  NOT NULL,
    [MaxLevel]                DECIMAL (6, 3) NOT NULL,
    [MinLevel]                DECIMAL (6, 3) NULL,
    [CreateDate]              DATETIME       NOT NULL,
    CONSTRAINT [PK_StaffEvaluationComponentStaffRatingLevel] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC, [StaffEvaluationLevel] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationComponentStaffRatingLevel].[FK_StaffEvaluationComponentStaffRatingLevel_StaffEvaluationComponent_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationComponentStaffRatingLevel_StaffEvaluationComponent_EducationOrganizationId]
    ON [extension].[StaffEvaluationComponentStaffRatingLevel]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC);


GO
PRINT N'Creating [extension].[OpenStaffPositionEvent]...';


GO
CREATE TABLE [extension].[OpenStaffPositionEvent] (
    [EducationOrganizationId]                  INT              NOT NULL,
    [RequisitionNumber]                        NVARCHAR (20)    NOT NULL,
    [EventDate]                                DATE             NOT NULL,
    [OpenStaffPositionEventTypeDescriptorId]   INT              NOT NULL,
    [OpenStaffPositionEventStatusDescriptorId] INT              NULL,
    [Id]                                       UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                         DATETIME         NOT NULL,
    [CreateDate]                               DATETIME         NOT NULL,
    CONSTRAINT [PK_OpenStaffPositionEvent] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [RequisitionNumber] ASC, [EventDate] ASC, [OpenStaffPositionEventTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[OpenStaffPositionEvent].[FK_OpenStaffPositionEvent_OpenStaffPosition_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionEvent_OpenStaffPosition_EducationOrganizationId]
    ON [extension].[OpenStaffPositionEvent]([EducationOrganizationId] ASC, [RequisitionNumber] ASC);


GO
PRINT N'Creating [extension].[StaffTeacherPreparationProgramAddress]...';


GO
CREATE TABLE [extension].[StaffTeacherPreparationProgramAddress] (
    [StaffUSI]                      INT            NOT NULL,
    [TeacherPreparationProgramName] NVARCHAR (75)  NOT NULL,
    [AddressTypeId]                 INT            NOT NULL,
    [StreetNumberName]              NVARCHAR (150) NOT NULL,
    [ApartmentRoomSuiteNumber]      NVARCHAR (50)  NULL,
    [BuildingSiteNumber]            NVARCHAR (20)  NULL,
    [City]                          NVARCHAR (30)  NOT NULL,
    [StateAbbreviationTypeId]       INT            NOT NULL,
    [PostalCode]                    NVARCHAR (17)  NOT NULL,
    [NameOfCounty]                  NVARCHAR (30)  NULL,
    [CountyFIPSCode]                NVARCHAR (5)   NULL,
    [Latitude]                      NVARCHAR (20)  NULL,
    [Longitude]                     NVARCHAR (20)  NULL,
    [BeginDate]                     DATE           NULL,
    [EndDate]                       DATE           NULL,
    [CreateDate]                    DATETIME       NOT NULL,
    CONSTRAINT [PK_StaffTeacherPreparationProgramAddress] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [TeacherPreparationProgramName] ASC, [AddressTypeId] ASC)
);


GO
PRINT N'Creating [extension].[StaffTeacherPreparationProgramAddress].[FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram_StaffUSI]
    ON [extension].[StaffTeacherPreparationProgramAddress]([StaffUSI] ASC, [TeacherPreparationProgramName] ASC);


GO
PRINT N'Creating [extension].[ApplicationEvent]...';


GO
CREATE TABLE [extension].[ApplicationEvent] (
    [EducationOrganizationId]            INT              NOT NULL,
    [ApplicationIdentifier]              NVARCHAR (20)    NOT NULL,
    [ApplicationEventTypeDescriptorId]   INT              NOT NULL,
    [EventDate]                          DATE             NOT NULL,
    [SequenceNumber]                     INT              NOT NULL,
    [EventEndDate]                       DATE             NULL,
    [ApplicationEvaluationScore]         DECIMAL (36, 18) NULL,
    [ApplicationEventResultDescriptorId] INT              NULL,
    [Id]                                 UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                   DATETIME         NOT NULL,
    [CreateDate]                         DATETIME         NOT NULL,
    CONSTRAINT [PK_ApplicationEvent] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicationIdentifier] ASC, [ApplicationEventTypeDescriptorId] ASC, [EventDate] ASC, [SequenceNumber] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationEvent].[FK_ApplicationEvent_Application_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicationEvent_Application_EducationOrganizationId]
    ON [extension].[ApplicationEvent]([EducationOrganizationId] ASC, [ApplicationIdentifier] ASC);


GO
PRINT N'Creating [extension].[Application]...';


GO
CREATE TABLE [extension].[Application] (
    [EducationOrganizationId]              INT              NOT NULL,
    [ApplicationIdentifier]                NVARCHAR (20)    NOT NULL,
    [ApplicantEducationOrganizationId]     INT              NOT NULL,
    [ApplicantIdentifier]                  NVARCHAR (32)    NOT NULL,
    [ApplicationDate]                      DATE             NOT NULL,
    [AcademicSubjectDescriptorId]          INT              NULL,
    [ApplicationStatusDescriptorId]        INT              NOT NULL,
    [CurrentEmployee]                      BIT              NULL,
    [AcceptedDate]                         DATE             NULL,
    [ApplicationSourceDescriptorId]        INT              NULL,
    [FirstContactDate]                     DATE             NULL,
    [HighNeedsAcademicSubjectDescriptorId] INT              NULL,
    [HireStatusDescriptorId]               INT              NULL,
    [HiringSourceDescriptorId]             INT              NULL,
    [WithdrawDate]                         DATE             NULL,
    [WithdrawReasonDescriptorId]           INT              NULL,
    [Id]                                   UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                     DATETIME         NOT NULL,
    [CreateDate]                           DATETIME         NOT NULL,
    CONSTRAINT [PK_Application] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicationIdentifier] ASC)
);


GO
PRINT N'Creating [extension].[Application].[FK_Application_Applicant_ApplicantEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_Application_Applicant_ApplicantEducationOrganizationId]
    ON [extension].[Application]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantTelephone]...';


GO
CREATE TABLE [extension].[ApplicantTelephone] (
    [EducationOrganizationId]        INT           NOT NULL,
    [ApplicantIdentifier]            NVARCHAR (32) NOT NULL,
    [TelephoneNumberTypeId]          INT           NOT NULL,
    [OrderOfPriority]                INT           NULL,
    [TextMessageCapabilityIndicator] BIT           NULL,
    [TelephoneNumber]                NVARCHAR (24) NOT NULL,
    [CreateDate]                     DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantTelephone] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [TelephoneNumberTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantTelephone].[FK_ApplicantTelephone_Staff_ApplicantIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantTelephone_Staff_ApplicantIdentifier]
    ON [extension].[ApplicantTelephone]([ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantTelephone].[FK_ApplicantTelephone_TelephoneNumberType_TelephoneNumberTypeId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantTelephone_TelephoneNumberType_TelephoneNumberTypeId]
    ON [extension].[ApplicantTelephone]([TelephoneNumberTypeId] ASC);


GO
PRINT N'Creating [extension].[ApplicantTelephone].[FK_ApplicantTelephone_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantTelephone_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantTelephone]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantTeacherPreparationProgram]...';


GO
CREATE TABLE [extension].[ApplicantTeacherPreparationProgram] (
    [EducationOrganizationId]                   INT             NOT NULL,
    [ApplicantIdentifier]                       NVARCHAR (32)   NOT NULL,
    [TeacherPreparationProgramName]             NVARCHAR (75)   NOT NULL,
    [TeacherPreparationProgramIdentifier]       NVARCHAR (75)   NULL,
    [TeacherPreparationProgramTypeDescriptorId] INT             NOT NULL,
    [NameOfInstitution]                         NVARCHAR (75)   NOT NULL,
    [MajorSpecialization]                       NVARCHAR (75)   NOT NULL,
    [GPA]                                       DECIMAL (18, 4) NULL,
    [LevelOfDegreeAwardedDescriptorId]          INT             NOT NULL,
    [CreateDate]                                DATETIME        NOT NULL,
    CONSTRAINT [PK_ApplicantTeacherPreparationProgram] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [TeacherPreparationProgramName] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantTeacherPreparationProgram].[FK_ApplicantTeacherPreparationProgram_Applicant_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgram_Applicant_EducationOrganizationId]
    ON [extension].[ApplicantTeacherPreparationProgram]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[ApplicantLanguageUse]...';


GO
CREATE TABLE [extension].[ApplicantLanguageUse] (
    [EducationOrganizationId] INT           NOT NULL,
    [ApplicantIdentifier]     NVARCHAR (32) NOT NULL,
    [LanguageDescriptorId]    INT           NOT NULL,
    [LanguageUseTypeId]       INT           NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicantLanguageUse] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [LanguageDescriptorId] ASC, [LanguageUseTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantLanguageUse].[FK_ApplicantLanguageUse_ApplicantLanguage_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantLanguageUse_ApplicantLanguage_EducationOrganizationId]
    ON [extension].[ApplicantLanguageUse]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [LanguageDescriptorId] ASC);


GO
PRINT N'Creating [extension].[OpenStaffPositionEventTypeDescriptor]...';


GO
CREATE TABLE [extension].[OpenStaffPositionEventTypeDescriptor] (
    [OpenStaffPositionEventTypeDescriptorId] INT NOT NULL,
    [OpenStaffPositionEventTypeId]           INT NOT NULL,
    CONSTRAINT [PK_OpenStaffPositionEventTypeDescriptor] PRIMARY KEY CLUSTERED ([OpenStaffPositionEventTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[LevelOfDegreeAwardedType]...';


GO
CREATE TABLE [extension].[LevelOfDegreeAwardedType] (
    [LevelOfDegreeAwardedTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                  NVARCHAR (50)    NOT NULL,
    [Description]                NVARCHAR (1024)  NOT NULL,
    [ShortDescription]           NVARCHAR (450)   NOT NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]           DATETIME         NOT NULL,
    [CreateDate]                 DATETIME         NOT NULL,
    CONSTRAINT [PK_LevelOfDegreeAwardedType] PRIMARY KEY CLUSTERED ([LevelOfDegreeAwardedTypeId] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentSeparationReasonType]...';


GO
CREATE TABLE [extension].[EmploymentSeparationReasonType] (
    [EmploymentSeparationReasonTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                        NVARCHAR (50)    NOT NULL,
    [Description]                      NVARCHAR (1024)  NOT NULL,
    [ShortDescription]                 NVARCHAR (450)   NOT NULL,
    [Id]                               UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                 DATETIME         NOT NULL,
    [CreateDate]                       DATETIME         NOT NULL,
    CONSTRAINT [PK_EmploymentSeparationReasonType] PRIMARY KEY CLUSTERED ([EmploymentSeparationReasonTypeId] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentSeparationReasonDescriptor]...';


GO
CREATE TABLE [extension].[EmploymentSeparationReasonDescriptor] (
    [EmploymentSeparationReasonDescriptorId] INT NOT NULL,
    [EmploymentSeparationReasonTypeId]       INT NOT NULL,
    CONSTRAINT [PK_EmploymentSeparationReasonDescriptor] PRIMARY KEY CLUSTERED ([EmploymentSeparationReasonDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentSeparationType]...';


GO
CREATE TABLE [extension].[EmploymentSeparationType] (
    [EmploymentSeparationTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                  NVARCHAR (50)    NOT NULL,
    [Description]                NVARCHAR (1024)  NOT NULL,
    [ShortDescription]           NVARCHAR (450)   NOT NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]           DATETIME         NOT NULL,
    [CreateDate]                 DATETIME         NOT NULL,
    CONSTRAINT [PK_EmploymentSeparationType] PRIMARY KEY CLUSTERED ([EmploymentSeparationTypeId] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentSeparationTypeDescriptor]...';


GO
CREATE TABLE [extension].[EmploymentSeparationTypeDescriptor] (
    [EmploymentSeparationTypeDescriptorId] INT NOT NULL,
    [EmploymentSeparationTypeId]           INT NOT NULL,
    CONSTRAINT [PK_EmploymentSeparationTypeDescriptor] PRIMARY KEY CLUSTERED ([EmploymentSeparationTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[InternalExternalHireType]...';


GO
CREATE TABLE [extension].[InternalExternalHireType] (
    [InternalExternalHireTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                  NVARCHAR (50)    NOT NULL,
    [Description]                NVARCHAR (1024)  NOT NULL,
    [ShortDescription]           NVARCHAR (450)   NOT NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]           DATETIME         NOT NULL,
    [CreateDate]                 DATETIME         NOT NULL,
    CONSTRAINT [PK_InternalExternalHireType] PRIMARY KEY CLUSTERED ([InternalExternalHireTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationEventResultType]...';


GO
CREATE TABLE [extension].[ApplicationEventResultType] (
    [ApplicationEventResultTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                    NVARCHAR (50)    NOT NULL,
    [Description]                  NVARCHAR (1024)  NOT NULL,
    [ShortDescription]             NVARCHAR (450)   NOT NULL,
    [Id]                           UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]             DATETIME         NOT NULL,
    [CreateDate]                   DATETIME         NOT NULL,
    CONSTRAINT [PK_ApplicationEventResultType] PRIMARY KEY CLUSTERED ([ApplicationEventResultTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationEventType]...';


GO
CREATE TABLE [extension].[ApplicationEventType] (
    [ApplicationEventTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]              NVARCHAR (50)    NOT NULL,
    [Description]            NVARCHAR (1024)  NOT NULL,
    [ShortDescription]       NVARCHAR (450)   NOT NULL,
    [Id]                     UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]       DATETIME         NOT NULL,
    [CreateDate]             DATETIME         NOT NULL,
    CONSTRAINT [PK_ApplicationEventType] PRIMARY KEY CLUSTERED ([ApplicationEventTypeId] ASC)
);


GO
PRINT N'Creating [extension].[WithdrawReasonType]...';


GO
CREATE TABLE [extension].[WithdrawReasonType] (
    [WithdrawReasonTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]            NVARCHAR (50)    NOT NULL,
    [Description]          NVARCHAR (1024)  NOT NULL,
    [ShortDescription]     NVARCHAR (450)   NOT NULL,
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]     DATETIME         NOT NULL,
    [CreateDate]           DATETIME         NOT NULL,
    CONSTRAINT [PK_WithdrawReasonType] PRIMARY KEY CLUSTERED ([WithdrawReasonTypeId] ASC)
);


GO
PRINT N'Creating [extension].[HiringSourceType]...';


GO
CREATE TABLE [extension].[HiringSourceType] (
    [HiringSourceTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]          NVARCHAR (50)    NOT NULL,
    [Description]        NVARCHAR (1024)  NOT NULL,
    [ShortDescription]   NVARCHAR (450)   NOT NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]   DATETIME         NOT NULL,
    [CreateDate]         DATETIME         NOT NULL,
    CONSTRAINT [PK_HiringSourceType] PRIMARY KEY CLUSTERED ([HiringSourceTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationSourceType]...';


GO
CREATE TABLE [extension].[ApplicationSourceType] (
    [ApplicationSourceTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]               NVARCHAR (50)    NOT NULL,
    [Description]             NVARCHAR (1024)  NOT NULL,
    [ShortDescription]        NVARCHAR (450)   NOT NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]        DATETIME         NOT NULL,
    [CreateDate]              DATETIME         NOT NULL,
    CONSTRAINT [PK_ApplicationSourceType] PRIMARY KEY CLUSTERED ([ApplicationSourceTypeId] ASC)
);


GO
PRINT N'Creating [extension].[BackgroundCheckStatusType]...';


GO
CREATE TABLE [extension].[BackgroundCheckStatusType] (
    [BackgroundCheckStatusTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                   NVARCHAR (50)    NOT NULL,
    [Description]                 NVARCHAR (1024)  NOT NULL,
    [ShortDescription]            NVARCHAR (450)   NOT NULL,
    [Id]                          UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]            DATETIME         NOT NULL,
    [CreateDate]                  DATETIME         NOT NULL,
    CONSTRAINT [PK_BackgroundCheckStatusType] PRIMARY KEY CLUSTERED ([BackgroundCheckStatusTypeId] ASC)
);


GO
PRINT N'Creating [extension].[BackgroundCheckType]...';


GO
CREATE TABLE [extension].[BackgroundCheckType] (
    [BackgroundCheckTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]             NVARCHAR (50)    NOT NULL,
    [Description]           NVARCHAR (1024)  NOT NULL,
    [ShortDescription]      NVARCHAR (450)   NOT NULL,
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]      DATETIME         NOT NULL,
    [CreateDate]            DATETIME         NOT NULL,
    CONSTRAINT [PK_BackgroundCheckType] PRIMARY KEY CLUSTERED ([BackgroundCheckTypeId] ASC)
);


GO
PRINT N'Creating [extension].[WithdrawReasonDescriptor]...';


GO
CREATE TABLE [extension].[WithdrawReasonDescriptor] (
    [WithdrawReasonDescriptorId] INT NOT NULL,
    [WithdrawReasonTypeId]       INT NOT NULL,
    CONSTRAINT [PK_WithdrawReasonDescriptor] PRIMARY KEY CLUSTERED ([WithdrawReasonDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[HiringSourceDescriptor]...';


GO
CREATE TABLE [extension].[HiringSourceDescriptor] (
    [HiringSourceDescriptorId] INT NOT NULL,
    [HiringSourceTypeId]       INT NOT NULL,
    CONSTRAINT [PK_HiringSourceDescriptor] PRIMARY KEY CLUSTERED ([HiringSourceDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[HireStatusType]...';


GO
CREATE TABLE [extension].[HireStatusType] (
    [HireStatusTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]        NVARCHAR (50)    NOT NULL,
    [Description]      NVARCHAR (1024)  NOT NULL,
    [ShortDescription] NVARCHAR (450)   NOT NULL,
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate] DATETIME         NOT NULL,
    [CreateDate]       DATETIME         NOT NULL,
    CONSTRAINT [PK_HireStatusType] PRIMARY KEY CLUSTERED ([HireStatusTypeId] ASC)
);


GO
PRINT N'Creating [extension].[HireStatusDescriptor]...';


GO
CREATE TABLE [extension].[HireStatusDescriptor] (
    [HireStatusDescriptorId] INT NOT NULL,
    [HireStatusTypeId]       INT NOT NULL,
    CONSTRAINT [PK_HireStatusDescriptor] PRIMARY KEY CLUSTERED ([HireStatusDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationSourceDescriptor]...';


GO
CREATE TABLE [extension].[ApplicationSourceDescriptor] (
    [ApplicationSourceDescriptorId] INT NOT NULL,
    [ApplicationSourceTypeId]       INT NOT NULL,
    CONSTRAINT [PK_ApplicationSourceDescriptor] PRIMARY KEY CLUSTERED ([ApplicationSourceDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationEventResultDescriptor]...';


GO
CREATE TABLE [extension].[ApplicationEventResultDescriptor] (
    [ApplicationEventResultDescriptorId] INT NOT NULL,
    [ApplicationEventResultTypeId]       INT NOT NULL,
    CONSTRAINT [PK_ApplicationEventResultDescriptor] PRIMARY KEY CLUSTERED ([ApplicationEventResultDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationEventTypeDescriptor]...';


GO
CREATE TABLE [extension].[ApplicationEventTypeDescriptor] (
    [ApplicationEventTypeDescriptorId] INT NOT NULL,
    [ApplicationEventTypeId]           INT NOT NULL,
    CONSTRAINT [PK_ApplicationEventTypeDescriptor] PRIMARY KEY CLUSTERED ([ApplicationEventTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationStatusType]...';


GO
CREATE TABLE [extension].[ApplicationStatusType] (
    [ApplicationStatusTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]               NVARCHAR (50)    NOT NULL,
    [Description]             NVARCHAR (1024)  NOT NULL,
    [ShortDescription]        NVARCHAR (450)   NOT NULL,
    [Id]                      UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]        DATETIME         NOT NULL,
    [CreateDate]              DATETIME         NOT NULL,
    CONSTRAINT [PK_ApplicationStatusType] PRIMARY KEY CLUSTERED ([ApplicationStatusTypeId] ASC)
);


GO
PRINT N'Creating [extension].[LeaveEventExtension]...';


GO
CREATE TABLE [extension].[LeaveEventExtension] (
    [StaffUSI]                 INT  NOT NULL,
    [EventDate]                DATE NOT NULL,
    [LeaveEventCategoryTypeId] INT  NOT NULL,
    [EndDate]                  DATE NULL,
    CONSTRAINT [PK_LeaveEventExtension] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [EventDate] ASC, [LeaveEventCategoryTypeId] ASC)
);


GO
PRINT N'Creating [extension].[LeaveEventExtension].[FK_LeaveEventExtension_LeaveEvent_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_LeaveEventExtension_LeaveEvent_StaffUSI]
    ON [extension].[LeaveEventExtension]([StaffUSI] ASC, [EventDate] ASC, [LeaveEventCategoryTypeId] ASC);


GO
PRINT N'Creating [extension].[StaffTeacherPreparationProgram]...';


GO
CREATE TABLE [extension].[StaffTeacherPreparationProgram] (
    [StaffUSI]                                  INT             NOT NULL,
    [TeacherPreparationProgramName]             NVARCHAR (75)   NOT NULL,
    [TeacherPreparationProgramIdentifier]       NVARCHAR (75)   NULL,
    [TeacherPreparationProgramTypeDescriptorId] INT             NOT NULL,
    [NameOfInstitution]                         NVARCHAR (75)   NOT NULL,
    [MajorSpecialization]                       NVARCHAR (75)   NOT NULL,
    [GPA]                                       DECIMAL (18, 4) NULL,
    [LevelOfDegreeAwardedDescriptorId]          INT             NOT NULL,
    [CreateDate]                                DATETIME        NOT NULL,
    CONSTRAINT [PK_StaffTeacherPreparationProgram] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [TeacherPreparationProgramName] ASC)
);


GO
PRINT N'Creating [extension].[StaffTeacherPreparationProgram].[FK_StaffTeacherPreparationProgram_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgram_Staff_StaffUSI]
    ON [extension].[StaffTeacherPreparationProgram]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffSeniority]...';


GO
CREATE TABLE [extension].[StaffSeniority] (
    [StaffUSI]                    INT            NOT NULL,
    [CredentialFieldDescriptorId] INT            NOT NULL,
    [NameOfInstitution]           NVARCHAR (75)  NOT NULL,
    [YearsExperience]             DECIMAL (5, 2) NOT NULL,
    [CreateDate]                  DATETIME       NOT NULL,
    CONSTRAINT [PK_StaffSeniority] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [CredentialFieldDescriptorId] ASC, [NameOfInstitution] ASC)
);


GO
PRINT N'Creating [extension].[StaffSeniority].[FK_StaffSeniority_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffSeniority_Staff_StaffUSI]
    ON [extension].[StaffSeniority]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffExtension]...';


GO
CREATE TABLE [extension].[StaffExtension] (
    [StaffUSI]              INT  NOT NULL,
    [ProbationCompleteDate] DATE NULL,
    [Tenured]               BIT  NULL,
    CONSTRAINT [PK_StaffExtension] PRIMARY KEY CLUSTERED ([StaffUSI] ASC)
);


GO
PRINT N'Creating [extension].[StaffExtension].[FK_StaffExtension_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffExtension_Staff_StaffUSI]
    ON [extension].[StaffExtension]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffEducationOrganizationEmploymentAssociationExtension]...';


GO
CREATE TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] (
    [EducationOrganizationId]         INT           NOT NULL,
    [StaffUSI]                        INT           NOT NULL,
    [EmploymentStatusDescriptorId]    INT           NOT NULL,
    [HireDate]                        DATE          NOT NULL,
    [SchoolYear]                      SMALLINT      NULL,
    [RequisitionNumber]               NVARCHAR (20) NULL,
    [EmploymentEventTypeDescriptorId] INT           NULL,
    [EmploymentSeparationDate]        DATE          NULL,
    CONSTRAINT [PK_StaffEducationOrganizationEmploymentAssociationExtension] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [StaffUSI] ASC, [EmploymentStatusDescriptorId] ASC, [HireDate] ASC)
);


GO
PRINT N'Creating [extension].[StaffEducationOrganizationEmploymentAssociationExtension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation_EdOrgId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation_EdOrgId]
    ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([EducationOrganizationId] ASC, [StaffUSI] ASC, [EmploymentStatusDescriptorId] ASC, [HireDate] ASC);


GO
PRINT N'Creating [extension].[StaffEducationOrganizationEmploymentAssociationExtension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_SchoolYearType_SchoolYear]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_SchoolYearType_SchoolYear]
    ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([SchoolYear] ASC);


GO
PRINT N'Creating [extension].[StaffEducationOrganizationEmploymentAssociationExtension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentSeparationEvent_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentSeparationEvent_EducationOrganizationId]
    ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([EducationOrganizationId] ASC, [RequisitionNumber] ASC, [EmploymentSeparationDate] ASC);


GO
PRINT N'Creating [extension].[StaffEducationOrganizationEmploymentAssociationExtension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentEvent_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentEvent_EducationOrganizationId]
    ON [extension].[StaffEducationOrganizationEmploymentAssociationExtension]([EducationOrganizationId] ASC, [RequisitionNumber] ASC, [EmploymentEventTypeDescriptorId] ASC);


GO
PRINT N'Creating [extension].[TeacherPreparationProgramType]...';


GO
CREATE TABLE [extension].[TeacherPreparationProgramType] (
    [TeacherPreparationProgramTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                       NVARCHAR (50)    NOT NULL,
    [Description]                     NVARCHAR (1024)  NOT NULL,
    [ShortDescription]                NVARCHAR (450)   NOT NULL,
    [Id]                              UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                DATETIME         NOT NULL,
    [CreateDate]                      DATETIME         NOT NULL,
    CONSTRAINT [PK_TeacherPreparationProgramType] PRIMARY KEY CLUSTERED ([TeacherPreparationProgramTypeId] ASC)
);


GO
PRINT N'Creating [extension].[TeacherPreparationProgramTypeDescriptor]...';


GO
CREATE TABLE [extension].[TeacherPreparationProgramTypeDescriptor] (
    [TeacherPreparationProgramTypeDescriptorId] INT NOT NULL,
    [TeacherPreparationProgramTypeId]           INT NOT NULL,
    CONSTRAINT [PK_TeacherPreparationProgramTypeDescriptor] PRIMARY KEY CLUSTERED ([TeacherPreparationProgramTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[SurveyQuestionTextChoice]...';


GO
CREATE TABLE [extension].[SurveyQuestionTextChoice] (
    [SurveyIdentifier] NVARCHAR (64) NOT NULL,
    [QuestionCode]     NVARCHAR (20) NOT NULL,
    [TextChoice]       NVARCHAR (50) NOT NULL,
    [CreateDate]       DATETIME      NOT NULL,
    CONSTRAINT [PK_SurveyQuestionTextChoice] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [QuestionCode] ASC, [TextChoice] ASC)
);


GO
PRINT N'Creating [extension].[SurveyQuestionTextChoice].[FK_SurveyQuestionTextChoice_SurveyQuestion_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestionTextChoice_SurveyQuestion_SurveyIdentifier]
    ON [extension].[SurveyQuestionTextChoice]([SurveyIdentifier] ASC, [QuestionCode] ASC);


GO
PRINT N'Creating [extension].[SurveyQuestionMatrixElement]...';


GO
CREATE TABLE [extension].[SurveyQuestionMatrixElement] (
    [SurveyIdentifier] NVARCHAR (64) NOT NULL,
    [QuestionCode]     NVARCHAR (20) NOT NULL,
    [MatrixElement]    NVARCHAR (50) NOT NULL,
    [CreateDate]       DATETIME      NOT NULL,
    CONSTRAINT [PK_SurveyQuestionMatrixElement] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [QuestionCode] ASC, [MatrixElement] ASC)
);


GO
PRINT N'Creating [extension].[SurveyQuestionMatrixElement].[FK_SurveyQuestionMatrixElement_SurveyQuestion_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestionMatrixElement_SurveyQuestion_SurveyIdentifier]
    ON [extension].[SurveyQuestionMatrixElement]([SurveyIdentifier] ASC, [QuestionCode] ASC);


GO
PRINT N'Creating [extension].[QuestionFormType]...';


GO
CREATE TABLE [extension].[QuestionFormType] (
    [QuestionFormTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]          NVARCHAR (50)    NOT NULL,
    [Description]        NVARCHAR (1024)  NOT NULL,
    [ShortDescription]   NVARCHAR (450)   NOT NULL,
    [Id]                 UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]   DATETIME         NOT NULL,
    [CreateDate]         DATETIME         NOT NULL,
    CONSTRAINT [PK_QuestionFormType] PRIMARY KEY CLUSTERED ([QuestionFormTypeId] ASC)
);


GO
PRINT N'Creating [extension].[SurveyCategoryType]...';


GO
CREATE TABLE [extension].[SurveyCategoryType] (
    [SurveyCategoryTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]            NVARCHAR (50)    NOT NULL,
    [Description]          NVARCHAR (1024)  NOT NULL,
    [ShortDescription]     NVARCHAR (450)   NOT NULL,
    [Id]                   UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]     DATETIME         NOT NULL,
    [CreateDate]           DATETIME         NOT NULL,
    CONSTRAINT [PK_SurveyCategoryType] PRIMARY KEY CLUSTERED ([SurveyCategoryTypeId] ASC)
);


GO
PRINT N'Creating [extension].[SurveyCategoryDescriptor]...';


GO
CREATE TABLE [extension].[SurveyCategoryDescriptor] (
    [SurveyCategoryDescriptorId] INT NOT NULL,
    [SurveyCategoryTypeId]       INT NOT NULL,
    CONSTRAINT [PK_SurveyCategoryDescriptor] PRIMARY KEY CLUSTERED ([SurveyCategoryDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationType]...';


GO
CREATE TABLE [extension].[StaffEvaluationType] (
    [StaffEvaluationTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]             NVARCHAR (50)    NOT NULL,
    [Description]           NVARCHAR (1024)  NOT NULL,
    [ShortDescription]      NVARCHAR (450)   NOT NULL,
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]      DATETIME         NOT NULL,
    [CreateDate]            DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationType] PRIMARY KEY CLUSTERED ([StaffEvaluationTypeId] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationTypeDescriptor]...';


GO
CREATE TABLE [extension].[StaffEvaluationTypeDescriptor] (
    [StaffEvaluationTypeDescriptorId] INT NOT NULL,
    [StaffEvaluationTypeId]           INT NOT NULL,
    CONSTRAINT [PK_StaffEvaluationTypeDescriptor] PRIMARY KEY CLUSTERED ([StaffEvaluationTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationPeriodType]...';


GO
CREATE TABLE [extension].[StaffEvaluationPeriodType] (
    [StaffEvaluationPeriodTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                   NVARCHAR (50)    NOT NULL,
    [Description]                 NVARCHAR (1024)  NOT NULL,
    [ShortDescription]            NVARCHAR (450)   NOT NULL,
    [Id]                          UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]            DATETIME         NOT NULL,
    [CreateDate]                  DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationPeriodType] PRIMARY KEY CLUSTERED ([StaffEvaluationPeriodTypeId] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationPeriodDescriptor]...';


GO
CREATE TABLE [extension].[StaffEvaluationPeriodDescriptor] (
    [StaffEvaluationPeriodDescriptorId] INT NOT NULL,
    [StaffEvaluationPeriodTypeId]       INT NOT NULL,
    CONSTRAINT [PK_StaffEvaluationPeriodDescriptor] PRIMARY KEY CLUSTERED ([StaffEvaluationPeriodDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[AbsenceEventCategoryType]...';


GO
CREATE TABLE [extension].[AbsenceEventCategoryType] (
    [AbsenceEventCategoryTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                  NVARCHAR (50)    NOT NULL,
    [Description]                NVARCHAR (1024)  NOT NULL,
    [ShortDescription]           NVARCHAR (450)   NOT NULL,
    [Id]                         UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]           DATETIME         NOT NULL,
    [CreateDate]                 DATETIME         NOT NULL,
    CONSTRAINT [PK_AbsenceEventCategoryType] PRIMARY KEY CLUSTERED ([AbsenceEventCategoryTypeId] ASC)
);


GO
PRINT N'Creating [extension].[AbsenceEventCategoryDescriptor]...';


GO
CREATE TABLE [extension].[AbsenceEventCategoryDescriptor] (
    [AbsenceEventCategoryDescriptorId] INT NOT NULL,
    [AbsenceEventCategoryTypeId]       INT NOT NULL,
    CONSTRAINT [PK_AbsenceEventCategoryDescriptor] PRIMARY KEY CLUSTERED ([AbsenceEventCategoryDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ProspectCurrentPosition]...';


GO
CREATE TABLE [extension].[ProspectCurrentPosition] (
    [EducationOrganizationId]     INT            NOT NULL,
    [ProspectIdentifier]          NVARCHAR (32)  NOT NULL,
    [NameOfInstitution]           NVARCHAR (75)  NOT NULL,
    [Locale]                      NVARCHAR (75)  NOT NULL,
    [PositionTitle]               NVARCHAR (100) NOT NULL,
    [AcademicSubjectDescriptorId] INT            NULL,
    [CreateDate]                  DATETIME       NOT NULL,
    CONSTRAINT [PK_ProspectCurrentPosition] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC)
);


GO
PRINT N'Creating [extension].[ProspectCurrentPosition].[FK_ProspectCurrentPosition_Prospect_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPosition_Prospect_EducationOrganizationId]
    ON [extension].[ProspectCurrentPosition]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[OpenStaffPositionEventStatusType]...';


GO
CREATE TABLE [extension].[OpenStaffPositionEventStatusType] (
    [OpenStaffPositionEventStatusTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                          NVARCHAR (50)    NOT NULL,
    [Description]                        NVARCHAR (1024)  NOT NULL,
    [ShortDescription]                   NVARCHAR (450)   NOT NULL,
    [Id]                                 UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                   DATETIME         NOT NULL,
    [CreateDate]                         DATETIME         NOT NULL,
    CONSTRAINT [PK_OpenStaffPositionEventStatusType] PRIMARY KEY CLUSTERED ([OpenStaffPositionEventStatusTypeId] ASC)
);


GO
PRINT N'Creating [extension].[OpenStaffPositionEventStatusDescriptor]...';


GO
CREATE TABLE [extension].[OpenStaffPositionEventStatusDescriptor] (
    [OpenStaffPositionEventStatusDescriptorId] INT NOT NULL,
    [OpenStaffPositionEventStatusTypeId]       INT NOT NULL,
    CONSTRAINT [PK_OpenStaffPositionEventStatusDescriptor] PRIMARY KEY CLUSTERED ([OpenStaffPositionEventStatusDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[OpenStaffPositionEventType]...';


GO
CREATE TABLE [extension].[OpenStaffPositionEventType] (
    [OpenStaffPositionEventTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                    NVARCHAR (50)    NOT NULL,
    [Description]                  NVARCHAR (1024)  NOT NULL,
    [ShortDescription]             NVARCHAR (450)   NOT NULL,
    [Id]                           UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]             DATETIME         NOT NULL,
    [CreateDate]                   DATETIME         NOT NULL,
    CONSTRAINT [PK_OpenStaffPositionEventType] PRIMARY KEY CLUSTERED ([OpenStaffPositionEventTypeId] ASC)
);


GO
PRINT N'Creating [extension].[TalentManagementGoalEducationOrganization]...';


GO
CREATE TABLE [extension].[TalentManagementGoalEducationOrganization] (
    [SchoolYear]              SMALLINT       NOT NULL,
    [GoalTitle]               NVARCHAR (255) NOT NULL,
    [EducationOrganizationId] INT            NOT NULL,
    [CreateDate]              DATETIME       NOT NULL,
    CONSTRAINT [PK_TalentManagementGoalEducationOrganization] PRIMARY KEY CLUSTERED ([GoalTitle] ASC, [SchoolYear] ASC, [EducationOrganizationId] ASC)
);


GO
PRINT N'Creating [extension].[TalentManagementGoalEducationOrganization].[FK_TalentManagementGoalEducationOrganization_TalentManagementGoal_GoalTitle]...';


GO
CREATE NONCLUSTERED INDEX [FK_TalentManagementGoalEducationOrganization_TalentManagementGoal_GoalTitle]
    ON [extension].[TalentManagementGoalEducationOrganization]([GoalTitle] ASC, [SchoolYear] ASC);


GO
PRINT N'Creating [extension].[ApplicantTeacherPreparationProgramAddress]...';


GO
CREATE TABLE [extension].[ApplicantTeacherPreparationProgramAddress] (
    [EducationOrganizationId]       INT            NOT NULL,
    [ApplicantIdentifier]           NVARCHAR (32)  NOT NULL,
    [TeacherPreparationProgramName] NVARCHAR (75)  NOT NULL,
    [AddressTypeId]                 INT            NOT NULL,
    [StreetNumberName]              NVARCHAR (150) NOT NULL,
    [ApartmentRoomSuiteNumber]      NVARCHAR (50)  NULL,
    [BuildingSiteNumber]            NVARCHAR (20)  NULL,
    [City]                          NVARCHAR (30)  NOT NULL,
    [StateAbbreviationTypeId]       INT            NOT NULL,
    [PostalCode]                    NVARCHAR (17)  NOT NULL,
    [NameOfCounty]                  NVARCHAR (30)  NULL,
    [CountyFIPSCode]                NVARCHAR (5)   NULL,
    [Latitude]                      NVARCHAR (20)  NULL,
    [Longitude]                     NVARCHAR (20)  NULL,
    [BeginDate]                     DATE           NULL,
    [EndDate]                       DATE           NULL,
    [CreateDate]                    DATETIME       NOT NULL,
    CONSTRAINT [PK_ApplicantTeacherPreparationProgramAddress] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [TeacherPreparationProgramName] ASC, [AddressTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantTeacherPreparationProgramAddress].[FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram_EducationOrganizationId]
    ON [extension].[ApplicantTeacherPreparationProgramAddress]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [TeacherPreparationProgramName] ASC);


GO
PRINT N'Creating [extension].[ProspectIdentificationDocument]...';


GO
CREATE TABLE [extension].[ProspectIdentificationDocument] (
    [EducationOrganizationId]               INT            NOT NULL,
    [ProspectIdentifier]                    NVARCHAR (32)  NOT NULL,
    [IdentificationDocumentUseTypeId]       INT            NOT NULL,
    [PersonalInformationVerificationTypeId] INT            NOT NULL,
    [DocumentTitle]                         NVARCHAR (60)  NULL,
    [DocumentExpirationDate]                DATE           NULL,
    [IssuerDocumentIdentificationCode]      NVARCHAR (60)  NOT NULL,
    [IssuerName]                            NVARCHAR (150) NULL,
    [IssuerCountryDescriptorId]             INT            NULL,
    [CreateDate]                            DATETIME       NOT NULL,
    CONSTRAINT [PK_ProspectIdentificationDocument] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC, [PersonalInformationVerificationTypeId] ASC, [IdentificationDocumentUseTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ProspectIdentificationDocument].[FK_ProspectIdentificationDocument_Prospect_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectIdentificationDocument_Prospect_EducationOrganizationId]
    ON [extension].[ProspectIdentificationDocument]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[ProspectCurrentPositionGradeLevel]...';


GO
CREATE TABLE [extension].[ProspectCurrentPositionGradeLevel] (
    [EducationOrganizationId] INT           NOT NULL,
    [ProspectIdentifier]      NVARCHAR (32) NOT NULL,
    [GradeLevelDescriptorId]  INT           NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ProspectCurrentPositionGradeLevel] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC, [GradeLevelDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ProspectCurrentPositionGradeLevel].[FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition_EducationOrganizationId]
    ON [extension].[ProspectCurrentPositionGradeLevel]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[OpenStaffPositionReasonType]...';


GO
CREATE TABLE [extension].[OpenStaffPositionReasonType] (
    [OpenStaffPositionReasonTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                     NVARCHAR (50)    NOT NULL,
    [Description]                   NVARCHAR (1024)  NOT NULL,
    [ShortDescription]              NVARCHAR (450)   NOT NULL,
    [Id]                            UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]              DATETIME         NOT NULL,
    [CreateDate]                    DATETIME         NOT NULL,
    CONSTRAINT [PK_OpenStaffPositionReasonType] PRIMARY KEY CLUSTERED ([OpenStaffPositionReasonTypeId] ASC)
);


GO
PRINT N'Creating [extension].[OpenStaffPositionReasonDescriptor]...';


GO
CREATE TABLE [extension].[OpenStaffPositionReasonDescriptor] (
    [OpenStaffPositionReasonDescriptorId] INT NOT NULL,
    [OpenStaffPositionReasonTypeId]       INT NOT NULL,
    CONSTRAINT [PK_OpenStaffPositionReasonDescriptor] PRIMARY KEY CLUSTERED ([OpenStaffPositionReasonDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[ProspectRace]...';


GO
CREATE TABLE [extension].[ProspectRace] (
    [EducationOrganizationId] INT           NOT NULL,
    [ProspectIdentifier]      NVARCHAR (32) NOT NULL,
    [RaceTypeId]              INT           NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ProspectRace] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ProspectIdentifier] ASC, [RaceTypeId] ASC)
);


GO
PRINT N'Creating [extension].[ProspectRace].[FK_ProspectRace_Prospect_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ProspectRace_Prospect_EducationOrganizationId]
    ON [extension].[ProspectRace]([EducationOrganizationId] ASC, [ProspectIdentifier] ASC);


GO
PRINT N'Creating [extension].[EmploymentEventType]...';


GO
CREATE TABLE [extension].[EmploymentEventType] (
    [EmploymentEventTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]             NVARCHAR (50)    NOT NULL,
    [Description]           NVARCHAR (1024)  NOT NULL,
    [ShortDescription]      NVARCHAR (450)   NOT NULL,
    [Id]                    UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]      DATETIME         NOT NULL,
    [CreateDate]            DATETIME         NOT NULL,
    CONSTRAINT [PK_EmploymentEventType] PRIMARY KEY CLUSTERED ([EmploymentEventTypeId] ASC)
);


GO
PRINT N'Creating [extension].[EmploymentEventTypeDescriptor]...';


GO
CREATE TABLE [extension].[EmploymentEventTypeDescriptor] (
    [EmploymentEventTypeDescriptorId] INT NOT NULL,
    [EmploymentEventTypeId]           INT NOT NULL,
    CONSTRAINT [PK_EmploymentEventTypeDescriptor] PRIMARY KEY CLUSTERED ([EmploymentEventTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[StaffApplicant]...';


GO
CREATE TABLE [extension].[StaffApplicant] (
    [StaffUSI]                         INT           NOT NULL,
    [ApplicantEducationOrganizationId] INT           NOT NULL,
    [ApplicantIdentifier]              NVARCHAR (32) NOT NULL,
    [CreateDate]                       DATETIME      NOT NULL,
    CONSTRAINT [PK_StaffApplicant] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [ApplicantEducationOrganizationId] ASC, [ApplicantIdentifier] ASC)
);


GO
PRINT N'Creating [extension].[StaffApplicant].[FK_StaffApplicant_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffApplicant_Staff_StaffUSI]
    ON [extension].[StaffApplicant]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffApplicant].[FK_StaffApplicant_Applicant_ApplicantEducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffApplicant_Applicant_ApplicantEducationOrganizationId]
    ON [extension].[StaffApplicant]([ApplicantEducationOrganizationId] ASC, [ApplicantIdentifier] ASC);


GO
PRINT N'Creating [extension].[StaffHighlyQualifiedAcademicSubject]...';


GO
CREATE TABLE [extension].[StaffHighlyQualifiedAcademicSubject] (
    [StaffUSI]                    INT      NOT NULL,
    [AcademicSubjectDescriptorId] INT      NOT NULL,
    [CreateDate]                  DATETIME NOT NULL,
    CONSTRAINT [PK_StaffHighlyQualifiedAcademicSubject] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [AcademicSubjectDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[StaffHighlyQualifiedAcademicSubject].[FK_StaffHighlyQualifiedAcademicSubject_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffHighlyQualifiedAcademicSubject_Staff_StaffUSI]
    ON [extension].[StaffHighlyQualifiedAcademicSubject]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[ApplicationOpenStaffPosition]...';


GO
CREATE TABLE [extension].[ApplicationOpenStaffPosition] (
    [EducationOrganizationId] INT           NOT NULL,
    [ApplicationIdentifier]   NVARCHAR (20) NOT NULL,
    [RequisitionNumber]       NVARCHAR (20) NOT NULL,
    [CreateDate]              DATETIME      NOT NULL,
    CONSTRAINT [PK_ApplicationOpenStaffPosition] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicationIdentifier] ASC, [RequisitionNumber] ASC)
);


GO
PRINT N'Creating [extension].[ApplicationOpenStaffPosition].[FK_ApplicationOpenStaffPosition_OpenStaffPosition_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicationOpenStaffPosition_OpenStaffPosition_EducationOrganizationId]
    ON [extension].[ApplicationOpenStaffPosition]([EducationOrganizationId] ASC, [RequisitionNumber] ASC);


GO
PRINT N'Creating [extension].[ApplicationOpenStaffPosition].[FK_ApplicationOpenStaffPosition_Application_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicationOpenStaffPosition_Application_EducationOrganizationId]
    ON [extension].[ApplicationOpenStaffPosition]([EducationOrganizationId] ASC, [ApplicationIdentifier] ASC);


GO
PRINT N'Creating [extension].[SurveyQuestionNumericChoice]...';


GO
CREATE TABLE [extension].[SurveyQuestionNumericChoice] (
    [SurveyIdentifier] NVARCHAR (64) NOT NULL,
    [QuestionCode]     NVARCHAR (20) NOT NULL,
    [NumericChoice]    INT           NOT NULL,
    [CreateDate]       DATETIME      NOT NULL,
    CONSTRAINT [PK_SurveyQuestionNumericChoice] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [QuestionCode] ASC, [NumericChoice] ASC)
);


GO
PRINT N'Creating [extension].[SurveyQuestionNumericChoice].[FK_SurveyQuestionNumericChoice_SurveyQuestion_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveyQuestionNumericChoice_SurveyQuestion_SurveyIdentifier]
    ON [extension].[SurveyQuestionNumericChoice]([SurveyIdentifier] ASC, [QuestionCode] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationElementRating]...';


GO
CREATE TABLE [extension].[StaffEvaluationElementRating] (
    [EducationOrganizationId]                INT              NOT NULL,
    [SchoolYear]                             SMALLINT         NOT NULL,
    [StaffEvaluationTitle]                   NVARCHAR (50)    NOT NULL,
    [StaffUSI]                               INT              NOT NULL,
    [StaffEvaluationDate]                    DATE             NOT NULL,
    [EvaluationComponent]                    NVARCHAR (50)    NOT NULL,
    [EvaluationElement]                      NVARCHAR (255)   NOT NULL,
    [ElementRating]                          DECIMAL (6, 3)   NOT NULL,
    [StaffEvaluationRatingLevelDescriptorId] INT              NULL,
    [Id]                                     UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                       DATETIME         NOT NULL,
    [CreateDate]                             DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationElementRating] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [StaffUSI] ASC, [StaffEvaluationDate] ASC, [EvaluationComponent] ASC, [EvaluationElement] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationElementRating].[FK_StaffEvaluationElementRating_StaffEvaluationElement_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElementRating_StaffEvaluationElement_EducationOrganizationId]
    ON [extension].[StaffEvaluationElementRating]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC, [EvaluationElement] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationRatingLevelType]...';


GO
CREATE TABLE [extension].[StaffEvaluationRatingLevelType] (
    [StaffEvaluationRatingLevelTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]                        NVARCHAR (50)    NOT NULL,
    [Description]                      NVARCHAR (1024)  NOT NULL,
    [ShortDescription]                 NVARCHAR (450)   NOT NULL,
    [Id]                               UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]                 DATETIME         NOT NULL,
    [CreateDate]                       DATETIME         NOT NULL,
    CONSTRAINT [PK_StaffEvaluationRatingLevelType] PRIMARY KEY CLUSTERED ([StaffEvaluationRatingLevelTypeId] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationRatingLevelDescriptor]...';


GO
CREATE TABLE [extension].[StaffEvaluationRatingLevelDescriptor] (
    [StaffEvaluationRatingLevelDescriptorId] INT NOT NULL,
    [StaffEvaluationRatingLevelTypeId]       INT NOT NULL,
    CONSTRAINT [PK_StaffEvaluationRatingLevelDescriptor] PRIMARY KEY CLUSTERED ([StaffEvaluationRatingLevelDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationStaffRatingLevel]...';


GO
CREATE TABLE [extension].[StaffEvaluationStaffRatingLevel] (
    [EducationOrganizationId] INT            NOT NULL,
    [SchoolYear]              SMALLINT       NOT NULL,
    [StaffEvaluationTitle]    NVARCHAR (50)  NOT NULL,
    [StaffEvaluationLevel]    NVARCHAR (50)  NOT NULL,
    [MaxLevel]                DECIMAL (6, 3) NOT NULL,
    [MinLevel]                DECIMAL (6, 3) NULL,
    [CreateDate]              DATETIME       NOT NULL,
    CONSTRAINT [PK_StaffEvaluationStaffRatingLevel] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [StaffEvaluationLevel] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationStaffRatingLevel].[FK_StaffEvaluationStaffRatingLevel_StaffEvaluation_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationStaffRatingLevel_StaffEvaluation_EducationOrganizationId]
    ON [extension].[StaffEvaluationStaffRatingLevel]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC);


GO
PRINT N'Creating [extension].[StaffBackgroundCheck]...';


GO
CREATE TABLE [extension].[StaffBackgroundCheck] (
    [StaffUSI]                          INT      NOT NULL,
    [BackgroundCheckTypeDescriptorId]   INT      NOT NULL,
    [BackgroundCheckRequestedDate]      DATE     NOT NULL,
    [BackgroundCheckCompletedDate]      DATE     NULL,
    [BackgroundCheckStatusDescriptorId] INT      NULL,
    [CreateDate]                        DATETIME NOT NULL,
    CONSTRAINT [PK_StaffBackgroundCheck] PRIMARY KEY CLUSTERED ([StaffUSI] ASC, [BackgroundCheckTypeDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[StaffBackgroundCheck].[FK_StaffBackgroundCheck_Staff_StaffUSI]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffBackgroundCheck_Staff_StaffUSI]
    ON [extension].[StaffBackgroundCheck]([StaffUSI] ASC);


GO
PRINT N'Creating [extension].[StaffEvaluationElementStaffRatingLevel]...';


GO
CREATE TABLE [extension].[StaffEvaluationElementStaffRatingLevel] (
    [EducationOrganizationId] INT            NOT NULL,
    [SchoolYear]              SMALLINT       NOT NULL,
    [StaffEvaluationTitle]    NVARCHAR (50)  NOT NULL,
    [EvaluationComponent]     NVARCHAR (50)  NOT NULL,
    [EvaluationElement]       NVARCHAR (255) NOT NULL,
    [StaffEvaluationLevel]    NVARCHAR (50)  NOT NULL,
    [MaxLevel]                DECIMAL (6, 3) NOT NULL,
    [MinLevel]                DECIMAL (6, 3) NULL,
    [CreateDate]              DATETIME       NOT NULL,
    CONSTRAINT [PK_StaffEvaluationElementStaffRatingLevel] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC, [EvaluationElement] ASC, [StaffEvaluationLevel] ASC)
);


GO
PRINT N'Creating [extension].[StaffEvaluationElementStaffRatingLevel].[FK_StaffEvaluationElementStaffRatingLevel_StaffEvaluationElement_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_StaffEvaluationElementStaffRatingLevel_StaffEvaluationElement_EducationOrganizationId]
    ON [extension].[StaffEvaluationElementStaffRatingLevel]([EducationOrganizationId] ASC, [SchoolYear] ASC, [StaffEvaluationTitle] ASC, [EvaluationComponent] ASC, [EvaluationElement] ASC);


GO
PRINT N'Creating [extension].[FundingSourceType]...';


GO
CREATE TABLE [extension].[FundingSourceType] (
    [FundingSourceTypeId] INT              IDENTITY (1, 1) NOT NULL,
    [CodeValue]           NVARCHAR (50)    NOT NULL,
    [Description]         NVARCHAR (1024)  NOT NULL,
    [ShortDescription]    NVARCHAR (450)   NOT NULL,
    [Id]                  UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]    DATETIME         NOT NULL,
    [CreateDate]          DATETIME         NOT NULL,
    CONSTRAINT [PK_FundingSourceType] PRIMARY KEY CLUSTERED ([FundingSourceTypeId] ASC)
);


GO
PRINT N'Creating [extension].[FundingSourceDescriptor]...';


GO
CREATE TABLE [extension].[FundingSourceDescriptor] (
    [FundingSourceDescriptorId] INT NOT NULL,
    [FundingSourceTypeId]       INT NOT NULL,
    CONSTRAINT [PK_FundingSourceDescriptor] PRIMARY KEY CLUSTERED ([FundingSourceDescriptorId] ASC)
);


GO
PRINT N'Creating [extension].[OpenStaffPositionExtension]...';


GO
CREATE TABLE [extension].[OpenStaffPositionExtension] (
    [EducationOrganizationId]             INT            NOT NULL,
    [RequisitionNumber]                   NVARCHAR (20)  NOT NULL,
    [SchoolYear]                          SMALLINT       NOT NULL,
    [FullTimeEquivalency]                 DECIMAL (3, 2) NOT NULL,
    [OpenStaffPositionReasonDescriptorId] INT            NULL,
    [IsActive]                            BIT            NULL,
    [MaxSalary]                           DECIMAL (9, 2) NULL,
    [MinSalary]                           DECIMAL (9, 2) NULL,
    [FundingSourceDescriptorId]           INT            NULL,
    [HighNeedAcademicSubject]             BIT            NULL,
    [PositionControlNumber]               NVARCHAR (20)  NULL,
    [TermDescriptorId]                    INT            NULL,
    [TotalBudgeted]                       DECIMAL (9, 2) NULL,
    CONSTRAINT [PK_OpenStaffPositionExtension] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [RequisitionNumber] ASC)
);


GO
PRINT N'Creating [extension].[OpenStaffPositionExtension].[FK_OpenStaffPositionExtension_SchoolYearType_SchoolYear]...';


GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionExtension_SchoolYearType_SchoolYear]
    ON [extension].[OpenStaffPositionExtension]([SchoolYear] ASC);


GO
PRINT N'Creating [extension].[OpenStaffPositionExtension].[FK_OpenStaffPositionExtension_OpenStaffPosition_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_OpenStaffPositionExtension_OpenStaffPosition_EducationOrganizationId]
    ON [extension].[OpenStaffPositionExtension]([EducationOrganizationId] ASC, [RequisitionNumber] ASC);


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement]...';


GO
CREATE TABLE [extension].[ApplicantCredentialEndorsement] (
    [EducationOrganizationId]        INT            NOT NULL,
    [ApplicantIdentifier]            NVARCHAR (32)  NOT NULL,
    [CredentialFieldDescriptorId]    INT            NOT NULL,
    [CredentialTypeId]               INT            NOT NULL,
    [LevelDescriptorId]              INT            NOT NULL,
    [TeachingCredentialDescriptorId] INT            NOT NULL,
    [CredentialIssuanceDate]         DATE           NOT NULL,
    [CredentialEndorsement]          NVARCHAR (255) NOT NULL,
    [CreateDate]                     DATETIME       NOT NULL,
    CONSTRAINT [PK_ApplicantCredentialEndorsement] PRIMARY KEY CLUSTERED ([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [CredentialFieldDescriptorId] ASC, [CredentialTypeId] ASC, [LevelDescriptorId] ASC, [TeachingCredentialDescriptorId] ASC, [CredentialIssuanceDate] ASC, [CredentialEndorsement] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[FK_ApplicantCredentialEndorsement_ApplicantCredential_EducationOrganizationId]...';


GO
CREATE NONCLUSTERED INDEX [FK_ApplicantCredentialEndorsement_ApplicantCredential_EducationOrganizationId]
    ON [extension].[ApplicantCredentialEndorsement]([EducationOrganizationId] ASC, [ApplicantIdentifier] ASC, [CredentialFieldDescriptorId] ASC, [CredentialTypeId] ASC, [LevelDescriptorId] ASC, [TeachingCredentialDescriptorId] ASC, [CredentialIssuanceDate] ASC);


GO
PRINT N'Creating [extension].[SurveySectionResponseRating]...';


GO
CREATE TABLE [extension].[SurveySectionResponseRating] (
    [SurveyIdentifier]         NVARCHAR (64)    NOT NULL,
    [SurveyResponseIdentifier] NVARCHAR (64)    NOT NULL,
    [SurveySectionTitle]       NVARCHAR (50)    NOT NULL,
    [SectionRating]            DECIMAL (9, 3)   NULL,
    [Id]                       UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate]         DATETIME         NOT NULL,
    [CreateDate]               DATETIME         NOT NULL,
    CONSTRAINT [PK_SurveySectionResponseRating] PRIMARY KEY CLUSTERED ([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC, [SurveySectionTitle] ASC)
);


GO
PRINT N'Creating [extension].[SurveySectionResponseRating].[FK_SurveySectionResponseRating_SurveySection_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseRating_SurveySection_SurveyIdentifier]
    ON [extension].[SurveySectionResponseRating]([SurveyIdentifier] ASC, [SurveySectionTitle] ASC);


GO
PRINT N'Creating [extension].[SurveySectionResponseRating].[FK_SurveySectionResponseRating_SurveyResponse_SurveyIdentifier]...';


GO
CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseRating_SurveyResponse_SurveyIdentifier]
    ON [extension].[SurveySectionResponseRating]([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC);


GO
PRINT N'Creating [extension].[RecruitmentEvent]...';


GO
CREATE TABLE [extension].[RecruitmentEvent] (
    [EventDate]        DATE             NOT NULL,
    [EventTitle]       NVARCHAR (50)    NOT NULL,
    [EventDescription] NVARCHAR (255)   NULL,
    [Id]               UNIQUEIDENTIFIER NOT NULL,
    [LastModifiedDate] DATETIME         NOT NULL,
    [CreateDate]       DATETIME         NOT NULL,
    CONSTRAINT [PK_RecruitmentEvent] PRIMARY KEY CLUSTERED ([EventDate] ASC, [EventTitle] ASC)
);


GO
PRINT N'Creating [extension].[ApplicantLanguage_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantLanguage]
    ADD CONSTRAINT [ApplicantLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantInternationalAddress]
    ADD CONSTRAINT [ApplicantInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationDocument]
    ADD CONSTRAINT [ApplicantIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantVisa_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantVisa]
    ADD CONSTRAINT [ApplicantVisa_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantBackgroundCheck_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantBackgroundCheck]
    ADD CONSTRAINT [ApplicantBackgroundCheck_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantIdentificationCode_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationCode]
    ADD CONSTRAINT [ApplicantIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[Applicant_DF_Id]...';


GO
ALTER TABLE [extension].[Applicant]
    ADD CONSTRAINT [Applicant_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[Applicant_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[Applicant]
    ADD CONSTRAINT [Applicant_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[Applicant_DF_CreateDate]...';


GO
ALTER TABLE [extension].[Applicant]
    ADD CONSTRAINT [Applicant_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantAddress_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantAddress]
    ADD CONSTRAINT [ApplicantAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ProspectTouchpoint_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ProspectTouchpoint]
    ADD CONSTRAINT [ProspectTouchpoint_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ProspectTelephone_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ProspectTelephone]
    ADD CONSTRAINT [ProspectTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ProspectRecruitmentEvent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ProspectRecruitmentEvent]
    ADD CONSTRAINT [ProspectRecruitmentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[Prospect_DF_Id]...';


GO
ALTER TABLE [extension].[Prospect]
    ADD CONSTRAINT [Prospect_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[Prospect_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[Prospect]
    ADD CONSTRAINT [Prospect_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[Prospect_DF_CreateDate]...';


GO
ALTER TABLE [extension].[Prospect]
    ADD CONSTRAINT [Prospect_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[EmploymentSeparationEvent_DF_Id]...';


GO
ALTER TABLE [extension].[EmploymentSeparationEvent]
    ADD CONSTRAINT [EmploymentSeparationEvent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[EmploymentSeparationEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[EmploymentSeparationEvent]
    ADD CONSTRAINT [EmploymentSeparationEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[EmploymentSeparationEvent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[EmploymentSeparationEvent]
    ADD CONSTRAINT [EmploymentSeparationEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[EmploymentEvent_DF_Id]...';


GO
ALTER TABLE [extension].[EmploymentEvent]
    ADD CONSTRAINT [EmploymentEvent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[EmploymentEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[EmploymentEvent]
    ADD CONSTRAINT [EmploymentEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[EmploymentEvent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[EmploymentEvent]
    ADD CONSTRAINT [EmploymentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffAbsenceEvent_DF_Id]...';


GO
ALTER TABLE [extension].[StaffAbsenceEvent]
    ADD CONSTRAINT [StaffAbsenceEvent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffAbsenceEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffAbsenceEvent]
    ADD CONSTRAINT [StaffAbsenceEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffAbsenceEvent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffAbsenceEvent]
    ADD CONSTRAINT [StaffAbsenceEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationRating_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationRating]
    ADD CONSTRAINT [StaffEvaluationRating_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationRating]
    ADD CONSTRAINT [StaffEvaluationRating_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationRating_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationRating]
    ADD CONSTRAINT [StaffEvaluationRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluation_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluation]
    ADD CONSTRAINT [StaffEvaluation_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluation_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluation]
    ADD CONSTRAINT [StaffEvaluation_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluation_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluation]
    ADD CONSTRAINT [StaffEvaluation_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[EducationOrganizationFacts_DF_Id]...';


GO
ALTER TABLE [extension].[EducationOrganizationFacts]
    ADD CONSTRAINT [EducationOrganizationFacts_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[EducationOrganizationFacts_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[EducationOrganizationFacts]
    ADD CONSTRAINT [EducationOrganizationFacts_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[EducationOrganizationFacts_DF_CreateDate]...';


GO
ALTER TABLE [extension].[EducationOrganizationFacts]
    ADD CONSTRAINT [EducationOrganizationFacts_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[TalentManagementGoal_DF_Id]...';


GO
ALTER TABLE [extension].[TalentManagementGoal]
    ADD CONSTRAINT [TalentManagementGoal_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[TalentManagementGoal_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[TalentManagementGoal]
    ADD CONSTRAINT [TalentManagementGoal_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[TalentManagementGoal_DF_CreateDate]...';


GO
ALTER TABLE [extension].[TalentManagementGoal]
    ADD CONSTRAINT [TalentManagementGoal_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[LevelOfDegreeAwardedDescriptor_DF_CreateDate]...';


GO
ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor]
    ADD CONSTRAINT [LevelOfDegreeAwardedDescriptor_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantCredential_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantCredential]
    ADD CONSTRAINT [ApplicantCredential_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantRace_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantRace]
    ADD CONSTRAINT [ApplicantRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantElectronicMail_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantElectronicMail]
    ADD CONSTRAINT [ApplicantElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse]
    ADD CONSTRAINT [SurveyQuestionResponseSurveyQuestionMatrixElementResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyQuestionResponse_DF_Id]...';


GO
ALTER TABLE [extension].[SurveyQuestionResponse]
    ADD CONSTRAINT [SurveyQuestionResponse_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[SurveyQuestionResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[SurveyQuestionResponse]
    ADD CONSTRAINT [SurveyQuestionResponse_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[SurveyQuestionResponse_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyQuestionResponse]
    ADD CONSTRAINT [SurveyQuestionResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyResponse_DF_Id]...';


GO
ALTER TABLE [extension].[SurveyResponse]
    ADD CONSTRAINT [SurveyResponse_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[SurveyResponse_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[SurveyResponse]
    ADD CONSTRAINT [SurveyResponse_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[SurveyResponse_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyResponse]
    ADD CONSTRAINT [SurveyResponse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyQuestion_DF_Id]...';


GO
ALTER TABLE [extension].[SurveyQuestion]
    ADD CONSTRAINT [SurveyQuestion_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[SurveyQuestion_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[SurveyQuestion]
    ADD CONSTRAINT [SurveyQuestion_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[SurveyQuestion_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyQuestion]
    ADD CONSTRAINT [SurveyQuestion_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveySection_DF_Id]...';


GO
ALTER TABLE [extension].[SurveySection]
    ADD CONSTRAINT [SurveySection_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[SurveySection_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[SurveySection]
    ADD CONSTRAINT [SurveySection_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[SurveySection_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveySection]
    ADD CONSTRAINT [SurveySection_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[Survey_DF_Id]...';


GO
ALTER TABLE [extension].[Survey]
    ADD CONSTRAINT [Survey_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[Survey_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[Survey]
    ADD CONSTRAINT [Survey_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[Survey_DF_CreateDate]...';


GO
ALTER TABLE [extension].[Survey]
    ADD CONSTRAINT [Survey_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationComponentRating_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentRating]
    ADD CONSTRAINT [StaffEvaluationComponentRating_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationComponentRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentRating]
    ADD CONSTRAINT [StaffEvaluationComponentRating_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationComponentRating_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentRating]
    ADD CONSTRAINT [StaffEvaluationComponentRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationElement_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationElement]
    ADD CONSTRAINT [StaffEvaluationElement_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationElement_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationElement]
    ADD CONSTRAINT [StaffEvaluationElement_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationElement_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationElement]
    ADD CONSTRAINT [StaffEvaluationElement_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationComponent_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponent]
    ADD CONSTRAINT [StaffEvaluationComponent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationComponent_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponent]
    ADD CONSTRAINT [StaffEvaluationComponent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationComponent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponent]
    ADD CONSTRAINT [StaffEvaluationComponent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationComponentStaffRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentStaffRatingLevel]
    ADD CONSTRAINT [StaffEvaluationComponentStaffRatingLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionEvent_DF_Id]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEvent]
    ADD CONSTRAINT [OpenStaffPositionEvent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[OpenStaffPositionEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEvent]
    ADD CONSTRAINT [OpenStaffPositionEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionEvent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEvent]
    ADD CONSTRAINT [OpenStaffPositionEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffTeacherPreparationProgramAddress_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress]
    ADD CONSTRAINT [StaffTeacherPreparationProgramAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicationEvent_DF_Id]...';


GO
ALTER TABLE [extension].[ApplicationEvent]
    ADD CONSTRAINT [ApplicationEvent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[ApplicationEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[ApplicationEvent]
    ADD CONSTRAINT [ApplicationEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[ApplicationEvent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicationEvent]
    ADD CONSTRAINT [ApplicationEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[Application_DF_Id]...';


GO
ALTER TABLE [extension].[Application]
    ADD CONSTRAINT [Application_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[Application_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[Application]
    ADD CONSTRAINT [Application_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[Application_DF_CreateDate]...';


GO
ALTER TABLE [extension].[Application]
    ADD CONSTRAINT [Application_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantTelephone_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantTelephone]
    ADD CONSTRAINT [ApplicantTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantTeacherPreparationProgram_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgram]
    ADD CONSTRAINT [ApplicantTeacherPreparationProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantLanguageUse_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantLanguageUse]
    ADD CONSTRAINT [ApplicantLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[LevelOfDegreeAwardedType_DF_Id]...';


GO
ALTER TABLE [extension].[LevelOfDegreeAwardedType]
    ADD CONSTRAINT [LevelOfDegreeAwardedType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[LevelOfDegreeAwardedType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[LevelOfDegreeAwardedType]
    ADD CONSTRAINT [LevelOfDegreeAwardedType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[LevelOfDegreeAwardedType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[LevelOfDegreeAwardedType]
    ADD CONSTRAINT [LevelOfDegreeAwardedType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[EmploymentSeparationReasonType_DF_Id]...';


GO
ALTER TABLE [extension].[EmploymentSeparationReasonType]
    ADD CONSTRAINT [EmploymentSeparationReasonType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[EmploymentSeparationReasonType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[EmploymentSeparationReasonType]
    ADD CONSTRAINT [EmploymentSeparationReasonType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[EmploymentSeparationReasonType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[EmploymentSeparationReasonType]
    ADD CONSTRAINT [EmploymentSeparationReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[EmploymentSeparationType_DF_Id]...';


GO
ALTER TABLE [extension].[EmploymentSeparationType]
    ADD CONSTRAINT [EmploymentSeparationType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[EmploymentSeparationType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[EmploymentSeparationType]
    ADD CONSTRAINT [EmploymentSeparationType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[EmploymentSeparationType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[EmploymentSeparationType]
    ADD CONSTRAINT [EmploymentSeparationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[InternalExternalHireType_DF_Id]...';


GO
ALTER TABLE [extension].[InternalExternalHireType]
    ADD CONSTRAINT [InternalExternalHireType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[InternalExternalHireType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[InternalExternalHireType]
    ADD CONSTRAINT [InternalExternalHireType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[InternalExternalHireType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[InternalExternalHireType]
    ADD CONSTRAINT [InternalExternalHireType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicationEventResultType_DF_Id]...';


GO
ALTER TABLE [extension].[ApplicationEventResultType]
    ADD CONSTRAINT [ApplicationEventResultType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[ApplicationEventResultType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[ApplicationEventResultType]
    ADD CONSTRAINT [ApplicationEventResultType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[ApplicationEventResultType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicationEventResultType]
    ADD CONSTRAINT [ApplicationEventResultType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicationEventType_DF_Id]...';


GO
ALTER TABLE [extension].[ApplicationEventType]
    ADD CONSTRAINT [ApplicationEventType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[ApplicationEventType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[ApplicationEventType]
    ADD CONSTRAINT [ApplicationEventType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[ApplicationEventType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicationEventType]
    ADD CONSTRAINT [ApplicationEventType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[WithdrawReasonType_DF_Id]...';


GO
ALTER TABLE [extension].[WithdrawReasonType]
    ADD CONSTRAINT [WithdrawReasonType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[WithdrawReasonType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[WithdrawReasonType]
    ADD CONSTRAINT [WithdrawReasonType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[WithdrawReasonType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[WithdrawReasonType]
    ADD CONSTRAINT [WithdrawReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[HiringSourceType_DF_Id]...';


GO
ALTER TABLE [extension].[HiringSourceType]
    ADD CONSTRAINT [HiringSourceType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[HiringSourceType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[HiringSourceType]
    ADD CONSTRAINT [HiringSourceType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[HiringSourceType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[HiringSourceType]
    ADD CONSTRAINT [HiringSourceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicationSourceType_DF_Id]...';


GO
ALTER TABLE [extension].[ApplicationSourceType]
    ADD CONSTRAINT [ApplicationSourceType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[ApplicationSourceType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[ApplicationSourceType]
    ADD CONSTRAINT [ApplicationSourceType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[ApplicationSourceType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicationSourceType]
    ADD CONSTRAINT [ApplicationSourceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[BackgroundCheckStatusType_DF_Id]...';


GO
ALTER TABLE [extension].[BackgroundCheckStatusType]
    ADD CONSTRAINT [BackgroundCheckStatusType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[BackgroundCheckStatusType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[BackgroundCheckStatusType]
    ADD CONSTRAINT [BackgroundCheckStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[BackgroundCheckStatusType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[BackgroundCheckStatusType]
    ADD CONSTRAINT [BackgroundCheckStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[BackgroundCheckType_DF_Id]...';


GO
ALTER TABLE [extension].[BackgroundCheckType]
    ADD CONSTRAINT [BackgroundCheckType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[BackgroundCheckType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[BackgroundCheckType]
    ADD CONSTRAINT [BackgroundCheckType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[BackgroundCheckType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[BackgroundCheckType]
    ADD CONSTRAINT [BackgroundCheckType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[HireStatusType_DF_Id]...';


GO
ALTER TABLE [extension].[HireStatusType]
    ADD CONSTRAINT [HireStatusType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[HireStatusType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[HireStatusType]
    ADD CONSTRAINT [HireStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[HireStatusType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[HireStatusType]
    ADD CONSTRAINT [HireStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicationStatusType_DF_Id]...';


GO
ALTER TABLE [extension].[ApplicationStatusType]
    ADD CONSTRAINT [ApplicationStatusType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[ApplicationStatusType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[ApplicationStatusType]
    ADD CONSTRAINT [ApplicationStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[ApplicationStatusType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicationStatusType]
    ADD CONSTRAINT [ApplicationStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffTeacherPreparationProgram_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgram]
    ADD CONSTRAINT [StaffTeacherPreparationProgram_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffSeniority_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffSeniority]
    ADD CONSTRAINT [StaffSeniority_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[TeacherPreparationProgramType_DF_Id]...';


GO
ALTER TABLE [extension].[TeacherPreparationProgramType]
    ADD CONSTRAINT [TeacherPreparationProgramType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[TeacherPreparationProgramType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[TeacherPreparationProgramType]
    ADD CONSTRAINT [TeacherPreparationProgramType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[TeacherPreparationProgramType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[TeacherPreparationProgramType]
    ADD CONSTRAINT [TeacherPreparationProgramType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyQuestionTextChoice_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyQuestionTextChoice]
    ADD CONSTRAINT [SurveyQuestionTextChoice_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyQuestionMatrixElement_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyQuestionMatrixElement]
    ADD CONSTRAINT [SurveyQuestionMatrixElement_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[QuestionFormType_DF_Id]...';


GO
ALTER TABLE [extension].[QuestionFormType]
    ADD CONSTRAINT [QuestionFormType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[QuestionFormType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[QuestionFormType]
    ADD CONSTRAINT [QuestionFormType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[QuestionFormType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[QuestionFormType]
    ADD CONSTRAINT [QuestionFormType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyCategoryType_DF_Id]...';


GO
ALTER TABLE [extension].[SurveyCategoryType]
    ADD CONSTRAINT [SurveyCategoryType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[SurveyCategoryType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[SurveyCategoryType]
    ADD CONSTRAINT [SurveyCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[SurveyCategoryType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyCategoryType]
    ADD CONSTRAINT [SurveyCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationType_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationType]
    ADD CONSTRAINT [StaffEvaluationType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationType]
    ADD CONSTRAINT [StaffEvaluationType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationType]
    ADD CONSTRAINT [StaffEvaluationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationPeriodType_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationPeriodType]
    ADD CONSTRAINT [StaffEvaluationPeriodType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationPeriodType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationPeriodType]
    ADD CONSTRAINT [StaffEvaluationPeriodType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationPeriodType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationPeriodType]
    ADD CONSTRAINT [StaffEvaluationPeriodType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[AbsenceEventCategoryType_DF_Id]...';


GO
ALTER TABLE [extension].[AbsenceEventCategoryType]
    ADD CONSTRAINT [AbsenceEventCategoryType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[AbsenceEventCategoryType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[AbsenceEventCategoryType]
    ADD CONSTRAINT [AbsenceEventCategoryType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[AbsenceEventCategoryType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[AbsenceEventCategoryType]
    ADD CONSTRAINT [AbsenceEventCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ProspectCurrentPosition_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ProspectCurrentPosition]
    ADD CONSTRAINT [ProspectCurrentPosition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionEventStatusType_DF_Id]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusType]
    ADD CONSTRAINT [OpenStaffPositionEventStatusType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[OpenStaffPositionEventStatusType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusType]
    ADD CONSTRAINT [OpenStaffPositionEventStatusType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionEventStatusType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusType]
    ADD CONSTRAINT [OpenStaffPositionEventStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionEventType_DF_Id]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventType]
    ADD CONSTRAINT [OpenStaffPositionEventType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[OpenStaffPositionEventType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventType]
    ADD CONSTRAINT [OpenStaffPositionEventType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionEventType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventType]
    ADD CONSTRAINT [OpenStaffPositionEventType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[TalentManagementGoalEducationOrganization_DF_CreateDate]...';


GO
ALTER TABLE [extension].[TalentManagementGoalEducationOrganization]
    ADD CONSTRAINT [TalentManagementGoalEducationOrganization_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantTeacherPreparationProgramAddress_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress]
    ADD CONSTRAINT [ApplicantTeacherPreparationProgramAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ProspectIdentificationDocument_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ProspectIdentificationDocument]
    ADD CONSTRAINT [ProspectIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ProspectCurrentPositionGradeLevel_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel]
    ADD CONSTRAINT [ProspectCurrentPositionGradeLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionReasonType_DF_Id]...';


GO
ALTER TABLE [extension].[OpenStaffPositionReasonType]
    ADD CONSTRAINT [OpenStaffPositionReasonType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[OpenStaffPositionReasonType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionReasonType]
    ADD CONSTRAINT [OpenStaffPositionReasonType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[OpenStaffPositionReasonType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[OpenStaffPositionReasonType]
    ADD CONSTRAINT [OpenStaffPositionReasonType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ProspectRace_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ProspectRace]
    ADD CONSTRAINT [ProspectRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[EmploymentEventType_DF_Id]...';


GO
ALTER TABLE [extension].[EmploymentEventType]
    ADD CONSTRAINT [EmploymentEventType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[EmploymentEventType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[EmploymentEventType]
    ADD CONSTRAINT [EmploymentEventType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[EmploymentEventType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[EmploymentEventType]
    ADD CONSTRAINT [EmploymentEventType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffApplicant_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffApplicant]
    ADD CONSTRAINT [StaffApplicant_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffHighlyQualifiedAcademicSubject_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject]
    ADD CONSTRAINT [StaffHighlyQualifiedAcademicSubject_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicationOpenStaffPosition_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicationOpenStaffPosition]
    ADD CONSTRAINT [ApplicationOpenStaffPosition_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveyQuestionNumericChoice_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveyQuestionNumericChoice]
    ADD CONSTRAINT [SurveyQuestionNumericChoice_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationElementRating_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationElementRating]
    ADD CONSTRAINT [StaffEvaluationElementRating_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationElementRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationElementRating]
    ADD CONSTRAINT [StaffEvaluationElementRating_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationElementRating_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationElementRating]
    ADD CONSTRAINT [StaffEvaluationElementRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationRatingLevelType_DF_Id]...';


GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelType]
    ADD CONSTRAINT [StaffEvaluationRatingLevelType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[StaffEvaluationRatingLevelType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelType]
    ADD CONSTRAINT [StaffEvaluationRatingLevelType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[StaffEvaluationRatingLevelType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelType]
    ADD CONSTRAINT [StaffEvaluationRatingLevelType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationStaffRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationStaffRatingLevel]
    ADD CONSTRAINT [StaffEvaluationStaffRatingLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffBackgroundCheck_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffBackgroundCheck]
    ADD CONSTRAINT [StaffBackgroundCheck_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[StaffEvaluationElementStaffRatingLevel_DF_CreateDate]...';


GO
ALTER TABLE [extension].[StaffEvaluationElementStaffRatingLevel]
    ADD CONSTRAINT [StaffEvaluationElementStaffRatingLevel_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[FundingSourceType_DF_Id]...';


GO
ALTER TABLE [extension].[FundingSourceType]
    ADD CONSTRAINT [FundingSourceType_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[FundingSourceType_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[FundingSourceType]
    ADD CONSTRAINT [FundingSourceType_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[FundingSourceType_DF_CreateDate]...';


GO
ALTER TABLE [extension].[FundingSourceType]
    ADD CONSTRAINT [FundingSourceType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement_DF_CreateDate]...';


GO
ALTER TABLE [extension].[ApplicantCredentialEndorsement]
    ADD CONSTRAINT [ApplicantCredentialEndorsement_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[SurveySectionResponseRating_DF_Id]...';


GO
ALTER TABLE [extension].[SurveySectionResponseRating]
    ADD CONSTRAINT [SurveySectionResponseRating_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[SurveySectionResponseRating_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[SurveySectionResponseRating]
    ADD CONSTRAINT [SurveySectionResponseRating_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[SurveySectionResponseRating_DF_CreateDate]...';


GO
ALTER TABLE [extension].[SurveySectionResponseRating]
    ADD CONSTRAINT [SurveySectionResponseRating_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[RecruitmentEvent_DF_Id]...';


GO
ALTER TABLE [extension].[RecruitmentEvent]
    ADD CONSTRAINT [RecruitmentEvent_DF_Id] DEFAULT (newid()) FOR [Id];


GO
PRINT N'Creating [extension].[RecruitmentEvent_DF_LastModifiedDate]...';


GO
ALTER TABLE [extension].[RecruitmentEvent]
    ADD CONSTRAINT [RecruitmentEvent_DF_LastModifiedDate] DEFAULT (getdate()) FOR [LastModifiedDate];


GO
PRINT N'Creating [extension].[RecruitmentEvent_DF_CreateDate]...';


GO
ALTER TABLE [extension].[RecruitmentEvent]
    ADD CONSTRAINT [RecruitmentEvent_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate];


GO
PRINT N'Creating [extension].[FK_ApplicantLanguage_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantLanguage] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantLanguage_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantLanguage_LanguageDescriptor_LanguageDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantLanguage] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantLanguage_LanguageDescriptor_LanguageDescriptorId] FOREIGN KEY ([LanguageDescriptorId]) REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantInternationalAddress_AddressType_AddressTypeId]...';


GO
ALTER TABLE [extension].[ApplicantInternationalAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantInternationalAddress_AddressType_AddressTypeId] FOREIGN KEY ([AddressTypeId]) REFERENCES [edfi].[AddressType] ([AddressTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantInternationalAddress_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantInternationalAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantInternationalAddress_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantInternationalAddress_CountryDescriptorId_CountryDescriptor_CountryDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantInternationalAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantInternationalAddress_CountryDescriptorId_CountryDescriptor_CountryDescriptorId] FOREIGN KEY ([CountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantIdentificationDocument_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantIdentificationDocument_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantIdentificationDocument_CountryDescriptor_IssuerCountryDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantIdentificationDocument_CountryDescriptor_IssuerCountryDescriptorId] FOREIGN KEY ([IssuerCountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantIdentificationDocument_IdentificationDocumentUseType_IdentificationDocumentUseTypeId]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantIdentificationDocument_IdentificationDocumentUseType_IdentificationDocumentUseTypeId] FOREIGN KEY ([IdentificationDocumentUseTypeId]) REFERENCES [edfi].[IdentificationDocumentUseType] ([IdentificationDocumentUseTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantIdentificationDocument_PersonalInformationVerificationType_PersonalInformationVerificationTypeId]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantIdentificationDocument_PersonalInformationVerificationType_PersonalInformationVerificationTypeId] FOREIGN KEY ([PersonalInformationVerificationTypeId]) REFERENCES [edfi].[PersonalInformationVerificationType] ([PersonalInformationVerificationTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantVisa_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantVisa] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantVisa_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantVisa_VisaType_VisaTypeId]...';


GO
ALTER TABLE [extension].[ApplicantVisa] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantVisa_VisaType_VisaTypeId] FOREIGN KEY ([VisaTypeId]) REFERENCES [edfi].[VisaType] ([VisaTypeId]);


GO
PRINT N'Creating [extension].[FK_BackgroundCheckStatusDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_BackgroundCheckStatusDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([BackgroundCheckStatusDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_BackgroundCheckStatusDescriptor_BackgroundCheckStatusType_BackgroundCheckStatusTypeId]...';


GO
ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_BackgroundCheckStatusDescriptor_BackgroundCheckStatusType_BackgroundCheckStatusTypeId] FOREIGN KEY ([BackgroundCheckStatusTypeId]) REFERENCES [extension].[BackgroundCheckStatusType] ([BackgroundCheckStatusTypeId]);


GO
PRINT N'Creating [extension].[FK_BackgroundCheckTypeDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[BackgroundCheckTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_BackgroundCheckTypeDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([BackgroundCheckTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_BackgroundCheckTypeDescriptor_BackgroundCheckType_BackgroundCheckTypeId]...';


GO
ALTER TABLE [extension].[BackgroundCheckTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_BackgroundCheckTypeDescriptor_BackgroundCheckType_BackgroundCheckTypeId] FOREIGN KEY ([BackgroundCheckTypeId]) REFERENCES [extension].[BackgroundCheckType] ([BackgroundCheckTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantBackgroundCheck_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantBackgroundCheck_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantBackgroundCheck_BackgroundCheckStatusDescriptor_BackgroundCheckStatusDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckStatusDescriptor_BackgroundCheckStatusDescriptorId] FOREIGN KEY ([BackgroundCheckStatusDescriptorId]) REFERENCES [extension].[BackgroundCheckStatusDescriptor] ([BackgroundCheckStatusDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantBackgroundCheck_BackgroundCheckTypeDescriptor_BackgroundCheckTypeDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckTypeDescriptor_BackgroundCheckTypeDescriptorId] FOREIGN KEY ([BackgroundCheckTypeDescriptorId]) REFERENCES [extension].[BackgroundCheckTypeDescriptor] ([BackgroundCheckTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantIdentificationCode_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationCode] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantIdentificationCode_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantIdentificationCode_StaffIdentificationSystemDescriptor_StaffIdentificationSystemDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantIdentificationCode] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantIdentificationCode_StaffIdentificationSystemDescriptor_StaffIdentificationSystemDescriptorId] FOREIGN KEY ([StaffIdentificationSystemDescriptorId]) REFERENCES [edfi].[StaffIdentificationSystemDescriptor] ([StaffIdentificationSystemDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Applicant_AcademicSubjectDescriptor_AcademicSubjectDescriptorId]...';


GO
ALTER TABLE [extension].[Applicant] WITH NOCHECK
    ADD CONSTRAINT [FK_Applicant_AcademicSubjectDescriptor_AcademicSubjectDescriptorId] FOREIGN KEY ([HighlyQualifiedAcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Applicant_CitizenshipStatusType_CitizenshipStatusTypeId]...';


GO
ALTER TABLE [extension].[Applicant] WITH NOCHECK
    ADD CONSTRAINT [FK_Applicant_CitizenshipStatusType_CitizenshipStatusTypeId] FOREIGN KEY ([CitizenshipStatusTypeId]) REFERENCES [edfi].[CitizenshipStatusType] ([CitizenshipStatusTypeId]);


GO
PRINT N'Creating [extension].[FK_Applicant_EducationOrganization_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[Applicant] WITH NOCHECK
    ADD CONSTRAINT [FK_Applicant_EducationOrganization_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating [extension].[FK_Applicant_LevelOfEducationDescriptor_LevelOfEducationDescriptorId]...';


GO
ALTER TABLE [extension].[Applicant] WITH NOCHECK
    ADD CONSTRAINT [FK_Applicant_LevelOfEducationDescriptor_LevelOfEducationDescriptorId] FOREIGN KEY ([HighestCompletedLevelOfEducationDescriptorId]) REFERENCES [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Applicant_Prospect_ProspectEducationOrganizationId]...';


GO
ALTER TABLE [extension].[Applicant] WITH NOCHECK
    ADD CONSTRAINT [FK_Applicant_Prospect_ProspectEducationOrganizationId] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_Applicant_SexType_SexTypeId]...';


GO
ALTER TABLE [extension].[Applicant] WITH NOCHECK
    ADD CONSTRAINT [FK_Applicant_SexType_SexTypeId] FOREIGN KEY ([SexTypeId]) REFERENCES [edfi].[SexType] ([SexTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantAddress_AddressType_AddressTypeId]...';


GO
ALTER TABLE [extension].[ApplicantAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantAddress_AddressType_AddressTypeId] FOREIGN KEY ([AddressTypeId]) REFERENCES [edfi].[AddressType] ([AddressTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantAddress_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantAddress_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantAddress_StateAbbreviationType_StateAbbreviationTypeId]...';


GO
ALTER TABLE [extension].[ApplicantAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantAddress_StateAbbreviationType_StateAbbreviationTypeId] FOREIGN KEY ([StateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId]);


GO
PRINT N'Creating [extension].[FK_ProspectTouchpoint_Prospect_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ProspectTouchpoint] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectTouchpoint_Prospect_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ProspectTelephone_Prospect_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ProspectTelephone] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectTelephone_Prospect_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ProspectTelephone_TelephoneNumberType_TelephoneNumberTypeId]...';


GO
ALTER TABLE [extension].[ProspectTelephone] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectTelephone_TelephoneNumberType_TelephoneNumberTypeId] FOREIGN KEY ([TelephoneNumberTypeId]) REFERENCES [edfi].[TelephoneNumberType] ([TelephoneNumberTypeId]);


GO
PRINT N'Creating [extension].[FK_ProspectRecruitmentEvent_Prospect_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectRecruitmentEvent_Prospect_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ProspectRecruitmentEvent_RecruitmentEvent_EventDate]...';


GO
ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectRecruitmentEvent_RecruitmentEvent_EventDate] FOREIGN KEY ([EventDate], [EventTitle]) REFERENCES [extension].[RecruitmentEvent] ([EventDate], [EventTitle]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_Prospect_EducationOrganization_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[Prospect] WITH NOCHECK
    ADD CONSTRAINT [FK_Prospect_EducationOrganization_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating [extension].[FK_Prospect_SexType_SexTypeId]...';


GO
ALTER TABLE [extension].[Prospect] WITH NOCHECK
    ADD CONSTRAINT [FK_Prospect_SexType_SexTypeId] FOREIGN KEY ([SexTypeId]) REFERENCES [edfi].[SexType] ([SexTypeId]);


GO
PRINT N'Creating [extension].[FK_EmploymentSeparationEvent_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonDescriptorId]...';


GO
ALTER TABLE [extension].[EmploymentSeparationEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentSeparationEvent_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonDescriptorId] FOREIGN KEY ([EmploymentSeparationReasonDescriptorId]) REFERENCES [extension].[EmploymentSeparationReasonDescriptor] ([EmploymentSeparationReasonDescriptorId]);


GO
PRINT N'Creating [extension].[FK_EmploymentSeparationEvent_EmploymentSeparationTypeDescriptor_EmploymentSeparationTypeDescriptorId]...';


GO
ALTER TABLE [extension].[EmploymentSeparationEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentSeparationEvent_EmploymentSeparationTypeDescriptor_EmploymentSeparationTypeDescriptorId] FOREIGN KEY ([EmploymentSeparationTypeDescriptorId]) REFERENCES [extension].[EmploymentSeparationTypeDescriptor] ([EmploymentSeparationTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_EmploymentSeparationEvent_OpenStaffPosition_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[EmploymentSeparationEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentSeparationEvent_OpenStaffPosition_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber]) REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_EmploymentEvent_EmploymentEventTypeDescriptor_EmploymentEventTypeDescriptorId]...';


GO
ALTER TABLE [extension].[EmploymentEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentEvent_EmploymentEventTypeDescriptor_EmploymentEventTypeDescriptorId] FOREIGN KEY ([EmploymentEventTypeDescriptorId]) REFERENCES [extension].[EmploymentEventTypeDescriptor] ([EmploymentEventTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_EmploymentEvent_InternalExternalHireType]...';


GO
ALTER TABLE [extension].[EmploymentEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentEvent_InternalExternalHireType] FOREIGN KEY ([InternalExternalHireTypeId]) REFERENCES [extension].[InternalExternalHireType] ([InternalExternalHireTypeId]);


GO
PRINT N'Creating [extension].[FK_EmploymentEvent_OpenStaffPosition_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[EmploymentEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentEvent_OpenStaffPosition_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber]) REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffAbsenceEvent_AbsenceEventCategoryDescriptor_AbsenceEventCategoryDescriptorId]...';


GO
ALTER TABLE [extension].[StaffAbsenceEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffAbsenceEvent_AbsenceEventCategoryDescriptor_AbsenceEventCategoryDescriptorId] FOREIGN KEY ([AbsenceEventCategoryDescriptorId]) REFERENCES [extension].[AbsenceEventCategoryDescriptor] ([AbsenceEventCategoryDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffAbsenceEvent_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffAbsenceEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffAbsenceEvent_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationRating_Staff_EvaluatedByStaffUSI]...';


GO
ALTER TABLE [extension].[StaffEvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationRating_Staff_EvaluatedByStaffUSI] FOREIGN KEY ([EvaluatedByStaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationRating_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffEvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationRating_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationRating_StaffEvaluation_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationRating_StaffEvaluation_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle]) REFERENCES [extension].[StaffEvaluation] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationRating_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelDescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluationRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationRating_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelDescriptorId] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId]) REFERENCES [extension].[StaffEvaluationRatingLevelDescriptor] ([StaffEvaluationRatingLevelDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluation_EducationOrganization_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluation_EducationOrganization_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluation_SchoolYearType_SchoolYear]...';


GO
ALTER TABLE [extension].[StaffEvaluation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluation_SchoolYearType_SchoolYear] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluation_StaffEvaluationPeriodDescriptor_StaffEvaluationPeriodDescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluation_StaffEvaluationPeriodDescriptor_StaffEvaluationPeriodDescriptorId] FOREIGN KEY ([StaffEvaluationPeriodDescriptorId]) REFERENCES [extension].[StaffEvaluationPeriodDescriptor] ([StaffEvaluationPeriodDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluation_StaffEvaluationTypeDescriptor_StaffEvaluationTypeDescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluation] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluation_StaffEvaluationTypeDescriptor_StaffEvaluationTypeDescriptorId] FOREIGN KEY ([StaffEvaluationTypeDescriptorId]) REFERENCES [extension].[StaffEvaluationTypeDescriptor] ([StaffEvaluationTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_EducationOrganizationFacts_EducationOrganization_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[EducationOrganizationFacts] WITH NOCHECK
    ADD CONSTRAINT [FK_EducationOrganizationFacts_EducationOrganization_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating [extension].[FK_EducationOrganizationFacts_SchoolYearType_SchoolYear]...';


GO
ALTER TABLE [extension].[EducationOrganizationFacts] WITH NOCHECK
    ADD CONSTRAINT [FK_EducationOrganizationFacts_SchoolYearType_SchoolYear] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_TalentManagementGoal_SchoolYearType_SchoolYear]...';


GO
ALTER TABLE [extension].[TalentManagementGoal] WITH NOCHECK
    ADD CONSTRAINT [FK_TalentManagementGoal_SchoolYearType_SchoolYear] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicationStatusDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[ApplicationStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationStatusDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([ApplicationStatusDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicationStatusDescriptor_ApplicationStatusType_ApplicationStatusTypeId]...';


GO
ALTER TABLE [extension].[ApplicationStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationStatusDescriptor_ApplicationStatusType_ApplicationStatusTypeId] FOREIGN KEY ([ApplicationStatusTypeId]) REFERENCES [extension].[ApplicationStatusType] ([ApplicationStatusTypeId]);


GO
PRINT N'Creating [extension].[FK_LevelOfDegreeAwardedDescriptor_Descriptor_LevelOfDegreeAwardedDescriptorId]...';


GO
ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_LevelOfDegreeAwardedDescriptor_Descriptor_LevelOfDegreeAwardedDescriptorId] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_LevelOfDegreeAwardedType_LevelOfDegreeAwardedDescriptor]...';


GO
ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_LevelOfDegreeAwardedType_LevelOfDegreeAwardedDescriptor] FOREIGN KEY ([LevelOfDegreeAwardedTypeId]) REFERENCES [extension].[LevelOfDegreeAwardedType] ([LevelOfDegreeAwardedTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantCredential_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredential_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantCredential_CredentialFieldDescriptor_CredentialFieldDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredential_CredentialFieldDescriptor_CredentialFieldDescriptorId] FOREIGN KEY ([CredentialFieldDescriptorId]) REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantCredential_CredentialType_CredentialTypeId]...';


GO
ALTER TABLE [extension].[ApplicantCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredential_CredentialType_CredentialTypeId] FOREIGN KEY ([CredentialTypeId]) REFERENCES [edfi].[CredentialType] ([CredentialTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantCredential_LevelDescriptor_LevelDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredential_LevelDescriptor_LevelDescriptorId] FOREIGN KEY ([LevelDescriptorId]) REFERENCES [edfi].[LevelDescriptor] ([LevelDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantCredential_StateAbbreviationType_StateOfIssueAbbreviationTypeId]...';


GO
ALTER TABLE [extension].[ApplicantCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredential_StateAbbreviationType_StateOfIssueAbbreviationTypeId] FOREIGN KEY ([StateOfIssueStateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantCredential_TeachingCredentialBasisType_TeachingCredentialBasisTypeId]...';


GO
ALTER TABLE [extension].[ApplicantCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredential_TeachingCredentialBasisType_TeachingCredentialBasisTypeId] FOREIGN KEY ([TeachingCredentialBasisTypeId]) REFERENCES [edfi].[TeachingCredentialBasisType] ([TeachingCredentialBasisTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantCredential_TeachingCredentialDescriptor_TeachingCredentialDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantCredential] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredential_TeachingCredentialDescriptor_TeachingCredentialDescriptorId] FOREIGN KEY ([TeachingCredentialDescriptorId]) REFERENCES [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantRace_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantRace] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantRace_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantRace_RaceType_RaceTypeId]...';


GO
ALTER TABLE [extension].[ApplicantRace] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantRace_RaceType_RaceTypeId] FOREIGN KEY ([RaceTypeId]) REFERENCES [edfi].[RaceType] ([RaceTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantElectronicMail_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantElectronicMail] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantElectronicMail_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantElectronicMail_ElectronicMailType_ElectronicMailTypeId]...';


GO
ALTER TABLE [extension].[ApplicantElectronicMail] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantElectronicMail_ElectronicMailType_ElectronicMailTypeId] FOREIGN KEY ([ElectronicMailTypeId]) REFERENCES [edfi].[ElectronicMailType] ([ElectronicMailTypeId]);


GO
PRINT N'Creating [extension].[FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [SurveyResponseIdentifier], [QuestionCode]) REFERENCES [extension].[SurveyQuestionResponse] ([SurveyIdentifier], [SurveyResponseIdentifier], [QuestionCode]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyQuestionResponse_SurveyQuestion_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestionResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestionResponse_SurveyQuestion_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [QuestionCode]) REFERENCES [extension].[SurveyQuestion] ([SurveyIdentifier], [QuestionCode]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyQuestionResponse_SurveyResponse_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestionResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestionResponse_SurveyResponse_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [extension].[SurveyResponse] ([SurveyIdentifier], [SurveyResponseIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyResponse_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[SurveyResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyResponse_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyResponse_Parent_ParentUSI]...';


GO
ALTER TABLE [extension].[SurveyResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyResponse_Parent_ParentUSI] FOREIGN KEY ([ParentUSI]) REFERENCES [edfi].[Parent] ([ParentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyResponse_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[SurveyResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyResponse_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyResponse_Student_StudentUSI]...';


GO
ALTER TABLE [extension].[SurveyResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyResponse_Student_StudentUSI] FOREIGN KEY ([StudentUSI]) REFERENCES [edfi].[Student] ([StudentUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyResponse_Survey_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyResponse] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyResponse_Survey_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier]) REFERENCES [extension].[Survey] ([SurveyIdentifier]);


GO
PRINT N'Creating [extension].[FK_SurveyQuestion_QuestionFormType_QuestionFormTypeId]...';


GO
ALTER TABLE [extension].[SurveyQuestion] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestion_QuestionFormType_QuestionFormTypeId] FOREIGN KEY ([QuestionFormTypeId]) REFERENCES [extension].[QuestionFormType] ([QuestionFormTypeId]);


GO
PRINT N'Creating [extension].[FK_SurveyQuestion_Survey_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestion] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestion_Survey_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier]) REFERENCES [extension].[Survey] ([SurveyIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyQuestion_SurveySection_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestion] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestion_SurveySection_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle]) REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveySection_Survey_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveySection] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveySection_Survey_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier]) REFERENCES [extension].[Survey] ([SurveyIdentifier]);


GO
PRINT N'Creating [extension].[FK_Survey_EducationOrganization_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[Survey] WITH NOCHECK
    ADD CONSTRAINT [FK_Survey_EducationOrganization_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating [extension].[FK_Survey_SchoolYearType_SchoolYear]...';


GO
ALTER TABLE [extension].[Survey] WITH NOCHECK
    ADD CONSTRAINT [FK_Survey_SchoolYearType_SchoolYear] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_Survey_SurveyCategoryDescriptor_SurveyCategoryDescriptorId]...';


GO
ALTER TABLE [extension].[Survey] WITH NOCHECK
    ADD CONSTRAINT [FK_Survey_SurveyCategoryDescriptor_SurveyCategoryDescriptorId] FOREIGN KEY ([SurveyCategoryDescriptorId]) REFERENCES [extension].[SurveyCategoryDescriptor] ([SurveyCategoryDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Survey_TermDescriptor_TermDescriptorId]...';


GO
ALTER TABLE [extension].[Survey] WITH NOCHECK
    ADD CONSTRAINT [FK_Survey_TermDescriptor_TermDescriptorId] FOREIGN KEY ([TermDescriptorId]) REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationComponentRating_StaffEvaluationComponent_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationComponent_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent]) REFERENCES [extension].[StaffEvaluationComponent] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationComponentRating_StaffEvaluationRating_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationRating_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [StaffUSI], [StaffEvaluationDate]) REFERENCES [extension].[StaffEvaluationRating] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [StaffUSI], [StaffEvaluationDate]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationComponentRating_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelDescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelDescriptorId] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId]) REFERENCES [extension].[StaffEvaluationRatingLevelDescriptor] ([StaffEvaluationRatingLevelDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationElement_StaffEvaluationComponent_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationElement] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationElement_StaffEvaluationComponent_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent]) REFERENCES [extension].[StaffEvaluationComponent] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationComponent_StaffEvaluation_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponent] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationComponent_StaffEvaluation_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle]) REFERENCES [extension].[StaffEvaluation] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationComponent_StaffEvaluationTypeDescriptor_StaffEvaluationTypeDescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponent] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationComponent_StaffEvaluationTypeDescriptor_StaffEvaluationTypeDescriptorId] FOREIGN KEY ([StaffEvaluationTypeDescriptorId]) REFERENCES [extension].[StaffEvaluationTypeDescriptor] ([StaffEvaluationTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationComponentStaffRatingLevel_StaffEvaluationComponent_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationComponentStaffRatingLevel] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationComponentStaffRatingLevel_StaffEvaluationComponent_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent]) REFERENCES [extension].[StaffEvaluationComponent] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionEvent_OpenStaffPosition_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPosition_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber]) REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionEvent_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusDescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusDescriptorId] FOREIGN KEY ([OpenStaffPositionEventStatusDescriptorId]) REFERENCES [extension].[OpenStaffPositionEventStatusDescriptor] ([OpenStaffPositionEventStatusDescriptorId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionEvent_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventTypeDescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventTypeDescriptorId] FOREIGN KEY ([OpenStaffPositionEventTypeDescriptorId]) REFERENCES [extension].[OpenStaffPositionEventTypeDescriptor] ([OpenStaffPositionEventTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffTeacherPreparationProgramAddress_AddressType_AddressTypeId]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_AddressType_AddressTypeId] FOREIGN KEY ([AddressTypeId]) REFERENCES [edfi].[AddressType] ([AddressTypeId]);


GO
PRINT N'Creating [extension].[FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram_StaffUSI] FOREIGN KEY ([StaffUSI], [TeacherPreparationProgramName]) REFERENCES [extension].[StaffTeacherPreparationProgram] ([StaffUSI], [TeacherPreparationProgramName]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffTeacherPreparationProgramAddress_StateAbbreviationType_StateAbbreviationTypeId]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StateAbbreviationType_StateAbbreviationTypeId] FOREIGN KEY ([StateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicationEvent_Application_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicationEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationEvent_Application_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicationIdentifier]) REFERENCES [extension].[Application] ([EducationOrganizationId], [ApplicationIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicationEvent_ApplicationEventResultDescriptor_ApplicationEventResultDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicationEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationEvent_ApplicationEventResultDescriptor_ApplicationEventResultDescriptorId] FOREIGN KEY ([ApplicationEventResultDescriptorId]) REFERENCES [extension].[ApplicationEventResultDescriptor] ([ApplicationEventResultDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicationEvent_ApplicationEventTypeDescriptor_ApplicationEventTypeDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicationEvent] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationEvent_ApplicationEventTypeDescriptor_ApplicationEventTypeDescriptorId] FOREIGN KEY ([ApplicationEventTypeDescriptorId]) REFERENCES [extension].[ApplicationEventTypeDescriptor] ([ApplicationEventTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Application_AcademicSubjectDescriptor_AcademicSubjectDescriptorId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_AcademicSubjectDescriptor_AcademicSubjectDescriptorId] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Application_AcademicSubjectDescriptor_HighNeedsAcademicSubjectDescriptorId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_AcademicSubjectDescriptor_HighNeedsAcademicSubjectDescriptorId] FOREIGN KEY ([HighNeedsAcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Application_Applicant_ApplicantEducationOrganizationId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_Applicant_ApplicantEducationOrganizationId] FOREIGN KEY ([ApplicantEducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_Application_ApplicationSourceDescriptor_ApplicationSourceDescriptorId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_ApplicationSourceDescriptor_ApplicationSourceDescriptorId] FOREIGN KEY ([ApplicationSourceDescriptorId]) REFERENCES [extension].[ApplicationSourceDescriptor] ([ApplicationSourceDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Application_ApplicationStatusDescriptor_ApplicationStatusDescriptorId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_ApplicationStatusDescriptor_ApplicationStatusDescriptorId] FOREIGN KEY ([ApplicationStatusDescriptorId]) REFERENCES [extension].[ApplicationStatusDescriptor] ([ApplicationStatusDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Application_EducationOrganization_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_EducationOrganization_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating [extension].[FK_Application_HireStatusDescriptor_HireStatusDescriptorId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_HireStatusDescriptor_HireStatusDescriptorId] FOREIGN KEY ([HireStatusDescriptorId]) REFERENCES [extension].[HireStatusDescriptor] ([HireStatusDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Application_HiringSourceDescriptor_HiringSourceDescriptorId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_HiringSourceDescriptor_HiringSourceDescriptorId] FOREIGN KEY ([HiringSourceDescriptorId]) REFERENCES [extension].[HiringSourceDescriptor] ([HiringSourceDescriptorId]);


GO
PRINT N'Creating [extension].[FK_Application_WithdrawReasonDescriptor_WithdrawReasonDescriptorId]...';


GO
ALTER TABLE [extension].[Application] WITH NOCHECK
    ADD CONSTRAINT [FK_Application_WithdrawReasonDescriptor_WithdrawReasonDescriptorId] FOREIGN KEY ([WithdrawReasonDescriptorId]) REFERENCES [extension].[WithdrawReasonDescriptor] ([WithdrawReasonDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantTelephone_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantTelephone] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTelephone_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantTelephone_TelephoneNumberType_TelephoneNumberTypeId]...';


GO
ALTER TABLE [extension].[ApplicantTelephone] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTelephone_TelephoneNumberType_TelephoneNumberTypeId] FOREIGN KEY ([TelephoneNumberTypeId]) REFERENCES [edfi].[TelephoneNumberType] ([TelephoneNumberTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantTeacherPreparationProgram_Applicant_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_Applicant_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedDescriptorId] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId]) REFERENCES [extension].[LevelOfDegreeAwardedDescriptor] ([LevelOfDegreeAwardedDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramTypeDescriptorId]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramTypeDescriptorId] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId]) REFERENCES [extension].[TeacherPreparationProgramTypeDescriptor] ([TeacherPreparationProgramTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantLanguageUse_ApplicantLanguage_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantLanguageUse] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantLanguageUse_ApplicantLanguage_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier], [LanguageDescriptorId]) REFERENCES [extension].[ApplicantLanguage] ([EducationOrganizationId], [ApplicantIdentifier], [LanguageDescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantLanguageUse_LanguageUseType_LanguageUseTypeId]...';


GO
ALTER TABLE [extension].[ApplicantLanguageUse] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantLanguageUse_LanguageUseType_LanguageUseTypeId] FOREIGN KEY ([LanguageUseTypeId]) REFERENCES [edfi].[LanguageUseType] ([LanguageUseTypeId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionEventTypeDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionEventTypeDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([OpenStaffPositionEventTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventType_OpenStaffPositionEventTypeId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventType_OpenStaffPositionEventTypeId] FOREIGN KEY ([OpenStaffPositionEventTypeId]) REFERENCES [extension].[OpenStaffPositionEventType] ([OpenStaffPositionEventTypeId]);


GO
PRINT N'Creating [extension].[FK_EmploymentSeparationReasonDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[EmploymentSeparationReasonDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentSeparationReasonDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([EmploymentSeparationReasonDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonType_EmploymentSeparationReasonTypeId]...';


GO
ALTER TABLE [extension].[EmploymentSeparationReasonDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonType_EmploymentSeparationReasonTypeId] FOREIGN KEY ([EmploymentSeparationReasonTypeId]) REFERENCES [extension].[EmploymentSeparationReasonType] ([EmploymentSeparationReasonTypeId]);


GO
PRINT N'Creating [extension].[FK_EmploymentSeparationTypeDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[EmploymentSeparationTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentSeparationTypeDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([EmploymentSeparationTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_EmploymentSeparationTypeDescriptor_EmploymentSeparationType_EmploymentSeparationTypeId]...';


GO
ALTER TABLE [extension].[EmploymentSeparationTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentSeparationTypeDescriptor_EmploymentSeparationType_EmploymentSeparationTypeId] FOREIGN KEY ([EmploymentSeparationTypeId]) REFERENCES [extension].[EmploymentSeparationType] ([EmploymentSeparationTypeId]);


GO
PRINT N'Creating [extension].[FK_Descriptor_WithdrawReasonDescriptor]...';


GO
ALTER TABLE [extension].[WithdrawReasonDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_Descriptor_WithdrawReasonDescriptor] FOREIGN KEY ([WithdrawReasonDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_WithdrawReasonType_WithdrawReasonDescriptor]...';


GO
ALTER TABLE [extension].[WithdrawReasonDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_WithdrawReasonType_WithdrawReasonDescriptor] FOREIGN KEY ([WithdrawReasonTypeId]) REFERENCES [extension].[WithdrawReasonType] ([WithdrawReasonTypeId]);


GO
PRINT N'Creating [extension].[FK_HiringSourceDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[HiringSourceDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_HiringSourceDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([HiringSourceDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_HiringSourceDescriptor_HiringSourceType_HiringSourceTypeId]...';


GO
ALTER TABLE [extension].[HiringSourceDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_HiringSourceDescriptor_HiringSourceType_HiringSourceTypeId] FOREIGN KEY ([HiringSourceTypeId]) REFERENCES [extension].[HiringSourceType] ([HiringSourceTypeId]);


GO
PRINT N'Creating [extension].[FK_HireStatusDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[HireStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_HireStatusDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([HireStatusDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_HireStatusDescriptor_HireStatusType_HireStatusTypeId]...';


GO
ALTER TABLE [extension].[HireStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_HireStatusDescriptor_HireStatusType_HireStatusTypeId] FOREIGN KEY ([HireStatusTypeId]) REFERENCES [extension].[HireStatusType] ([HireStatusTypeId]);


GO
PRINT N'Creating [extension].[FK_Descriptor_ApplicationSourceDescriptor]...';


GO
ALTER TABLE [extension].[ApplicationSourceDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_Descriptor_ApplicationSourceDescriptor] FOREIGN KEY ([ApplicationSourceDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicationSourceType_ApplicationSourceDescriptor]...';


GO
ALTER TABLE [extension].[ApplicationSourceDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationSourceType_ApplicationSourceDescriptor] FOREIGN KEY ([ApplicationSourceTypeId]) REFERENCES [extension].[ApplicationSourceType] ([ApplicationSourceTypeId]);


GO
PRINT N'Creating [extension].[FK_Descriptor_ApplicationEventResultDescriptor]...';


GO
ALTER TABLE [extension].[ApplicationEventResultDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_Descriptor_ApplicationEventResultDescriptor] FOREIGN KEY ([ApplicationEventResultDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicationEventResultType_ApplicationEventResultDescriptor]...';


GO
ALTER TABLE [extension].[ApplicationEventResultDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationEventResultType_ApplicationEventResultDescriptor] FOREIGN KEY ([ApplicationEventResultTypeId]) REFERENCES [extension].[ApplicationEventResultType] ([ApplicationEventResultTypeId]);


GO
PRINT N'Creating [extension].[FK_Descriptor_ApplicationEventTypeDescriptor]...';


GO
ALTER TABLE [extension].[ApplicationEventTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_Descriptor_ApplicationEventTypeDescriptor] FOREIGN KEY ([ApplicationEventTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicationEventType_ApplicationEventTypeDescriptor]...';


GO
ALTER TABLE [extension].[ApplicationEventTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationEventType_ApplicationEventTypeDescriptor] FOREIGN KEY ([ApplicationEventTypeId]) REFERENCES [extension].[ApplicationEventType] ([ApplicationEventTypeId]);


GO
PRINT N'Creating [extension].[FK_LeaveEventExtension_LeaveEvent_StaffUSI]...';


GO
ALTER TABLE [extension].[LeaveEventExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_LeaveEventExtension_LeaveEvent_StaffUSI] FOREIGN KEY ([StaffUSI], [EventDate], [LeaveEventCategoryTypeId]) REFERENCES [edfi].[LeaveEvent] ([StaffUSI], [EventDate], [LeaveEventCategoryTypeId]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedDescriptorId]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedDescriptorId] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId]) REFERENCES [extension].[LevelOfDegreeAwardedDescriptor] ([LevelOfDegreeAwardedDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffTeacherPreparationProgram_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramTypeDescriptorId]...';


GO
ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramTypeDescriptorId] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId]) REFERENCES [extension].[TeacherPreparationProgramTypeDescriptor] ([TeacherPreparationProgramTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffSeniority_CredentialFieldDescriptor_CredentialFieldDescriptorId]...';


GO
ALTER TABLE [extension].[StaffSeniority] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffSeniority_CredentialFieldDescriptor_CredentialFieldDescriptorId] FOREIGN KEY ([CredentialFieldDescriptorId]) REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffSeniority_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffSeniority] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffSeniority_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffExtension_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffExtension_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentEvent_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentEvent_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber], [EmploymentEventTypeDescriptorId]) REFERENCES [extension].[EmploymentEvent] ([EducationOrganizationId], [RequisitionNumber], [EmploymentEventTypeDescriptorId]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentSeparationEvent_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentSeparationEvent_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber], [EmploymentSeparationDate]) REFERENCES [extension].[EmploymentSeparationEvent] ([EducationOrganizationId], [RequisitionNumber], [EmploymentSeparationDate]);


GO
PRINT N'Creating [extension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_SchoolYearType_SchoolYear]...';


GO
ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_SchoolYearType_SchoolYear] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation_EdOrgId]...';


GO
ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation_EdOrgId] FOREIGN KEY ([EducationOrganizationId], [StaffUSI], [EmploymentStatusDescriptorId], [HireDate]) REFERENCES [edfi].[StaffEducationOrganizationEmploymentAssociation] ([EducationOrganizationId], [StaffUSI], [EmploymentStatusDescriptorId], [HireDate]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramType_TeacherPreparationProgramTypeId]...';


GO
ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramType_TeacherPreparationProgramTypeId] FOREIGN KEY ([TeacherPreparationProgramTypeId]) REFERENCES [extension].[TeacherPreparationProgramType] ([TeacherPreparationProgramTypeId]);


GO
PRINT N'Creating [extension].[FK_TeacherPreparationProgramTypeDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_SurveyQuestionTextChoice_SurveyQuestion_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestionTextChoice] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestionTextChoice_SurveyQuestion_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [QuestionCode]) REFERENCES [extension].[SurveyQuestion] ([SurveyIdentifier], [QuestionCode]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyQuestionMatrixElement_SurveyQuestion_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestionMatrixElement] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestionMatrixElement_SurveyQuestion_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [QuestionCode]) REFERENCES [extension].[SurveyQuestion] ([SurveyIdentifier], [QuestionCode]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyCategoryDescriptor_SurveyCategoryType_SurveyCategoryTypeId]...';


GO
ALTER TABLE [extension].[SurveyCategoryDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyCategoryDescriptor_SurveyCategoryType_SurveyCategoryTypeId] FOREIGN KEY ([SurveyCategoryTypeId]) REFERENCES [extension].[SurveyCategoryType] ([SurveyCategoryTypeId]);


GO
PRINT N'Creating [extension].[FK_SurveyCategoryDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[SurveyCategoryDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyCategoryDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([SurveyCategoryDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationType_StaffEvaluationTypeDescriptor]...';


GO
ALTER TABLE [extension].[StaffEvaluationTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationType_StaffEvaluationTypeDescriptor] FOREIGN KEY ([StaffEvaluationTypeId]) REFERENCES [extension].[StaffEvaluationType] ([StaffEvaluationTypeId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationTypeDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluationTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationTypeDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([StaffEvaluationTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationPeriodType_StaffEvaluationPeriodDescriptor]...';


GO
ALTER TABLE [extension].[StaffEvaluationPeriodDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationPeriodType_StaffEvaluationPeriodDescriptor] FOREIGN KEY ([StaffEvaluationPeriodTypeId]) REFERENCES [extension].[StaffEvaluationPeriodType] ([StaffEvaluationPeriodTypeId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationPeriodDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluationPeriodDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationPeriodDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([StaffEvaluationPeriodDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_AbsenceEventCategoryDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_AbsenceEventCategoryDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([AbsenceEventCategoryDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_AbsenceEventCategoryDescriptor_AbsenceEventCategoryType_AbsenceEventCategoryTypeId]...';


GO
ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_AbsenceEventCategoryDescriptor_AbsenceEventCategoryType_AbsenceEventCategoryTypeId] FOREIGN KEY ([AbsenceEventCategoryTypeId]) REFERENCES [extension].[AbsenceEventCategoryType] ([AbsenceEventCategoryTypeId]);


GO
PRINT N'Creating [extension].[FK_ProspectCurrentPosition_AcademicSubjectDescriptor_AcademicSubjectDescriptorId]...';


GO
ALTER TABLE [extension].[ProspectCurrentPosition] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectCurrentPosition_AcademicSubjectDescriptor_AcademicSubjectDescriptorId] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ProspectCurrentPosition_Prospect_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ProspectCurrentPosition] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectCurrentPosition_Prospect_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionEventStatusDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionEventStatusDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([OpenStaffPositionEventStatusDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusType_OpenStaffPositionEventStatusType]...';


GO
ALTER TABLE [extension].[OpenStaffPositionEventStatusDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusType_OpenStaffPositionEventStatusType] FOREIGN KEY ([OpenStaffPositionEventStatusTypeId]) REFERENCES [extension].[OpenStaffPositionEventStatusType] ([OpenStaffPositionEventStatusTypeId]);


GO
PRINT N'Creating [extension].[FK_TalentManagementGoalEducationOrganization_EducationOrganization_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[TalentManagementGoalEducationOrganization] WITH NOCHECK
    ADD CONSTRAINT [FK_TalentManagementGoalEducationOrganization_EducationOrganization_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId]) REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId]);


GO
PRINT N'Creating [extension].[FK_TalentManagementGoalEducationOrganization_TalentManagementGoal_GoalTitle]...';


GO
ALTER TABLE [extension].[TalentManagementGoalEducationOrganization] WITH NOCHECK
    ADD CONSTRAINT [FK_TalentManagementGoalEducationOrganization_TalentManagementGoal_GoalTitle] FOREIGN KEY ([GoalTitle], [SchoolYear]) REFERENCES [extension].[TalentManagementGoal] ([GoalTitle], [SchoolYear]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantTeacherPreparationProgramAddress_AddressType_AddressTypeId]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_AddressType_AddressTypeId] FOREIGN KEY ([AddressTypeId]) REFERENCES [edfi].[AddressType] ([AddressTypeId]);


GO
PRINT N'Creating [extension].[FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier], [TeacherPreparationProgramName]) REFERENCES [extension].[ApplicantTeacherPreparationProgram] ([EducationOrganizationId], [ApplicantIdentifier], [TeacherPreparationProgramName]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicantTeacherPreparationProgramAddress_StateAbbreviationType_StateAbbreviationTypeId]...';


GO
ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_StateAbbreviationType_StateAbbreviationTypeId] FOREIGN KEY ([StateAbbreviationTypeId]) REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId]);


GO
PRINT N'Creating [extension].[FK_ProspectIdentificationDocument_CountryDescriptor_IssuerCountryDescriptorId]...';


GO
ALTER TABLE [extension].[ProspectIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectIdentificationDocument_CountryDescriptor_IssuerCountryDescriptorId] FOREIGN KEY ([IssuerCountryDescriptorId]) REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ProspectIdentificationDocument_IdentificationDocumentUseType_IdentificationDocumentUseTypeId]...';


GO
ALTER TABLE [extension].[ProspectIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectIdentificationDocument_IdentificationDocumentUseType_IdentificationDocumentUseTypeId] FOREIGN KEY ([IdentificationDocumentUseTypeId]) REFERENCES [edfi].[IdentificationDocumentUseType] ([IdentificationDocumentUseTypeId]);


GO
PRINT N'Creating [extension].[FK_ProspectIdentificationDocument_PersonalInformationVerificationType_PersonalInformationVerificationTypeId]...';


GO
ALTER TABLE [extension].[ProspectIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectIdentificationDocument_PersonalInformationVerificationType_PersonalInformationVerificationTypeId] FOREIGN KEY ([PersonalInformationVerificationTypeId]) REFERENCES [edfi].[PersonalInformationVerificationType] ([PersonalInformationVerificationTypeId]);


GO
PRINT N'Creating [extension].[FK_ProspectIdentificationDocument_Prospect_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ProspectIdentificationDocument] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectIdentificationDocument_Prospect_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ProspectCurrentPositionGradeLevel_GradeLevelDescriptor_GradeLevelDescriptorId]...';


GO
ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_GradeLevelDescriptor_GradeLevelDescriptorId] FOREIGN KEY ([GradeLevelDescriptorId]) REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[ProspectCurrentPosition] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionReasonDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionReasonDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionReasonDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([OpenStaffPositionReasonDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonType_OpenStaffPositionReasonTypeId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionReasonDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonType_OpenStaffPositionReasonTypeId] FOREIGN KEY ([OpenStaffPositionReasonTypeId]) REFERENCES [extension].[OpenStaffPositionReasonType] ([OpenStaffPositionReasonTypeId]);


GO
PRINT N'Creating [extension].[FK_ProspectRace_Prospect_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ProspectRace] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectRace_Prospect_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ProspectIdentifier]) REFERENCES [extension].[Prospect] ([EducationOrganizationId], [ProspectIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ProspectRace_RaceType_RaceTypedId]...';


GO
ALTER TABLE [extension].[ProspectRace] WITH NOCHECK
    ADD CONSTRAINT [FK_ProspectRace_RaceType_RaceTypedId] FOREIGN KEY ([RaceTypeId]) REFERENCES [edfi].[RaceType] ([RaceTypeId]);


GO
PRINT N'Creating [extension].[FK_EmploymentEventTypeDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[EmploymentEventTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentEventTypeDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([EmploymentEventTypeDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_EmploymentEventTypeDescriptor_EmploymentEventType_EmploymentEventTypeId]...';


GO
ALTER TABLE [extension].[EmploymentEventTypeDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_EmploymentEventTypeDescriptor_EmploymentEventType_EmploymentEventTypeId] FOREIGN KEY ([EmploymentEventTypeId]) REFERENCES [extension].[EmploymentEventType] ([EmploymentEventTypeId]);


GO
PRINT N'Creating [extension].[FK_StaffApplicant_Applicant_ApplicantEducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffApplicant] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffApplicant_Applicant_ApplicantEducationOrganizationId] FOREIGN KEY ([ApplicantEducationOrganizationId], [ApplicantIdentifier]) REFERENCES [extension].[Applicant] ([EducationOrganizationId], [ApplicantIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffApplicant_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffApplicant] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffApplicant_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffHighlyQualifiedAcademicSubject_AcademicSubjectDescriptor_AcademicSubjectDescriptorId]...';


GO
ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_AcademicSubjectDescriptor_AcademicSubjectDescriptorId] FOREIGN KEY ([AcademicSubjectDescriptorId]) REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffHighlyQualifiedAcademicSubject_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicationOpenStaffPosition_Application_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicationOpenStaffPosition] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationOpenStaffPosition_Application_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicationIdentifier]) REFERENCES [extension].[Application] ([EducationOrganizationId], [ApplicationIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_ApplicationOpenStaffPosition_OpenStaffPosition_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicationOpenStaffPosition] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicationOpenStaffPosition_OpenStaffPosition_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber]) REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveyQuestionNumericChoice_SurveyQuestion_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveyQuestionNumericChoice] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveyQuestionNumericChoice_SurveyQuestion_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [QuestionCode]) REFERENCES [extension].[SurveyQuestion] ([SurveyIdentifier], [QuestionCode]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationElementRating_StaffEvaluationElement_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationElementRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationElementRating_StaffEvaluationElement_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent], [EvaluationElement]) REFERENCES [extension].[StaffEvaluationElement] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent], [EvaluationElement]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationElementRating_StaffEvaluationRatingLevelDescriptor_StaffEvalRtgLvlDescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluationElementRating] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationElementRating_StaffEvaluationRatingLevelDescriptor_StaffEvalRtgLvlDescriptorId] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId]) REFERENCES [extension].[StaffEvaluationRatingLevelDescriptor] ([StaffEvaluationRatingLevelDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelType_StaffEvaluationRatingLevelTypeId]...';


GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelType_StaffEvaluationRatingLevelTypeId] FOREIGN KEY ([StaffEvaluationRatingLevelTypeId]) REFERENCES [extension].[StaffEvaluationRatingLevelType] ([StaffEvaluationRatingLevelTypeId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationRatingLevelDescriptor_Descriptor_StaffEvaluationRatingLevelDescriptorId]...';


GO
ALTER TABLE [extension].[StaffEvaluationRatingLevelDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationRatingLevelDescriptor_Descriptor_StaffEvaluationRatingLevelDescriptorId] FOREIGN KEY ([StaffEvaluationRatingLevelDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffEvaluationStaffRatingLevel_StaffEvaluation_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationStaffRatingLevel] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationStaffRatingLevel_StaffEvaluation_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle]) REFERENCES [extension].[StaffEvaluation] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffBackgroundCheck_BackgroundCheckStatusDescriptor_BackgroundCheckStatusDescriptorId]...';


GO
ALTER TABLE [extension].[StaffBackgroundCheck] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckStatusDescriptor_BackgroundCheckStatusDescriptorId] FOREIGN KEY ([BackgroundCheckStatusDescriptorId]) REFERENCES [extension].[BackgroundCheckStatusDescriptor] ([BackgroundCheckStatusDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffBackgroundCheck_BackgroundCheckTypeDescriptor_BackgroundCheckTypeDescriptorId]...';


GO
ALTER TABLE [extension].[StaffBackgroundCheck] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckTypeDescriptor_BackgroundCheckTypeDescriptorId] FOREIGN KEY ([BackgroundCheckTypeDescriptorId]) REFERENCES [extension].[BackgroundCheckTypeDescriptor] ([BackgroundCheckTypeDescriptorId]);


GO
PRINT N'Creating [extension].[FK_StaffBackgroundCheck_Staff_StaffUSI]...';


GO
ALTER TABLE [extension].[StaffBackgroundCheck] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffBackgroundCheck_Staff_StaffUSI] FOREIGN KEY ([StaffUSI]) REFERENCES [edfi].[Staff] ([StaffUSI]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_StaffEvaluationElementStaffRatingLevel_StaffEvaluationElement_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[StaffEvaluationElementStaffRatingLevel] WITH NOCHECK
    ADD CONSTRAINT [FK_StaffEvaluationElementStaffRatingLevel_StaffEvaluationElement_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent], [EvaluationElement]) REFERENCES [extension].[StaffEvaluationElement] ([EducationOrganizationId], [SchoolYear], [StaffEvaluationTitle], [EvaluationComponent], [EvaluationElement]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_FundingSourceDescriptor_Descriptor_DescriptorId]...';


GO
ALTER TABLE [extension].[FundingSourceDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_FundingSourceDescriptor_Descriptor_DescriptorId] FOREIGN KEY ([FundingSourceDescriptorId]) REFERENCES [edfi].[Descriptor] ([DescriptorId]);


GO
PRINT N'Creating [extension].[FK_FundingSourceDescriptor_FundingSourceType_FundingSourceTypeId]...';


GO
ALTER TABLE [extension].[FundingSourceDescriptor] WITH NOCHECK
    ADD CONSTRAINT [FK_FundingSourceDescriptor_FundingSourceType_FundingSourceTypeId] FOREIGN KEY ([FundingSourceTypeId]) REFERENCES [extension].[FundingSourceType] ([FundingSourceTypeId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionExtension_FundingSourceDescriptor_FundingSourceDescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionExtension_FundingSourceDescriptor_FundingSourceDescriptorId] FOREIGN KEY ([FundingSourceDescriptorId]) REFERENCES [extension].[FundingSourceDescriptor] ([FundingSourceDescriptorId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionExtension_OpenStaffPosition_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionExtension_OpenStaffPosition_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [RequisitionNumber]) REFERENCES [edfi].[OpenStaffPosition] ([EducationOrganizationId], [RequisitionNumber]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionExtension_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonDescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionExtension_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonDescriptorId] FOREIGN KEY ([OpenStaffPositionReasonDescriptorId]) REFERENCES [extension].[OpenStaffPositionReasonDescriptor] ([OpenStaffPositionReasonDescriptorId]);


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionExtension_SchoolYearType_SchoolYear]...';


GO
ALTER TABLE [extension].[OpenStaffPositionExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionExtension_SchoolYearType_SchoolYear] FOREIGN KEY ([SchoolYear]) REFERENCES [edfi].[SchoolYearType] ([SchoolYear]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_OpenStaffPositionExtension_TermDescriptor_TermDescriptorId]...';


GO
ALTER TABLE [extension].[OpenStaffPositionExtension] WITH NOCHECK
    ADD CONSTRAINT [FK_OpenStaffPositionExtension_TermDescriptor_TermDescriptorId] FOREIGN KEY ([TermDescriptorId]) REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId]);


GO
PRINT N'Creating [extension].[FK_ApplicantCredentialEndorsement_ApplicantCredential_EducationOrganizationId]...';


GO
ALTER TABLE [extension].[ApplicantCredentialEndorsement] WITH NOCHECK
    ADD CONSTRAINT [FK_ApplicantCredentialEndorsement_ApplicantCredential_EducationOrganizationId] FOREIGN KEY ([EducationOrganizationId], [ApplicantIdentifier], [CredentialFieldDescriptorId], [CredentialTypeId], [LevelDescriptorId], [TeachingCredentialDescriptorId], [CredentialIssuanceDate]) REFERENCES [extension].[ApplicantCredential] ([EducationOrganizationId], [ApplicantIdentifier], [CredentialFieldDescriptorId], [CredentialTypeId], [LevelDescriptorId], [TeachingCredentialDescriptorId], [CredentialIssuanceDate]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveySectionResponseRating_SurveyResponse_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveySectionResponseRating] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveySectionResponseRating_SurveyResponse_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [SurveyResponseIdentifier]) REFERENCES [extension].[SurveyResponse] ([SurveyIdentifier], [SurveyResponseIdentifier]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[FK_SurveySectionResponseRating_SurveySection_SurveyIdentifier]...';


GO
ALTER TABLE [extension].[SurveySectionResponseRating] WITH NOCHECK
    ADD CONSTRAINT [FK_SurveySectionResponseRating_SurveySection_SurveyIdentifier] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle]) REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle]) ON DELETE CASCADE;


GO
PRINT N'Creating [extension].[ApplicantLanguage].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Language(s) the individual uses to communicate.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantLanguage';


GO
PRINT N'Creating [extension].[ApplicantLanguage].[ApplicantIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Staff Identity Column', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantLanguage', @level2type = N'COLUMN', @level2name = N'ApplicantIdentifier';


GO
PRINT N'Creating [extension].[ApplicantLanguage].[LanguageDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantLanguage', @level2type = N'COLUMN', @level2name = N'LanguageDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The set of elements that describes an address, including the street address, city, state and ZIP code.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[ApplicantIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Staff Identity Column', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'ApplicantIdentifier';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[AddressTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Key for Address', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'AddressTypeId';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[AddressLine1].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The first line of the address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'AddressLine1';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[AddressLine2].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The second line of the address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'AddressLine2';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[AddressLine3].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The third line of the address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'AddressLine3';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[AddressLine4].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The fourth line of the address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'AddressLine4';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[Latitude].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The geographic latitude of the physical address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[Longitude].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The geographic longitude of the physical address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[EndDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Creating [extension].[ApplicantInternationalAddress].[CountryDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantInternationalAddress', @level2type = N'COLUMN', @level2name = N'CountryDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantAddress].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The set of elements that describes an address, including the street address, city, state and ZIP code.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress';


GO
PRINT N'Creating [extension].[ApplicantAddress].[ApplicantIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Address Identity Column', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'ApplicantIdentifier';


GO
PRINT N'Creating [extension].[ApplicantAddress].[AddressTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Key for Address', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'AddressTypeId';


GO
PRINT N'Creating [extension].[ApplicantAddress].[StreetNumberName].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The street number and street name or post office box number of an address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'StreetNumberName';


GO
PRINT N'Creating [extension].[ApplicantAddress].[ApartmentRoomSuiteNumber].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The apartment, room, or suite number of an address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'ApartmentRoomSuiteNumber';


GO
PRINT N'Creating [extension].[ApplicantAddress].[BuildingSiteNumber].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The number of the building on the site, if more than one building shares the same address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'BuildingSiteNumber';


GO
PRINT N'Creating [extension].[ApplicantAddress].[City].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The name of the city in which an address is located.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'City';


GO
PRINT N'Creating [extension].[ApplicantAddress].[StateAbbreviationTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'StateAbbreviationTypeId';


GO
PRINT N'Creating [extension].[ApplicantAddress].[PostalCode].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The five or nine digit zip code or overseas postal code portion of an address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'PostalCode';


GO
PRINT N'Creating [extension].[ApplicantAddress].[NameOfCounty].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'NameOfCounty';


GO
PRINT N'Creating [extension].[ApplicantAddress].[CountyFIPSCode].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Definition The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'CountyFIPSCode';


GO
PRINT N'Creating [extension].[ApplicantAddress].[Latitude].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The geographic latitude of the physical address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'Latitude';


GO
PRINT N'Creating [extension].[ApplicantAddress].[Longitude].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The geographic longitude of the physical address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'Longitude';


GO
PRINT N'Creating [extension].[ApplicantAddress].[BeginDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'BeginDate';


GO
PRINT N'Creating [extension].[ApplicantAddress].[EndDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantAddress', @level2type = N'COLUMN', @level2name = N'EndDate';


GO
PRINT N'Creating [extension].[ApplicantCredential].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The legal document giving authorization to perform teaching assignment services.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential';


GO
PRINT N'Creating [extension].[ApplicantCredential].[ApplicantIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique number or alphanumeric code assigned to a staff by a state education agency.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'ApplicantIdentifier';


GO
PRINT N'Creating [extension].[ApplicantCredential].[CredentialFieldDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The field of certification for the certificate (e.g., Mathematics, Music)', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'CredentialFieldDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantCredential].[CredentialTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'An indication of the category of credential an individual holds.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'CredentialTypeId';


GO
PRINT N'Creating [extension].[ApplicantCredential].[LevelDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'LevelDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantCredential].[TeachingCredentialDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'TeachingCredentialDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantCredential].[CredentialIssuanceDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The month, day, and year on which an active credential was issued to an individual.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'CredentialIssuanceDate';


GO
PRINT N'Creating [extension].[ApplicantCredential].[CredentialExpirationDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The month, day, and year on which an active credential held by an individual will expire.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'CredentialExpirationDate';


GO
PRINT N'Creating [extension].[ApplicantCredential].[TeachingCredentialBasisTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'An indication of the pre-determined criteria for granting the teaching credential that an individual holds.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'TeachingCredentialBasisTypeId';


GO
PRINT N'Creating [extension].[ApplicantCredential].[StateOfIssueStateAbbreviationTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Key for StateAbbreviationType', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredential', @level2type = N'COLUMN', @level2name = N'StateOfIssueStateAbbreviationTypeId';


GO
PRINT N'Creating [extension].[ApplicantRace].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantRace';


GO
PRINT N'Creating [extension].[ApplicantRace].[ApplicantIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique number or alphanumeric code assigned to a staff by a state education agency.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantRace', @level2type = N'COLUMN', @level2name = N'ApplicantIdentifier';


GO
PRINT N'Creating [extension].[ApplicantRace].[RaceTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The general racial category which most clearly reflects the individual''''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.        AMERICAN-INDIAN-ALASKA-NATIVE-CODE        ASIAN-CODE        BLACK-AFRICAN-AMERICAN-CODE        NATIVE-HAWAIIAN-PACIFIC-ISLANDER-CODE        WHITE-CODE', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantRace', @level2type = N'COLUMN', @level2name = N'RaceTypeId';


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The numbers, letters and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantElectronicMail';


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[ApplicantIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique number or alphanumeric code assigned to a staff by a state education agency.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantElectronicMail', @level2type = N'COLUMN', @level2name = N'ApplicantIdentifier';


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[ElectronicMailTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Key for ElectronicMail', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantElectronicMail', @level2type = N'COLUMN', @level2name = N'ElectronicMailTypeId';


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[ElectronicMailAddress].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The electronic mail (e-mail) address listed for an individual or organization.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantElectronicMail', @level2type = N'COLUMN', @level2name = N'ElectronicMailAddress';


GO
PRINT N'Creating [extension].[ApplicantElectronicMail].[PrimaryEmailAddressIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantElectronicMail', @level2type = N'COLUMN', @level2name = N'PrimaryEmailAddressIndicator';


GO
PRINT N'Creating [extension].[ApplicantTelephone].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The 10-digit telephone number, including the area code, for the person.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantTelephone';


GO
PRINT N'Creating [extension].[ApplicantTelephone].[ApplicantIdentifier].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique number or alphanumeric code assigned to a staff by a state education agency.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantTelephone', @level2type = N'COLUMN', @level2name = N'ApplicantIdentifier';


GO
PRINT N'Creating [extension].[ApplicantTelephone].[TelephoneNumberTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Key for TelephoneNumber', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantTelephone', @level2type = N'COLUMN', @level2name = N'TelephoneNumberTypeId';


GO
PRINT N'Creating [extension].[ApplicantTelephone].[OrderOfPriority].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantTelephone', @level2type = N'COLUMN', @level2name = N'OrderOfPriority';


GO
PRINT N'Creating [extension].[ApplicantTelephone].[TextMessageCapabilityIndicator].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantTelephone', @level2type = N'COLUMN', @level2name = N'TextMessageCapabilityIndicator';


GO
PRINT N'Creating [extension].[ApplicantTelephone].[TelephoneNumber].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The telephone number including the area code, and extension, if applicable.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantTelephone', @level2type = N'COLUMN', @level2name = N'TelephoneNumber';


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Endorsements are attachments to teaching certificates and indicate areas of specialization.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredentialEndorsement';


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[CredentialFieldDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The field of certification for the certificate (e.g., Mathematics, Music)', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredentialEndorsement', @level2type = N'COLUMN', @level2name = N'CredentialFieldDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[CredentialTypeId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'An indication of the category of credential an individual holds.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredentialEndorsement', @level2type = N'COLUMN', @level2name = N'CredentialTypeId';


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[LevelDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredentialEndorsement', @level2type = N'COLUMN', @level2name = N'LevelDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[TeachingCredentialDescriptorId].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredentialEndorsement', @level2type = N'COLUMN', @level2name = N'TeachingCredentialDescriptorId';


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[CredentialIssuanceDate].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'The month, day, and year on which an active credential was issued to an individual.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredentialEndorsement', @level2type = N'COLUMN', @level2name = N'CredentialIssuanceDate';


GO
PRINT N'Creating [extension].[ApplicantCredentialEndorsement].[CredentialEndorsement].[MS_Description]...';


GO
EXECUTE sp_addextendedproperty @name = N'MS_Description', @value = 'Endorsements are attachments to teaching certificates and indicate areas of specialization.', @level0type = N'SCHEMA', @level0name = N'extension', @level1type = N'TABLE', @level1name = N'ApplicantCredentialEndorsement', @level2type = N'COLUMN', @level2name = N'CredentialEndorsement';


GO
PRINT N'Checking existing data against newly created constraints';



GO
ALTER TABLE [extension].[ApplicantLanguage] WITH CHECK CHECK CONSTRAINT [FK_ApplicantLanguage_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantLanguage] WITH CHECK CHECK CONSTRAINT [FK_ApplicantLanguage_LanguageDescriptor_LanguageDescriptorId];

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantInternationalAddress_AddressType_AddressTypeId];

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantInternationalAddress_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantInternationalAddress_CountryDescriptorId_CountryDescriptor_CountryDescriptorId];

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ApplicantIdentificationDocument_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ApplicantIdentificationDocument_CountryDescriptor_IssuerCountryDescriptorId];

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ApplicantIdentificationDocument_IdentificationDocumentUseType_IdentificationDocumentUseTypeId];

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ApplicantIdentificationDocument_PersonalInformationVerificationType_PersonalInformationVerificationTypeId];

ALTER TABLE [extension].[ApplicantVisa] WITH CHECK CHECK CONSTRAINT [FK_ApplicantVisa_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantVisa] WITH CHECK CHECK CONSTRAINT [FK_ApplicantVisa_VisaType_VisaTypeId];

ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_BackgroundCheckStatusDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_BackgroundCheckStatusDescriptor_BackgroundCheckStatusType_BackgroundCheckStatusTypeId];

ALTER TABLE [extension].[BackgroundCheckTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_BackgroundCheckTypeDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[BackgroundCheckTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_BackgroundCheckTypeDescriptor_BackgroundCheckType_BackgroundCheckTypeId];

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK CHECK CONSTRAINT [FK_ApplicantBackgroundCheck_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK CHECK CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckStatusDescriptor_BackgroundCheckStatusDescriptorId];

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK CHECK CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckTypeDescriptor_BackgroundCheckTypeDescriptorId];

ALTER TABLE [extension].[ApplicantIdentificationCode] WITH CHECK CHECK CONSTRAINT [FK_ApplicantIdentificationCode_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantIdentificationCode] WITH CHECK CHECK CONSTRAINT [FK_ApplicantIdentificationCode_StaffIdentificationSystemDescriptor_StaffIdentificationSystemDescriptorId];

ALTER TABLE [extension].[Applicant] WITH CHECK CHECK CONSTRAINT [FK_Applicant_AcademicSubjectDescriptor_AcademicSubjectDescriptorId];

ALTER TABLE [extension].[Applicant] WITH CHECK CHECK CONSTRAINT [FK_Applicant_CitizenshipStatusType_CitizenshipStatusTypeId];

ALTER TABLE [extension].[Applicant] WITH CHECK CHECK CONSTRAINT [FK_Applicant_EducationOrganization_EducationOrganizationId];

ALTER TABLE [extension].[Applicant] WITH CHECK CHECK CONSTRAINT [FK_Applicant_LevelOfEducationDescriptor_LevelOfEducationDescriptorId];

ALTER TABLE [extension].[Applicant] WITH CHECK CHECK CONSTRAINT [FK_Applicant_Prospect_ProspectEducationOrganizationId];

ALTER TABLE [extension].[Applicant] WITH CHECK CHECK CONSTRAINT [FK_Applicant_SexType_SexTypeId];

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantAddress_AddressType_AddressTypeId];

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantAddress_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantAddress_StateAbbreviationType_StateAbbreviationTypeId];

ALTER TABLE [extension].[ProspectTouchpoint] WITH CHECK CHECK CONSTRAINT [FK_ProspectTouchpoint_Prospect_EducationOrganizationId];

ALTER TABLE [extension].[ProspectTelephone] WITH CHECK CHECK CONSTRAINT [FK_ProspectTelephone_Prospect_EducationOrganizationId];

ALTER TABLE [extension].[ProspectTelephone] WITH CHECK CHECK CONSTRAINT [FK_ProspectTelephone_TelephoneNumberType_TelephoneNumberTypeId];

ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH CHECK CHECK CONSTRAINT [FK_ProspectRecruitmentEvent_Prospect_EducationOrganizationId];

ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH CHECK CHECK CONSTRAINT [FK_ProspectRecruitmentEvent_RecruitmentEvent_EventDate];

ALTER TABLE [extension].[Prospect] WITH CHECK CHECK CONSTRAINT [FK_Prospect_EducationOrganization_EducationOrganizationId];

ALTER TABLE [extension].[Prospect] WITH CHECK CHECK CONSTRAINT [FK_Prospect_SexType_SexTypeId];

ALTER TABLE [extension].[EmploymentSeparationEvent] WITH CHECK CHECK CONSTRAINT [FK_EmploymentSeparationEvent_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonDescriptorId];

ALTER TABLE [extension].[EmploymentSeparationEvent] WITH CHECK CHECK CONSTRAINT [FK_EmploymentSeparationEvent_EmploymentSeparationTypeDescriptor_EmploymentSeparationTypeDescriptorId];

ALTER TABLE [extension].[EmploymentSeparationEvent] WITH CHECK CHECK CONSTRAINT [FK_EmploymentSeparationEvent_OpenStaffPosition_EducationOrganizationId];

ALTER TABLE [extension].[EmploymentEvent] WITH CHECK CHECK CONSTRAINT [FK_EmploymentEvent_EmploymentEventTypeDescriptor_EmploymentEventTypeDescriptorId];

ALTER TABLE [extension].[EmploymentEvent] WITH CHECK CHECK CONSTRAINT [FK_EmploymentEvent_InternalExternalHireType];

ALTER TABLE [extension].[EmploymentEvent] WITH CHECK CHECK CONSTRAINT [FK_EmploymentEvent_OpenStaffPosition_EducationOrganizationId];

ALTER TABLE [extension].[StaffAbsenceEvent] WITH CHECK CHECK CONSTRAINT [FK_StaffAbsenceEvent_AbsenceEventCategoryDescriptor_AbsenceEventCategoryDescriptorId];

ALTER TABLE [extension].[StaffAbsenceEvent] WITH CHECK CHECK CONSTRAINT [FK_StaffAbsenceEvent_Staff_StaffUSI];

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationRating_Staff_EvaluatedByStaffUSI];

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationRating_Staff_StaffUSI];

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationRating_StaffEvaluation_EducationOrganizationId];

ALTER TABLE [extension].[StaffEvaluationRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationRating_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelDescriptorId];

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluation_EducationOrganization_EducationOrganizationId];

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluation_SchoolYearType_SchoolYear];

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluation_StaffEvaluationPeriodDescriptor_StaffEvaluationPeriodDescriptorId];

ALTER TABLE [extension].[StaffEvaluation] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluation_StaffEvaluationTypeDescriptor_StaffEvaluationTypeDescriptorId];

ALTER TABLE [extension].[EducationOrganizationFacts] WITH CHECK CHECK CONSTRAINT [FK_EducationOrganizationFacts_EducationOrganization_EducationOrganizationId];

ALTER TABLE [extension].[EducationOrganizationFacts] WITH CHECK CHECK CONSTRAINT [FK_EducationOrganizationFacts_SchoolYearType_SchoolYear];

ALTER TABLE [extension].[TalentManagementGoal] WITH CHECK CHECK CONSTRAINT [FK_TalentManagementGoal_SchoolYearType_SchoolYear];

ALTER TABLE [extension].[ApplicationStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_ApplicationStatusDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[ApplicationStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_ApplicationStatusDescriptor_ApplicationStatusType_ApplicationStatusTypeId];

ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor] WITH CHECK CHECK CONSTRAINT [FK_LevelOfDegreeAwardedDescriptor_Descriptor_LevelOfDegreeAwardedDescriptorId];

ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor] WITH CHECK CHECK CONSTRAINT [FK_LevelOfDegreeAwardedType_LevelOfDegreeAwardedDescriptor];

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredential_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredential_CredentialFieldDescriptor_CredentialFieldDescriptorId];

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredential_CredentialType_CredentialTypeId];

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredential_LevelDescriptor_LevelDescriptorId];

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredential_StateAbbreviationType_StateOfIssueAbbreviationTypeId];

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredential_TeachingCredentialBasisType_TeachingCredentialBasisTypeId];

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredential_TeachingCredentialDescriptor_TeachingCredentialDescriptorId];

ALTER TABLE [extension].[ApplicantRace] WITH CHECK CHECK CONSTRAINT [FK_ApplicantRace_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantRace] WITH CHECK CHECK CONSTRAINT [FK_ApplicantRace_RaceType_RaceTypeId];

ALTER TABLE [extension].[ApplicantElectronicMail] WITH CHECK CHECK CONSTRAINT [FK_ApplicantElectronicMail_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantElectronicMail] WITH CHECK CHECK CONSTRAINT [FK_ApplicantElectronicMail_ElectronicMailType_ElectronicMailTypeId];

ALTER TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse_SurveyIdentifier];

ALTER TABLE [extension].[SurveyQuestionResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestionResponse_SurveyQuestion_SurveyIdentifier];

ALTER TABLE [extension].[SurveyQuestionResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestionResponse_SurveyResponse_SurveyIdentifier];

ALTER TABLE [extension].[SurveyResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyResponse_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[SurveyResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyResponse_Parent_ParentUSI];

ALTER TABLE [extension].[SurveyResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyResponse_Staff_StaffUSI];

ALTER TABLE [extension].[SurveyResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyResponse_Student_StudentUSI];

ALTER TABLE [extension].[SurveyResponse] WITH CHECK CHECK CONSTRAINT [FK_SurveyResponse_Survey_SurveyIdentifier];

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestion_QuestionFormType_QuestionFormTypeId];

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestion_Survey_SurveyIdentifier];

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestion_SurveySection_SurveyIdentifier];

ALTER TABLE [extension].[SurveySection] WITH CHECK CHECK CONSTRAINT [FK_SurveySection_Survey_SurveyIdentifier];

ALTER TABLE [extension].[Survey] WITH CHECK CHECK CONSTRAINT [FK_Survey_EducationOrganization_EducationOrganizationId];

ALTER TABLE [extension].[Survey] WITH CHECK CHECK CONSTRAINT [FK_Survey_SchoolYearType_SchoolYear];

ALTER TABLE [extension].[Survey] WITH CHECK CHECK CONSTRAINT [FK_Survey_SurveyCategoryDescriptor_SurveyCategoryDescriptorId];

ALTER TABLE [extension].[Survey] WITH CHECK CHECK CONSTRAINT [FK_Survey_TermDescriptor_TermDescriptorId];

ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationComponent_EducationOrganizationId];

ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationRating_EducationOrganizationId];

ALTER TABLE [extension].[StaffEvaluationComponentRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationComponentRating_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelDescriptorId];

ALTER TABLE [extension].[StaffEvaluationElement] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationElement_StaffEvaluationComponent_EducationOrganizationId];

ALTER TABLE [extension].[StaffEvaluationComponent] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationComponent_StaffEvaluation_EducationOrganizationId];

ALTER TABLE [extension].[StaffEvaluationComponent] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationComponent_StaffEvaluationTypeDescriptor_StaffEvaluationTypeDescriptorId];

ALTER TABLE [extension].[StaffEvaluationComponentStaffRatingLevel] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationComponentStaffRatingLevel_StaffEvaluationComponent_EducationOrganizationId];

ALTER TABLE [extension].[OpenStaffPositionEvent] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPosition_EducationOrganizationId];

ALTER TABLE [extension].[OpenStaffPositionEvent] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusDescriptorId];

ALTER TABLE [extension].[OpenStaffPositionEvent] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionEvent_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventTypeDescriptorId];

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK CHECK CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_AddressType_AddressTypeId];

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK CHECK CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram_StaffUSI];

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK CHECK CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StateAbbreviationType_StateAbbreviationTypeId];

ALTER TABLE [extension].[ApplicationEvent] WITH CHECK CHECK CONSTRAINT [FK_ApplicationEvent_Application_EducationOrganizationId];

ALTER TABLE [extension].[ApplicationEvent] WITH CHECK CHECK CONSTRAINT [FK_ApplicationEvent_ApplicationEventResultDescriptor_ApplicationEventResultDescriptorId];

ALTER TABLE [extension].[ApplicationEvent] WITH CHECK CHECK CONSTRAINT [FK_ApplicationEvent_ApplicationEventTypeDescriptor_ApplicationEventTypeDescriptorId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_AcademicSubjectDescriptor_AcademicSubjectDescriptorId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_AcademicSubjectDescriptor_HighNeedsAcademicSubjectDescriptorId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_Applicant_ApplicantEducationOrganizationId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_ApplicationSourceDescriptor_ApplicationSourceDescriptorId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_ApplicationStatusDescriptor_ApplicationStatusDescriptorId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_EducationOrganization_EducationOrganizationId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_HireStatusDescriptor_HireStatusDescriptorId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_HiringSourceDescriptor_HiringSourceDescriptorId];

ALTER TABLE [extension].[Application] WITH CHECK CHECK CONSTRAINT [FK_Application_WithdrawReasonDescriptor_WithdrawReasonDescriptorId];

ALTER TABLE [extension].[ApplicantTelephone] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTelephone_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantTelephone] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTelephone_TelephoneNumberType_TelephoneNumberTypeId];

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTeacherPreparationProgram_Applicant_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedDescriptorId];

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramTypeDescriptorId];

ALTER TABLE [extension].[ApplicantLanguageUse] WITH CHECK CHECK CONSTRAINT [FK_ApplicantLanguageUse_ApplicantLanguage_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantLanguageUse] WITH CHECK CHECK CONSTRAINT [FK_ApplicantLanguageUse_LanguageUseType_LanguageUseTypeId];

ALTER TABLE [extension].[OpenStaffPositionEventTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionEventTypeDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[OpenStaffPositionEventTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionEventTypeDescriptor_OpenStaffPositionEventType_OpenStaffPositionEventTypeId];

ALTER TABLE [extension].[EmploymentSeparationReasonDescriptor] WITH CHECK CHECK CONSTRAINT [FK_EmploymentSeparationReasonDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[EmploymentSeparationReasonDescriptor] WITH CHECK CHECK CONSTRAINT [FK_EmploymentSeparationReasonDescriptor_EmploymentSeparationReasonType_EmploymentSeparationReasonTypeId];

ALTER TABLE [extension].[EmploymentSeparationTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_EmploymentSeparationTypeDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[EmploymentSeparationTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_EmploymentSeparationTypeDescriptor_EmploymentSeparationType_EmploymentSeparationTypeId];

ALTER TABLE [extension].[WithdrawReasonDescriptor] WITH CHECK CHECK CONSTRAINT [FK_Descriptor_WithdrawReasonDescriptor];

ALTER TABLE [extension].[WithdrawReasonDescriptor] WITH CHECK CHECK CONSTRAINT [FK_WithdrawReasonType_WithdrawReasonDescriptor];

ALTER TABLE [extension].[HiringSourceDescriptor] WITH CHECK CHECK CONSTRAINT [FK_HiringSourceDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[HiringSourceDescriptor] WITH CHECK CHECK CONSTRAINT [FK_HiringSourceDescriptor_HiringSourceType_HiringSourceTypeId];

ALTER TABLE [extension].[HireStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_HireStatusDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[HireStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_HireStatusDescriptor_HireStatusType_HireStatusTypeId];

ALTER TABLE [extension].[ApplicationSourceDescriptor] WITH CHECK CHECK CONSTRAINT [FK_Descriptor_ApplicationSourceDescriptor];

ALTER TABLE [extension].[ApplicationSourceDescriptor] WITH CHECK CHECK CONSTRAINT [FK_ApplicationSourceType_ApplicationSourceDescriptor];

ALTER TABLE [extension].[ApplicationEventResultDescriptor] WITH CHECK CHECK CONSTRAINT [FK_Descriptor_ApplicationEventResultDescriptor];

ALTER TABLE [extension].[ApplicationEventResultDescriptor] WITH CHECK CHECK CONSTRAINT [FK_ApplicationEventResultType_ApplicationEventResultDescriptor];

ALTER TABLE [extension].[ApplicationEventTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_Descriptor_ApplicationEventTypeDescriptor];

ALTER TABLE [extension].[ApplicationEventTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_ApplicationEventType_ApplicationEventTypeDescriptor];

ALTER TABLE [extension].[LeaveEventExtension] WITH CHECK CHECK CONSTRAINT [FK_LeaveEventExtension_LeaveEvent_StaffUSI];

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK CHECK CONSTRAINT [FK_StaffTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor_LevelOfDegreeAwardedDescriptorId];

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK CHECK CONSTRAINT [FK_StaffTeacherPreparationProgram_Staff_StaffUSI];

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK CHECK CONSTRAINT [FK_StaffTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramTypeDescriptorId];

ALTER TABLE [extension].[StaffSeniority] WITH CHECK CHECK CONSTRAINT [FK_StaffSeniority_CredentialFieldDescriptor_CredentialFieldDescriptorId];

ALTER TABLE [extension].[StaffSeniority] WITH CHECK CHECK CONSTRAINT [FK_StaffSeniority_Staff_StaffUSI];

ALTER TABLE [extension].[StaffExtension] WITH CHECK CHECK CONSTRAINT [FK_StaffExtension_Staff_StaffUSI];

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentEvent_EducationOrganizationId];

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_EmploymentSeparationEvent_EducationOrganizationId];

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_SchoolYearType_SchoolYear];

ALTER TABLE [extension].[StaffEducationOrganizationEmploymentAssociationExtension] WITH CHECK CHECK CONSTRAINT [FK_StaffEducationOrganizationEmploymentAssociationExtension_StaffEducationOrganizationEmploymentAssociation_EdOrgId];

ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramType_TeacherPreparationProgramTypeId];

ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[SurveyQuestionTextChoice] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestionTextChoice_SurveyQuestion_SurveyIdentifier];

ALTER TABLE [extension].[SurveyQuestionMatrixElement] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestionMatrixElement_SurveyQuestion_SurveyIdentifier];

ALTER TABLE [extension].[SurveyCategoryDescriptor] WITH CHECK CHECK CONSTRAINT [FK_SurveyCategoryDescriptor_SurveyCategoryType_SurveyCategoryTypeId];

ALTER TABLE [extension].[SurveyCategoryDescriptor] WITH CHECK CHECK CONSTRAINT [FK_SurveyCategoryDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[StaffEvaluationTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationType_StaffEvaluationTypeDescriptor];

ALTER TABLE [extension].[StaffEvaluationTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationTypeDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[StaffEvaluationPeriodDescriptor] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationPeriodType_StaffEvaluationPeriodDescriptor];

ALTER TABLE [extension].[StaffEvaluationPeriodDescriptor] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationPeriodDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH CHECK CHECK CONSTRAINT [FK_AbsenceEventCategoryDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH CHECK CHECK CONSTRAINT [FK_AbsenceEventCategoryDescriptor_AbsenceEventCategoryType_AbsenceEventCategoryTypeId];

ALTER TABLE [extension].[ProspectCurrentPosition] WITH CHECK CHECK CONSTRAINT [FK_ProspectCurrentPosition_AcademicSubjectDescriptor_AcademicSubjectDescriptorId];

ALTER TABLE [extension].[ProspectCurrentPosition] WITH CHECK CHECK CONSTRAINT [FK_ProspectCurrentPosition_Prospect_EducationOrganizationId];

ALTER TABLE [extension].[OpenStaffPositionEventStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionEventStatusDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[OpenStaffPositionEventStatusDescriptor] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionEventStatusDescriptor_OpenStaffPositionEventStatusType_OpenStaffPositionEventStatusType];

ALTER TABLE [extension].[TalentManagementGoalEducationOrganization] WITH CHECK CHECK CONSTRAINT [FK_TalentManagementGoalEducationOrganization_EducationOrganization_EducationOrganizationId];

ALTER TABLE [extension].[TalentManagementGoalEducationOrganization] WITH CHECK CHECK CONSTRAINT [FK_TalentManagementGoalEducationOrganization_TalentManagementGoal_GoalTitle];

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_AddressType_AddressTypeId];

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram_EducationOrganizationId];

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK CHECK CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_StateAbbreviationType_StateAbbreviationTypeId];

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ProspectIdentificationDocument_CountryDescriptor_IssuerCountryDescriptorId];

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ProspectIdentificationDocument_IdentificationDocumentUseType_IdentificationDocumentUseTypeId];

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ProspectIdentificationDocument_PersonalInformationVerificationType_PersonalInformationVerificationTypeId];

ALTER TABLE [extension].[ProspectIdentificationDocument] WITH CHECK CHECK CONSTRAINT [FK_ProspectIdentificationDocument_Prospect_EducationOrganizationId];

ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH CHECK CHECK CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_GradeLevelDescriptor_GradeLevelDescriptorId];

ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH CHECK CHECK CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition_EducationOrganizationId];

ALTER TABLE [extension].[OpenStaffPositionReasonDescriptor] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionReasonDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[OpenStaffPositionReasonDescriptor] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonType_OpenStaffPositionReasonTypeId];

ALTER TABLE [extension].[ProspectRace] WITH CHECK CHECK CONSTRAINT [FK_ProspectRace_Prospect_EducationOrganizationId];

ALTER TABLE [extension].[ProspectRace] WITH CHECK CHECK CONSTRAINT [FK_ProspectRace_RaceType_RaceTypedId];

ALTER TABLE [extension].[EmploymentEventTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_EmploymentEventTypeDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[EmploymentEventTypeDescriptor] WITH CHECK CHECK CONSTRAINT [FK_EmploymentEventTypeDescriptor_EmploymentEventType_EmploymentEventTypeId];

ALTER TABLE [extension].[StaffApplicant] WITH CHECK CHECK CONSTRAINT [FK_StaffApplicant_Applicant_ApplicantEducationOrganizationId];

ALTER TABLE [extension].[StaffApplicant] WITH CHECK CHECK CONSTRAINT [FK_StaffApplicant_Staff_StaffUSI];

ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH CHECK CHECK CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_AcademicSubjectDescriptor_AcademicSubjectDescriptorId];

ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH CHECK CHECK CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_Staff_StaffUSI];

ALTER TABLE [extension].[ApplicationOpenStaffPosition] WITH CHECK CHECK CONSTRAINT [FK_ApplicationOpenStaffPosition_Application_EducationOrganizationId];

ALTER TABLE [extension].[ApplicationOpenStaffPosition] WITH CHECK CHECK CONSTRAINT [FK_ApplicationOpenStaffPosition_OpenStaffPosition_EducationOrganizationId];

ALTER TABLE [extension].[SurveyQuestionNumericChoice] WITH CHECK CHECK CONSTRAINT [FK_SurveyQuestionNumericChoice_SurveyQuestion_SurveyIdentifier];

ALTER TABLE [extension].[StaffEvaluationElementRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationElementRating_StaffEvaluationElement_EducationOrganizationId];

ALTER TABLE [extension].[StaffEvaluationElementRating] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationElementRating_StaffEvaluationRatingLevelDescriptor_StaffEvalRtgLvlDescriptorId];

ALTER TABLE [extension].[StaffEvaluationRatingLevelDescriptor] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationRatingLevelDescriptor_StaffEvaluationRatingLevelType_StaffEvaluationRatingLevelTypeId];

ALTER TABLE [extension].[StaffEvaluationRatingLevelDescriptor] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationRatingLevelDescriptor_Descriptor_StaffEvaluationRatingLevelDescriptorId];

ALTER TABLE [extension].[StaffEvaluationStaffRatingLevel] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationStaffRatingLevel_StaffEvaluation_EducationOrganizationId];

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK CHECK CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckStatusDescriptor_BackgroundCheckStatusDescriptorId];

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK CHECK CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckTypeDescriptor_BackgroundCheckTypeDescriptorId];

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK CHECK CONSTRAINT [FK_StaffBackgroundCheck_Staff_StaffUSI];

ALTER TABLE [extension].[StaffEvaluationElementStaffRatingLevel] WITH CHECK CHECK CONSTRAINT [FK_StaffEvaluationElementStaffRatingLevel_StaffEvaluationElement_EducationOrganizationId];

ALTER TABLE [extension].[FundingSourceDescriptor] WITH CHECK CHECK CONSTRAINT [FK_FundingSourceDescriptor_Descriptor_DescriptorId];

ALTER TABLE [extension].[FundingSourceDescriptor] WITH CHECK CHECK CONSTRAINT [FK_FundingSourceDescriptor_FundingSourceType_FundingSourceTypeId];

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionExtension_FundingSourceDescriptor_FundingSourceDescriptorId];

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionExtension_OpenStaffPosition_EducationOrganizationId];

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionExtension_OpenStaffPositionReasonDescriptor_OpenStaffPositionReasonDescriptorId];

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionExtension_SchoolYearType_SchoolYear];

ALTER TABLE [extension].[OpenStaffPositionExtension] WITH CHECK CHECK CONSTRAINT [FK_OpenStaffPositionExtension_TermDescriptor_TermDescriptorId];

ALTER TABLE [extension].[ApplicantCredentialEndorsement] WITH CHECK CHECK CONSTRAINT [FK_ApplicantCredentialEndorsement_ApplicantCredential_EducationOrganizationId];

ALTER TABLE [extension].[SurveySectionResponseRating] WITH CHECK CHECK CONSTRAINT [FK_SurveySectionResponseRating_SurveyResponse_SurveyIdentifier];

ALTER TABLE [extension].[SurveySectionResponseRating] WITH CHECK CHECK CONSTRAINT [FK_SurveySectionResponseRating_SurveySection_SurveyIdentifier];


GO
PRINT N'Update complete.';


GO
