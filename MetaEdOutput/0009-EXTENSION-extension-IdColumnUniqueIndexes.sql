BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AbsenceEventCategoryType') AND name = N'UX_AbsenceEventCategoryType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AbsenceEventCategoryType_Id ON extension.AbsenceEventCategoryType
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AnonymizedStudent') AND name = N'UX_AnonymizedStudent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AnonymizedStudent_Id ON extension.AnonymizedStudent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AnonymizedStudentAcademicRecord') AND name = N'UX_AnonymizedStudentAcademicRecord_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AnonymizedStudentAcademicRecord_Id ON extension.AnonymizedStudentAcademicRecord
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AnonymizedStudentAssessment') AND name = N'UX_AnonymizedStudentAssessment_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AnonymizedStudentAssessment_Id ON extension.AnonymizedStudentAssessment
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AnonymizedStudentCourseAssociation') AND name = N'UX_AnonymizedStudentCourseAssociation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AnonymizedStudentCourseAssociation_Id ON extension.AnonymizedStudentCourseAssociation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AnonymizedStudentCourseTranscript') AND name = N'UX_AnonymizedStudentCourseTranscript_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AnonymizedStudentCourseTranscript_Id ON extension.AnonymizedStudentCourseTranscript
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AnonymizedStudentEducationOrganizationAssociation') AND name = N'UX_AnonymizedStudentEducationOrganizationAssociation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AnonymizedStudentEducationOrganizationAssociation_Id ON extension.AnonymizedStudentEducationOrganizationAssociation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.AnonymizedStudentSectionAssociation') AND name = N'UX_AnonymizedStudentSectionAssociation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_AnonymizedStudentSectionAssociation_Id ON extension.AnonymizedStudentSectionAssociation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Applicant') AND name = N'UX_Applicant_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Applicant_Id ON extension.Applicant
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.BackgroundCheckType') AND name = N'UX_BackgroundCheckType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_BackgroundCheckType_Id ON extension.BackgroundCheckType
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CourseCourseTranscriptFact') AND name = N'UX_CourseCourseTranscriptFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CourseCourseTranscriptFact_Id ON extension.CourseCourseTranscriptFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CourseStudentAcademicRecordFact') AND name = N'UX_CourseStudentAcademicRecordFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CourseStudentAcademicRecordFact_Id ON extension.CourseStudentAcademicRecordFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CourseStudentAssessmentFact') AND name = N'UX_CourseStudentAssessmentFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CourseStudentAssessmentFact_Id ON extension.CourseStudentAssessmentFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CourseStudentFact') AND name = N'UX_CourseStudentFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CourseStudentFact_Id ON extension.CourseStudentFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CourseSurveyQuestionResponseFact') AND name = N'UX_CourseSurveyQuestionResponseFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CourseSurveyQuestionResponseFact_Id ON extension.CourseSurveyQuestionResponseFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CourseSurveyResponseFact') AND name = N'UX_CourseSurveyResponseFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CourseSurveyResponseFact_Id ON extension.CourseSurveyResponseFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.CourseSurveySectionResponseRatingFact') AND name = N'UX_CourseSurveySectionResponseRatingFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_CourseSurveySectionResponseRatingFact_Id ON extension.CourseSurveySectionResponseRatingFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Credential') AND name = N'UX_Credential_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Credential_Id ON extension.Credential
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationCourseTranscriptFact') AND name = N'UX_EducationOrganizationCourseTranscriptFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationCourseTranscriptFact_Id ON extension.EducationOrganizationCourseTranscriptFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationFacts') AND name = N'UX_EducationOrganizationFacts_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationFacts_Id ON extension.EducationOrganizationFacts
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationStudentAcademicRecordFact') AND name = N'UX_EducationOrganizationStudentAcademicRecordFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationStudentAcademicRecordFact_Id ON extension.EducationOrganizationStudentAcademicRecordFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationStudentAssessmentFact') AND name = N'UX_EducationOrganizationStudentAssessmentFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationStudentAssessmentFact_Id ON extension.EducationOrganizationStudentAssessmentFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationStudentFact') AND name = N'UX_EducationOrganizationStudentFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationStudentFact_Id ON extension.EducationOrganizationStudentFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationSurveyQuestionResponseFact') AND name = N'UX_EducationOrganizationSurveyQuestionResponseFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationSurveyQuestionResponseFact_Id ON extension.EducationOrganizationSurveyQuestionResponseFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationSurveyResponseFact') AND name = N'UX_EducationOrganizationSurveyResponseFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationSurveyResponseFact_Id ON extension.EducationOrganizationSurveyResponseFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.EducationOrganizationSurveySectionResponseRatingFact') AND name = N'UX_EducationOrganizationSurveySectionResponseRatingFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_EducationOrganizationSurveySectionResponseRatingFact_Id ON extension.EducationOrganizationSurveySectionResponseRatingFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ExternalCourseTranscript') AND name = N'UX_ExternalCourseTranscript_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ExternalCourseTranscript_Id ON extension.ExternalCourseTranscript
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ExternalEducationOrganization') AND name = N'UX_ExternalEducationOrganization_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ExternalEducationOrganization_Id ON extension.ExternalEducationOrganization
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ExternalStudentAcademicRecord') AND name = N'UX_ExternalStudentAcademicRecord_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ExternalStudentAcademicRecord_Id ON extension.ExternalStudentAcademicRecord
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.LevelOfDegreeAwardedType') AND name = N'UX_LevelOfDegreeAwardedType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_LevelOfDegreeAwardedType_Id ON extension.LevelOfDegreeAwardedType
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Observation') AND name = N'UX_Observation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Observation_Id ON extension.Observation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ObservationFact') AND name = N'UX_ObservationFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ObservationFact_Id ON extension.ObservationFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ProfessionalDevelopmentEvent') AND name = N'UX_ProfessionalDevelopmentEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ProfessionalDevelopmentEvent_Id ON extension.ProfessionalDevelopmentEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Prospect') AND name = N'UX_Prospect_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Prospect_Id ON extension.Prospect
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ProspectProfessionalDevelopmentEventAttendance') AND name = N'UX_ProspectProfessionalDevelopmentEventAttendance_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ProspectProfessionalDevelopmentEventAttendance_Id ON extension.ProspectProfessionalDevelopmentEventAttendance
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.QuestionFormType') AND name = N'UX_QuestionFormType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_QuestionFormType_Id ON extension.QuestionFormType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.RecruitmentEvent') AND name = N'UX_RecruitmentEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_RecruitmentEvent_Id ON extension.RecruitmentEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Rubric') AND name = N'UX_Rubric_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Rubric_Id ON extension.Rubric
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.RubricLevel') AND name = N'UX_RubricLevel_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_RubricLevel_Id ON extension.RubricLevel
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.RubricLevelResponse') AND name = N'UX_RubricLevelResponse_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_RubricLevelResponse_Id ON extension.RubricLevelResponse
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.RubricLevelResponseFact') AND name = N'UX_RubricLevelResponseFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_RubricLevelResponseFact_Id ON extension.RubricLevelResponseFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SectionCourseTranscriptFact') AND name = N'UX_SectionCourseTranscriptFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SectionCourseTranscriptFact_Id ON extension.SectionCourseTranscriptFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SectionStudentAcademicRecordFact') AND name = N'UX_SectionStudentAcademicRecordFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SectionStudentAcademicRecordFact_Id ON extension.SectionStudentAcademicRecordFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SectionStudentAssessmentFact') AND name = N'UX_SectionStudentAssessmentFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SectionStudentAssessmentFact_Id ON extension.SectionStudentAssessmentFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SectionStudentFact') AND name = N'UX_SectionStudentFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SectionStudentFact_Id ON extension.SectionStudentFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SectionSurveyQuestionResponseFact') AND name = N'UX_SectionSurveyQuestionResponseFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SectionSurveyQuestionResponseFact_Id ON extension.SectionSurveyQuestionResponseFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SectionSurveyResponseFact') AND name = N'UX_SectionSurveyResponseFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SectionSurveyResponseFact_Id ON extension.SectionSurveyResponseFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SectionSurveySectionResponseRatingFact') AND name = N'UX_SectionSurveySectionResponseRatingFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SectionSurveySectionResponseRatingFact_Id ON extension.SectionSurveySectionResponseRatingFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffFieldworkAbsenceEvent') AND name = N'UX_StaffFieldworkAbsenceEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffFieldworkAbsenceEvent_Id ON extension.StaffFieldworkAbsenceEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffFieldworkExperience') AND name = N'UX_StaffFieldworkExperience_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffFieldworkExperience_Id ON extension.StaffFieldworkExperience
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffProfessionalDevelopmentEventAttendance') AND name = N'UX_StaffProfessionalDevelopmentEventAttendance_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffProfessionalDevelopmentEventAttendance_Id ON extension.StaffProfessionalDevelopmentEventAttendance
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffStudentGrowthFact') AND name = N'UX_StaffStudentGrowthFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffStudentGrowthFact_Id ON extension.StaffStudentGrowthFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffTeacherPreparationProviderAssociation') AND name = N'UX_StaffTeacherPreparationProviderAssociation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffTeacherPreparationProviderAssociation_Id ON extension.StaffTeacherPreparationProviderAssociation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StaffTeacherPreparationProviderProgramAssociation') AND name = N'UX_StaffTeacherPreparationProviderProgramAssociation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StaffTeacherPreparationProviderProgramAssociation_Id ON extension.StaffTeacherPreparationProviderProgramAssociation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.StudentGrowthType') AND name = N'UX_StudentGrowthType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_StudentGrowthType_Id ON extension.StudentGrowthType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.Survey') AND name = N'UX_Survey_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_Survey_Id ON extension.Survey
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyCategoryType') AND name = N'UX_SurveyCategoryType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyCategoryType_Id ON extension.SurveyCategoryType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyQuestion') AND name = N'UX_SurveyQuestion_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyQuestion_Id ON extension.SurveyQuestion
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyQuestionResponse') AND name = N'UX_SurveyQuestionResponse_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyQuestionResponse_Id ON extension.SurveyQuestionResponse
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveyResponse') AND name = N'UX_SurveyResponse_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveyResponse_Id ON extension.SurveyResponse
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveySection') AND name = N'UX_SurveySection_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveySection_Id ON extension.SurveySection
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.SurveySectionResponseRating') AND name = N'UX_SurveySectionResponseRating_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_SurveySectionResponseRating_Id ON extension.SurveySectionResponseRating
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
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateFieldworkAbsenceEvent') AND name = N'UX_TeacherCandidateFieldworkAbsenceEvent_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateFieldworkAbsenceEvent_Id ON extension.TeacherCandidateFieldworkAbsenceEvent
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateFieldworkExperience') AND name = N'UX_TeacherCandidateFieldworkExperience_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateFieldworkExperience_Id ON extension.TeacherCandidateFieldworkExperience
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateProfessionalDevelopmentEventAttendance') AND name = N'UX_TeacherCandidateProfessionalDevelopmentEventAttendance_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateProfessionalDevelopmentEventAttendance_Id ON extension.TeacherCandidateProfessionalDevelopmentEventAttendance
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateStudentGrowthFact') AND name = N'UX_TeacherCandidateStudentGrowthFact_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateStudentGrowthFact_Id ON extension.TeacherCandidateStudentGrowthFact
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateTeacherPreparationProviderAssociation') AND name = N'UX_TeacherCandidateTeacherPreparationProviderAssociation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateTeacherPreparationProviderAssociation_Id ON extension.TeacherCandidateTeacherPreparationProviderAssociation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.TeacherCandidateTeacherPreparationProviderProgramAssociation') AND name = N'UX_TeacherCandidateTeacherPreparationProviderProgramAssociation_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_TeacherCandidateTeacherPreparationProviderProgramAssociation_Id ON extension.TeacherCandidateTeacherPreparationProviderProgramAssociation
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 75, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
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

BEGIN TRANSACTION
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'extension.ValueType') AND name = N'UX_ValueType_Id')
CREATE UNIQUE NONCLUSTERED INDEX UX_ValueType_Id ON extension.ValueType
(Id) WITH( PAD_INDEX = ON, FILLFACTOR = 100, STATISTICS_NORECOMPUTE = OFF) ON [PRIMARY]
GO
COMMIT

