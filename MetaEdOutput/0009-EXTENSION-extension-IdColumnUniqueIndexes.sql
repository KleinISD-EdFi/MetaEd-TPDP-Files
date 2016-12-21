BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AbsenceEventCategoryType') AND name = N'UX_AbsenceEventCategoryType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AbsenceEventCategoryType_Id ON extension.AbsenceEventCategoryType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AcademicSubjectExtensionType') AND name = N'UX_AcademicSubjectExtensionType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AcademicSubjectExtensionType_Id ON extension.AcademicSubjectExtensionType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AidType') AND name = N'UX_AidType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AidType_Id ON extension.AidType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.BackgroundCheckStatusType') AND name = N'UX_BackgroundCheckStatusType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_BackgroundCheckStatusType_Id ON extension.BackgroundCheckStatusType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.BoardCertificationType') AND name = N'UX_BoardCertificationType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_BoardCertificationType_Id ON extension.BoardCertificationType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CertificationExamType') AND name = N'UX_CertificationExamType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CertificationExamType_Id ON extension.CertificationExamType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ClassroomPositionExtensionType') AND name = N'UX_ClassroomPositionExtensionType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ClassroomPositionExtensionType_Id ON extension.ClassroomPositionExtensionType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.DiagnosisExtensionType') AND name = N'UX_DiagnosisExtensionType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_DiagnosisExtensionType_Id ON extension.DiagnosisExtensionType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EnglishLanguageExamType') AND name = N'UX_EnglishLanguageExamType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EnglishLanguageExamType_Id ON extension.EnglishLanguageExamType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.FederalLocaleCodeType') AND name = N'UX_FederalLocaleCodeType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_FederalLocaleCodeType_Id ON extension.FederalLocaleCodeType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.FieldworkType') AND name = N'UX_FieldworkType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_FieldworkType_Id ON extension.FieldworkType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.GenderType') AND name = N'UX_GenderType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_GenderType_Id ON extension.GenderType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.GradeLevelExtensionType') AND name = N'UX_GradeLevelExtensionType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_GradeLevelExtensionType_Id ON extension.GradeLevelExtensionType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.LevelType') AND name = N'UX_LevelType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_LevelType_Id ON extension.LevelType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ObservationType') AND name = N'UX_ObservationType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ObservationType_Id ON extension.ObservationType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.PreviousCareerType') AND name = N'UX_PreviousCareerType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_PreviousCareerType_Id ON extension.PreviousCareerType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ProfessionalDevelopmentOfferedByType') AND name = N'UX_ProfessionalDevelopmentOfferedByType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ProfessionalDevelopmentOfferedByType_Id ON extension.ProfessionalDevelopmentOfferedByType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ProgramGatewayType') AND name = N'UX_ProgramGatewayType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ProgramGatewayType_Id ON extension.ProgramGatewayType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.RubricType') AND name = N'UX_RubricType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_RubricType_Id ON extension.RubricType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SalaryType') AND name = N'UX_SalaryType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SalaryType_Id ON extension.SalaryType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SchoolStatusType') AND name = N'UX_SchoolStatusType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SchoolStatusType_Id ON extension.SchoolStatusType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffClassificationExtensionType') AND name = N'UX_StaffClassificationExtensionType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffClassificationExtensionType_Id ON extension.StaffClassificationExtensionType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyCategoryExtensionType') AND name = N'UX_SurveyCategoryExtensionType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyCategoryExtensionType_Id ON extension.SurveyCategoryExtensionType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidate') AND name = N'UX_TeacherCandidate_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidate_Id ON extension.TeacherCandidate
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateCharacteristicType') AND name = N'UX_TeacherCandidateCharacteristicType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateCharacteristicType_Id ON extension.TeacherCandidateCharacteristicType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateIdentificationSystemType') AND name = N'UX_TeacherCandidateIdentificationSystemType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateIdentificationSystemType_Id ON extension.TeacherCandidateIdentificationSystemType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherPreparationProgramType') AND name = N'UX_TeacherPreparationProgramType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherPreparationProgramType_Id ON extension.TeacherPreparationProgramType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ThemeType') AND name = N'UX_ThemeType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ThemeType_Id ON extension.ThemeType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TPPDegreeType') AND name = N'UX_TPPDegreeType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TPPDegreeType_Id ON extension.TPPDegreeType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TPPProgramPathwayType') AND name = N'UX_TPPProgramPathwayType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TPPProgramPathwayType_Id ON extension.TPPProgramPathwayType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

