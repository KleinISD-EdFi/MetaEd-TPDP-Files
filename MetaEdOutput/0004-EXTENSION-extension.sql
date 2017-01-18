/****** Table: [extension].[AbsenceEventCategoryDescriptor] ******/

CREATE TABLE [extension].[AbsenceEventCategoryDescriptor](
    [AbsenceEventCategoryDescriptorId] [INT] NOT NULL,
    [AbsenceEventCategoryTypeId] [INT] NULL,
    CONSTRAINT [AbsenceEventCategoryDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AbsenceEventCategoryDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the code describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AbsenceEventCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryTypeId'
GO


/****** Table: [extension].[AbsenceEventCategoryType] ******/

CREATE TABLE [extension].[AbsenceEventCategoryType](
    [AbsenceEventCategoryTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [AbsenceEventCategoryType_PK] PRIMARY KEY CLUSTERED (
        [AbsenceEventCategoryTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AbsenceEventCategoryType] ADD CONSTRAINT [AbsenceEventCategoryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AbsenceEventCategoryType] ADD CONSTRAINT [AbsenceEventCategoryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AbsenceEventCategoryType] ADD CONSTRAINT [AbsenceEventCategoryType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the code describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AbsenceEventCategoryType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for AbsenceEventCategory', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the AbsenceEventCategory type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the AbsenceEventCategory type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AbsenceEventCategoryType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[AcademicSubjectExtensionDescriptor] ******/

CREATE TABLE [extension].[AcademicSubjectExtensionDescriptor](
    [AcademicSubjectExtensionDescriptorId] [INT] NOT NULL,
    [AcademicSubjectExtensionTypeId] [INT] NOT NULL,
    CONSTRAINT [AcademicSubjectExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AcademicSubjectExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AcademicSubjectExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'AcademicSubjectExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AcademicSubjectExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'AcademicSubjectExtensionTypeId'
GO


/****** Table: [extension].[AcademicSubjectExtensionType] ******/

CREATE TABLE [extension].[AcademicSubjectExtensionType](
    [AcademicSubjectExtensionTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [AcademicSubjectExtensionType_PK] PRIMARY KEY CLUSTERED (
        [AcademicSubjectExtensionTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AcademicSubjectExtensionType] ADD CONSTRAINT [AcademicSubjectExtensionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AcademicSubjectExtensionType] ADD CONSTRAINT [AcademicSubjectExtensionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AcademicSubjectExtensionType] ADD CONSTRAINT [AcademicSubjectExtensionType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AcademicSubjectExtensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for AcademicSubjectExtension', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AcademicSubjectExtensionType', @level2type=N'COLUMN', @level2name=N'AcademicSubjectExtensionTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AcademicSubjectExtensionType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the AcademicSubjectExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AcademicSubjectExtensionType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the AcademicSubjectExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AcademicSubjectExtensionType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[AidType] ******/

CREATE TABLE [extension].[AidType](
    [AidTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [AidType_PK] PRIMARY KEY CLUSTERED (
        [AidTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[AidType] ADD CONSTRAINT [AidType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[AidType] ADD CONSTRAINT [AidType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[AidType] ADD CONSTRAINT [AidType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of financial aid awarded to a person for the academic term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AidType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Aid', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AidType', @level2type=N'COLUMN', @level2name=N'AidTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AidType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Aid type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AidType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Aid type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AidType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[AidTypeDescriptor] ******/

CREATE TABLE [extension].[AidTypeDescriptor](
    [AidTypeDescriptorId] [INT] NOT NULL,
    [AidTypeId] [INT] NOT NULL,
    CONSTRAINT [AidTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [AidTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of financial aid awarded to a person for the academic term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AidTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AidTypeDescriptor', @level2type=N'COLUMN', @level2name=N'AidTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AidTypeDescriptor', @level2type=N'COLUMN', @level2name=N'AidTypeId'
GO


/****** Table: [extension].[BackgroundCheckStatusDescriptor] ******/

CREATE TABLE [extension].[BackgroundCheckStatusDescriptor](
    [BackgroundCheckStatusDescriptorId] [INT] NOT NULL,
    [BackgroundCheckStatusTypeId] [INT] NULL,
    CONSTRAINT [BackgroundCheckStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusTypeId'
GO


/****** Table: [extension].[BackgroundCheckStatusType] ******/

CREATE TABLE [extension].[BackgroundCheckStatusType](
    [BackgroundCheckStatusTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [BackgroundCheckStatusType_PK] PRIMARY KEY CLUSTERED (
        [BackgroundCheckStatusTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[BackgroundCheckStatusType] ADD CONSTRAINT [BackgroundCheckStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[BackgroundCheckStatusType] ADD CONSTRAINT [BackgroundCheckStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[BackgroundCheckStatusType] ADD CONSTRAINT [BackgroundCheckStatusType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckStatusType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for BackgroundCheckStatus', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the BackgroundCheckStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the BackgroundCheckStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[BoardCertificationType] ******/

CREATE TABLE [extension].[BoardCertificationType](
    [BoardCertificationTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [BoardCertificationType_PK] PRIMARY KEY CLUSTERED (
        [BoardCertificationTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[BoardCertificationType] ADD CONSTRAINT [BoardCertificationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[BoardCertificationType] ADD CONSTRAINT [BoardCertificationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[BoardCertificationType] ADD CONSTRAINT [BoardCertificationType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the board certiciation board types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BoardCertificationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for BoardCertification', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BoardCertificationType', @level2type=N'COLUMN', @level2name=N'BoardCertificationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BoardCertificationType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the BoardCertification type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BoardCertificationType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the BoardCertification type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BoardCertificationType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[BoardCertificationTypeDescriptor] ******/

CREATE TABLE [extension].[BoardCertificationTypeDescriptor](
    [BoardCertificationTypeDescriptorId] [INT] NOT NULL,
    [BoardCertificationTypeId] [INT] NOT NULL,
    CONSTRAINT [BoardCertificationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [BoardCertificationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the  type of board certification awarded to an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BoardCertificationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BoardCertificationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'BoardCertificationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BoardCertificationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'BoardCertificationTypeId'
GO


/****** Table: [extension].[CertificationExamType] ******/

CREATE TABLE [extension].[CertificationExamType](
    [CertificationExamTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [CertificationExamType_PK] PRIMARY KEY CLUSTERED (
        [CertificationExamTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[CertificationExamType] ADD CONSTRAINT [CertificationExamType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[CertificationExamType] ADD CONSTRAINT [CertificationExamType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[CertificationExamType] ADD CONSTRAINT [CertificationExamType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the certification exam types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CertificationExamType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for CertificationExam', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CertificationExamType', @level2type=N'COLUMN', @level2name=N'CertificationExamTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CertificationExamType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the CertificationExam type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CertificationExamType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the CertificationExam type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CertificationExamType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[CertificationExamTypeDescriptor] ******/

CREATE TABLE [extension].[CertificationExamTypeDescriptor](
    [CertificationExamTypeDescriptorId] [INT] NOT NULL,
    [CertificationExamTypeId] [INT] NOT NULL,
    CONSTRAINT [CertificationExamTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CertificationExamTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the  type of certification exam that was taken.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CertificationExamTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CertificationExamTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CertificationExamTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CertificationExamTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CertificationExamTypeId'
GO


/****** Table: [extension].[ClassroomPositionExtensionDescriptor] ******/

CREATE TABLE [extension].[ClassroomPositionExtensionDescriptor](
    [ClassroomPositionExtensionDescriptorId] [INT] NOT NULL,
    [ClassroomPositionExtensionTypeId] [INT] NULL,
    CONSTRAINT [ClassroomPositionExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ClassroomPositionExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the type of position the staff member holds in a specific class/section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ClassroomPositionExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ClassroomPositionExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'ClassroomPositionExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ClassroomPositionExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'ClassroomPositionExtensionTypeId'
GO


/****** Table: [extension].[ClassroomPositionExtensionType] ******/

CREATE TABLE [extension].[ClassroomPositionExtensionType](
    [ClassroomPositionExtensionTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ClassroomPositionExtensionType_PK] PRIMARY KEY CLUSTERED (
        [ClassroomPositionExtensionTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ClassroomPositionExtensionType] ADD CONSTRAINT [ClassroomPositionExtensionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ClassroomPositionExtensionType] ADD CONSTRAINT [ClassroomPositionExtensionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ClassroomPositionExtensionType] ADD CONSTRAINT [ClassroomPositionExtensionType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of position the staff member holds in the specific class/section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ClassroomPositionExtensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for ClassroomPositionExtension', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ClassroomPositionExtensionType', @level2type=N'COLUMN', @level2name=N'ClassroomPositionExtensionTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ClassroomPositionExtensionType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the ClassroomPositionExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ClassroomPositionExtensionType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the ClassroomPositionExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ClassroomPositionExtensionType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[CredentialFieldExtensionDescriptor] ******/

CREATE TABLE [extension].[CredentialFieldExtensionDescriptor](
    [CredentialFieldExtensionDescriptorId] [INT] NOT NULL,
    [AcademicSubjectExtensionDescriptorId] [INT] NULL,
    CONSTRAINT [CredentialFieldExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [CredentialFieldExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the fields of certification that the state education agency offers to teachers.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CredentialFieldExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialFieldExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'CredentialFieldExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A classification of the certification fields to academic subjects.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialFieldExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'AcademicSubjectExtensionDescriptorId'
GO


/****** Table: [extension].[DiagnosisExtensionDescriptor] ******/

CREATE TABLE [extension].[DiagnosisExtensionDescriptor](
    [DiagnosisExtensionDescriptorId] [INT] NOT NULL,
    [DiagnosisExtensionTypeId] [INT] NULL,
    CONSTRAINT [DiagnosisExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [DiagnosisExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines diagnoses that interventions are intended to target.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'DiagnosisExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'DiagnosisExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'DiagnosisExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'DiagnosisExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'DiagnosisExtensionTypeId'
GO


/****** Table: [extension].[DiagnosisExtensionType] ******/

CREATE TABLE [extension].[DiagnosisExtensionType](
    [DiagnosisExtensionTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [DiagnosisExtensionType_PK] PRIMARY KEY CLUSTERED (
        [DiagnosisExtensionTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[DiagnosisExtensionType] ADD CONSTRAINT [DiagnosisExtensionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[DiagnosisExtensionType] ADD CONSTRAINT [DiagnosisExtensionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[DiagnosisExtensionType] ADD CONSTRAINT [DiagnosisExtensionType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Targeted purpose of the intervention (e.g., attendance issue, dropout risk).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'DiagnosisExtensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for DiagnosisExtension', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'DiagnosisExtensionType', @level2type=N'COLUMN', @level2name=N'DiagnosisExtensionTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'DiagnosisExtensionType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the DiagnosisExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'DiagnosisExtensionType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the DiagnosisExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'DiagnosisExtensionType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[EnglishLanguageExamDescriptor] ******/

CREATE TABLE [extension].[EnglishLanguageExamDescriptor](
    [EnglishLanguageExamDescriptorId] [INT] NOT NULL,
    [EnglishLanguageExamTypeId] [INT] NOT NULL,
    CONSTRAINT [EnglishLanguageExamDescriptor_PK] PRIMARY KEY CLUSTERED (
        [EnglishLanguageExamDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EnglishLanguageExamDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EnglishLanguageExamDescriptor', @level2type=N'COLUMN', @level2name=N'EnglishLanguageExamDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EnglishLanguageExamDescriptor', @level2type=N'COLUMN', @level2name=N'EnglishLanguageExamTypeId'
GO


/****** Table: [extension].[EnglishLanguageExamType] ******/

CREATE TABLE [extension].[EnglishLanguageExamType](
    [EnglishLanguageExamTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [EnglishLanguageExamType_PK] PRIMARY KEY CLUSTERED (
        [EnglishLanguageExamTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[EnglishLanguageExamType] ADD CONSTRAINT [EnglishLanguageExamType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[EnglishLanguageExamType] ADD CONSTRAINT [EnglishLanguageExamType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[EnglishLanguageExamType] ADD CONSTRAINT [EnglishLanguageExamType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EnglishLanguageExamType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for EnglishLanguageExam', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EnglishLanguageExamType', @level2type=N'COLUMN', @level2name=N'EnglishLanguageExamTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EnglishLanguageExamType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the EnglishLanguageExam type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EnglishLanguageExamType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the EnglishLanguageExam type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EnglishLanguageExamType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[FederalLocaleCodeDescriptor] ******/

CREATE TABLE [extension].[FederalLocaleCodeDescriptor](
    [FederalLocaleCodeDescriptorId] [INT] NOT NULL,
    [FederalLocaleCodeTypeId] [INT] NULL,
    CONSTRAINT [FederalLocaleCodeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FederalLocaleCodeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the federal locale code applicable to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'FederalLocaleCodeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FederalLocaleCodeDescriptor', @level2type=N'COLUMN', @level2name=N'FederalLocaleCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FederalLocaleCodeDescriptor', @level2type=N'COLUMN', @level2name=N'FederalLocaleCodeTypeId'
GO


/****** Table: [extension].[FederalLocaleCodeType] ******/

CREATE TABLE [extension].[FederalLocaleCodeType](
    [FederalLocaleCodeTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [FederalLocaleCodeType_PK] PRIMARY KEY CLUSTERED (
        [FederalLocaleCodeTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[FederalLocaleCodeType] ADD CONSTRAINT [FederalLocaleCodeType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[FederalLocaleCodeType] ADD CONSTRAINT [FederalLocaleCodeType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[FederalLocaleCodeType] ADD CONSTRAINT [FederalLocaleCodeType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type federal local codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'FederalLocaleCodeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for FederalLocaleCode', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FederalLocaleCodeType', @level2type=N'COLUMN', @level2name=N'FederalLocaleCodeTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FederalLocaleCodeType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the FederalLocaleCode type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FederalLocaleCodeType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the FederalLocaleCode type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FederalLocaleCodeType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[FieldworkType] ******/

CREATE TABLE [extension].[FieldworkType](
    [FieldworkTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [FieldworkType_PK] PRIMARY KEY CLUSTERED (
        [FieldworkTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[FieldworkType] ADD CONSTRAINT [FieldworkType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[FieldworkType] ADD CONSTRAINT [FieldworkType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[FieldworkType] ADD CONSTRAINT [FieldworkType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the fieldwork types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'FieldworkType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Fieldwork', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FieldworkType', @level2type=N'COLUMN', @level2name=N'FieldworkTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FieldworkType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Fieldwork type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FieldworkType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Fieldwork type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FieldworkType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[FieldworkTypeDescriptor] ******/

CREATE TABLE [extension].[FieldworkTypeDescriptor](
    [FieldworkTypeDescriptorId] [INT] NOT NULL,
    [FieldworkTypeId] [INT] NULL,
    CONSTRAINT [FieldworkTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [FieldworkTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of fieldwork being executed by a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'FieldworkTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FieldworkTypeDescriptor', @level2type=N'COLUMN', @level2name=N'FieldworkTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FieldworkTypeDescriptor', @level2type=N'COLUMN', @level2name=N'FieldworkTypeId'
GO


/****** Table: [extension].[GenderType] ******/

CREATE TABLE [extension].[GenderType](
    [GenderTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [GenderType_PK] PRIMARY KEY CLUSTERED (
        [GenderTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[GenderType] ADD CONSTRAINT [GenderType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[GenderType] ADD CONSTRAINT [GenderType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[GenderType] ADD CONSTRAINT [GenderType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with with a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'GenderType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Gender', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GenderType', @level2type=N'COLUMN', @level2name=N'GenderTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GenderType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Gender type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GenderType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Gender type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GenderType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[GradeLevelExtensionDescriptor] ******/

CREATE TABLE [extension].[GradeLevelExtensionDescriptor](
    [GradeLevelExtensionDescriptorId] [INT] NOT NULL,
    [GradeLevelExtensionTypeId] [INT] NOT NULL,
    CONSTRAINT [GradeLevelExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'GradeLevelExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradeLevelExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'GradeLevelExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradeLevelExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'GradeLevelExtensionTypeId'
GO


/****** Table: [extension].[GradeLevelExtensionType] ******/

CREATE TABLE [extension].[GradeLevelExtensionType](
    [GradeLevelExtensionTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [GradeLevelExtensionType_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelExtensionTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[GradeLevelExtensionType] ADD CONSTRAINT [GradeLevelExtensionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[GradeLevelExtensionType] ADD CONSTRAINT [GradeLevelExtensionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[GradeLevelExtensionType] ADD CONSTRAINT [GradeLevelExtensionType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The enumeration items for the set of grade levels.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'GradeLevelExtensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for GradeLevelExtension', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradeLevelExtensionType', @level2type=N'COLUMN', @level2name=N'GradeLevelExtensionTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradeLevelExtensionType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the GradeLevelExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradeLevelExtensionType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the GradeLevelExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradeLevelExtensionType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[LevelExtensionDescriptor] ******/

CREATE TABLE [extension].[LevelExtensionDescriptor](
    [LevelExtensionDescriptorId] [INT] NOT NULL,
    CONSTRAINT [LevelExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LevelExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the grade level(s) certified for teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'LevelExtensionDescriptorId'
GO


/****** Table: [extension].[LevelExtensionDescriptorGradeLevelExtension] ******/

CREATE TABLE [extension].[LevelExtensionDescriptorGradeLevelExtension](
    [LevelExtensionDescriptorId] [INT] NOT NULL,
    [GradeLevelExtensionDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [LevelExtensionDescriptorGradeLevelExtension_PK] PRIMARY KEY CLUSTERED (
        [GradeLevelExtensionDescriptorId] ASC,
        [LevelExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[LevelExtensionDescriptorGradeLevelExtension] ADD CONSTRAINT [LevelExtensionDescriptorGradeLevelExtension_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mapping to known grade levels for which certification exists.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelExtensionDescriptorGradeLevelExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelExtensionDescriptorGradeLevelExtension', @level2type=N'COLUMN', @level2name=N'LevelExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The mapping to known grade levels for which certification exists.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelExtensionDescriptorGradeLevelExtension', @level2type=N'COLUMN', @level2name=N'GradeLevelExtensionDescriptorId'
GO


/****** Table: [extension].[LevelType] ******/

CREATE TABLE [extension].[LevelType](
    [LevelTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [LevelType_PK] PRIMARY KEY CLUSTERED (
        [LevelTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[LevelType] ADD CONSTRAINT [LevelType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[LevelType] ADD CONSTRAINT [LevelType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[LevelType] ADD CONSTRAINT [LevelType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the level types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Level', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelType', @level2type=N'COLUMN', @level2name=N'LevelTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Level type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Level type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[LevelTypeDescriptor] ******/

CREATE TABLE [extension].[LevelTypeDescriptor](
    [LevelTypeDescriptorId] [INT] NOT NULL,
    [LevelTypeId] [INT] NULL,
    CONSTRAINT [LevelTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [LevelTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the level (e.g., 1, 2, 3, etc.) of the rubric at which the data is captured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelTypeDescriptor', @level2type=N'COLUMN', @level2name=N'LevelTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelTypeDescriptor', @level2type=N'COLUMN', @level2name=N'LevelTypeId'
GO


/****** Table: [extension].[ObservationType] ******/

CREATE TABLE [extension].[ObservationType](
    [ObservationTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ObservationType_PK] PRIMARY KEY CLUSTERED (
        [ObservationTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ObservationType] ADD CONSTRAINT [ObservationType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ObservationType] ADD CONSTRAINT [ObservationType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ObservationType] ADD CONSTRAINT [ObservationType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the observation types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ObservationType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Observation', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ObservationType', @level2type=N'COLUMN', @level2name=N'ObservationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ObservationType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Observation type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ObservationType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Observation type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ObservationType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[ObservationTypeDescriptor] ******/

CREATE TABLE [extension].[ObservationTypeDescriptor](
    [ObservationTypeDescriptorId] [INT] NOT NULL,
    [ObservationTypeId] [INT] NULL,
    CONSTRAINT [ObservationTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ObservationTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type (e.g., walkthrough, summative) of observation conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ObservationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ObservationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ObservationTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ObservationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ObservationTypeId'
GO


/****** Table: [extension].[PreviousCareerDescriptor] ******/

CREATE TABLE [extension].[PreviousCareerDescriptor](
    [PreviousCareerDescriptorId] [INT] NOT NULL,
    [PreviousCareerTypeId] [INT] NULL,
    CONSTRAINT [PreviousCareerDescriptor_PK] PRIMARY KEY CLUSTERED (
        [PreviousCareerDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the previous career of an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PreviousCareerDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PreviousCareerDescriptor', @level2type=N'COLUMN', @level2name=N'PreviousCareerDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PreviousCareerDescriptor', @level2type=N'COLUMN', @level2name=N'PreviousCareerTypeId'
GO


/****** Table: [extension].[PreviousCareerType] ******/

CREATE TABLE [extension].[PreviousCareerType](
    [PreviousCareerTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [PreviousCareerType_PK] PRIMARY KEY CLUSTERED (
        [PreviousCareerTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[PreviousCareerType] ADD CONSTRAINT [PreviousCareerType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[PreviousCareerType] ADD CONSTRAINT [PreviousCareerType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[PreviousCareerType] ADD CONSTRAINT [PreviousCareerType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of previous careers.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PreviousCareerType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for PreviousCareer', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PreviousCareerType', @level2type=N'COLUMN', @level2name=N'PreviousCareerTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PreviousCareerType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the PreviousCareer type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PreviousCareerType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the PreviousCareer type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PreviousCareerType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[ProfessionalDevelopmentOfferedByDescriptor] ******/

CREATE TABLE [extension].[ProfessionalDevelopmentOfferedByDescriptor](
    [ProfessionalDevelopmentOfferedByDescriptorId] [INT] NOT NULL,
    [ProfessionalDevelopmentOfferedByTypeId] [INT] NULL,
    CONSTRAINT [ProfessionalDevelopmentOfferedByDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProfessionalDevelopmentOfferedByDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the organization that a professional development is offered by.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProfessionalDevelopmentOfferedByDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentOfferedByDescriptor', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentOfferedByDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentOfferedByDescriptor', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentOfferedByTypeId'
GO


/****** Table: [extension].[ProfessionalDevelopmentOfferedByType] ******/

CREATE TABLE [extension].[ProfessionalDevelopmentOfferedByType](
    [ProfessionalDevelopmentOfferedByTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ProfessionalDevelopmentOfferedByType_PK] PRIMARY KEY CLUSTERED (
        [ProfessionalDevelopmentOfferedByTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProfessionalDevelopmentOfferedByType] ADD CONSTRAINT [ProfessionalDevelopmentOfferedByType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ProfessionalDevelopmentOfferedByType] ADD CONSTRAINT [ProfessionalDevelopmentOfferedByType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ProfessionalDevelopmentOfferedByType] ADD CONSTRAINT [ProfessionalDevelopmentOfferedByType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of organizations that the professional development is offered by.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProfessionalDevelopmentOfferedByType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for ProfessionalDevelopmentOfferedBy', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentOfferedByType', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentOfferedByTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentOfferedByType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the ProfessionalDevelopmentOfferedBy type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentOfferedByType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the ProfessionalDevelopmentOfferedBy type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentOfferedByType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[ProgramGatewayDescriptor] ******/

CREATE TABLE [extension].[ProgramGatewayDescriptor](
    [ProgramGatewayDescriptorId] [INT] NOT NULL,
    [ProgramGatewayTypeId] [INT] NULL,
    CONSTRAINT [ProgramGatewayDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ProgramGatewayDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the program gateway that is associated with continuation in a program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProgramGatewayDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProgramGatewayDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProgramGatewayDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramGatewayTypeId'
GO


/****** Table: [extension].[ProgramGatewayType] ******/

CREATE TABLE [extension].[ProgramGatewayType](
    [ProgramGatewayTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ProgramGatewayType_PK] PRIMARY KEY CLUSTERED (
        [ProgramGatewayTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ProgramGatewayType] ADD CONSTRAINT [ProgramGatewayType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ProgramGatewayType] ADD CONSTRAINT [ProgramGatewayType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ProgramGatewayType] ADD CONSTRAINT [ProgramGatewayType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of program gateway.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProgramGatewayType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for ProgramGateway', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProgramGatewayType', @level2type=N'COLUMN', @level2name=N'ProgramGatewayTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProgramGatewayType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the ProgramGateway type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProgramGatewayType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the ProgramGateway type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProgramGatewayType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[RubricType] ******/

CREATE TABLE [extension].[RubricType](
    [RubricTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [RubricType_PK] PRIMARY KEY CLUSTERED (
        [RubricTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[RubricType] ADD CONSTRAINT [RubricType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[RubricType] ADD CONSTRAINT [RubricType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[RubricType] ADD CONSTRAINT [RubricType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the rubric types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Rubric', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricType', @level2type=N'COLUMN', @level2name=N'RubricTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Rubric type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Rubric type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[RubricTypeDescriptor] ******/

CREATE TABLE [extension].[RubricTypeDescriptor](
    [RubricTypeDescriptorId] [INT] NOT NULL,
    [RubricTypeId] [INT] NULL,
    CONSTRAINT [RubricTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [RubricTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the rubric types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricTypeDescriptor', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricTypeDescriptor', @level2type=N'COLUMN', @level2name=N'RubricTypeId'
GO


/****** Table: [extension].[SalaryType] ******/

CREATE TABLE [extension].[SalaryType](
    [SalaryTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SalaryType_PK] PRIMARY KEY CLUSTERED (
        [SalaryTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SalaryType] ADD CONSTRAINT [SalaryType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SalaryType] ADD CONSTRAINT [SalaryType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SalaryType] ADD CONSTRAINT [SalaryType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the salary types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SalaryType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Salary', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SalaryType', @level2type=N'COLUMN', @level2name=N'SalaryTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SalaryType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Salary type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SalaryType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Salary type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SalaryType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[SalaryTypeDescriptor] ******/

CREATE TABLE [extension].[SalaryTypeDescriptor](
    [SalaryTypeDescriptorId] [INT] NOT NULL,
    [SalaryTypeId] [INT] NULL,
    CONSTRAINT [SalaryTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SalaryTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of salary that a staff member is receiving.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SalaryTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SalaryTypeDescriptor', @level2type=N'COLUMN', @level2name=N'SalaryTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SalaryTypeDescriptor', @level2type=N'COLUMN', @level2name=N'SalaryTypeId'
GO


/****** Table: [extension].[SchoolStatusDescriptor] ******/

CREATE TABLE [extension].[SchoolStatusDescriptor](
    [SchoolStatusDescriptorId] [INT] NOT NULL,
    [SchoolStatusTypeId] [INT] NULL,
    CONSTRAINT [SchoolStatusDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SchoolStatusDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the status of a school e.g. priority or focus.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SchoolStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SchoolStatusDescriptor', @level2type=N'COLUMN', @level2name=N'SchoolStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SchoolStatusDescriptor', @level2type=N'COLUMN', @level2name=N'SchoolStatusTypeId'
GO


/****** Table: [extension].[SchoolStatusType] ******/

CREATE TABLE [extension].[SchoolStatusType](
    [SchoolStatusTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SchoolStatusType_PK] PRIMARY KEY CLUSTERED (
        [SchoolStatusTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SchoolStatusType] ADD CONSTRAINT [SchoolStatusType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SchoolStatusType] ADD CONSTRAINT [SchoolStatusType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SchoolStatusType] ADD CONSTRAINT [SchoolStatusType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of the school status.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SchoolStatusType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for SchoolStatus', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SchoolStatusType', @level2type=N'COLUMN', @level2name=N'SchoolStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SchoolStatusType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the SchoolStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SchoolStatusType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the SchoolStatus type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SchoolStatusType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[StaffClassificationExtensionDescriptor] ******/

CREATE TABLE [extension].[StaffClassificationExtensionDescriptor](
    [StaffClassificationExtensionDescriptorId] [INT] NOT NULL,
    [StaffClassificationExtensionTypeId] [INT] NULL,
    CONSTRAINT [StaffClassificationExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [StaffClassificationExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines an individual''s title of employment, official status or rank.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffClassificationExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffClassificationExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'StaffClassificationExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffClassificationExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'StaffClassificationExtensionTypeId'
GO


/****** Table: [extension].[StaffClassificationExtensionType] ******/

CREATE TABLE [extension].[StaffClassificationExtensionType](
    [StaffClassificationExtensionTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [StaffClassificationExtensionType_PK] PRIMARY KEY CLUSTERED (
        [StaffClassificationExtensionTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[StaffClassificationExtensionType] ADD CONSTRAINT [StaffClassificationExtensionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[StaffClassificationExtensionType] ADD CONSTRAINT [StaffClassificationExtensionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[StaffClassificationExtensionType] ADD CONSTRAINT [StaffClassificationExtensionType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An individual''s title of employment, official status or rank.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffClassificationExtensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for StaffClassificationExtension', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffClassificationExtensionType', @level2type=N'COLUMN', @level2name=N'StaffClassificationExtensionTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffClassificationExtensionType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the StaffClassificationExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffClassificationExtensionType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the StaffClassificationExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffClassificationExtensionType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[SurveyCategoryExtensionDescriptor] ******/

CREATE TABLE [extension].[SurveyCategoryExtensionDescriptor](
    [SurveyCategoryExtensionDescriptorId] [INT] NOT NULL,
    [SurveyCategoryExtensionTypeId] [INT] NULL,
    CONSTRAINT [SurveyCategoryExtensionDescriptor_PK] PRIMARY KEY CLUSTERED (
        [SurveyCategoryExtensionDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the category or type of survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyCategoryExtensionDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'SurveyCategoryExtensionDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryExtensionDescriptor', @level2type=N'COLUMN', @level2name=N'SurveyCategoryExtensionTypeId'
GO


/****** Table: [extension].[SurveyCategoryExtensionType] ******/

CREATE TABLE [extension].[SurveyCategoryExtensionType](
    [SurveyCategoryExtensionTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [SurveyCategoryExtensionType_PK] PRIMARY KEY CLUSTERED (
        [SurveyCategoryExtensionTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[SurveyCategoryExtensionType] ADD CONSTRAINT [SurveyCategoryExtensionType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[SurveyCategoryExtensionType] ADD CONSTRAINT [SurveyCategoryExtensionType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[SurveyCategoryExtensionType] ADD CONSTRAINT [SurveyCategoryExtensionType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the category or type of survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyCategoryExtensionType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for SurveyCategoryExtension', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryExtensionType', @level2type=N'COLUMN', @level2name=N'SurveyCategoryExtensionTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryExtensionType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the SurveyCategoryExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryExtensionType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the SurveyCategoryExtension type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryExtensionType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[TeacherCandidate] ******/

CREATE TABLE [extension].[TeacherCandidate](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [MaidenName] [NVARCHAR](75) NULL,
    [SexTypeId] [INT] NOT NULL,
    [GenderTypeId] [INT] NULL,
    [BirthDate] [DATE] NOT NULL,
    [BirthCity] [NVARCHAR](30) NULL,
    [BirthStateAbbreviationTypeId] [INT] NULL,
    [BirthInternationalProvince] [NVARCHAR](150) NULL,
    [BirthCountryDescriptorId] [INT] NULL,
    [DateEnteredUS] [DATE] NULL,
    [MultipleBirthStatus] [BIT] NULL,
    [ProfileThumbnail] [NVARCHAR](59) NULL,
    [HispanicLatinoEthnicity] [BIT] NOT NULL,
    [OldEthnicityTypeId] [INT] NULL,
    [CitizenshipStatusTypeId] [INT] NULL,
    [EconomicDisadvantaged] [BIT] NULL,
    [LimitedEnglishProficiencyDescriptorId] [INT] NULL,
    [DisplacementStatus] [NVARCHAR](30) NULL,
    [LoginId] [NVARCHAR](60) NULL,
    [TuitionCost] [MONEY] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TeacherCandidate_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidate] ADD CONSTRAINT [TeacherCandidate_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidate] ADD CONSTRAINT [TeacherCandidate_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidate] ADD CONSTRAINT [TeacherCandidate_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'SexTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'GenderTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city the student was born in.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthStateAbbreviationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthInternationalProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The country in which an individual is born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the date the student entered the U.S.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'DateEnteredUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'MultipleBirthStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locator for the TeacherCandidate photo.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'ProfileThumbnail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race.  The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Previous definition of Ethnicity combining Hispanic/Latino race: 1 - American Indian or Alaskan Native 2 - Asian or Pacific Islander 3 - Black, not of Hispanic origin 4 - Hispanic 5 - White, not of Hispanic origin.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'OldEthnicityTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the person is a U.S. citizen.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'CitizenshipStatusTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of inadequate financial condition of an individual''s family, as determined by family income, number or family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'EconomicDisadvantaged'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the TeacherCandidate has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'LimitedEnglishProficiencyDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates a state health or weather related event that displaces a group of TeacherCandidates, and may require additional funding, educational, or social services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'DisplacementStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The login ID for the user; used for security access control interface.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The tuition for a person''s participation in a program, service. or course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'TuitionCost'
GO


/****** Table: [extension].[TeacherCandidateAddress] ******/

CREATE TABLE [extension].[TeacherCandidateAddress](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [StreetNumberName] [NVARCHAR](150) NOT NULL,
    [ApartmentRoomSuiteNumber] [NVARCHAR](50) NULL,
    [BuildingSiteNumber] [NVARCHAR](20) NULL,
    [City] [NVARCHAR](30) NOT NULL,
    [StateAbbreviationTypeId] [INT] NOT NULL,
    [PostalCode] [NVARCHAR](17) NOT NULL,
    [NameOfCounty] [NVARCHAR](30) NULL,
    [CountyFIPSCode] [NVARCHAR](5) NULL,
    [Latitude] [NVARCHAR](20) NULL,
    [Longitude] [NVARCHAR](20) NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [AddressTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateAddress_PK] PRIMARY KEY CLUSTERED (
        [AddressTypeId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAddress] ADD CONSTRAINT [TeacherCandidateAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeId'
GO


/****** Table: [extension].[TeacherCandidateAid] ******/

CREATE TABLE [extension].[TeacherCandidateAid](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [AidTypeDescriptorId] [INT] NOT NULL,
    [AidAmount] [MONEY] NULL,
    [PellGrantRecipient] [BIT] NULL,
    [EnglishLanguageExamDescriptorId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateAid_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAid] ADD CONSTRAINT [TeacherCandidateAid_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the financial aid a person is awarded.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the award was designated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the award was removed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of financial aid awarded to a person for the academic term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'AidTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of financial aid awarded to a person for the term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'AidAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates a person who receives Pell Grant aid.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'PellGrantRecipient'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'EnglishLanguageExamDescriptorId'
GO


/****** Table: [extension].[TeacherCandidateAidConditionDescription] ******/

CREATE TABLE [extension].[TeacherCandidateAidConditionDescription](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateAidConditionDescription_PK] PRIMARY KEY CLUSTERED (
        [Description] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateAidConditionDescription] ADD CONSTRAINT [TeacherCandidateAidConditionDescription_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the condition (e.g., placement in a high need school) under which the aid was given.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAidConditionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAidConditionDescription', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the condition (e.g., placement in a high need school) under which the aid was given.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAidConditionDescription', @level2type=N'COLUMN', @level2name=N'Description'
GO


/****** Table: [extension].[TeacherCandidateCharacteristic] ******/

CREATE TABLE [extension].[TeacherCandidateCharacteristic](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [TeacherCandidateCharacteristicDescriptorId] [INT] NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [DesignatedBy] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateCharacteristic_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateCharacteristicDescriptorId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCharacteristic] ADD CONSTRAINT [TeacherCandidateCharacteristic_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the TeacherCandidate''s home situation:  Displaced Homemaker, Immigrant, Migrantory, Military Parent, Pregnant Teen, Single Parent, and Unaccompanied Youth.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The characteristic designated for the TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'TeacherCandidateCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the characteristic was designated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the characteristic was removed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the characteristic.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO


/****** Table: [extension].[TeacherCandidateCharacteristicDescriptor] ******/

CREATE TABLE [extension].[TeacherCandidateCharacteristicDescriptor](
    [TeacherCandidateCharacteristicDescriptorId] [INT] NOT NULL,
    [TeacherCandidateCharacteristicTypeId] [INT] NOT NULL,
    CONSTRAINT [TeacherCandidateCharacteristicDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateCharacteristicDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The characteristic designated for the TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherCandidateCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherCandidateCharacteristicTypeId'
GO


/****** Table: [extension].[TeacherCandidateCharacteristicType] ******/

CREATE TABLE [extension].[TeacherCandidateCharacteristicType](
    [TeacherCandidateCharacteristicTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TeacherCandidateCharacteristicType_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateCharacteristicTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCharacteristicType] ADD CONSTRAINT [TeacherCandidateCharacteristicType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateCharacteristicType] ADD CONSTRAINT [TeacherCandidateCharacteristicType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateCharacteristicType] ADD CONSTRAINT [TeacherCandidateCharacteristicType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The characteristic designated for the TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCharacteristicType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for TeacherCandidateCharacteristic', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristicType', @level2type=N'COLUMN', @level2name=N'TeacherCandidateCharacteristicTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristicType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the TeacherCandidateCharacteristic type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristicType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the TeacherCandidateCharacteristic type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristicType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[TeacherCandidateCohortYear] ******/

CREATE TABLE [extension].[TeacherCandidateCohortYear](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [SchoolYear] [SMALLINT] NOT NULL,
    [CohortYearTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateCohortYear_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateCohortYear] ADD CONSTRAINT [TeacherCandidateCohortYear_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type and year of a cohort (e.g. 9th grade) the TeacherCandidate belongs to as determined by the year that TeacherCandidate entered a specific grade.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCohortYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCohortYear', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the  school year for the Cohort.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCohortYear', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of cohort year (9th grade, graduation).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCohortYear', @level2type=N'COLUMN', @level2name=N'CohortYearTypeId'
GO


/****** Table: [extension].[TeacherCandidateDisability] ******/

CREATE TABLE [extension].[TeacherCandidateDisability](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [DisabilityDescriptorId] [INT] NOT NULL,
    [DisabilityDiagnosis] [NVARCHAR](80) NULL,
    [OrderOfDisability] [INT] NULL,
    [DisabilityDeterminationSourceTypeId] [INT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateDisability_PK] PRIMARY KEY CLUSTERED (
        [DisabilityDescriptorId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateDisability] ADD CONSTRAINT [TeacherCandidateDisability_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disability condition(s) that best describes an individual''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeId'
GO


/****** Table: [extension].[TeacherCandidateElectronicMail] ******/

CREATE TABLE [extension].[TeacherCandidateElectronicMail](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [ElectronicMailAddress] [NVARCHAR](128) NOT NULL,
    [ElectronicMailTypeId] [INT] NOT NULL,
    [PrimaryEmailAddressIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateElectronicMail_PK] PRIMARY KEY CLUSTERED (
        [ElectronicMailTypeId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateElectronicMail] ADD CONSTRAINT [TeacherCandidateElectronicMail_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateElectronicMail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The electronic mail (e-mail) address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'PrimaryEmailAddressIndicator'
GO


/****** Table: [extension].[TeacherCandidateIdentificationCode] ******/

CREATE TABLE [extension].[TeacherCandidateIdentificationCode](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [IdentificationCode] [NVARCHAR](60) NOT NULL,
    [TeacherCandidateIdentificationSystemDescriptorId] [INT] NOT NULL,
    [AssigningOrganizationIdentificationCode] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateIdentificationCode_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateIdentificationSystemDescriptorId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateIdentificationCode] ADD CONSTRAINT [TeacherCandidateIdentificationCode_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a staff member by schools, social services, or other agencies to refer to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the TeacherCandidateIdentificationCode.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO


/****** Table: [extension].[TeacherCandidateIdentificationDocument] ******/

CREATE TABLE [extension].[TeacherCandidateIdentificationDocument](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [DocumentTitle] [NVARCHAR](60) NULL,
    [PersonalInformationVerificationTypeId] [INT] NOT NULL,
    [DocumentExpirationDate] [DATE] NULL,
    [IssuerDocumentIdentificationCode] [NVARCHAR](60) NULL,
    [IssuerName] [NVARCHAR](150) NULL,
    [IssuerCountryDescriptorId] [INT] NULL,
    [IdentificationDocumentUseTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateIdentificationDocument_PK] PRIMARY KEY CLUSTERED (
        [IdentificationDocumentUseTypeId] ASC,
        [PersonalInformationVerificationTypeId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] ADD CONSTRAINT [TeacherCandidateIdentificationDocument_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseTypeId'
GO


/****** Table: [extension].[TeacherCandidateIdentificationSystemDescriptor] ******/

CREATE TABLE [extension].[TeacherCandidateIdentificationSystemDescriptor](
    [TeacherCandidateIdentificationSystemDescriptorId] [INT] NOT NULL,
    [TeacherCandidateIdentificationSystemTypeId] [INT] NOT NULL,
    CONSTRAINT [TeacherCandidateIdentificationSystemDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateIdentificationSystemDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIdentificationSystemDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationSystemDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationSystemDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentificationSystemTypeId'
GO


/****** Table: [extension].[TeacherCandidateIdentificationSystemType] ******/

CREATE TABLE [extension].[TeacherCandidateIdentificationSystemType](
    [TeacherCandidateIdentificationSystemTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TeacherCandidateIdentificationSystemType_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateIdentificationSystemTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateIdentificationSystemType] ADD CONSTRAINT [TeacherCandidateIdentificationSystemType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherCandidateIdentificationSystemType] ADD CONSTRAINT [TeacherCandidateIdentificationSystemType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherCandidateIdentificationSystemType] ADD CONSTRAINT [TeacherCandidateIdentificationSystemType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIdentificationSystemType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for TeacherCandidateIdentificationSystem', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationSystemType', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentificationSystemTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationSystemType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the TeacherCandidateIdentificationSystem type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationSystemType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the TeacherCandidateIdentificationSystem type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationSystemType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[TeacherCandidateIndicator] ******/

CREATE TABLE [extension].[TeacherCandidateIndicator](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [IndicatorGroup] [NVARCHAR](60) NULL,
    [IndicatorName] [NVARCHAR](60) NOT NULL,
    [Indicator] [NVARCHAR](35) NOT NULL,
    [BeginDate] [DATE] NULL,
    [EndDate] [DATE] NULL,
    [DesignatedBy] [NVARCHAR](60) NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateIndicator_PK] PRIMARY KEY CLUSTERED (
        [IndicatorName] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateIndicator] ADD CONSTRAINT [TeacherCandidateIndicator_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator(s) or metric(s) computed for the TeacherCandidate (e.g., at risk) to influence more effective education or direct specific interventions.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name for a group of indicators.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the indicator or metric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the indicator or metric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'Indicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when the indicator was assigned or computed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the indicator or metric was sunset or removed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the program association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO


/****** Table: [extension].[TeacherCandidateInternationalAddress] ******/

CREATE TABLE [extension].[TeacherCandidateInternationalAddress](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [AddressTypeId] [INT] NOT NULL,
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
        [AddressTypeId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateInternationalAddress] ADD CONSTRAINT [TeacherCandidateInternationalAddress_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an international address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO


/****** Table: [extension].[TeacherCandidateLanguage] ******/

CREATE TABLE [extension].[TeacherCandidateLanguage](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [LanguageDescriptorId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateLanguage_PK] PRIMARY KEY CLUSTERED (
        [LanguageDescriptorId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateLanguage] ADD CONSTRAINT [TeacherCandidateLanguage_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguage', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO


/****** Table: [extension].[TeacherCandidateLanguageUse] ******/

CREATE TABLE [extension].[TeacherCandidateLanguageUse](
    [LanguageDescriptorId] [INT] NOT NULL,
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [LanguageUseTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateLanguageUse_PK] PRIMARY KEY CLUSTERED (
        [LanguageDescriptorId] ASC,
        [LanguageUseTypeId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateLanguageUse] ADD CONSTRAINT [TeacherCandidateLanguageUse_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguageUse', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseTypeId'
GO


/****** Table: [extension].[TeacherCandidateLearningStyle] ******/

CREATE TABLE [extension].[TeacherCandidateLearningStyle](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [VisualLearning] [DECIMAL](5, 4) NOT NULL,
    [AuditoryLearning] [DECIMAL](5, 4) NOT NULL,
    [TactileLearning] [DECIMAL](5, 4) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateLearningStyle_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateLearningStyle] ADD CONSTRAINT [TeacherCandidateLearningStyle_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The TeacherCandidate''s relative preference to visual, auditory, and tactile learning expressed as percentages.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateLearningStyle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLearningStyle', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The student''s relative preference expressed as a percent to visual learning.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLearningStyle', @level2type=N'COLUMN', @level2name=N'VisualLearning'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The student''s relative preference expressed as a percent to auditory learning.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLearningStyle', @level2type=N'COLUMN', @level2name=N'AuditoryLearning'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The student''s relative preference expressed as a percent to kinesthetic or tactile learning.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLearningStyle', @level2type=N'COLUMN', @level2name=N'TactileLearning'
GO


/****** Table: [extension].[TeacherCandidateOtherName] ******/

CREATE TABLE [extension].[TeacherCandidateOtherName](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [PersonalTitlePrefix] [NVARCHAR](30) NULL,
    [FirstName] [NVARCHAR](75) NOT NULL,
    [MiddleName] [NVARCHAR](75) NULL,
    [LastSurname] [NVARCHAR](75) NOT NULL,
    [GenerationCodeSuffix] [NVARCHAR](10) NULL,
    [OtherNameTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateOtherName_PK] PRIMARY KEY CLUSTERED (
        [OtherNameTypeId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateOtherName] ADD CONSTRAINT [TeacherCandidateOtherName_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateOtherName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of alternate names for a person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'OtherNameTypeId'
GO


/****** Table: [extension].[TeacherCandidateRace] ******/

CREATE TABLE [extension].[TeacherCandidateRace](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [RaceTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateRace_PK] PRIMARY KEY CLUSTERED (
        [RaceTypeId] ASC,
        [TeacherCandidateUniqueId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateRace] ADD CONSTRAINT [TeacherCandidateRace_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies.  T?he data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateRace', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies.  T?he data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateRace', @level2type=N'COLUMN', @level2name=N'RaceTypeId'
GO


/****** Table: [extension].[TeacherCandidateTelephone] ******/

CREATE TABLE [extension].[TeacherCandidateTelephone](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [TelephoneNumber] [NVARCHAR](24) NOT NULL,
    [TelephoneNumberTypeId] [INT] NOT NULL,
    [OrderOfPriority] [INT] NULL,
    [TextMessageCapabilityIndicator] [BIT] NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateTelephone_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateUniqueId] ASC,
        [TelephoneNumberTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateTelephone] ADD CONSTRAINT [TeacherCandidateTelephone_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO


/****** Table: [extension].[TeacherCandidateVisa] ******/

CREATE TABLE [extension].[TeacherCandidateVisa](
    [TeacherCandidateUniqueId] [NVARCHAR](32) NOT NULL,
    [VisaTypeId] [INT] NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    CONSTRAINT [TeacherCandidateVisa_PK] PRIMARY KEY CLUSTERED (
        [TeacherCandidateUniqueId] ASC,
        [VisaTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherCandidateVisa] ADD CONSTRAINT [TeacherCandidateVisa_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateVisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateVisa', @level2type=N'COLUMN', @level2name=N'TeacherCandidateUniqueId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateVisa', @level2type=N'COLUMN', @level2name=N'VisaTypeId'
GO


/****** Table: [extension].[TeacherPreparationProgramType] ******/

CREATE TABLE [extension].[TeacherPreparationProgramType](
    [TeacherPreparationProgramTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TeacherPreparationProgramType_PK] PRIMARY KEY CLUSTERED (
        [TeacherPreparationProgramTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TeacherPreparationProgramType] ADD CONSTRAINT [TeacherPreparationProgramType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TeacherPreparationProgramType] ADD CONSTRAINT [TeacherPreparationProgramType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TeacherPreparationProgramType] ADD CONSTRAINT [TeacherPreparationProgramType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProgramType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for TeacherPreparationProgram', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the TeacherPreparationProgram type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the TeacherPreparationProgram type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[TeacherPreparationProgramTypeDescriptor] ******/

CREATE TABLE [extension].[TeacherPreparationProgramTypeDescriptor](
    [TeacherPreparationProgramTypeDescriptorId] [INT] NOT NULL,
    [TeacherPreparationProgramTypeId] [INT] NULL,
    CONSTRAINT [TeacherPreparationProgramTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TeacherPreparationProgramTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeId'
GO


/****** Table: [extension].[ThemeType] ******/

CREATE TABLE [extension].[ThemeType](
    [ThemeTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [ThemeType_PK] PRIMARY KEY CLUSTERED (
        [ThemeTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[ThemeType] ADD CONSTRAINT [ThemeType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[ThemeType] ADD CONSTRAINT [ThemeType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[ThemeType] ADD CONSTRAINT [ThemeType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the theme types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ThemeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for Theme', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ThemeType', @level2type=N'COLUMN', @level2name=N'ThemeTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ThemeType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the Theme type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ThemeType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the Theme type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ThemeType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[ThemeTypeDescriptor] ******/

CREATE TABLE [extension].[ThemeTypeDescriptor](
    [ThemeTypeDescriptorId] [INT] NOT NULL,
    [ThemeTypeId] [INT] NULL,
    CONSTRAINT [ThemeTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [ThemeTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the theme of the specified level of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ThemeTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ThemeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ThemeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ThemeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ThemeTypeId'
GO


/****** Table: [extension].[TPPDegreeType] ******/

CREATE TABLE [extension].[TPPDegreeType](
    [TPPDegreeTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TPPDegreeType_PK] PRIMARY KEY CLUSTERED (
        [TPPDegreeTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TPPDegreeType] ADD CONSTRAINT [TPPDegreeType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TPPDegreeType] ADD CONSTRAINT [TPPDegreeType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TPPDegreeType] ADD CONSTRAINT [TPPDegreeType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the type of degree awarded.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TPPDegreeType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for TPPDegree', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPDegreeType', @level2type=N'COLUMN', @level2name=N'TPPDegreeTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPDegreeType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the TPPDegree type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPDegreeType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the TPPDegree type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPDegreeType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO


/****** Table: [extension].[TPPDegreeTypeDescriptor] ******/

CREATE TABLE [extension].[TPPDegreeTypeDescriptor](
    [TPPDegreeTypeDescriptorId] [INT] NOT NULL,
    [TPPDegreeTypeId] [INT] NULL,
    CONSTRAINT [TPPDegreeTypeDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TPPDegreeTypeDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the degree that a teacher candidate accomplishes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TPPDegreeTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPDegreeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TPPDegreeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPDegreeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TPPDegreeTypeId'
GO


/****** Table: [extension].[TPPProgramPathwayDescriptor] ******/

CREATE TABLE [extension].[TPPProgramPathwayDescriptor](
    [TPPProgramPathwayDescriptorId] [INT] NOT NULL,
    [TPPProgramPathwayTypeId] [INT] NULL,
    CONSTRAINT [TPPProgramPathwayDescriptor_PK] PRIMARY KEY CLUSTERED (
        [TPPProgramPathwayDescriptorId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO


EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the program pathways available at TPP''s.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TPPProgramPathwayDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPProgramPathwayDescriptor', @level2type=N'COLUMN', @level2name=N'TPPProgramPathwayDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPProgramPathwayDescriptor', @level2type=N'COLUMN', @level2name=N'TPPProgramPathwayTypeId'
GO


/****** Table: [extension].[TPPProgramPathwayType] ******/

CREATE TABLE [extension].[TPPProgramPathwayType](
    [TPPProgramPathwayTypeId] [INT] IDENTITY(1,1) NOT NULL,
    [CodeValue] [NVARCHAR](50) NOT NULL,
    [Description] [NVARCHAR](1024) NOT NULL,
    [ShortDescription] [NVARCHAR](450) NOT NULL,
    [CreateDate] [DATETIME] NOT NULL, 
    [LastModifiedDate] [DATETIME] NOT NULL,
    [Id] [UNIQUEIDENTIFIER] NOT NULL, 
    CONSTRAINT [TPPProgramPathwayType_PK] PRIMARY KEY CLUSTERED (
        [TPPProgramPathwayTypeId] ASC
    ) WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [extension].[TPPProgramPathwayType] ADD CONSTRAINT [TPPProgramPathwayType_DF_CreateDate] DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [extension].[TPPProgramPathwayType] ADD CONSTRAINT [TPPProgramPathwayType_DF_Id] DEFAULT (newid()) FOR [Id]
GO
ALTER TABLE [extension].[TPPProgramPathwayType] ADD CONSTRAINT [TPPProgramPathwayType_DF_LastModifiedDate]  DEFAULT (getdate()) FOR [LastModifiedDate]
GO

EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Map for the program pathways.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TPPProgramPathwayType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key for TPPProgramPathway', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPProgramPathwayType', @level2type=N'COLUMN', @level2name=N'TPPProgramPathwayTypeId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This column is deprecated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPProgramPathwayType', @level2type=N'COLUMN', @level2name=N'CodeValue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description for the TPPProgramPathway type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPProgramPathwayType', @level2type=N'COLUMN', @level2name=N'Description'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value for the TPPProgramPathway type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPProgramPathwayType', @level2type=N'COLUMN', @level2name=N'ShortDescription'
GO



ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_AbsenceEventCategoryDescriptor_AbsenceEventCategoryType] FOREIGN KEY ([AbsenceEventCategoryTypeId])
REFERENCES [extension].[AbsenceEventCategoryType] ([AbsenceEventCategoryTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_AbsenceEventCategoryDescriptor_AbsenceEventCategoryType]
ON [extension].[AbsenceEventCategoryDescriptor]([AbsenceEventCategoryTypeId] ASC)
GO

ALTER TABLE [extension].[AbsenceEventCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_AbsenceEventCategoryDescriptor_Descriptor] FOREIGN KEY ([AbsenceEventCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_AbsenceEventCategoryDescriptor_Descriptor]
ON [extension].[AbsenceEventCategoryDescriptor]([AbsenceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[AcademicSubjectExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_AcademicSubjectExtensionDescriptor_AcademicSubjectExtensionType] FOREIGN KEY ([AcademicSubjectExtensionTypeId])
REFERENCES [extension].[AcademicSubjectExtensionType] ([AcademicSubjectExtensionTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_AcademicSubjectExtensionDescriptor_AcademicSubjectExtensionType]
ON [extension].[AcademicSubjectExtensionDescriptor]([AcademicSubjectExtensionTypeId] ASC)
GO

ALTER TABLE [extension].[AcademicSubjectExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_AcademicSubjectExtensionDescriptor_Descriptor] FOREIGN KEY ([AcademicSubjectExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_AcademicSubjectExtensionDescriptor_Descriptor]
ON [extension].[AcademicSubjectExtensionDescriptor]([AcademicSubjectExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[AidTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_AidTypeDescriptor_AidType] FOREIGN KEY ([AidTypeId])
REFERENCES [extension].[AidType] ([AidTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_AidTypeDescriptor_AidType]
ON [extension].[AidTypeDescriptor]([AidTypeId] ASC)
GO

ALTER TABLE [extension].[AidTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_AidTypeDescriptor_Descriptor] FOREIGN KEY ([AidTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_AidTypeDescriptor_Descriptor]
ON [extension].[AidTypeDescriptor]([AidTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckStatusDescriptor_BackgroundCheckStatusType] FOREIGN KEY ([BackgroundCheckStatusTypeId])
REFERENCES [extension].[BackgroundCheckStatusType] ([BackgroundCheckStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_BackgroundCheckStatusDescriptor_BackgroundCheckStatusType]
ON [extension].[BackgroundCheckStatusDescriptor]([BackgroundCheckStatusTypeId] ASC)
GO

ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckStatusDescriptor_Descriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_BackgroundCheckStatusDescriptor_Descriptor]
ON [extension].[BackgroundCheckStatusDescriptor]([BackgroundCheckStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[BoardCertificationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_BoardCertificationTypeDescriptor_BoardCertificationType] FOREIGN KEY ([BoardCertificationTypeId])
REFERENCES [extension].[BoardCertificationType] ([BoardCertificationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_BoardCertificationTypeDescriptor_BoardCertificationType]
ON [extension].[BoardCertificationTypeDescriptor]([BoardCertificationTypeId] ASC)
GO

ALTER TABLE [extension].[BoardCertificationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_BoardCertificationTypeDescriptor_Descriptor] FOREIGN KEY ([BoardCertificationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_BoardCertificationTypeDescriptor_Descriptor]
ON [extension].[BoardCertificationTypeDescriptor]([BoardCertificationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CertificationExamTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CertificationExamTypeDescriptor_CertificationExamType] FOREIGN KEY ([CertificationExamTypeId])
REFERENCES [extension].[CertificationExamType] ([CertificationExamTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_CertificationExamTypeDescriptor_CertificationExamType]
ON [extension].[CertificationExamTypeDescriptor]([CertificationExamTypeId] ASC)
GO

ALTER TABLE [extension].[CertificationExamTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CertificationExamTypeDescriptor_Descriptor] FOREIGN KEY ([CertificationExamTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_CertificationExamTypeDescriptor_Descriptor]
ON [extension].[CertificationExamTypeDescriptor]([CertificationExamTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ClassroomPositionExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_ClassroomPositionExtensionDescriptor_ClassroomPositionExtensionType] FOREIGN KEY ([ClassroomPositionExtensionTypeId])
REFERENCES [extension].[ClassroomPositionExtensionType] ([ClassroomPositionExtensionTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ClassroomPositionExtensionDescriptor_ClassroomPositionExtensionType]
ON [extension].[ClassroomPositionExtensionDescriptor]([ClassroomPositionExtensionTypeId] ASC)
GO

ALTER TABLE [extension].[ClassroomPositionExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_ClassroomPositionExtensionDescriptor_Descriptor] FOREIGN KEY ([ClassroomPositionExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ClassroomPositionExtensionDescriptor_Descriptor]
ON [extension].[ClassroomPositionExtensionDescriptor]([ClassroomPositionExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialFieldExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_CredentialFieldExtensionDescriptor_AcademicSubjectExtensionDescriptor] FOREIGN KEY ([AcademicSubjectExtensionDescriptorId])
REFERENCES [extension].[AcademicSubjectExtensionDescriptor] ([AcademicSubjectExtensionDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_CredentialFieldExtensionDescriptor_AcademicSubjectExtensionDescriptor]
ON [extension].[CredentialFieldExtensionDescriptor]([AcademicSubjectExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialFieldExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_CredentialFieldExtensionDescriptor_Descriptor] FOREIGN KEY ([CredentialFieldExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_CredentialFieldExtensionDescriptor_Descriptor]
ON [extension].[CredentialFieldExtensionDescriptor]([CredentialFieldExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[DiagnosisExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_DiagnosisExtensionDescriptor_Descriptor] FOREIGN KEY ([DiagnosisExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_DiagnosisExtensionDescriptor_Descriptor]
ON [extension].[DiagnosisExtensionDescriptor]([DiagnosisExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[DiagnosisExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_DiagnosisExtensionDescriptor_DiagnosisExtensionType] FOREIGN KEY ([DiagnosisExtensionTypeId])
REFERENCES [extension].[DiagnosisExtensionType] ([DiagnosisExtensionTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_DiagnosisExtensionDescriptor_DiagnosisExtensionType]
ON [extension].[DiagnosisExtensionDescriptor]([DiagnosisExtensionTypeId] ASC)
GO

ALTER TABLE [extension].[EnglishLanguageExamDescriptor] WITH CHECK ADD CONSTRAINT [FK_EnglishLanguageExamDescriptor_Descriptor] FOREIGN KEY ([EnglishLanguageExamDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_EnglishLanguageExamDescriptor_Descriptor]
ON [extension].[EnglishLanguageExamDescriptor]([EnglishLanguageExamDescriptorId] ASC)
GO

ALTER TABLE [extension].[EnglishLanguageExamDescriptor] WITH CHECK ADD CONSTRAINT [FK_EnglishLanguageExamDescriptor_EnglishLanguageExamType] FOREIGN KEY ([EnglishLanguageExamTypeId])
REFERENCES [extension].[EnglishLanguageExamType] ([EnglishLanguageExamTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_EnglishLanguageExamDescriptor_EnglishLanguageExamType]
ON [extension].[EnglishLanguageExamDescriptor]([EnglishLanguageExamTypeId] ASC)
GO

ALTER TABLE [extension].[FederalLocaleCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_FederalLocaleCodeDescriptor_Descriptor] FOREIGN KEY ([FederalLocaleCodeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_FederalLocaleCodeDescriptor_Descriptor]
ON [extension].[FederalLocaleCodeDescriptor]([FederalLocaleCodeDescriptorId] ASC)
GO

ALTER TABLE [extension].[FederalLocaleCodeDescriptor] WITH CHECK ADD CONSTRAINT [FK_FederalLocaleCodeDescriptor_FederalLocaleCodeType] FOREIGN KEY ([FederalLocaleCodeTypeId])
REFERENCES [extension].[FederalLocaleCodeType] ([FederalLocaleCodeTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_FederalLocaleCodeDescriptor_FederalLocaleCodeType]
ON [extension].[FederalLocaleCodeDescriptor]([FederalLocaleCodeTypeId] ASC)
GO

ALTER TABLE [extension].[FieldworkTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_FieldworkTypeDescriptor_Descriptor] FOREIGN KEY ([FieldworkTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_FieldworkTypeDescriptor_Descriptor]
ON [extension].[FieldworkTypeDescriptor]([FieldworkTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[FieldworkTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_FieldworkTypeDescriptor_FieldworkType] FOREIGN KEY ([FieldworkTypeId])
REFERENCES [extension].[FieldworkType] ([FieldworkTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_FieldworkTypeDescriptor_FieldworkType]
ON [extension].[FieldworkTypeDescriptor]([FieldworkTypeId] ASC)
GO

ALTER TABLE [extension].[GradeLevelExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_GradeLevelExtensionDescriptor_Descriptor] FOREIGN KEY ([GradeLevelExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_GradeLevelExtensionDescriptor_Descriptor]
ON [extension].[GradeLevelExtensionDescriptor]([GradeLevelExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[GradeLevelExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_GradeLevelExtensionDescriptor_GradeLevelExtensionType] FOREIGN KEY ([GradeLevelExtensionTypeId])
REFERENCES [extension].[GradeLevelExtensionType] ([GradeLevelExtensionTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_GradeLevelExtensionDescriptor_GradeLevelExtensionType]
ON [extension].[GradeLevelExtensionDescriptor]([GradeLevelExtensionTypeId] ASC)
GO

ALTER TABLE [extension].[LevelExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelExtensionDescriptor_Descriptor] FOREIGN KEY ([LevelExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_LevelExtensionDescriptor_Descriptor]
ON [extension].[LevelExtensionDescriptor]([LevelExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[LevelExtensionDescriptorGradeLevelExtension] WITH CHECK ADD CONSTRAINT [FK_LevelExtensionDescriptorGradeLevelExtension_GradeLevelExtensionDescriptor] FOREIGN KEY ([GradeLevelExtensionDescriptorId])
REFERENCES [extension].[GradeLevelExtensionDescriptor] ([GradeLevelExtensionDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_LevelExtensionDescriptorGradeLevelExtension_GradeLevelExtensionDescriptor]
ON [extension].[LevelExtensionDescriptorGradeLevelExtension]([GradeLevelExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[LevelExtensionDescriptorGradeLevelExtension] WITH CHECK ADD CONSTRAINT [FK_LevelExtensionDescriptorGradeLevelExtension_LevelExtensionDescriptor] FOREIGN KEY ([LevelExtensionDescriptorId])
REFERENCES [extension].[LevelExtensionDescriptor] ([LevelExtensionDescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_LevelExtensionDescriptorGradeLevelExtension_LevelExtensionDescriptor]
ON [extension].[LevelExtensionDescriptorGradeLevelExtension]([LevelExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[LevelTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelTypeDescriptor_Descriptor] FOREIGN KEY ([LevelTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_LevelTypeDescriptor_Descriptor]
ON [extension].[LevelTypeDescriptor]([LevelTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[LevelTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelTypeDescriptor_LevelType] FOREIGN KEY ([LevelTypeId])
REFERENCES [extension].[LevelType] ([LevelTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_LevelTypeDescriptor_LevelType]
ON [extension].[LevelTypeDescriptor]([LevelTypeId] ASC)
GO

ALTER TABLE [extension].[ObservationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ObservationTypeDescriptor_Descriptor] FOREIGN KEY ([ObservationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ObservationTypeDescriptor_Descriptor]
ON [extension].[ObservationTypeDescriptor]([ObservationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ObservationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ObservationTypeDescriptor_ObservationType] FOREIGN KEY ([ObservationTypeId])
REFERENCES [extension].[ObservationType] ([ObservationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ObservationTypeDescriptor_ObservationType]
ON [extension].[ObservationTypeDescriptor]([ObservationTypeId] ASC)
GO

ALTER TABLE [extension].[PreviousCareerDescriptor] WITH CHECK ADD CONSTRAINT [FK_PreviousCareerDescriptor_Descriptor] FOREIGN KEY ([PreviousCareerDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_PreviousCareerDescriptor_Descriptor]
ON [extension].[PreviousCareerDescriptor]([PreviousCareerDescriptorId] ASC)
GO

ALTER TABLE [extension].[PreviousCareerDescriptor] WITH CHECK ADD CONSTRAINT [FK_PreviousCareerDescriptor_PreviousCareerType] FOREIGN KEY ([PreviousCareerTypeId])
REFERENCES [extension].[PreviousCareerType] ([PreviousCareerTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_PreviousCareerDescriptor_PreviousCareerType]
ON [extension].[PreviousCareerDescriptor]([PreviousCareerTypeId] ASC)
GO

ALTER TABLE [extension].[ProfessionalDevelopmentOfferedByDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProfessionalDevelopmentOfferedByDescriptor_Descriptor] FOREIGN KEY ([ProfessionalDevelopmentOfferedByDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProfessionalDevelopmentOfferedByDescriptor_Descriptor]
ON [extension].[ProfessionalDevelopmentOfferedByDescriptor]([ProfessionalDevelopmentOfferedByDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProfessionalDevelopmentOfferedByDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProfessionalDevelopmentOfferedByDescriptor_ProfessionalDevelopmentOfferedByType] FOREIGN KEY ([ProfessionalDevelopmentOfferedByTypeId])
REFERENCES [extension].[ProfessionalDevelopmentOfferedByType] ([ProfessionalDevelopmentOfferedByTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ProfessionalDevelopmentOfferedByDescriptor_ProfessionalDevelopmentOfferedByType]
ON [extension].[ProfessionalDevelopmentOfferedByDescriptor]([ProfessionalDevelopmentOfferedByTypeId] ASC)
GO

ALTER TABLE [extension].[ProgramGatewayDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramGatewayDescriptor_Descriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ProgramGatewayDescriptor_Descriptor]
ON [extension].[ProgramGatewayDescriptor]([ProgramGatewayDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProgramGatewayDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramGatewayDescriptor_ProgramGatewayType] FOREIGN KEY ([ProgramGatewayTypeId])
REFERENCES [extension].[ProgramGatewayType] ([ProgramGatewayTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ProgramGatewayDescriptor_ProgramGatewayType]
ON [extension].[ProgramGatewayDescriptor]([ProgramGatewayTypeId] ASC)
GO

ALTER TABLE [extension].[RubricTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_RubricTypeDescriptor_Descriptor] FOREIGN KEY ([RubricTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_RubricTypeDescriptor_Descriptor]
ON [extension].[RubricTypeDescriptor]([RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_RubricTypeDescriptor_RubricType] FOREIGN KEY ([RubricTypeId])
REFERENCES [extension].[RubricType] ([RubricTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_RubricTypeDescriptor_RubricType]
ON [extension].[RubricTypeDescriptor]([RubricTypeId] ASC)
GO

ALTER TABLE [extension].[SalaryTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SalaryTypeDescriptor_Descriptor] FOREIGN KEY ([SalaryTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SalaryTypeDescriptor_Descriptor]
ON [extension].[SalaryTypeDescriptor]([SalaryTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SalaryTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SalaryTypeDescriptor_SalaryType] FOREIGN KEY ([SalaryTypeId])
REFERENCES [extension].[SalaryType] ([SalaryTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_SalaryTypeDescriptor_SalaryType]
ON [extension].[SalaryTypeDescriptor]([SalaryTypeId] ASC)
GO

ALTER TABLE [extension].[SchoolStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_SchoolStatusDescriptor_Descriptor] FOREIGN KEY ([SchoolStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatusDescriptor_Descriptor]
ON [extension].[SchoolStatusDescriptor]([SchoolStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[SchoolStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_SchoolStatusDescriptor_SchoolStatusType] FOREIGN KEY ([SchoolStatusTypeId])
REFERENCES [extension].[SchoolStatusType] ([SchoolStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_SchoolStatusDescriptor_SchoolStatusType]
ON [extension].[SchoolStatusDescriptor]([SchoolStatusTypeId] ASC)
GO

ALTER TABLE [extension].[StaffClassificationExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffClassificationExtensionDescriptor_Descriptor] FOREIGN KEY ([StaffClassificationExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_StaffClassificationExtensionDescriptor_Descriptor]
ON [extension].[StaffClassificationExtensionDescriptor]([StaffClassificationExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffClassificationExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_StaffClassificationExtensionDescriptor_StaffClassificationExtensionType] FOREIGN KEY ([StaffClassificationExtensionTypeId])
REFERENCES [extension].[StaffClassificationExtensionType] ([StaffClassificationExtensionTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_StaffClassificationExtensionDescriptor_StaffClassificationExtensionType]
ON [extension].[StaffClassificationExtensionDescriptor]([StaffClassificationExtensionTypeId] ASC)
GO

ALTER TABLE [extension].[SurveyCategoryExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_SurveyCategoryExtensionDescriptor_Descriptor] FOREIGN KEY ([SurveyCategoryExtensionDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_SurveyCategoryExtensionDescriptor_Descriptor]
ON [extension].[SurveyCategoryExtensionDescriptor]([SurveyCategoryExtensionDescriptorId] ASC)
GO

ALTER TABLE [extension].[SurveyCategoryExtensionDescriptor] WITH CHECK ADD CONSTRAINT [FK_SurveyCategoryExtensionDescriptor_SurveyCategoryExtensionType] FOREIGN KEY ([SurveyCategoryExtensionTypeId])
REFERENCES [extension].[SurveyCategoryExtensionType] ([SurveyCategoryExtensionTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_SurveyCategoryExtensionDescriptor_SurveyCategoryExtensionType]
ON [extension].[SurveyCategoryExtensionDescriptor]([SurveyCategoryExtensionTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_CitizenshipStatusType] FOREIGN KEY ([CitizenshipStatusTypeId])
REFERENCES [edfi].[CitizenshipStatusType] ([CitizenshipStatusTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_CitizenshipStatusType]
ON [extension].[TeacherCandidate]([CitizenshipStatusTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_CountryDescriptor] FOREIGN KEY ([BirthCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_CountryDescriptor]
ON [extension].[TeacherCandidate]([BirthCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_GenderType] FOREIGN KEY ([GenderTypeId])
REFERENCES [extension].[GenderType] ([GenderTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_GenderType]
ON [extension].[TeacherCandidate]([GenderTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_LimitedEnglishProficiencyDescriptor] FOREIGN KEY ([LimitedEnglishProficiencyDescriptorId])
REFERENCES [edfi].[LimitedEnglishProficiencyDescriptor] ([LimitedEnglishProficiencyDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_LimitedEnglishProficiencyDescriptor]
ON [extension].[TeacherCandidate]([LimitedEnglishProficiencyDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_OldEthnicityType] FOREIGN KEY ([OldEthnicityTypeId])
REFERENCES [edfi].[OldEthnicityType] ([OldEthnicityTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_OldEthnicityType]
ON [extension].[TeacherCandidate]([OldEthnicityTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_SexType] FOREIGN KEY ([SexTypeId])
REFERENCES [edfi].[SexType] ([SexTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_SexType]
ON [extension].[TeacherCandidate]([SexTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_StateAbbreviationType] FOREIGN KEY ([BirthStateAbbreviationTypeId])
REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_StateAbbreviationType]
ON [extension].[TeacherCandidate]([BirthStateAbbreviationTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAddress_AddressType] FOREIGN KEY ([AddressTypeId])
REFERENCES [edfi].[AddressType] ([AddressTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAddress_AddressType]
ON [extension].[TeacherCandidateAddress]([AddressTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAddress_StateAbbreviationType] FOREIGN KEY ([StateAbbreviationTypeId])
REFERENCES [edfi].[StateAbbreviationType] ([StateAbbreviationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAddress_StateAbbreviationType]
ON [extension].[TeacherCandidateAddress]([StateAbbreviationTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAddress_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAddress_TeacherCandidate]
ON [extension].[TeacherCandidateAddress]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAid] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAid_AidTypeDescriptor] FOREIGN KEY ([AidTypeDescriptorId])
REFERENCES [extension].[AidTypeDescriptor] ([AidTypeDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAid_AidTypeDescriptor]
ON [extension].[TeacherCandidateAid]([AidTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAid] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAid_EnglishLanguageExamDescriptor] FOREIGN KEY ([EnglishLanguageExamDescriptorId])
REFERENCES [extension].[EnglishLanguageExamDescriptor] ([EnglishLanguageExamDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAid_EnglishLanguageExamDescriptor]
ON [extension].[TeacherCandidateAid]([EnglishLanguageExamDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAid] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAid_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAid_TeacherCandidate]
ON [extension].[TeacherCandidateAid]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAidConditionDescription] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAidConditionDescription_TeacherCandidateAid] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidateAid] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAidConditionDescription_TeacherCandidateAid]
ON [extension].[TeacherCandidateAidConditionDescription]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCharacteristic] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCharacteristic_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCharacteristic_TeacherCandidate]
ON [extension].[TeacherCandidateCharacteristic]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCharacteristic] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCharacteristic_TeacherCandidateCharacteristicDescriptor] FOREIGN KEY ([TeacherCandidateCharacteristicDescriptorId])
REFERENCES [extension].[TeacherCandidateCharacteristicDescriptor] ([TeacherCandidateCharacteristicDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCharacteristic_TeacherCandidateCharacteristicDescriptor]
ON [extension].[TeacherCandidateCharacteristic]([TeacherCandidateCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCharacteristicDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCharacteristicDescriptor_Descriptor] FOREIGN KEY ([TeacherCandidateCharacteristicDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCharacteristicDescriptor_Descriptor]
ON [extension].[TeacherCandidateCharacteristicDescriptor]([TeacherCandidateCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCharacteristicDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCharacteristicDescriptor_TeacherCandidateCharacteristicType] FOREIGN KEY ([TeacherCandidateCharacteristicTypeId])
REFERENCES [extension].[TeacherCandidateCharacteristicType] ([TeacherCandidateCharacteristicTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCharacteristicDescriptor_TeacherCandidateCharacteristicType]
ON [extension].[TeacherCandidateCharacteristicDescriptor]([TeacherCandidateCharacteristicTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCohortYear] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCohortYear_CohortYearType] FOREIGN KEY ([CohortYearTypeId])
REFERENCES [edfi].[CohortYearType] ([CohortYearTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCohortYear_CohortYearType]
ON [extension].[TeacherCandidateCohortYear]([CohortYearTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCohortYear] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCohortYear_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCohortYear_SchoolYearType]
ON [extension].[TeacherCandidateCohortYear]([SchoolYear] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCohortYear] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCohortYear_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCohortYear_TeacherCandidate]
ON [extension].[TeacherCandidateCohortYear]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisability] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisability_DisabilityDescriptor]
ON [extension].[TeacherCandidateDisability]([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisability] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisability_DisabilityDeterminationSourceType] FOREIGN KEY ([DisabilityDeterminationSourceTypeId])
REFERENCES [edfi].[DisabilityDeterminationSourceType] ([DisabilityDeterminationSourceTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisability_DisabilityDeterminationSourceType]
ON [extension].[TeacherCandidateDisability]([DisabilityDeterminationSourceTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisability] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisability_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisability_TeacherCandidate]
ON [extension].[TeacherCandidateDisability]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateElectronicMail] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateElectronicMail_ElectronicMailType] FOREIGN KEY ([ElectronicMailTypeId])
REFERENCES [edfi].[ElectronicMailType] ([ElectronicMailTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateElectronicMail_ElectronicMailType]
ON [extension].[TeacherCandidateElectronicMail]([ElectronicMailTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateElectronicMail] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateElectronicMail_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateElectronicMail_TeacherCandidate]
ON [extension].[TeacherCandidateElectronicMail]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationCode_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationCode_TeacherCandidate]
ON [extension].[TeacherCandidateIdentificationCode]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationCode_TeacherCandidateIdentificationSystemDescriptor] FOREIGN KEY ([TeacherCandidateIdentificationSystemDescriptorId])
REFERENCES [extension].[TeacherCandidateIdentificationSystemDescriptor] ([TeacherCandidateIdentificationSystemDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationCode_TeacherCandidateIdentificationSystemDescriptor]
ON [extension].[TeacherCandidateIdentificationCode]([TeacherCandidateIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_CountryDescriptor]
ON [extension].[TeacherCandidateIdentificationDocument]([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_IdentificationDocumentUseType] FOREIGN KEY ([IdentificationDocumentUseTypeId])
REFERENCES [edfi].[IdentificationDocumentUseType] ([IdentificationDocumentUseTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_IdentificationDocumentUseType]
ON [extension].[TeacherCandidateIdentificationDocument]([IdentificationDocumentUseTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_PersonalInformationVerificationType] FOREIGN KEY ([PersonalInformationVerificationTypeId])
REFERENCES [edfi].[PersonalInformationVerificationType] ([PersonalInformationVerificationTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_PersonalInformationVerificationType]
ON [extension].[TeacherCandidateIdentificationDocument]([PersonalInformationVerificationTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_TeacherCandidate]
ON [extension].[TeacherCandidateIdentificationDocument]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationSystemDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationSystemDescriptor_Descriptor] FOREIGN KEY ([TeacherCandidateIdentificationSystemDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationSystemDescriptor_Descriptor]
ON [extension].[TeacherCandidateIdentificationSystemDescriptor]([TeacherCandidateIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationSystemDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationSystemDescriptor_TeacherCandidateIdentificationSystemType] FOREIGN KEY ([TeacherCandidateIdentificationSystemTypeId])
REFERENCES [extension].[TeacherCandidateIdentificationSystemType] ([TeacherCandidateIdentificationSystemTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationSystemDescriptor_TeacherCandidateIdentificationSystemType]
ON [extension].[TeacherCandidateIdentificationSystemDescriptor]([TeacherCandidateIdentificationSystemTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIndicator] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIndicator_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIndicator_TeacherCandidate]
ON [extension].[TeacherCandidateIndicator]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateInternationalAddress_AddressType] FOREIGN KEY ([AddressTypeId])
REFERENCES [edfi].[AddressType] ([AddressTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateInternationalAddress_AddressType]
ON [extension].[TeacherCandidateInternationalAddress]([AddressTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateInternationalAddress_CountryDescriptor]
ON [extension].[TeacherCandidateInternationalAddress]([CountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateInternationalAddress_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateInternationalAddress_TeacherCandidate]
ON [extension].[TeacherCandidateInternationalAddress]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguage] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguage_LanguageDescriptor]
ON [extension].[TeacherCandidateLanguage]([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguage] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguage_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguage_TeacherCandidate]
ON [extension].[TeacherCandidateLanguage]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguageUse] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguageUse_LanguageUseType] FOREIGN KEY ([LanguageUseTypeId])
REFERENCES [edfi].[LanguageUseType] ([LanguageUseTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguageUse_LanguageUseType]
ON [extension].[TeacherCandidateLanguageUse]([LanguageUseTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguageUse] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguageUse_TeacherCandidateLanguage] FOREIGN KEY ([LanguageDescriptorId], [TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidateLanguage] ([LanguageDescriptorId], [TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguageUse_TeacherCandidateLanguage]
ON [extension].[TeacherCandidateLanguageUse]([LanguageDescriptorId] ASC, [TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLearningStyle] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLearningStyle_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLearningStyle_TeacherCandidate]
ON [extension].[TeacherCandidateLearningStyle]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateOtherName] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateOtherName_OtherNameType] FOREIGN KEY ([OtherNameTypeId])
REFERENCES [edfi].[OtherNameType] ([OtherNameTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateOtherName_OtherNameType]
ON [extension].[TeacherCandidateOtherName]([OtherNameTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateOtherName] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateOtherName_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateOtherName_TeacherCandidate]
ON [extension].[TeacherCandidateOtherName]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateRace] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateRace_RaceType] FOREIGN KEY ([RaceTypeId])
REFERENCES [edfi].[RaceType] ([RaceTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateRace_RaceType]
ON [extension].[TeacherCandidateRace]([RaceTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateRace] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateRace_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateRace_TeacherCandidate]
ON [extension].[TeacherCandidateRace]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTelephone] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTelephone_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTelephone_TeacherCandidate]
ON [extension].[TeacherCandidateTelephone]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTelephone] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTelephone_TelephoneNumberType] FOREIGN KEY ([TelephoneNumberTypeId])
REFERENCES [edfi].[TelephoneNumberType] ([TelephoneNumberTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTelephone_TelephoneNumberType]
ON [extension].[TeacherCandidateTelephone]([TelephoneNumberTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateVisa] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateVisa_TeacherCandidate] FOREIGN KEY ([TeacherCandidateUniqueId])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateUniqueId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateVisa_TeacherCandidate]
ON [extension].[TeacherCandidateVisa]([TeacherCandidateUniqueId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateVisa] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateVisa_VisaType] FOREIGN KEY ([VisaTypeId])
REFERENCES [edfi].[VisaType] ([VisaTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateVisa_VisaType]
ON [extension].[TeacherCandidateVisa]([VisaTypeId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_Descriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProgramTypeDescriptor_Descriptor]
ON [extension].[TeacherPreparationProgramTypeDescriptor]([TeacherPreparationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramType] FOREIGN KEY ([TeacherPreparationProgramTypeId])
REFERENCES [extension].[TeacherPreparationProgramType] ([TeacherPreparationProgramTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProgramTypeDescriptor_TeacherPreparationProgramType]
ON [extension].[TeacherPreparationProgramTypeDescriptor]([TeacherPreparationProgramTypeId] ASC)
GO

ALTER TABLE [extension].[ThemeTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ThemeTypeDescriptor_Descriptor] FOREIGN KEY ([ThemeTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_ThemeTypeDescriptor_Descriptor]
ON [extension].[ThemeTypeDescriptor]([ThemeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ThemeTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ThemeTypeDescriptor_ThemeType] FOREIGN KEY ([ThemeTypeId])
REFERENCES [extension].[ThemeType] ([ThemeTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_ThemeTypeDescriptor_ThemeType]
ON [extension].[ThemeTypeDescriptor]([ThemeTypeId] ASC)
GO

ALTER TABLE [extension].[TPPDegreeTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TPPDegreeTypeDescriptor_Descriptor] FOREIGN KEY ([TPPDegreeTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TPPDegreeTypeDescriptor_Descriptor]
ON [extension].[TPPDegreeTypeDescriptor]([TPPDegreeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TPPDegreeTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TPPDegreeTypeDescriptor_TPPDegreeType] FOREIGN KEY ([TPPDegreeTypeId])
REFERENCES [extension].[TPPDegreeType] ([TPPDegreeTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TPPDegreeTypeDescriptor_TPPDegreeType]
ON [extension].[TPPDegreeTypeDescriptor]([TPPDegreeTypeId] ASC)
GO

ALTER TABLE [extension].[TPPProgramPathwayDescriptor] WITH CHECK ADD CONSTRAINT [FK_TPPProgramPathwayDescriptor_Descriptor] FOREIGN KEY ([TPPProgramPathwayDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE

GO

CREATE NONCLUSTERED INDEX [FK_TPPProgramPathwayDescriptor_Descriptor]
ON [extension].[TPPProgramPathwayDescriptor]([TPPProgramPathwayDescriptorId] ASC)
GO

ALTER TABLE [extension].[TPPProgramPathwayDescriptor] WITH CHECK ADD CONSTRAINT [FK_TPPProgramPathwayDescriptor_TPPProgramPathwayType] FOREIGN KEY ([TPPProgramPathwayTypeId])
REFERENCES [extension].[TPPProgramPathwayType] ([TPPProgramPathwayTypeId])


GO

CREATE NONCLUSTERED INDEX [FK_TPPProgramPathwayDescriptor_TPPProgramPathwayType]
ON [extension].[TPPProgramPathwayDescriptor]([TPPProgramPathwayTypeId] ASC)
GO



/****** Trigger:  [extension].[TeacherCandidate_TR_DeleteEvent] ******/

CREATE TRIGGER [extension].[TeacherCandidate_TR_DeleteEvent]
    ON [extension].[TeacherCandidate]
    AFTER DELETE 
AS
BEGIN
    SET NOCOUNT ON;
    
INSERT INTO dbo.DeleteEvent (Id, DeletionDate, TableName, SchemaName)
SELECT Id, GETUTCDATE(), 'TeacherCandidate', 'extension'
FROM deleted;
END
GO



INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Doctor','Doctor')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Family','Family')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Injured','Injured')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Personal','Personal')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Sick','Sick')

INSERT INTO [extension].[AbsenceEventCategoryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Vacation','Vacation')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Bilingual','Bilingual')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Career and Technical Education','Career and Technical Education')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Composite','Composite')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Critical Reading','Critical Reading')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','ELL','ELL')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','English','English')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','English Language Arts','English Language Arts')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Fine and Performing Arts','Fine and Performing Arts')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Foreign Language and Literature','Foreign Language and Literature')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Life and Physical Sciences','Life and Physical Sciences')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Mathematics','Mathematics')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Military Science','Military Science')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Multiple Subjects','Multiple Subjects')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Physical, Health, and Safety Education','Physical, Health, and Safety Education')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Reading','Reading')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Religious Education and Theology','Religious Education and Theology')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Science','Science')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Social Sciences and History','Social Sciences and History')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Social Studies','Social Studies')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Special Education','Special Education')

INSERT INTO [extension].[AcademicSubjectExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Writing','Writing')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Assistantships','Assistantships')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Federal Scholarships','Federal Scholarships')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Federal Subsidized Loans','Federal Subsidized Loans')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Federal Unsubsidized Loans','Federal Unsubsidized Loans')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Federal Work Study','Federal Work Study')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Institutional Grants','Institutional Grants')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Institutional Loans','Institutional Loans')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Institutional Scholarships','Institutional Scholarships')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Loan Forgiveness','Loan Forgiveness')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other Federal Grants','Other Federal Grants')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other Grants','Other Grants')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other On-Campus Work','Other On-Campus Work')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other Scholarships','Other Scholarships')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Parent PLUS Loans','Parent PLUS Loans')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Pell Grants','Pell Grants')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Private Grants','Private Grants')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Private Loans','Private Loans')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Private Scholarships','Private Scholarships')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State and Local Grants','State and Local Grants')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State and Local Scholarships','State and Local Scholarships')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State Loans','State Loans')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State Work','State Work')

INSERT INTO [extension].[AidType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Tuition Reimbursements','Tuition Reimbursements')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Eligible','Eligible')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Employer Review','Employer Review')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Not Eligible','Not Eligible')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Started','Started')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Submitted','Submitted')

INSERT INTO [extension].[BackgroundCheckStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Waiting','Waiting')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Art/Early Adolescence through Young Adulthood','Art/Early Adolescence through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Art/Early and Middle Childhood','Art/Early and Middle Childhood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Career and Technical Education/Early Adolescence through Young Adulthood','Career and Technical Education/Early Adolescence through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','English as  New Language/Early and Middle Childhood','English as  New Language/Early and Middle Childhood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','English as a New Language/Early Adolescence through Young Adulthood','English as a New Language/Early Adolescence through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','English Language Arts/Adolescence and Young Adulthood','English Language Arts/Adolescence and Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','English Language Arts/Early Adolescence','English Language Arts/Early Adolescence')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Exceptional Needs Specialist/Early Childhood through Young Adulthood','Exceptional Needs Specialist/Early Childhood through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Generalist/Early Adolescence','Generalist/Early Adolescence')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Generalist/Early Childhood','Generalist/Early Childhood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Generalist/Middle Childhood','Generalist/Middle Childhood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Health Education/Early Adolescence through Young Adulthood','Health Education/Early Adolescence through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Library Media/Early Childhood through Young Adulthood','Library Media/Early Childhood through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Literacy: Reading - Language Arts/Early and Middle Childhood','Literacy: Reading - Language Arts/Early and Middle Childhood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Mathematics/Adolescence and Young Adulthood','Mathematics/Adolescence and Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Mathematics/Early Adolescence','Mathematics/Early Adolescence')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Music/Early Adolescence through Young Adulthood','Music/Early Adolescence through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Music/Early and Middle Childhood','Music/Early and Middle Childhood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','None','None')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Physical Education/Early Adolescence through Young Adulthood','Physical Education/Early Adolescence through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Physical Education/Early and Middle Childhood','Physical Education/Early and Middle Childhood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Counseling/Early Childhood through Young Adulthood','School Counseling/Early Childhood through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Science/Adolescence and Young Adulthood','Science/Adolescence and Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Science/Early Adolescence','Science/Early Adolescence')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Social Studies - History/Adolescence and Young Adulthood','Social Studies - History/Adolescence and Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Social Studies - History/Early Adolescence','Social Studies - History/Early Adolescence')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','World Languages Other Than English/Early Adolescence through Young Adulthood','World Languages Other Than English/Early Adolescence through Young Adulthood')

INSERT INTO [extension].[BoardCertificationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','World Languages Other Than English/Early and Middle Childhood','World Languages Other Than English/Early and Middle Childhood')

INSERT INTO [extension].[CertificationExamType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','National','National')

INSERT INTO [extension].[CertificationExamType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[CertificationExamType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State','State')

INSERT INTO [extension].[ClassroomPositionExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Assistant Teacher','Assistant Teacher')

INSERT INTO [extension].[ClassroomPositionExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[ClassroomPositionExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Substitute Teacher','Substitute Teacher')

INSERT INTO [extension].[ClassroomPositionExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Support Teacher','Support Teacher')

INSERT INTO [extension].[ClassroomPositionExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Teacher of Record','Teacher of Record')

INSERT INTO [extension].[DiagnosisExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Course Repeat','Course Repeat')

INSERT INTO [extension].[DiagnosisExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Dropout Risk','Dropout Risk')

INSERT INTO [extension].[DiagnosisExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Low Assessment Performance','Low Assessment Performance')

INSERT INTO [extension].[DiagnosisExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Low Attendance','Low Attendance')

INSERT INTO [extension].[DiagnosisExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Low GPA','Low GPA')

INSERT INTO [extension].[DiagnosisExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Low Observation Performance','Low Observation Performance')

INSERT INTO [extension].[DiagnosisExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[EnglishLanguageExamType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Fail','Fail')

INSERT INTO [extension].[EnglishLanguageExamType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','N/A','N/A')

INSERT INTO [extension].[EnglishLanguageExamType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[EnglishLanguageExamType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Pass','Pass')

INSERT INTO [extension].[FederalLocaleCodeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','City','City')

INSERT INTO [extension].[FederalLocaleCodeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[FederalLocaleCodeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Rural','Rural')

INSERT INTO [extension].[FederalLocaleCodeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Suburb','Suburb')

INSERT INTO [extension].[FederalLocaleCodeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Town','Town')

INSERT INTO [extension].[FieldworkType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Clinical Experience','Clinical Experience')

INSERT INTO [extension].[FieldworkType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Field Placement','Field Placement')

INSERT INTO [extension].[FieldworkType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[FieldworkType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Residential Program','Residential Program')

INSERT INTO [extension].[GenderType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Female','Female')

INSERT INTO [extension].[GenderType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Male','Male')

INSERT INTO [extension].[GenderType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Not Selected','Not Selected')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Adult Education','Adult Education')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Early Education','Early Education')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Eighth grade','Eighth grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Eleventh grade','Eleventh grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Fifth grade','Fifth grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','First grade','First grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Fourth grade','Fourth grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Grade 13','Grade 13')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Infant/toddler','Infant/toddler')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Kindergarten','Kindergarten')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Master''s','Master''s')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Ninth grade','Ninth grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Postsecondary','Postsecondary')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Preschool/Prekindergarten','Preschool/Prekindergarten')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Professional Certification','Professional Certification')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Second grade','Second grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Seventh grade','Seventh grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Sixth grade','Sixth grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Tenth grade','Tenth grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Third grade','Third grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Twelfth grade','Twelfth grade')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Undergraduate','Undergraduate')

INSERT INTO [extension].[GradeLevelExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Ungraded','Ungraded')

INSERT INTO [extension].[LevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','1','1')

INSERT INTO [extension].[LevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','2','2')

INSERT INTO [extension].[LevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','3','3')

INSERT INTO [extension].[LevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','4','4')

INSERT INTO [extension].[LevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','5','5')

INSERT INTO [extension].[LevelType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[ObservationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Formal','Formal')

INSERT INTO [extension].[ObservationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Informal','Informal')

INSERT INTO [extension].[ObservationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[ObservationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Self Reflection','Self Reflection')

INSERT INTO [extension].[ObservationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Summative','Summative')

INSERT INTO [extension].[ObservationType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Walkthrough','Walkthrough')

INSERT INTO [extension].[PreviousCareerType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Accounting','Accounting')

INSERT INTO [extension].[PreviousCareerType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Consulting','Consulting')

INSERT INTO [extension].[PreviousCareerType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Education','Education')

INSERT INTO [extension].[PreviousCareerType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Maintenance','Maintenance')

INSERT INTO [extension].[PreviousCareerType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Medical','Medical')

INSERT INTO [extension].[PreviousCareerType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[PreviousCareerType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Science and Technology','Science and Technology')

INSERT INTO [extension].[ProfessionalDevelopmentOfferedByType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','District','District')

INSERT INTO [extension].[ProfessionalDevelopmentOfferedByType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School','School')

INSERT INTO [extension].[ProfessionalDevelopmentOfferedByType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State','State')

INSERT INTO [extension].[ProfessionalDevelopmentOfferedByType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Teacher Preparation Provider','Teacher Preparation Provider')

INSERT INTO [extension].[ProgramGatewayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Gateway 1','Gateway 1')

INSERT INTO [extension].[ProgramGatewayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Gateway 2','Gateway 2')

INSERT INTO [extension].[ProgramGatewayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Gateway 3','Gateway 3')

INSERT INTO [extension].[ProgramGatewayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Gateway 4','Gateway 4')

INSERT INTO [extension].[ProgramGatewayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Gateway 5','Gateway 5')

INSERT INTO [extension].[RubricType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','District','District')

INSERT INTO [extension].[RubricType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[RubricType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State','State')

INSERT INTO [extension].[RubricType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Teacher Preparation Provider','Teacher Preparation Provider')

INSERT INTO [extension].[SalaryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Contract','Contract')

INSERT INTO [extension].[SalaryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Full Time','Full Time')

INSERT INTO [extension].[SalaryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Hourly','Hourly')

INSERT INTO [extension].[SalaryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[SalaryType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Part Time','Part Time')

INSERT INTO [extension].[SchoolStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Focus','Focus')

INSERT INTO [extension].[SchoolStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[SchoolStatusType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Priority','Priority')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Adjunct Professor','Adjunct Professor')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Assistant Principal','Assistant Principal')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Assistant Professor','Assistant Professor')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Assistant Superintendent','Assistant Superintendent')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Associate Professor','Associate Professor')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Audiologist','Audiologist')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Clinical Professor','Clinical Professor')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Counselor','Counselor')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Full Professor','Full Professor')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Instructional Aide','Instructional Aide')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Instructional Coordinator','Instructional Coordinator')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','LEA Administrator','LEA Administrator')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','LEA Specialist','LEA Specialist')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Librarians/Media Specialists','Librarians/Media Specialists')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Operational Support','Operational Support')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Principal','Principal')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Psychologist','Psychologist')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Administrator','School Administrator')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Counselor','School Counselor')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Leader','School Leader')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Nurse','School Nurse')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Social Worker','School Social Worker')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School Specialist','School Specialist')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Speech Language Pathologist','Speech Language Pathologist')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State Administrator','State Administrator')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Substitute Teacher','Substitute Teacher')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Superintendent','Superintendent')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Support Services Staff','Support Services Staff')

INSERT INTO [extension].[StaffClassificationExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Teacher','Teacher')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Administrator','Administrator')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Alumni','Alumni')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Applicant','Applicant')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Community','Community')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Course Evaluation','Course Evaluation')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Disposition','Disposition')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','District','District')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Exit','Exit')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Faculty','Faculty')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Mentor/Cooperating Teacher','Mentor/Cooperating Teacher')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Parent','Parent')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Principal','Principal')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School/District Leader','School/District Leader')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Student','Student')

INSERT INTO [extension].[SurveyCategoryExtensionType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Teacher','Teacher')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Asylee','Asylee')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Displaced Homemaker','Displaced Homemaker')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','First Generation College Student','First Generation College Student')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Foster Care','Foster Care')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Homeless','Homeless')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Immigrant','Immigrant')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Migrant','Migrant')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Neglected or Delinquent','Neglected or Delinquent')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Parent in Military','Parent in Military')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Pregnant','Pregnant')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Refugee','Refugee')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Runaway','Runaway')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Section 504 Handicapped','Section 504 Handicapped')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Single Parent','Single Parent')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Unaccompanied Youth','Unaccompanied Youth')

INSERT INTO [extension].[TeacherCandidateCharacteristicType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Veteran','Veteran')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Canadian SIN','Canadian SIN')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','District','District')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Drivers License','Drivers License')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Federal','Federal')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Health Record','Health Record')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Medicaid','Medicaid')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other Federal','Other Federal')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','PIN','PIN')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Professional Certificate','Professional Certificate')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','School','School')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Selective Service','Selective Service')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','SSN','SSN')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','State','State')

INSERT INTO [extension].[TeacherCandidateIdentificationSystemType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','US Visa','US Visa')

INSERT INTO [extension].[TeacherPreparationProgramType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Alternate','Alternate')

INSERT INTO [extension].[TeacherPreparationProgramType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[TeacherPreparationProgramType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Traditional','Traditional')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Classroom Environment','Classroom Environment')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Classroom Instruction','Classroom Instruction')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Effective Planning','Effective Planning')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Lesson Alignment','Lesson Alignment')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Managing Student Behavior','Managing Student Behavior')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Professionalism','Professionalism')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Student Assessment','Student Assessment')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Student Investment and Engagement','Student Investment and Engagement')

INSERT INTO [extension].[ThemeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Teacher Reflection','Teacher Reflection')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Bachelor of Arts','Bachelor of Arts')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Bachelor of Science','Bachelor of Science')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Doctor of Philosophy','Doctor of Philosophy')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Educational Doctorate','Educational Doctorate')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Educational Specialist','Educational Specialist')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Master''s of Arts','Master''s of Arts')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Master''s of Education','Master''s of Education')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Master''s of Science','Master''s of Science')

INSERT INTO [extension].[TPPDegreeType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[TPPProgramPathwayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Fellowship','Fellowship')

INSERT INTO [extension].[TPPProgramPathwayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Intership','Intership')

INSERT INTO [extension].[TPPProgramPathwayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Other','Other')

INSERT INTO [extension].[TPPProgramPathwayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Residency','Residency')

INSERT INTO [extension].[TPPProgramPathwayType] ([CodeValue],[Description],[ShortDescription]) VALUES ('','Traditional','Traditional')

GO


