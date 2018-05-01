ALTER TABLE [extension].[AidTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_AidTypeDescriptor_Descriptor] FOREIGN KEY ([AidTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[AnonymizedStudent] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudent_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudent_Course]
ON [extension].[AnonymizedStudent] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudent] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudent_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudent_EducationOrganization]
ON [extension].[AnonymizedStudent] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudent] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudent_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudent_GenderDescriptor]
ON [extension].[AnonymizedStudent] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudent] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudent_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudent_SchoolYearType]
ON [extension].[AnonymizedStudent] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudent] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudent_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudent_Section]
ON [extension].[AnonymizedStudent] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudent] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudent_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudent_SexDescriptor]
ON [extension].[AnonymizedStudent] ([SexDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudent] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudent_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudent_ValueTypeDescriptor]
ON [extension].[AnonymizedStudent] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAcademicRecord_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAcademicRecord_AnonymizedStudent]
ON [extension].[AnonymizedStudentAcademicRecord] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAcademicRecord_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAcademicRecord_EducationOrganization]
ON [extension].[AnonymizedStudentAcademicRecord] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAcademicRecord_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAcademicRecord_TermDescriptor]
ON [extension].[AnonymizedStudentAcademicRecord] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_AcademicSubjectDescriptor]
ON [extension].[AnonymizedStudentAssessment] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_AnonymizedStudent]
ON [extension].[AnonymizedStudentAssessment] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_AssessmentCategoryDescriptor] FOREIGN KEY ([AssessmentCategoryDescriptorId])
REFERENCES [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_AssessmentCategoryDescriptor]
ON [extension].[AnonymizedStudentAssessment] ([AssessmentCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_Course]
ON [extension].[AnonymizedStudentAssessment] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_GradeLevelDescriptor]
ON [extension].[AnonymizedStudentAssessment] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_SchoolYearType] FOREIGN KEY ([TakenSchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_SchoolYearType]
ON [extension].[AnonymizedStudentAssessment] ([TakenSchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_Section]
ON [extension].[AnonymizedStudentAssessment] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessment] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessment_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessment_TermDescriptor]
ON [extension].[AnonymizedStudentAssessment] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessmentPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessmentPerformanceLevel_AnonymizedStudentAssessment] FOREIGN KEY ([AdministrationDate], [AnonymizedStudentIdentifier], [AssessmentIdentifier], [FactsAsOfDate], [SchoolYear], [TakenSchoolYear])
REFERENCES [extension].[AnonymizedStudentAssessment] ([AdministrationDate], [AnonymizedStudentIdentifier], [AssessmentIdentifier], [FactsAsOfDate], [SchoolYear], [TakenSchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[AnonymizedStudentAssessmentPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId])
REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessmentPerformanceLevel_AssessmentReportingMethodDescriptor]
ON [extension].[AnonymizedStudentAssessmentPerformanceLevel] ([AssessmentReportingMethodDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessmentPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessmentPerformanceLevel_PerformanceLevelDescriptor] FOREIGN KEY ([PerformanceLevelDescriptorId])
REFERENCES [edfi].[PerformanceLevelDescriptor] ([PerformanceLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessmentPerformanceLevel_PerformanceLevelDescriptor]
ON [extension].[AnonymizedStudentAssessmentPerformanceLevel] ([PerformanceLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessmentScoreResult] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessmentScoreResult_AnonymizedStudentAssessment] FOREIGN KEY ([AdministrationDate], [AnonymizedStudentIdentifier], [AssessmentIdentifier], [FactsAsOfDate], [SchoolYear], [TakenSchoolYear])
REFERENCES [extension].[AnonymizedStudentAssessment] ([AdministrationDate], [AnonymizedStudentIdentifier], [AssessmentIdentifier], [FactsAsOfDate], [SchoolYear], [TakenSchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[AnonymizedStudentAssessmentScoreResult] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessmentScoreResult_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId])
REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessmentScoreResult_AssessmentReportingMethodDescriptor]
ON [extension].[AnonymizedStudentAssessmentScoreResult] ([AssessmentReportingMethodDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentAssessmentScoreResult] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentAssessmentScoreResult_ResultDatatypeTypeDescriptor] FOREIGN KEY ([ResultDatatypeTypeDescriptorId])
REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentAssessmentScoreResult_ResultDatatypeTypeDescriptor]
ON [extension].[AnonymizedStudentAssessmentScoreResult] ([ResultDatatypeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentCourseAssociation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentCourseAssociation_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentCourseAssociation_AnonymizedStudent]
ON [extension].[AnonymizedStudentCourseAssociation] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentCourseAssociation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentCourseAssociation_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentCourseAssociation_Course]
ON [extension].[AnonymizedStudentCourseAssociation] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentCourseTranscript_AnonymizedStudentAcademicRecord] FOREIGN KEY ([AnonymizedStudentIdentifier], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[AnonymizedStudentAcademicRecord] ([AnonymizedStudentIdentifier], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentCourseTranscript_AnonymizedStudentAcademicRecord]
ON [extension].[AnonymizedStudentCourseTranscript] ([AnonymizedStudentIdentifier] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentCourseTranscript_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentCourseTranscript_Course]
ON [extension].[AnonymizedStudentCourseTranscript] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentCourseTranscript_CourseRepeatCodeDescriptor] FOREIGN KEY ([CourseRepeatCodeDescriptorId])
REFERENCES [edfi].[CourseRepeatCodeDescriptor] ([CourseRepeatCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentCourseTranscript_CourseRepeatCodeDescriptor]
ON [extension].[AnonymizedStudentCourseTranscript] ([CourseRepeatCodeDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentDisability] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentDisability_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentDisability_AnonymizedStudent]
ON [extension].[AnonymizedStudentDisability] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentDisability] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentDisability_DisabilityDescriptor]
ON [extension].[AnonymizedStudentDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentDisability] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentDisability_DisabilityDeterminationSourceTypeDescriptor] FOREIGN KEY ([DisabilityDeterminationSourceTypeDescriptorId])
REFERENCES [edfi].[DisabilityDeterminationSourceTypeDescriptor] ([DisabilityDeterminationSourceTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentDisability_DisabilityDeterminationSourceTypeDescriptor]
ON [extension].[AnonymizedStudentDisability] ([DisabilityDeterminationSourceTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentDisabilityDesignation_AnonymizedStudentDisability] FOREIGN KEY ([AnonymizedStudentIdentifier], [DisabilityDescriptorId], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudentDisability] ([AnonymizedStudentIdentifier], [DisabilityDescriptorId], [FactsAsOfDate], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentDisabilityDesignation_AnonymizedStudentDisability]
ON [extension].[AnonymizedStudentDisabilityDesignation] ([AnonymizedStudentIdentifier] ASC, [DisabilityDescriptorId] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentDisabilityDesignation_DisabilityDesignationDescriptor] FOREIGN KEY ([DisabilityDesignationDescriptorId])
REFERENCES [edfi].[DisabilityDesignationDescriptor] ([DisabilityDesignationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentDisabilityDesignation_DisabilityDesignationDescriptor]
ON [extension].[AnonymizedStudentDisabilityDesignation] ([DisabilityDesignationDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentEducationOrganizationAssociation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentEducationOrganizationAssociation_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentEducationOrganizationAssociation_AnonymizedStudent]
ON [extension].[AnonymizedStudentEducationOrganizationAssociation] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentEducationOrganizationAssociation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentEducationOrganizationAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentEducationOrganizationAssociation_EducationOrganization]
ON [extension].[AnonymizedStudentEducationOrganizationAssociation] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentLanguage] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentLanguage_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentLanguage_AnonymizedStudent]
ON [extension].[AnonymizedStudentLanguage] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentLanguage] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentLanguage_LanguageDescriptor]
ON [extension].[AnonymizedStudentLanguage] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentLanguageUse] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentLanguageUse_AnonymizedStudentLanguage] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [LanguageDescriptorId], [SchoolYear])
REFERENCES [extension].[AnonymizedStudentLanguage] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [LanguageDescriptorId], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentLanguageUse_AnonymizedStudentLanguage]
ON [extension].[AnonymizedStudentLanguageUse] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [LanguageDescriptorId] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentLanguageUse] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentLanguageUse_LanguageUseDescriptor] FOREIGN KEY ([LanguageUseDescriptorId])
REFERENCES [edfi].[LanguageUseDescriptor] ([LanguageUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentLanguageUse_LanguageUseDescriptor]
ON [extension].[AnonymizedStudentLanguageUse] ([LanguageUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentRace] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentRace_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentRace_AnonymizedStudent]
ON [extension].[AnonymizedStudentRace] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentRace] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentRace_RaceDescriptor]
ON [extension].[AnonymizedStudentRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentSectionAssociation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentSectionAssociation_AnonymizedStudent] FOREIGN KEY ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[AnonymizedStudent] ([AnonymizedStudentIdentifier], [FactsAsOfDate], [SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentSectionAssociation_AnonymizedStudent]
ON [extension].[AnonymizedStudentSectionAssociation] ([AnonymizedStudentIdentifier] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[AnonymizedStudentSectionAssociation] WITH CHECK ADD CONSTRAINT [FK_AnonymizedStudentSectionAssociation_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_AnonymizedStudentSectionAssociation_Section]
ON [extension].[AnonymizedStudentSectionAssociation] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_AcademicSubjectDescriptor] FOREIGN KEY ([HighlyQualifiedAcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Applicant_AcademicSubjectDescriptor]
ON [extension].[Applicant] ([HighlyQualifiedAcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_CitizenshipStatusDescriptor] FOREIGN KEY ([CitizenshipStatusDescriptorId])
REFERENCES [edfi].[CitizenshipStatusDescriptor] ([CitizenshipStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Applicant_CitizenshipStatusDescriptor]
ON [extension].[Applicant] ([CitizenshipStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_Applicant_EducationOrganization]
ON [extension].[Applicant] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Applicant_GenderDescriptor]
ON [extension].[Applicant] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_LevelOfEducationDescriptor] FOREIGN KEY ([HighestCompletedLevelOfEducationDescriptorId])
REFERENCES [edfi].[LevelOfEducationDescriptor] ([LevelOfEducationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Applicant_LevelOfEducationDescriptor]
ON [extension].[Applicant] ([HighestCompletedLevelOfEducationDescriptorId] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_Applicant_Prospect]
ON [extension].[Applicant] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[Applicant] WITH CHECK ADD CONSTRAINT [FK_Applicant_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Applicant_SexDescriptor]
ON [extension].[Applicant] ([SexDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_AddressTypeDescriptor]
ON [extension].[ApplicantAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantAddress_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_Applicant]
ON [extension].[ApplicantAddress] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAddress_StateAbbreviationDescriptor]
ON [extension].[ApplicantAddress] ([StateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantAddressPeriod] WITH CHECK ADD CONSTRAINT [FK_ApplicantAddressPeriod_ApplicantAddress] FOREIGN KEY ([AddressTypeDescriptorId], [ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[ApplicantAddress] ([AddressTypeDescriptorId], [ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAddressPeriod_ApplicantAddress]
ON [extension].[ApplicantAddressPeriod] ([AddressTypeDescriptorId] ASC, [ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantAid] WITH CHECK ADD CONSTRAINT [FK_ApplicantAid_AidTypeDescriptor] FOREIGN KEY ([AidTypeDescriptorId])
REFERENCES [extension].[AidTypeDescriptor] ([AidTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAid_AidTypeDescriptor]
ON [extension].[ApplicantAid] ([AidTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantAid] WITH CHECK ADD CONSTRAINT [FK_ApplicantAid_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantAid_Applicant]
ON [extension].[ApplicantAid] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_ApplicantBackgroundCheck_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantBackgroundCheck_Applicant]
ON [extension].[ApplicantBackgroundCheck] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckStatusDescriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [extension].[BackgroundCheckStatusDescriptor] ([BackgroundCheckStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantBackgroundCheck_BackgroundCheckStatusDescriptor]
ON [extension].[ApplicantBackgroundCheck] ([BackgroundCheckStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_ApplicantBackgroundCheck_BackgroundCheckTypeDescriptor] FOREIGN KEY ([BackgroundCheckTypeDescriptorId])
REFERENCES [extension].[BackgroundCheckTypeDescriptor] ([BackgroundCheckTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantBackgroundCheck_BackgroundCheckTypeDescriptor]
ON [extension].[ApplicantBackgroundCheck] ([BackgroundCheckTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_Applicant]
ON [extension].[ApplicantCredential] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantCredential] WITH CHECK ADD CONSTRAINT [FK_ApplicantCredential_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantCredential_Credential]
ON [extension].[ApplicantCredential] ([CredentialIdentifier] ASC, [StateOfIssueStateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantDisability] WITH CHECK ADD CONSTRAINT [FK_ApplicantDisability_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantDisability_Applicant]
ON [extension].[ApplicantDisability] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantDisability] WITH CHECK ADD CONSTRAINT [FK_ApplicantDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantDisability_DisabilityDescriptor]
ON [extension].[ApplicantDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantDisability] WITH CHECK ADD CONSTRAINT [FK_ApplicantDisability_DisabilityDeterminationSourceTypeDescriptor] FOREIGN KEY ([DisabilityDeterminationSourceTypeDescriptorId])
REFERENCES [edfi].[DisabilityDeterminationSourceTypeDescriptor] ([DisabilityDeterminationSourceTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantDisability_DisabilityDeterminationSourceTypeDescriptor]
ON [extension].[ApplicantDisability] ([DisabilityDeterminationSourceTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_ApplicantDisabilityDesignation_ApplicantDisability] FOREIGN KEY ([ApplicantIdentifier], [DisabilityDescriptorId], [EducationOrganizationId])
REFERENCES [extension].[ApplicantDisability] ([ApplicantIdentifier], [DisabilityDescriptorId], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantDisabilityDesignation_ApplicantDisability]
ON [extension].[ApplicantDisabilityDesignation] ([ApplicantIdentifier] ASC, [DisabilityDescriptorId] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_ApplicantDisabilityDesignation_DisabilityDesignationDescriptor] FOREIGN KEY ([DisabilityDesignationDescriptorId])
REFERENCES [edfi].[DisabilityDesignationDescriptor] ([DisabilityDesignationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantDisabilityDesignation_DisabilityDesignationDescriptor]
ON [extension].[ApplicantDisabilityDesignation] ([DisabilityDesignationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantElectronicMail] WITH CHECK ADD CONSTRAINT [FK_ApplicantElectronicMail_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantElectronicMail_Applicant]
ON [extension].[ApplicantElectronicMail] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantElectronicMail] WITH CHECK ADD CONSTRAINT [FK_ApplicantElectronicMail_ElectronicMailTypeDescriptor] FOREIGN KEY ([ElectronicMailTypeDescriptorId])
REFERENCES [edfi].[ElectronicMailTypeDescriptor] ([ElectronicMailTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantElectronicMail_ElectronicMailTypeDescriptor]
ON [extension].[ApplicantElectronicMail] ([ElectronicMailTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_Applicant]
ON [extension].[ApplicantIdentificationDocument] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_CountryDescriptor]
ON [extension].[ApplicantIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [extension].[ApplicantIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [extension].[ApplicantIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantInternationalAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_AddressTypeDescriptor]
ON [extension].[ApplicantInternationalAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantInternationalAddress_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_Applicant]
ON [extension].[ApplicantInternationalAddress] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantInternationalAddress_CountryDescriptor]
ON [extension].[ApplicantInternationalAddress] ([CountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguage] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguage_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguage_Applicant]
ON [extension].[ApplicantLanguage] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguage] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguage_LanguageDescriptor]
ON [extension].[ApplicantLanguage] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguageUse] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguageUse_ApplicantLanguage] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId], [LanguageDescriptorId])
REFERENCES [extension].[ApplicantLanguage] ([ApplicantIdentifier], [EducationOrganizationId], [LanguageDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguageUse_ApplicantLanguage]
ON [extension].[ApplicantLanguageUse] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC, [LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantLanguageUse] WITH CHECK ADD CONSTRAINT [FK_ApplicantLanguageUse_LanguageUseDescriptor] FOREIGN KEY ([LanguageUseDescriptorId])
REFERENCES [edfi].[LanguageUseDescriptor] ([LanguageUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantLanguageUse_LanguageUseDescriptor]
ON [extension].[ApplicantLanguageUse] ([LanguageUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantPersonalIdentificationDocument_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantPersonalIdentificationDocument_Applicant]
ON [extension].[ApplicantPersonalIdentificationDocument] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantPersonalIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantPersonalIdentificationDocument_CountryDescriptor]
ON [extension].[ApplicantPersonalIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantPersonalIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [extension].[ApplicantPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ApplicantPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantPersonalIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [extension].[ApplicantPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantRace] WITH CHECK ADD CONSTRAINT [FK_ApplicantRace_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantRace_Applicant]
ON [extension].[ApplicantRace] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantRace] WITH CHECK ADD CONSTRAINT [FK_ApplicantRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantRace_RaceDescriptor]
ON [extension].[ApplicantRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantScoreResult] WITH CHECK ADD CONSTRAINT [FK_ApplicantScoreResult_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantScoreResult_Applicant]
ON [extension].[ApplicantScoreResult] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantScoreResult] WITH CHECK ADD CONSTRAINT [FK_ApplicantScoreResult_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId])
REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantScoreResult_AssessmentReportingMethodDescriptor]
ON [extension].[ApplicantScoreResult] ([AssessmentReportingMethodDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantScoreResult] WITH CHECK ADD CONSTRAINT [FK_ApplicantScoreResult_ResultDatatypeTypeDescriptor] FOREIGN KEY ([ResultDatatypeTypeDescriptorId])
REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantScoreResult_ResultDatatypeTypeDescriptor]
ON [extension].[ApplicantScoreResult] ([ResultDatatypeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantStaffIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ApplicantStaffIdentificationCode_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantStaffIdentificationCode_Applicant]
ON [extension].[ApplicantStaffIdentificationCode] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantStaffIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ApplicantStaffIdentificationCode_StaffIdentificationSystemDescriptor] FOREIGN KEY ([StaffIdentificationSystemDescriptorId])
REFERENCES [edfi].[StaffIdentificationSystemDescriptor] ([StaffIdentificationSystemDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantStaffIdentificationCode_StaffIdentificationSystemDescriptor]
ON [extension].[ApplicantStaffIdentificationCode] ([StaffIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgram_Applicant]
ON [extension].[ApplicantTeacherPreparationProgram] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId])
REFERENCES [extension].[LevelOfDegreeAwardedDescriptor] ([LevelOfDegreeAwardedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor]
ON [extension].[ApplicantTeacherPreparationProgram] ([LevelOfDegreeAwardedDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProgramTypeDescriptor] ([TeacherPreparationProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor]
ON [extension].[ApplicantTeacherPreparationProgram] ([TeacherPreparationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddress_AddressTypeDescriptor]
ON [extension].[ApplicantTeacherPreparationProgramAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId], [TeacherPreparationProgramName])
REFERENCES [extension].[ApplicantTeacherPreparationProgram] ([ApplicantIdentifier], [EducationOrganizationId], [TeacherPreparationProgramName])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddress_ApplicantTeacherPreparationProgram]
ON [extension].[ApplicantTeacherPreparationProgramAddress] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC, [TeacherPreparationProgramName] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddress_StateAbbreviationDescriptor]
ON [extension].[ApplicantTeacherPreparationProgramAddress] ([StateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantTeacherPreparationProgramAddressPeriod] WITH CHECK ADD CONSTRAINT [FK_ApplicantTeacherPreparationProgramAddressPeriod_ApplicantTeacherPreparationProgramAddress] FOREIGN KEY ([AddressTypeDescriptorId], [ApplicantIdentifier], [EducationOrganizationId], [TeacherPreparationProgramName])
REFERENCES [extension].[ApplicantTeacherPreparationProgramAddress] ([AddressTypeDescriptorId], [ApplicantIdentifier], [EducationOrganizationId], [TeacherPreparationProgramName])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTeacherPreparationProgramAddressPeriod_ApplicantTeacherPreparationProgramAddress]
ON [extension].[ApplicantTeacherPreparationProgramAddressPeriod] ([AddressTypeDescriptorId] ASC, [ApplicantIdentifier] ASC, [EducationOrganizationId] ASC, [TeacherPreparationProgramName] ASC)
GO

ALTER TABLE [extension].[ApplicantTelephone] WITH CHECK ADD CONSTRAINT [FK_ApplicantTelephone_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTelephone_Applicant]
ON [extension].[ApplicantTelephone] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantTelephone] WITH CHECK ADD CONSTRAINT [FK_ApplicantTelephone_TelephoneNumberTypeDescriptor] FOREIGN KEY ([TelephoneNumberTypeDescriptorId])
REFERENCES [edfi].[TelephoneNumberTypeDescriptor] ([TelephoneNumberTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantTelephone_TelephoneNumberTypeDescriptor]
ON [extension].[ApplicantTelephone] ([TelephoneNumberTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ApplicantVisa] WITH CHECK ADD CONSTRAINT [FK_ApplicantVisa_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantVisa_Applicant]
ON [extension].[ApplicantVisa] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ApplicantVisa] WITH CHECK ADD CONSTRAINT [FK_ApplicantVisa_VisaDescriptor] FOREIGN KEY ([VisaDescriptorId])
REFERENCES [edfi].[VisaDescriptor] ([VisaDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ApplicantVisa_VisaDescriptor]
ON [extension].[ApplicantVisa] ([VisaDescriptorId] ASC)
GO

ALTER TABLE [extension].[AssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_AssessmentExtension_Assessment] FOREIGN KEY ([AcademicSubjectDescriptorId], [AssessedGradeLevelDescriptorId], [AssessmentTitle], [AssessmentVersion])
REFERENCES [edfi].[Assessment] ([AcademicSubjectDescriptorId], [AssessedGradeLevelDescriptorId], [AssessmentTitle], [AssessmentVersion])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[AssessmentExtension] WITH CHECK ADD CONSTRAINT [FK_AssessmentExtension_ProgramGatewayDescriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [extension].[ProgramGatewayDescriptor] ([ProgramGatewayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_AssessmentExtension_ProgramGatewayDescriptor]
ON [extension].[AssessmentExtension] ([ProgramGatewayDescriptorId] ASC)
GO

ALTER TABLE [extension].[BackgroundCheckStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckStatusDescriptor_Descriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[BackgroundCheckTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_BackgroundCheckTypeDescriptor_Descriptor] FOREIGN KEY ([BackgroundCheckTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[BoardCertificationTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_BoardCertificationTypeDescriptor_Descriptor] FOREIGN KEY ([BoardCertificationTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CertificationExamTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_CertificationExamTypeDescriptor_Descriptor] FOREIGN KEY ([CertificationExamTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseCourseTranscriptFacts] WITH CHECK ADD CONSTRAINT [FK_CourseCourseTranscriptFacts_CourseStudentAcademicRecordFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[CourseStudentAcademicRecordFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseCourseTranscriptFacts_CourseStudentAcademicRecordFacts]
ON [extension].[CourseCourseTranscriptFacts] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC, [SchoolYear] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned] WITH CHECK ADD CONSTRAINT [FK_CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned_CourseCourseTranscriptFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[CourseCourseTranscriptFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned_CourseCourseTranscriptFacts]
ON [extension].[CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseCourseTranscriptFactsAggregatedNumericGradeEarned] WITH CHECK ADD CONSTRAINT [FK_CourseCourseTranscriptFactsAggregatedNumericGradeEarned_CourseCourseTranscriptFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[CourseCourseTranscriptFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseCourseTranscriptFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseCourseTranscriptFactsStudentsEnrolled_CourseCourseTranscriptFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[CourseCourseTranscriptFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseCourseTranscriptFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseCourseTranscriptFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseCourseTranscriptFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[CourseCourseTranscriptFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAcademicRecordFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAcademicRecordFacts_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAcademicRecordFacts_Course]
ON [extension].[CourseStudentAcademicRecordFacts] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAcademicRecordFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAcademicRecordFacts_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAcademicRecordFacts_SchoolYearType]
ON [extension].[CourseStudentAcademicRecordFacts] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[CourseStudentAcademicRecordFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAcademicRecordFacts_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAcademicRecordFacts_TermDescriptor]
ON [extension].[CourseStudentAcademicRecordFacts] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_CourseStudentAcademicRecordFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[CourseStudentAcademicRecordFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage_CourseStudentAcademicRecordFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[CourseStudentAcademicRecordFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentAcademicRecordFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAcademicRecordFactsStudentsEnrolled_CourseStudentAcademicRecordFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[CourseStudentAcademicRecordFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentAcademicRecordFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAcademicRecordFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAcademicRecordFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[CourseStudentAcademicRecordFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFacts_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFacts_AcademicSubjectDescriptor]
ON [extension].[CourseStudentAssessmentFacts] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFacts_AssessmentCategoryDescriptor] FOREIGN KEY ([AssessmentCategoryDescriptorId])
REFERENCES [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFacts_AssessmentCategoryDescriptor]
ON [extension].[CourseStudentAssessmentFacts] ([AssessmentCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFacts_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFacts_Course]
ON [extension].[CourseStudentAssessmentFacts] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFacts_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFacts_GradeLevelDescriptor]
ON [extension].[CourseStudentAssessmentFacts] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFacts_SchoolYearType] FOREIGN KEY ([TakenSchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFacts_SchoolYearType]
ON [extension].[CourseStudentAssessmentFacts] ([TakenSchoolYear] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFacts_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFacts_TermDescriptor]
ON [extension].[CourseStudentAssessmentFacts] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFactsAggregatedPerformanceLevel_CourseStudentAssessmentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
REFERENCES [extension].[CourseStudentAssessmentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFactsAggregatedPerformanceLevel_CourseStudentAssessmentFacts]
ON [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC, [TakenSchoolYear] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFactsAggregatedPerformanceLevel_PerformanceLevelDescriptor] FOREIGN KEY ([PerformanceLevelDescriptorId])
REFERENCES [edfi].[PerformanceLevelDescriptor] ([PerformanceLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFactsAggregatedPerformanceLevel_PerformanceLevelDescriptor]
ON [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] ([PerformanceLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFactsAggregatedScoreResult_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId])
REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFactsAggregatedScoreResult_AssessmentReportingMethodDescriptor]
ON [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] ([AssessmentReportingMethodDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFactsAggregatedScoreResult_CourseStudentAssessmentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
REFERENCES [extension].[CourseStudentAssessmentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFactsAggregatedScoreResult_ResultDatatypeTypeDescriptor] FOREIGN KEY ([AverageScoreResultDatatypeTypeDescriptorId])
REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFactsAggregatedScoreResult_ResultDatatypeTypeDescriptor]
ON [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] ([AverageScoreResultDatatypeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentAssessmentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFactsStudentsEnrolled_CourseStudentAssessmentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
REFERENCES [extension].[CourseStudentAssessmentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentAssessmentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentAssessmentFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentAssessmentFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[CourseStudentAssessmentFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFacts] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFacts_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFacts_Course]
ON [extension].[CourseStudentFacts] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedByDisability_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedByDisability_CourseStudentFacts]
ON [extension].[CourseStudentFactsAggregatedByDisability] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedByDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedByDisability_DisabilityDescriptor]
ON [extension].[CourseStudentFactsAggregatedByDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedByDisability_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedByDisability_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedByDisability] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedELLEnrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedELLEnrollment_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedELLEnrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedELLEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedELLEnrollment_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedELLEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedESLEnrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedESLEnrollment_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedESLEnrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedESLEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedESLEnrollment_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedESLEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedGender_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedGender_CourseStudentFacts]
ON [extension].[CourseStudentFactsAggregatedGender] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedGender_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedGender_GenderDescriptor]
ON [extension].[CourseStudentFactsAggregatedGender] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedGender_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedGender_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedGender] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedHispanicLatinoEthnicity_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedHispanicLatinoEthnicity_CourseStudentFacts]
ON [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedHispanicLatinoEthnicity_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedHispanicLatinoEthnicity_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedLanguage_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedLanguage_CourseStudentFacts]
ON [extension].[CourseStudentFactsAggregatedLanguage] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedLanguage_LanguageDescriptor]
ON [extension].[CourseStudentFactsAggregatedLanguage] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedLanguage_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedLanguage_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedLanguage] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedRace_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedRace_CourseStudentFacts]
ON [extension].[CourseStudentFactsAggregatedRace] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedRace_RaceDescriptor]
ON [extension].[CourseStudentFactsAggregatedRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedRace_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedRace_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedRace] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSchoolFoodServiceProgramService_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSchoolFoodServiceProgramService_CourseStudentFacts]
ON [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor] FOREIGN KEY ([SchoolFoodServiceProgramServiceDescriptorId])
REFERENCES [edfi].[SchoolFoodServiceProgramServiceDescriptor] ([SchoolFoodServiceProgramServiceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor]
ON [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] ([SchoolFoodServiceProgramServiceDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSchoolFoodServiceProgramService_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSchoolFoodServiceProgramService_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSection504Enrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSection504Enrollment_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSection504Enrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSection504Enrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSection504Enrollment_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedSection504Enrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSex_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSex_CourseStudentFacts]
ON [extension].[CourseStudentFactsAggregatedSex] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSex_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSex_SexDescriptor]
ON [extension].[CourseStudentFactsAggregatedSex] ([SexDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSex_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSex_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedSex] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSPED] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSPED_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedSPED] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedSPED_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedSPED_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedSPED] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedTitleIEnrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedTitleIEnrollment_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentFactsAggregatedTitleIEnrollment] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsAggregatedTitleIEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsAggregatedTitleIEnrollment_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsAggregatedTitleIEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseStudentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsStudentsEnrolled_CourseStudentFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[CourseStudentFacts] ([CourseCode], [EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseStudentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_CourseStudentFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseStudentFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[CourseStudentFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CourseSurveyQuestionResponseFacts] WITH CHECK ADD CONSTRAINT [FK_CourseSurveyQuestionResponseFacts_CourseSurveyResponseFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactsAsOfDate])
REFERENCES [extension].[CourseSurveyResponseFacts] ([CourseCode], [EducationOrganizationId], [FactsAsOfDate])
GO

CREATE NONCLUSTERED INDEX [FK_CourseSurveyQuestionResponseFacts_CourseSurveyResponseFacts]
ON [extension].[CourseSurveyQuestionResponseFacts] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactsAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseSurveyQuestionResponseFacts] WITH CHECK ADD CONSTRAINT [FK_CourseSurveyQuestionResponseFacts_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_CourseSurveyQuestionResponseFacts_SurveyQuestion]
ON [extension].[CourseSurveyQuestionResponseFacts] ([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[CourseSurveyQuestionResponseFactsAggregatedNumericResponse] WITH CHECK ADD CONSTRAINT [FK_CourseSurveyQuestionResponseFactsAggregatedNumericResponse_CourseSurveyQuestionResponseFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[CourseSurveyQuestionResponseFacts] ([CourseCode], [EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] WITH CHECK ADD CONSTRAINT [FK_CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_CourseSurveyQuestionResponseFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[CourseSurveyQuestionResponseFacts] ([CourseCode], [EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_CourseSurveyQuestionResponseFacts]
ON [extension].[CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactsAsOfDate] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[CourseSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_CourseSurveyResponseFacts_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_CourseSurveyResponseFacts_Course]
ON [extension].[CourseSurveyResponseFacts] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[CourseSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_CourseSurveyResponseFacts_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_CourseSurveyResponseFacts_SchoolYearType]
ON [extension].[CourseSurveyResponseFacts] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[CourseSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_CourseSurveyResponseFacts_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_CourseSurveyResponseFacts_Survey]
ON [extension].[CourseSurveyResponseFacts] ([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[CourseSurveySectionResponseRatingFacts] WITH CHECK ADD CONSTRAINT [FK_CourseSurveySectionResponseRatingFacts_CourseSurveyResponseFacts] FOREIGN KEY ([CourseCode], [EducationOrganizationId], [FactsAsOfDate])
REFERENCES [extension].[CourseSurveyResponseFacts] ([CourseCode], [EducationOrganizationId], [FactsAsOfDate])
GO

CREATE NONCLUSTERED INDEX [FK_CourseSurveySectionResponseRatingFacts_CourseSurveyResponseFacts]
ON [extension].[CourseSurveySectionResponseRatingFacts] ([CourseCode] ASC, [EducationOrganizationId] ASC, [FactsAsOfDate] ASC)
GO

ALTER TABLE [extension].[CourseSurveySectionResponseRatingFacts] WITH CHECK ADD CONSTRAINT [FK_CourseSurveySectionResponseRatingFacts_SurveySection] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle])
GO

ALTER TABLE [extension].[CourseSurveySectionResponseRatingFactsAggregatedNumericResponse] WITH CHECK ADD CONSTRAINT [FK_CourseSurveySectionResponseRatingFactsAggregatedNumericResponse_CourseSurveySectionResponseRatingFacts] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[CourseSurveySectionResponseRatingFacts] ([SurveyIdentifier], [SurveySectionTitle])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CredentialBoardCertification] WITH CHECK ADD CONSTRAINT [FK_CredentialBoardCertification_BoardCertificationTypeDescriptor] FOREIGN KEY ([BoardCertificationTypeDescriptorId])
REFERENCES [extension].[BoardCertificationTypeDescriptor] ([BoardCertificationTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialBoardCertification_BoardCertificationTypeDescriptor]
ON [extension].[CredentialBoardCertification] ([BoardCertificationTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialBoardCertification] WITH CHECK ADD CONSTRAINT [FK_CredentialBoardCertification_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CredentialCertificationExam] WITH CHECK ADD CONSTRAINT [FK_CredentialCertificationExam_CertificationExamTypeDescriptor] FOREIGN KEY ([CertificationExamTypeDescriptorId])
REFERENCES [extension].[CertificationExamTypeDescriptor] ([CertificationExamTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialCertificationExam_CertificationExamTypeDescriptor]
ON [extension].[CredentialCertificationExam] ([CertificationExamTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialCertificationExam] WITH CHECK ADD CONSTRAINT [FK_CredentialCertificationExam_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CredentialExtension] WITH CHECK ADD CONSTRAINT [FK_CredentialExtension_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CredentialExtension] WITH CHECK ADD CONSTRAINT [FK_CredentialExtension_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialExtension_ValueTypeDescriptor]
ON [extension].[CredentialExtension] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialRecommendation] WITH CHECK ADD CONSTRAINT [FK_CredentialRecommendation_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CredentialRecommendation] WITH CHECK ADD CONSTRAINT [FK_CredentialRecommendation_CredentialFieldDescriptor] FOREIGN KEY ([CredentialFieldDescriptorId])
REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialRecommendation_CredentialFieldDescriptor]
ON [extension].[CredentialRecommendation] ([CredentialFieldDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialRecommendation] WITH CHECK ADD CONSTRAINT [FK_CredentialRecommendation_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialRecommendation_GradeLevelDescriptor]
ON [extension].[CredentialRecommendation] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialRecommendation] WITH CHECK ADD CONSTRAINT [FK_CredentialRecommendation_TeachingCredentialDescriptor] FOREIGN KEY ([TeachingCredentialDescriptorId])
REFERENCES [edfi].[TeachingCredentialDescriptor] ([TeachingCredentialDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialRecommendation_TeachingCredentialDescriptor]
ON [extension].[CredentialRecommendation] ([TeachingCredentialDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialRecommendingInstitution] WITH CHECK ADD CONSTRAINT [FK_CredentialRecommendingInstitution_CountryDescriptor] FOREIGN KEY ([RecommendingInstitutionCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialRecommendingInstitution_CountryDescriptor]
ON [extension].[CredentialRecommendingInstitution] ([RecommendingInstitutionCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[CredentialRecommendingInstitution] WITH CHECK ADD CONSTRAINT [FK_CredentialRecommendingInstitution_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[CredentialRecommendingInstitution] WITH CHECK ADD CONSTRAINT [FK_CredentialRecommendingInstitution_StateAbbreviationDescriptor] FOREIGN KEY ([RecommendingInstitutionStateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_CredentialRecommendingInstitution_StateAbbreviationDescriptor]
ON [extension].[CredentialRecommendingInstitution] ([RecommendingInstitutionStateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationCourseTranscriptFacts_EducationOrganizationStudentAcademicRecordFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[EducationOrganizationStudentAcademicRecordFacts] ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationCourseTranscriptFacts_EducationOrganizationStudentAcademicRecordFacts]
ON [extension].[EducationOrganizationCourseTranscriptFacts] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC, [SchoolYear] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned_EducationOrganizationCourseTranscriptFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[EducationOrganizationCourseTranscriptFacts] ([EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned_EducationOrganizationCourseTranscriptFacts]
ON [extension].[EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned_EducationOrganizationCourseTranscriptFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[EducationOrganizationCourseTranscriptFacts] ([EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationCourseTranscriptFactsStudentsEnrolled_EducationOrganizationCourseTranscriptFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[EducationOrganizationCourseTranscriptFacts] ([EducationOrganizationId], [FactAsOfDate], [FactsAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationCourseTranscriptFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationCourseTranscriptFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationCourseTranscriptFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[EducationOrganizationCourseTranscriptFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFacts_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFacts_EducationOrganization]
ON [extension].[EducationOrganizationFacts] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFacts_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFacts_SchoolYearType]
ON [extension].[EducationOrganizationFacts] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationFactsAggregatedSalary] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFactsAggregatedSalary_EducationOrganizationFacts] FOREIGN KEY ([EducationOrganizationId], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[EducationOrganizationFacts] ([EducationOrganizationId], [FactsAsOfDate], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationFactsVacancies] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFactsVacancies_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFactsVacancies_AcademicSubjectDescriptor]
ON [extension].[EducationOrganizationFactsVacancies] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationFactsVacancies] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFactsVacancies_EducationOrganizationFacts] FOREIGN KEY ([EducationOrganizationId], [FactsAsOfDate], [SchoolYear])
REFERENCES [extension].[EducationOrganizationFacts] ([EducationOrganizationId], [FactsAsOfDate], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFactsVacancies_EducationOrganizationFacts]
ON [extension].[EducationOrganizationFactsVacancies] ([EducationOrganizationId] ASC, [FactsAsOfDate] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationFactsVacancies] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationFactsVacancies_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationFactsVacancies_ValueTypeDescriptor]
ON [extension].[EducationOrganizationFactsVacancies] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAcademicRecordFacts_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAcademicRecordFacts_EducationOrganization]
ON [extension].[EducationOrganizationStudentAcademicRecordFacts] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAcademicRecordFacts_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAcademicRecordFacts_SchoolYearType]
ON [extension].[EducationOrganizationStudentAcademicRecordFacts] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAcademicRecordFacts_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAcademicRecordFacts_TermDescriptor]
ON [extension].[EducationOrganizationStudentAcademicRecordFacts] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_EducationOrganizationStudentAcademicReco] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[EducationOrganizationStudentAcademicRecordFacts] ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage_EducationOrganizationStudentAcademicRecordF] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[EducationOrganizationStudentAcademicRecordFacts] ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled_EducationOrganizationStudentAcademicRecordFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
REFERENCES [extension].[EducationOrganizationStudentAcademicRecordFacts] ([EducationOrganizationId], [FactAsOfDate], [SchoolYear], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFacts_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFacts_AcademicSubjectDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFacts] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFacts_AssessmentCategoryDescriptor] FOREIGN KEY ([AssessmentCategoryDescriptorId])
REFERENCES [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFacts_AssessmentCategoryDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFacts] ([AssessmentCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFacts_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFacts_EducationOrganization]
ON [extension].[EducationOrganizationStudentAssessmentFacts] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFacts_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFacts_GradeLevelDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFacts] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFacts_SchoolYearType] FOREIGN KEY ([TakenSchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFacts_SchoolYearType]
ON [extension].[EducationOrganizationStudentAssessmentFacts] ([TakenSchoolYear] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFacts_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFacts_TermDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFacts] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel_EducationOrganizationStudentAssessmentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
REFERENCES [extension].[EducationOrganizationStudentAssessmentFacts] ([EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel_EducationOrganizationStudentAssessmentFacts]
ON [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC, [TakenSchoolYear] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel_PerformanceLevelDescriptor] FOREIGN KEY ([PerformanceLevelDescriptorId])
REFERENCES [edfi].[PerformanceLevelDescriptor] ([PerformanceLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel_PerformanceLevelDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] ([PerformanceLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFactsAggregatedScoreResult_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId])
REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFactsAggregatedScoreResult_AssessmentReportingMethodDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] ([AssessmentReportingMethodDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFactsAggregatedScoreResult_EducationOrganizationStudentAssessmentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
REFERENCES [extension].[EducationOrganizationStudentAssessmentFacts] ([EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFactsAggregatedScoreResult_ResultDatatypeTypeDescriptor] FOREIGN KEY ([AverageScoreResultDatatypeTypeDescriptorId])
REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFactsAggregatedScoreResult_ResultDatatypeTypeDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] ([AverageScoreResultDatatypeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFactsStudentsEnrolled_EducationOrganizationStudentAssessmentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
REFERENCES [extension].[EducationOrganizationStudentAssessmentFacts] ([EducationOrganizationId], [FactAsOfDate], [TakenSchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentAssessmentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentAssessmentFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentAssessmentFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentAssessmentFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFacts_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFacts_EducationOrganization]
ON [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedByDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedByDisability_DisabilityDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedByDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedByDisability_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedByDisability_EducationOrganizationStudentFacts]
ON [extension].[EducationOrganizationStudentFactsAggregatedByDisability] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedByDisability_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedByDisability_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedByDisability] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedELLEnrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedELLEnrollment_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedELLEnrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedELLEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedELLEnrollment_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedELLEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedESLEnrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedESLEnrollment_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedESLEnrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedESLEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedESLEnrollment_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedESLEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedGender_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedGender_EducationOrganizationStudentFacts]
ON [extension].[EducationOrganizationStudentFactsAggregatedGender] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedGender_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedGender_GenderDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedGender] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedGender_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedGender_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedGender] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity_EducationOrganizationStudentFacts]
ON [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedLanguage_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedLanguage_EducationOrganizationStudentFacts]
ON [extension].[EducationOrganizationStudentFactsAggregatedLanguage] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedLanguage_LanguageDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedLanguage] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedLanguage_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedLanguage_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedLanguage] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedRace_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedRace_EducationOrganizationStudentFacts]
ON [extension].[EducationOrganizationStudentFactsAggregatedRace] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedRace_RaceDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedRace_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedRace_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedRace] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_EducationOrganizationStudentFacts]
ON [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor] FOREIGN KEY ([SchoolFoodServiceProgramServiceDescriptorId])
REFERENCES [edfi].[SchoolFoodServiceProgramServiceDescriptor] ([SchoolFoodServiceProgramServiceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] ([SchoolFoodServiceProgramServiceDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSection504Enrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSection504Enrollment_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSection504Enrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSection504Enrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSection504Enrollment_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedSection504Enrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSex_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSex_EducationOrganizationStudentFacts]
ON [extension].[EducationOrganizationStudentFactsAggregatedSex] ([EducationOrganizationId] ASC, [FactAsOfDate] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSex_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSex_SexDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedSex] ([SexDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSex_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSex_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedSex] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSPED] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSPED_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedSPED] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedSPED_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedSPED_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedSPED] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedTitleIEnrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedTitleIEnrollment_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsAggregatedTitleIEnrollment] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsAggregatedTitleIEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsAggregatedTitleIEnrollment_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsAggregatedTitleIEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsStudentsEnrolled_EducationOrganizationStudentFacts] FOREIGN KEY ([EducationOrganizationId], [FactAsOfDate])
REFERENCES [extension].[EducationOrganizationStudentFacts] ([EducationOrganizationId], [FactAsOfDate])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationStudentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationStudentFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationStudentFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[EducationOrganizationStudentFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveyQuestionResponseFacts_EducationOrganizationSurveyResponseFacts] FOREIGN KEY ([EducationOrganizationId], [FactsAsOfDate], [SurveyIdentifier])
REFERENCES [extension].[EducationOrganizationSurveyResponseFacts] ([EducationOrganizationId], [FactsAsOfDate], [SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveyQuestionResponseFacts_EducationOrganizationSurveyResponseFacts]
ON [extension].[EducationOrganizationSurveyQuestionResponseFacts] ([EducationOrganizationId] ASC, [FactsAsOfDate] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveyQuestionResponseFacts_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveyQuestionResponseFacts_SurveyQuestion]
ON [extension].[EducationOrganizationSurveyQuestionResponseFacts] ([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse_EducationOrganizationSurveyQuestionResponseFacts] FOREIGN KEY ([EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[EducationOrganizationSurveyQuestionResponseFacts] ([EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_EducationOrganizationSurveyQues] FOREIGN KEY ([EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[EducationOrganizationSurveyQuestionResponseFacts] ([EducationOrganizationId], [FactsAsOfDate], [QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_EducationOrganizationSurveyQues]
ON [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] ([EducationOrganizationId] ASC, [FactsAsOfDate] ASC, [QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveyResponseFacts_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveyResponseFacts_EducationOrganization]
ON [extension].[EducationOrganizationSurveyResponseFacts] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveyResponseFacts_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveyResponseFacts_SchoolYearType]
ON [extension].[EducationOrganizationSurveyResponseFacts] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveyResponseFacts_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveyResponseFacts_Survey]
ON [extension].[EducationOrganizationSurveyResponseFacts] ([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveySectionResponseRatingFacts_EducationOrganizationSurveyResponseFacts] FOREIGN KEY ([EducationOrganizationId], [FactsAsOfDate], [SurveyIdentifier])
REFERENCES [extension].[EducationOrganizationSurveyResponseFacts] ([EducationOrganizationId], [FactsAsOfDate], [SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveySectionResponseRatingFacts_EducationOrganizationSurveyResponseFacts]
ON [extension].[EducationOrganizationSurveySectionResponseRatingFacts] ([EducationOrganizationId] ASC, [FactsAsOfDate] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFacts] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveySectionResponseRatingFacts_SurveySection] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle])
GO

CREATE NONCLUSTERED INDEX [FK_EducationOrganizationSurveySectionResponseRatingFacts_SurveySection]
ON [extension].[EducationOrganizationSurveySectionResponseRatingFacts] ([SurveyIdentifier] ASC, [SurveySectionTitle] ASC)
GO

ALTER TABLE [extension].[EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse] WITH CHECK ADD CONSTRAINT [FK_EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse_EducationOrganizationSurveySectionResponseRati] FOREIGN KEY ([EducationOrganizationId], [FactsAsOfDate], [SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[EducationOrganizationSurveySectionResponseRatingFacts] ([EducationOrganizationId], [FactsAsOfDate], [SurveyIdentifier], [SurveySectionTitle])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[EnglishLanguageExamDescriptor] WITH CHECK ADD CONSTRAINT [FK_EnglishLanguageExamDescriptor_Descriptor] FOREIGN KEY ([EnglishLanguageExamDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_AcademicSubjectDescriptor]
ON [extension].[ExternalCourseTranscript] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_CareerPathwayDescriptor] FOREIGN KEY ([CareerPathwayDescriptorId])
REFERENCES [edfi].[CareerPathwayDescriptor] ([CareerPathwayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_CareerPathwayDescriptor]
ON [extension].[ExternalCourseTranscript] ([CareerPathwayDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_Course] FOREIGN KEY ([CourseCode], [CourseEducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_Course]
ON [extension].[ExternalCourseTranscript] ([CourseCode] ASC, [CourseEducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_CourseAttemptResultDescriptor] FOREIGN KEY ([CourseAttemptResultDescriptorId])
REFERENCES [edfi].[CourseAttemptResultDescriptor] ([CourseAttemptResultDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_CourseAttemptResultDescriptor]
ON [extension].[ExternalCourseTranscript] ([CourseAttemptResultDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_CourseRepeatCodeDescriptor] FOREIGN KEY ([CourseRepeatCodeDescriptorId])
REFERENCES [edfi].[CourseRepeatCodeDescriptor] ([CourseRepeatCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_CourseRepeatCodeDescriptor]
ON [extension].[ExternalCourseTranscript] ([CourseRepeatCodeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_CreditTypeDescriptor] FOREIGN KEY ([AttemptedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_CreditTypeDescriptor]
ON [extension].[ExternalCourseTranscript] ([AttemptedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_CreditTypeDescriptor1] FOREIGN KEY ([EarnedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_CreditTypeDescriptor1]
ON [extension].[ExternalCourseTranscript] ([EarnedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_ExternalStudentAcademicRecord] FOREIGN KEY ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalStudentAcademicRecord] ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_ExternalStudentAcademicRecord]
ON [extension].[ExternalCourseTranscript] ([ExternalTerm] ASC, [NameOfInstitution] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_GradeLevelDescriptor] FOREIGN KEY ([WhenTakenGradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_GradeLevelDescriptor]
ON [extension].[ExternalCourseTranscript] ([WhenTakenGradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_GradeLevelDescriptor1] FOREIGN KEY ([OfferedGradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_GradeLevelDescriptor1]
ON [extension].[ExternalCourseTranscript] ([OfferedGradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscript_MethodCreditEarnedDescriptor] FOREIGN KEY ([MethodCreditEarnedDescriptorId])
REFERENCES [edfi].[MethodCreditEarnedDescriptor] ([MethodCreditEarnedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscript_MethodCreditEarnedDescriptor]
ON [extension].[ExternalCourseTranscript] ([MethodCreditEarnedDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscriptCourseIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscriptCourseIdentificationCode_CourseIdentificationSystemDescriptor] FOREIGN KEY ([CourseIdentificationSystemDescriptorId])
REFERENCES [edfi].[CourseIdentificationSystemDescriptor] ([CourseIdentificationSystemDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscriptCourseIdentificationCode_CourseIdentificationSystemDescriptor]
ON [extension].[ExternalCourseTranscriptCourseIdentificationCode] ([CourseIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscriptCourseIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscriptCourseIdentificationCode_ExternalCourseTranscript] FOREIGN KEY ([ExternalCourseCode], [ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalCourseTranscript] ([ExternalCourseCode], [ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscriptCourseIdentificationCode_ExternalCourseTranscript]
ON [extension].[ExternalCourseTranscriptCourseIdentificationCode] ([ExternalCourseCode] ASC, [ExternalTerm] ASC, [NameOfInstitution] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscriptCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor] FOREIGN KEY ([CourseLevelCharacteristicDescriptorId])
REFERENCES [edfi].[CourseLevelCharacteristicDescriptor] ([CourseLevelCharacteristicDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscriptCourseLevelCharacteristic_CourseLevelCharacteristicDescriptor]
ON [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] ([CourseLevelCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscriptCourseLevelCharacteristic_ExternalCourseTranscript] FOREIGN KEY ([ExternalCourseCode], [ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalCourseTranscript] ([ExternalCourseCode], [ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscriptCourseLevelCharacteristic_ExternalCourseTranscript]
ON [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] ([ExternalCourseCode] ASC, [ExternalTerm] ASC, [NameOfInstitution] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscriptEarnedAdditionalCredits_AdditionalCreditTypeDescriptor] FOREIGN KEY ([AdditionalCreditTypeDescriptorId])
REFERENCES [edfi].[AdditionalCreditTypeDescriptor] ([AdditionalCreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscriptEarnedAdditionalCredits_AdditionalCreditTypeDescriptor]
ON [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] ([AdditionalCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] WITH CHECK ADD CONSTRAINT [FK_ExternalCourseTranscriptEarnedAdditionalCredits_ExternalCourseTranscript] FOREIGN KEY ([ExternalCourseCode], [ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalCourseTranscript] ([ExternalCourseCode], [ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalCourseTranscriptEarnedAdditionalCredits_ExternalCourseTranscript]
ON [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] ([ExternalCourseCode] ASC, [ExternalTerm] ASC, [NameOfInstitution] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganization] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganization_OperationalStatusDescriptor] FOREIGN KEY ([OperationalStatusDescriptorId])
REFERENCES [edfi].[OperationalStatusDescriptor] ([OperationalStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganization_OperationalStatusDescriptor]
ON [extension].[ExternalEducationOrganization] ([OperationalStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationAddress] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationAddress_AddressTypeDescriptor]
ON [extension].[ExternalEducationOrganizationAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationAddress] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationAddress_ExternalEducationOrganization] FOREIGN KEY ([NameOfInstitution])
REFERENCES [extension].[ExternalEducationOrganization] ([NameOfInstitution])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationAddress_ExternalEducationOrganization]
ON [extension].[ExternalEducationOrganizationAddress] ([NameOfInstitution] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationAddress] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationAddress_StateAbbreviationDescriptor]
ON [extension].[ExternalEducationOrganizationAddress] ([StateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationAddressPeriod] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationAddressPeriod_ExternalEducationOrganizationAddress] FOREIGN KEY ([AddressTypeDescriptorId], [NameOfInstitution])
REFERENCES [extension].[ExternalEducationOrganizationAddress] ([AddressTypeDescriptorId], [NameOfInstitution])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationAddressPeriod_ExternalEducationOrganizationAddress]
ON [extension].[ExternalEducationOrganizationAddressPeriod] ([AddressTypeDescriptorId] ASC, [NameOfInstitution] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationCategory] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationCategory_EducationOrganizationCategoryDescriptor] FOREIGN KEY ([EducationOrganizationCategoryDescriptorId])
REFERENCES [edfi].[EducationOrganizationCategoryDescriptor] ([EducationOrganizationCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationCategory_EducationOrganizationCategoryDescriptor]
ON [extension].[ExternalEducationOrganizationCategory] ([EducationOrganizationCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationCategory] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationCategory_ExternalEducationOrganization] FOREIGN KEY ([NameOfInstitution])
REFERENCES [extension].[ExternalEducationOrganization] ([NameOfInstitution])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationCategory_ExternalEducationOrganization]
ON [extension].[ExternalEducationOrganizationCategory] ([NameOfInstitution] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationIdentificationCode_EducationOrganizationIdentificationSystemDescriptor] FOREIGN KEY ([EducationOrganizationIdentificationSystemDescriptorId])
REFERENCES [edfi].[EducationOrganizationIdentificationSystemDescriptor] ([EducationOrganizationIdentificationSystemDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationIdentificationCode_EducationOrganizationIdentificationSystemDescriptor]
ON [extension].[ExternalEducationOrganizationIdentificationCode] ([EducationOrganizationIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationIdentificationCode_ExternalEducationOrganization] FOREIGN KEY ([NameOfInstitution])
REFERENCES [extension].[ExternalEducationOrganization] ([NameOfInstitution])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationIdentificationCode_ExternalEducationOrganization]
ON [extension].[ExternalEducationOrganizationIdentificationCode] ([NameOfInstitution] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationInstitutionTelephone] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationInstitutionTelephone_ExternalEducationOrganization] FOREIGN KEY ([NameOfInstitution])
REFERENCES [extension].[ExternalEducationOrganization] ([NameOfInstitution])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationInstitutionTelephone_ExternalEducationOrganization]
ON [extension].[ExternalEducationOrganizationInstitutionTelephone] ([NameOfInstitution] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationInstitutionTelephone] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationInstitutionTelephone_InstitutionTelephoneNumberTypeDescriptor] FOREIGN KEY ([InstitutionTelephoneNumberTypeDescriptorId])
REFERENCES [edfi].[InstitutionTelephoneNumberTypeDescriptor] ([InstitutionTelephoneNumberTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationInstitutionTelephone_InstitutionTelephoneNumberTypeDescriptor]
ON [extension].[ExternalEducationOrganizationInstitutionTelephone] ([InstitutionTelephoneNumberTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationInternationalAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationInternationalAddress_AddressTypeDescriptor]
ON [extension].[ExternalEducationOrganizationInternationalAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationInternationalAddress_CountryDescriptor]
ON [extension].[ExternalEducationOrganizationInternationalAddress] ([CountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalEducationOrganizationInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_ExternalEducationOrganizationInternationalAddress_ExternalEducationOrganization] FOREIGN KEY ([NameOfInstitution])
REFERENCES [extension].[ExternalEducationOrganization] ([NameOfInstitution])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalEducationOrganizationInternationalAddress_ExternalEducationOrganization]
ON [extension].[ExternalEducationOrganizationInternationalAddress] ([NameOfInstitution] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor] FOREIGN KEY ([CumulativeEarnedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor]
ON [extension].[ExternalStudentAcademicRecord] ([CumulativeEarnedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor1] FOREIGN KEY ([CumulativeAttemptedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor1]
ON [extension].[ExternalStudentAcademicRecord] ([CumulativeAttemptedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor2] FOREIGN KEY ([SessionEarnedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor2]
ON [extension].[ExternalStudentAcademicRecord] ([SessionEarnedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor3] FOREIGN KEY ([SessionAttemptedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecord_CreditTypeDescriptor3]
ON [extension].[ExternalStudentAcademicRecord] ([SessionAttemptedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecord_ExternalEducationOrganization] FOREIGN KEY ([NameOfInstitution])
REFERENCES [extension].[ExternalEducationOrganization] ([NameOfInstitution])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecord_ExternalEducationOrganization]
ON [extension].[ExternalStudentAcademicRecord] ([NameOfInstitution] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecord_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecord_SchoolYearType]
ON [extension].[ExternalStudentAcademicRecord] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecord_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecord_Student]
ON [extension].[ExternalStudentAcademicRecord] ([StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordAcademicHonor] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordAcademicHonor_AcademicHonorCategoryDescriptor] FOREIGN KEY ([AcademicHonorCategoryDescriptorId])
REFERENCES [edfi].[AcademicHonorCategoryDescriptor] ([AcademicHonorCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordAcademicHonor_AcademicHonorCategoryDescriptor]
ON [extension].[ExternalStudentAcademicRecordAcademicHonor] ([AcademicHonorCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordAcademicHonor] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordAcademicHonor_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId])
REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordAcademicHonor_AchievementCategoryDescriptor]
ON [extension].[ExternalStudentAcademicRecordAcademicHonor] ([AchievementCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordAcademicHonor] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordAcademicHonor_ExternalStudentAcademicRecord] FOREIGN KEY ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalStudentAcademicRecord] ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordAcademicHonor_ExternalStudentAcademicRecord]
ON [extension].[ExternalStudentAcademicRecordAcademicHonor] ([ExternalTerm] ASC, [NameOfInstitution] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordClassRanking] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordClassRanking_ExternalStudentAcademicRecord] FOREIGN KEY ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalStudentAcademicRecord] ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordDiploma_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId])
REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordDiploma_AchievementCategoryDescriptor]
ON [extension].[ExternalStudentAcademicRecordDiploma] ([AchievementCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordDiploma_DiplomaLevelDescriptor] FOREIGN KEY ([DiplomaLevelDescriptorId])
REFERENCES [edfi].[DiplomaLevelDescriptor] ([DiplomaLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordDiploma_DiplomaLevelDescriptor]
ON [extension].[ExternalStudentAcademicRecordDiploma] ([DiplomaLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordDiploma_DiplomaTypeDescriptor] FOREIGN KEY ([DiplomaTypeDescriptorId])
REFERENCES [edfi].[DiplomaTypeDescriptor] ([DiplomaTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordDiploma_DiplomaTypeDescriptor]
ON [extension].[ExternalStudentAcademicRecordDiploma] ([DiplomaTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordDiploma_ExternalStudentAcademicRecord] FOREIGN KEY ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalStudentAcademicRecord] ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordDiploma_ExternalStudentAcademicRecord]
ON [extension].[ExternalStudentAcademicRecordDiploma] ([ExternalTerm] ASC, [NameOfInstitution] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordRecognition] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordRecognition_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId])
REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordRecognition_AchievementCategoryDescriptor]
ON [extension].[ExternalStudentAcademicRecordRecognition] ([AchievementCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordRecognition] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordRecognition_ExternalStudentAcademicRecord] FOREIGN KEY ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
REFERENCES [extension].[ExternalStudentAcademicRecord] ([ExternalTerm], [NameOfInstitution], [SchoolYear], [StudentUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordRecognition_ExternalStudentAcademicRecord]
ON [extension].[ExternalStudentAcademicRecordRecognition] ([ExternalTerm] ASC, [NameOfInstitution] ASC, [SchoolYear] ASC, [StudentUSI] ASC)
GO

ALTER TABLE [extension].[ExternalStudentAcademicRecordRecognition] WITH CHECK ADD CONSTRAINT [FK_ExternalStudentAcademicRecordRecognition_RecognitionTypeDescriptor] FOREIGN KEY ([RecognitionTypeDescriptorId])
REFERENCES [edfi].[RecognitionTypeDescriptor] ([RecognitionTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ExternalStudentAcademicRecordRecognition_RecognitionTypeDescriptor]
ON [extension].[ExternalStudentAcademicRecordRecognition] ([RecognitionTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[FieldworkTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_FieldworkTypeDescriptor_Descriptor] FOREIGN KEY ([FieldworkTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[GenderDescriptor] WITH CHECK ADD CONSTRAINT [FK_GenderDescriptor_Descriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[GradebookEntryExtension] WITH CHECK ADD CONSTRAINT [FK_GradebookEntryExtension_GradebookEntry] FOREIGN KEY ([DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[GradebookEntry] ([DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[GradebookEntryExtension] WITH CHECK ADD CONSTRAINT [FK_GradebookEntryExtension_ProgramGatewayDescriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [extension].[ProgramGatewayDescriptor] ([ProgramGatewayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_GradebookEntryExtension_ProgramGatewayDescriptor]
ON [extension].[GradebookEntryExtension] ([ProgramGatewayDescriptorId] ASC)
GO

ALTER TABLE [extension].[LevelOfDegreeAwardedDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelOfDegreeAwardedDescriptor_Descriptor] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[LevelTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_LevelTypeDescriptor_Descriptor] FOREIGN KEY ([LevelTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[PerformanceMeasure] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasure_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasure_AcademicSubjectDescriptor]
ON [extension].[PerformanceMeasure] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasure] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasure_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasure_Course]
ON [extension].[PerformanceMeasure] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasure] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasure_PerformanceMeasureTypeDescriptor] FOREIGN KEY ([PerformanceMeasureTypeDescriptorId])
REFERENCES [extension].[PerformanceMeasureTypeDescriptor] ([PerformanceMeasureTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasure_PerformanceMeasureTypeDescriptor]
ON [extension].[PerformanceMeasure] ([PerformanceMeasureTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasure] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasure_Rubric] FOREIGN KEY ([RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId])
REFERENCES [extension].[Rubric] ([RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasure_Rubric]
ON [extension].[PerformanceMeasure] ([RubricEducationOrganizationId] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasure] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasure_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasure_TermDescriptor]
ON [extension].[PerformanceMeasure] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureFacts] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureFacts_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureFacts_AcademicSubjectDescriptor]
ON [extension].[PerformanceMeasureFacts] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureFacts] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureFacts_PerformanceMeasureTypeDescriptor] FOREIGN KEY ([PerformanceMeasureTypeDescriptorId])
REFERENCES [extension].[PerformanceMeasureTypeDescriptor] ([PerformanceMeasureTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureFacts_PerformanceMeasureTypeDescriptor]
ON [extension].[PerformanceMeasureFacts] ([PerformanceMeasureTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureFacts] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureFacts_Rubric] FOREIGN KEY ([RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId])
REFERENCES [extension].[Rubric] ([RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureFacts_Rubric]
ON [extension].[PerformanceMeasureFacts] ([RubricEducationOrganizationId] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureFacts] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureFacts_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureFacts_SchoolYearType]
ON [extension].[PerformanceMeasureFacts] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureFactsGradeLevel] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureFactsGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureFactsGradeLevel_GradeLevelDescriptor]
ON [extension].[PerformanceMeasureFactsGradeLevel] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureFactsGradeLevel] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureFactsGradeLevel_PerformanceMeasureFacts] FOREIGN KEY ([FactsAsOfDate], [RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId], [SchoolYear])
REFERENCES [extension].[PerformanceMeasureFacts] ([FactsAsOfDate], [RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId], [SchoolYear])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureFactsGradeLevel_PerformanceMeasureFacts]
ON [extension].[PerformanceMeasureFactsGradeLevel] ([FactsAsOfDate] ASC, [RubricEducationOrganizationId] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureGradeLevel] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureGradeLevel_GradeLevelDescriptor]
ON [extension].[PerformanceMeasureGradeLevel] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureGradeLevel] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureGradeLevel_PerformanceMeasure] FOREIGN KEY ([PerformanceMeasureIdentifier])
REFERENCES [extension].[PerformanceMeasure] ([PerformanceMeasureIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureGradeLevel_PerformanceMeasure]
ON [extension].[PerformanceMeasureGradeLevel] ([PerformanceMeasureIdentifier] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasurePersonBeingReviewed] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasurePersonBeingReviewed_PerformanceMeasure] FOREIGN KEY ([PerformanceMeasureIdentifier])
REFERENCES [extension].[PerformanceMeasure] ([PerformanceMeasureIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[PerformanceMeasurePersonBeingReviewed] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasurePersonBeingReviewed_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasurePersonBeingReviewed_Prospect]
ON [extension].[PerformanceMeasurePersonBeingReviewed] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasurePersonBeingReviewed] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasurePersonBeingReviewed_Staff] FOREIGN KEY ([PersonBeingReviewedStaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasurePersonBeingReviewed_Staff]
ON [extension].[PerformanceMeasurePersonBeingReviewed] ([PersonBeingReviewedStaffUSI] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasurePersonBeingReviewed] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasurePersonBeingReviewed_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasurePersonBeingReviewed_TeacherCandidate]
ON [extension].[PerformanceMeasurePersonBeingReviewed] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureProgramGateway] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureProgramGateway_PerformanceMeasure] FOREIGN KEY ([PerformanceMeasureIdentifier])
REFERENCES [extension].[PerformanceMeasure] ([PerformanceMeasureIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureProgramGateway_PerformanceMeasure]
ON [extension].[PerformanceMeasureProgramGateway] ([PerformanceMeasureIdentifier] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureProgramGateway] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureProgramGateway_ProgramGatewayDescriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [extension].[ProgramGatewayDescriptor] ([ProgramGatewayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureProgramGateway_ProgramGatewayDescriptor]
ON [extension].[PerformanceMeasureProgramGateway] ([ProgramGatewayDescriptorId] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureReviewer] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureReviewer_PerformanceMeasure] FOREIGN KEY ([PerformanceMeasureIdentifier])
REFERENCES [extension].[PerformanceMeasure] ([PerformanceMeasureIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureReviewer_PerformanceMeasure]
ON [extension].[PerformanceMeasureReviewer] ([PerformanceMeasureIdentifier] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureReviewer] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureReviewer_Staff] FOREIGN KEY ([ReviewerStaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_PerformanceMeasureReviewer_Staff]
ON [extension].[PerformanceMeasureReviewer] ([ReviewerStaffUSI] ASC)
GO

ALTER TABLE [extension].[PerformanceMeasureReviewerReceivedTraining] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureReviewerReceivedTraining_PerformanceMeasureReviewer] FOREIGN KEY ([FirstName], [LastSurname], [PerformanceMeasureIdentifier])
REFERENCES [extension].[PerformanceMeasureReviewer] ([FirstName], [LastSurname], [PerformanceMeasureIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[PerformanceMeasureTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_PerformanceMeasureTypeDescriptor_Descriptor] FOREIGN KEY ([PerformanceMeasureTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[PreviousCareerDescriptor] WITH CHECK ADD CONSTRAINT [FK_PreviousCareerDescriptor_Descriptor] FOREIGN KEY ([PreviousCareerDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[ProfessionalDevelopmentEvent] WITH CHECK ADD CONSTRAINT [FK_ProfessionalDevelopmentEvent_ProfessionalDevelopmentOfferedByDescriptor] FOREIGN KEY ([ProfessionalDevelopmentOfferedByDescriptorId])
REFERENCES [extension].[ProfessionalDevelopmentOfferedByDescriptor] ([ProfessionalDevelopmentOfferedByDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProfessionalDevelopmentEvent_ProfessionalDevelopmentOfferedByDescriptor]
ON [extension].[ProfessionalDevelopmentEvent] ([ProfessionalDevelopmentOfferedByDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProfessionalDevelopmentOfferedByDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProfessionalDevelopmentOfferedByDescriptor_Descriptor] FOREIGN KEY ([ProfessionalDevelopmentOfferedByDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[ProgramGatewayDescriptor] WITH CHECK ADD CONSTRAINT [FK_ProgramGatewayDescriptor_Descriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[Prospect] WITH CHECK ADD CONSTRAINT [FK_Prospect_EducationOrganization] FOREIGN KEY ([ProspectEducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_Prospect_EducationOrganization]
ON [extension].[Prospect] ([ProspectEducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Prospect] WITH CHECK ADD CONSTRAINT [FK_Prospect_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Prospect_GenderDescriptor]
ON [extension].[Prospect] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[Prospect] WITH CHECK ADD CONSTRAINT [FK_Prospect_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Prospect_SexDescriptor]
ON [extension].[Prospect] ([SexDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectCredential] WITH CHECK ADD CONSTRAINT [FK_ProspectCredential_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectCredential_Credential]
ON [extension].[ProspectCredential] ([CredentialIdentifier] ASC, [StateOfIssueStateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectCredential] WITH CHECK ADD CONSTRAINT [FK_ProspectCredential_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectCredential_Prospect]
ON [extension].[ProspectCredential] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectCurrentPosition] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPosition_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPosition_AcademicSubjectDescriptor]
ON [extension].[ProspectCurrentPosition] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectCurrentPosition] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPosition_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPositionGradeLevel_GradeLevelDescriptor]
ON [extension].[ProspectCurrentPositionGradeLevel] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectCurrentPositionGradeLevel] WITH CHECK ADD CONSTRAINT [FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[ProspectCurrentPosition] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectCurrentPositionGradeLevel_ProspectCurrentPosition]
ON [extension].[ProspectCurrentPositionGradeLevel] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectDisability] WITH CHECK ADD CONSTRAINT [FK_ProspectDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectDisability_DisabilityDescriptor]
ON [extension].[ProspectDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectDisability] WITH CHECK ADD CONSTRAINT [FK_ProspectDisability_DisabilityDeterminationSourceTypeDescriptor] FOREIGN KEY ([DisabilityDeterminationSourceTypeDescriptorId])
REFERENCES [edfi].[DisabilityDeterminationSourceTypeDescriptor] ([DisabilityDeterminationSourceTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectDisability_DisabilityDeterminationSourceTypeDescriptor]
ON [extension].[ProspectDisability] ([DisabilityDeterminationSourceTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectDisability] WITH CHECK ADD CONSTRAINT [FK_ProspectDisability_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectDisability_Prospect]
ON [extension].[ProspectDisability] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_ProspectDisabilityDesignation_DisabilityDesignationDescriptor] FOREIGN KEY ([DisabilityDesignationDescriptorId])
REFERENCES [edfi].[DisabilityDesignationDescriptor] ([DisabilityDesignationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectDisabilityDesignation_DisabilityDesignationDescriptor]
ON [extension].[ProspectDisabilityDesignation] ([DisabilityDesignationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_ProspectDisabilityDesignation_ProspectDisability] FOREIGN KEY ([DisabilityDescriptorId], [ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[ProspectDisability] ([DisabilityDescriptorId], [ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectDisabilityDesignation_ProspectDisability]
ON [extension].[ProspectDisabilityDesignation] ([DisabilityDescriptorId] ASC, [ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectPersonalIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectPersonalIdentificationDocument_CountryDescriptor]
ON [extension].[ProspectPersonalIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectPersonalIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectPersonalIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [extension].[ProspectPersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectPersonalIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectPersonalIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [extension].[ProspectPersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectPersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_ProspectPersonalIdentificationDocument_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectPersonalIdentificationDocument_Prospect]
ON [extension].[ProspectPersonalIdentificationDocument] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_ProspectProfessionalDevelopmentEventAttendance_AttendanceEventCategoryDescriptor] FOREIGN KEY ([AttendanceEventCategoryDescriptorId])
REFERENCES [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectProfessionalDevelopmentEventAttendance_AttendanceEventCategoryDescriptor]
ON [extension].[ProspectProfessionalDevelopmentEventAttendance] ([AttendanceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_ProspectProfessionalDevelopmentEventAttendance_ProfessionalDevelopmentEvent] FOREIGN KEY ([ProfessionalDevelopmentTitle])
REFERENCES [extension].[ProfessionalDevelopmentEvent] ([ProfessionalDevelopmentTitle])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectProfessionalDevelopmentEventAttendance_ProfessionalDevelopmentEvent]
ON [extension].[ProspectProfessionalDevelopmentEventAttendance] ([ProfessionalDevelopmentTitle] ASC)
GO

ALTER TABLE [extension].[ProspectProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_ProspectProfessionalDevelopmentEventAttendance_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectProfessionalDevelopmentEventAttendance_Prospect]
ON [extension].[ProspectProfessionalDevelopmentEventAttendance] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectQualifications] WITH CHECK ADD CONSTRAINT [FK_ProspectQualifications_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[ProspectRace] WITH CHECK ADD CONSTRAINT [FK_ProspectRace_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectRace_Prospect]
ON [extension].[ProspectRace] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectRace] WITH CHECK ADD CONSTRAINT [FK_ProspectRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectRace_RaceDescriptor]
ON [extension].[ProspectRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH CHECK ADD CONSTRAINT [FK_ProspectRecruitmentEvent_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectRecruitmentEvent_Prospect]
ON [extension].[ProspectRecruitmentEvent] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectRecruitmentEvent] WITH CHECK ADD CONSTRAINT [FK_ProspectRecruitmentEvent_RecruitmentEvent] FOREIGN KEY ([EventDate], [EventTitle])
REFERENCES [extension].[RecruitmentEvent] ([EventDate], [EventTitle])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectRecruitmentEvent_RecruitmentEvent]
ON [extension].[ProspectRecruitmentEvent] ([EventDate] ASC, [EventTitle] ASC)
GO

ALTER TABLE [extension].[ProspectTelephone] WITH CHECK ADD CONSTRAINT [FK_ProspectTelephone_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectTelephone_Prospect]
ON [extension].[ProspectTelephone] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[ProspectTelephone] WITH CHECK ADD CONSTRAINT [FK_ProspectTelephone_TelephoneNumberTypeDescriptor] FOREIGN KEY ([TelephoneNumberTypeDescriptorId])
REFERENCES [edfi].[TelephoneNumberTypeDescriptor] ([TelephoneNumberTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_ProspectTelephone_TelephoneNumberTypeDescriptor]
ON [extension].[ProspectTelephone] ([TelephoneNumberTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ProspectTouchpoint] WITH CHECK ADD CONSTRAINT [FK_ProspectTouchpoint_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_ProspectTouchpoint_Prospect]
ON [extension].[ProspectTouchpoint] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[QuestionFormDescriptor] WITH CHECK ADD CONSTRAINT [FK_QuestionFormDescriptor_Descriptor] FOREIGN KEY ([QuestionFormDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[Rubric] WITH CHECK ADD CONSTRAINT [FK_Rubric_EducationOrganization] FOREIGN KEY ([RubricEducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_Rubric_EducationOrganization]
ON [extension].[Rubric] ([RubricEducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Rubric] WITH CHECK ADD CONSTRAINT [FK_Rubric_RubricTypeDescriptor] FOREIGN KEY ([RubricTypeDescriptorId])
REFERENCES [extension].[RubricTypeDescriptor] ([RubricTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Rubric_RubricTypeDescriptor]
ON [extension].[Rubric] ([RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricLevel] WITH CHECK ADD CONSTRAINT [FK_RubricLevel_Rubric] FOREIGN KEY ([RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId])
REFERENCES [extension].[Rubric] ([RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevel_Rubric]
ON [extension].[RubricLevel] ([RubricEducationOrganizationId] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricLevelInformation] WITH CHECK ADD CONSTRAINT [FK_RubricLevelInformation_LevelTypeDescriptor] FOREIGN KEY ([LevelTypeDescriptorId])
REFERENCES [extension].[LevelTypeDescriptor] ([LevelTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevelInformation_LevelTypeDescriptor]
ON [extension].[RubricLevelInformation] ([LevelTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricLevelInformation] WITH CHECK ADD CONSTRAINT [FK_RubricLevelInformation_RubricLevel] FOREIGN KEY ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
REFERENCES [extension].[RubricLevel] ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[RubricLevelResponse] WITH CHECK ADD CONSTRAINT [FK_RubricLevelResponse_PerformanceMeasure] FOREIGN KEY ([PerformanceMeasureIdentifier])
REFERENCES [extension].[PerformanceMeasure] ([PerformanceMeasureIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevelResponse_PerformanceMeasure]
ON [extension].[RubricLevelResponse] ([PerformanceMeasureIdentifier] ASC)
GO

ALTER TABLE [extension].[RubricLevelResponse] WITH CHECK ADD CONSTRAINT [FK_RubricLevelResponse_RubricLevel] FOREIGN KEY ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
REFERENCES [extension].[RubricLevel] ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevelResponse_RubricLevel]
ON [extension].[RubricLevelResponse] ([RubricEducationOrganizationId] ASC, [RubricLevelCode] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricLevelResponseFacts] WITH CHECK ADD CONSTRAINT [FK_RubricLevelResponseFacts_PerformanceMeasureFacts] FOREIGN KEY ([FactsAsOfDate], [RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId], [SchoolYear])
REFERENCES [extension].[PerformanceMeasureFacts] ([FactsAsOfDate], [RubricEducationOrganizationId], [RubricTitle], [RubricTypeDescriptorId], [SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevelResponseFacts_PerformanceMeasureFacts]
ON [extension].[RubricLevelResponseFacts] ([FactsAsOfDate] ASC, [RubricEducationOrganizationId] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC, [SchoolYear] ASC)
GO

ALTER TABLE [extension].[RubricLevelResponseFacts] WITH CHECK ADD CONSTRAINT [FK_RubricLevelResponseFacts_RubricLevel] FOREIGN KEY ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
REFERENCES [extension].[RubricLevel] ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevelResponseFacts_RubricLevel]
ON [extension].[RubricLevelResponseFacts] ([RubricEducationOrganizationId] ASC, [RubricLevelCode] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricLevelResponseFactsAggregatedNumericResponse] WITH CHECK ADD CONSTRAINT [FK_RubricLevelResponseFactsAggregatedNumericResponse_RubricLevelResponseFacts] FOREIGN KEY ([FactsAsOfDate], [RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId], [SchoolYear])
REFERENCES [extension].[RubricLevelResponseFacts] ([FactsAsOfDate], [RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId], [SchoolYear])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[RubricLevelTheme] WITH CHECK ADD CONSTRAINT [FK_RubricLevelTheme_RubricLevel] FOREIGN KEY ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
REFERENCES [extension].[RubricLevel] ([RubricEducationOrganizationId], [RubricLevelCode], [RubricTitle], [RubricTypeDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevelTheme_RubricLevel]
ON [extension].[RubricLevelTheme] ([RubricEducationOrganizationId] ASC, [RubricLevelCode] ASC, [RubricTitle] ASC, [RubricTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricLevelTheme] WITH CHECK ADD CONSTRAINT [FK_RubricLevelTheme_ThemeDescriptor] FOREIGN KEY ([ThemeDescriptorId])
REFERENCES [extension].[ThemeDescriptor] ([ThemeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_RubricLevelTheme_ThemeDescriptor]
ON [extension].[RubricLevelTheme] ([ThemeDescriptorId] ASC)
GO

ALTER TABLE [extension].[RubricTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_RubricTypeDescriptor_Descriptor] FOREIGN KEY ([RubricTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[SalaryTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_SalaryTypeDescriptor_Descriptor] FOREIGN KEY ([SalaryTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[SchoolExtension] WITH CHECK ADD CONSTRAINT [FK_SchoolExtension_SchoolStatusDescriptor] FOREIGN KEY ([SchoolStatusDescriptorId])
REFERENCES [extension].[SchoolStatusDescriptor] ([SchoolStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SchoolExtension_SchoolStatusDescriptor]
ON [extension].[SchoolExtension] ([SchoolStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[SchoolStatusDescriptor] WITH CHECK ADD CONSTRAINT [FK_SchoolStatusDescriptor_Descriptor] FOREIGN KEY ([SchoolStatusDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[SectionCourseTranscriptFacts] WITH CHECK ADD CONSTRAINT [FK_SectionCourseTranscriptFacts_SectionStudentAcademicRecordFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentAcademicRecordFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionCourseTranscriptFacts_SectionStudentAcademicRecordFacts]
ON [extension].[SectionCourseTranscriptFacts] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned] WITH CHECK ADD CONSTRAINT [FK_SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned_SectionCourseTranscriptFacts] FOREIGN KEY ([FactAsOfDate], [FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionCourseTranscriptFacts] ([FactAsOfDate], [FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned_SectionCourseTranscriptFacts]
ON [extension].[SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned] ([FactAsOfDate] ASC, [FactsAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionCourseTranscriptFactsAggregatedNumericGradeEarned] WITH CHECK ADD CONSTRAINT [FK_SectionCourseTranscriptFactsAggregatedNumericGradeEarned_SectionCourseTranscriptFacts] FOREIGN KEY ([FactAsOfDate], [FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionCourseTranscriptFacts] ([FactAsOfDate], [FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionCourseTranscriptFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionCourseTranscriptFactsStudentsEnrolled_SectionCourseTranscriptFacts] FOREIGN KEY ([FactAsOfDate], [FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionCourseTranscriptFacts] ([FactAsOfDate], [FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionCourseTranscriptFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionCourseTranscriptFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionCourseTranscriptFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[SectionCourseTranscriptFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAcademicRecordFacts] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAcademicRecordFacts_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAcademicRecordFacts_Section]
ON [extension].[SectionStudentAcademicRecordFacts] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage_SectionStudentAcademicRecordFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentAcademicRecordFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage_SectionStudentAcademicRecordFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentAcademicRecordFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentAcademicRecordFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAcademicRecordFactsStudentsEnrolled_SectionStudentAcademicRecordFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentAcademicRecordFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentAcademicRecordFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAcademicRecordFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAcademicRecordFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[SectionStudentAcademicRecordFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFacts_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFacts_AcademicSubjectDescriptor]
ON [extension].[SectionStudentAssessmentFacts] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFacts_AssessmentCategoryDescriptor] FOREIGN KEY ([AssessmentCategoryDescriptorId])
REFERENCES [edfi].[AssessmentCategoryDescriptor] ([AssessmentCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFacts_AssessmentCategoryDescriptor]
ON [extension].[SectionStudentAssessmentFacts] ([AssessmentCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFacts_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFacts_GradeLevelDescriptor]
ON [extension].[SectionStudentAssessmentFacts] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFacts_SchoolYearType] FOREIGN KEY ([TakenSchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFacts_SchoolYearType]
ON [extension].[SectionStudentAssessmentFacts] ([TakenSchoolYear] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFacts] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFacts_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFacts_Section]
ON [extension].[SectionStudentAssessmentFacts] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFactsAggregatedPerformanceLevel_PerformanceLevelDescriptor] FOREIGN KEY ([PerformanceLevelDescriptorId])
REFERENCES [edfi].[PerformanceLevelDescriptor] ([PerformanceLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFactsAggregatedPerformanceLevel_PerformanceLevelDescriptor]
ON [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] ([PerformanceLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFactsAggregatedPerformanceLevel_SectionStudentAssessmentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [TakenSchoolYear])
REFERENCES [extension].[SectionStudentAssessmentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [TakenSchoolYear])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFactsAggregatedPerformanceLevel_SectionStudentAssessmentFacts]
ON [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [TakenSchoolYear] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFactsAggregatedScoreResult_AssessmentReportingMethodDescriptor] FOREIGN KEY ([AssessmentReportingMethodDescriptorId])
REFERENCES [edfi].[AssessmentReportingMethodDescriptor] ([AssessmentReportingMethodDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFactsAggregatedScoreResult_AssessmentReportingMethodDescriptor]
ON [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] ([AssessmentReportingMethodDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFactsAggregatedScoreResult_ResultDatatypeTypeDescriptor] FOREIGN KEY ([AverageScoreResultDatatypeTypeDescriptorId])
REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFactsAggregatedScoreResult_ResultDatatypeTypeDescriptor]
ON [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] ([AverageScoreResultDatatypeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFactsAggregatedScoreResult_SectionStudentAssessmentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [TakenSchoolYear])
REFERENCES [extension].[SectionStudentAssessmentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [TakenSchoolYear])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentAssessmentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFactsStudentsEnrolled_SectionStudentAssessmentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [TakenSchoolYear])
REFERENCES [extension].[SectionStudentAssessmentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [TakenSchoolYear])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentAssessmentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentAssessmentFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentAssessmentFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[SectionStudentAssessmentFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFacts] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFacts_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFacts_Section]
ON [extension].[SectionStudentFacts] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedByDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedByDisability_DisabilityDescriptor]
ON [extension].[SectionStudentFactsAggregatedByDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedByDisability_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedByDisability_SectionStudentFacts]
ON [extension].[SectionStudentFactsAggregatedByDisability] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedByDisability] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedByDisability_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedByDisability_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedByDisability] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedELLEnrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedELLEnrollment_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedELLEnrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedELLEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedELLEnrollment_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedELLEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedESLEnrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedESLEnrollment_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedESLEnrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedESLEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedESLEnrollment_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedESLEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedGender_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedGender_GenderDescriptor]
ON [extension].[SectionStudentFactsAggregatedGender] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedGender_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedGender_SectionStudentFacts]
ON [extension].[SectionStudentFactsAggregatedGender] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedGender] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedGender_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedGender_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedGender] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedHispanicLatinoEthnicity_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedHispanicLatinoEthnicity_SectionStudentFacts]
ON [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedHispanicLatinoEthnicity_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedHispanicLatinoEthnicity_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedLanguage_LanguageDescriptor]
ON [extension].[SectionStudentFactsAggregatedLanguage] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedLanguage_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedLanguage_SectionStudentFacts]
ON [extension].[SectionStudentFactsAggregatedLanguage] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedLanguage] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedLanguage_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedLanguage_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedLanguage] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedRace_RaceDescriptor]
ON [extension].[SectionStudentFactsAggregatedRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedRace_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedRace_SectionStudentFacts]
ON [extension].[SectionStudentFactsAggregatedRace] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedRace] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedRace_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedRace_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedRace] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor] FOREIGN KEY ([SchoolFoodServiceProgramServiceDescriptorId])
REFERENCES [edfi].[SchoolFoodServiceProgramServiceDescriptor] ([SchoolFoodServiceProgramServiceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSchoolFoodServiceProgramService_SchoolFoodServiceProgramServiceDescriptor]
ON [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] ([SchoolFoodServiceProgramServiceDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSchoolFoodServiceProgramService_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSchoolFoodServiceProgramService_SectionStudentFacts]
ON [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSchoolFoodServiceProgramService_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSchoolFoodServiceProgramService_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSection504Enrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSection504Enrollment_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSection504Enrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSection504Enrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSection504Enrollment_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedSection504Enrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSex_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSex_SectionStudentFacts]
ON [extension].[SectionStudentFactsAggregatedSex] ([FactAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSex_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSex_SexDescriptor]
ON [extension].[SectionStudentFactsAggregatedSex] ([SexDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSex] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSex_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSex_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedSex] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSPED] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSPED_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedSPED] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedSPED_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedSPED_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedSPED] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedTitleIEnrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedTitleIEnrollment_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentFactsAggregatedTitleIEnrollment] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsAggregatedTitleIEnrollment_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsAggregatedTitleIEnrollment_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsAggregatedTitleIEnrollment] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionStudentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsStudentsEnrolled_SectionStudentFacts] FOREIGN KEY ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [extension].[SectionStudentFacts] ([FactAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionStudentFactsStudentsEnrolled] WITH CHECK ADD CONSTRAINT [FK_SectionStudentFactsStudentsEnrolled_ValueTypeDescriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [extension].[ValueTypeDescriptor] ([ValueTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SectionStudentFactsStudentsEnrolled_ValueTypeDescriptor]
ON [extension].[SectionStudentFactsStudentsEnrolled] ([ValueTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[SectionSurveyQuestionResponseFacts] WITH CHECK ADD CONSTRAINT [FK_SectionSurveyQuestionResponseFacts_SectionSurveyResponseFacts] FOREIGN KEY ([FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
REFERENCES [extension].[SectionSurveyResponseFacts] ([FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionSurveyQuestionResponseFacts_SectionSurveyResponseFacts]
ON [extension].[SectionSurveyQuestionResponseFacts] ([FactsAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SectionSurveyQuestionResponseFacts] WITH CHECK ADD CONSTRAINT [FK_SectionSurveyQuestionResponseFacts_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSurveyQuestionResponseFacts_SurveyQuestion]
ON [extension].[SectionSurveyQuestionResponseFacts] ([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SectionSurveyQuestionResponseFactsAggregatedNumericResponse] WITH CHECK ADD CONSTRAINT [FK_SectionSurveyQuestionResponseFactsAggregatedNumericResponse_SectionSurveyQuestionResponseFacts] FOREIGN KEY ([FactsAsOfDate], [LocalCourseCode], [QuestionCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
REFERENCES [extension].[SectionSurveyQuestionResponseFacts] ([FactsAsOfDate], [LocalCourseCode], [QuestionCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] WITH CHECK ADD CONSTRAINT [FK_SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_SectionSurveyQuestionResponseFacts] FOREIGN KEY ([FactsAsOfDate], [LocalCourseCode], [QuestionCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
REFERENCES [extension].[SectionSurveyQuestionResponseFacts] ([FactsAsOfDate], [LocalCourseCode], [QuestionCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse_SectionSurveyQuestionResponseFacts]
ON [extension].[SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] ([FactsAsOfDate] ASC, [LocalCourseCode] ASC, [QuestionCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SectionSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_SectionSurveyResponseFacts_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionSurveyResponseFacts_Section]
ON [extension].[SectionSurveyResponseFacts] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[SectionSurveyResponseFacts] WITH CHECK ADD CONSTRAINT [FK_SectionSurveyResponseFacts_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSurveyResponseFacts_Survey]
ON [extension].[SectionSurveyResponseFacts] ([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SectionSurveySectionResponseRatingFacts] WITH CHECK ADD CONSTRAINT [FK_SectionSurveySectionResponseRatingFacts_SectionSurveyResponseFacts] FOREIGN KEY ([FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
REFERENCES [extension].[SectionSurveyResponseFacts] ([FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SectionSurveySectionResponseRatingFacts_SectionSurveyResponseFacts]
ON [extension].[SectionSurveySectionResponseRatingFacts] ([FactsAsOfDate] ASC, [LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SectionSurveySectionResponseRatingFacts] WITH CHECK ADD CONSTRAINT [FK_SectionSurveySectionResponseRatingFacts_SurveySection] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle])
GO

CREATE NONCLUSTERED INDEX [FK_SectionSurveySectionResponseRatingFacts_SurveySection]
ON [extension].[SectionSurveySectionResponseRatingFacts] ([SurveyIdentifier] ASC, [SurveySectionTitle] ASC)
GO

ALTER TABLE [extension].[SectionSurveySectionResponseRatingFactsAggregatedNumericResponse] WITH CHECK ADD CONSTRAINT [FK_SectionSurveySectionResponseRatingFactsAggregatedNumericResponse_SectionSurveySectionResponseRatingFacts] FOREIGN KEY ([FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SectionSurveySectionResponseRatingFacts] ([FactsAsOfDate], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [SurveyIdentifier], [SurveySectionTitle])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[StaffApplicant] WITH CHECK ADD CONSTRAINT [FK_StaffApplicant_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffApplicant_Applicant]
ON [extension].[StaffApplicant] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[StaffApplicant] WITH CHECK ADD CONSTRAINT [FK_StaffApplicant_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffApplicant_Staff]
ON [extension].[StaffApplicant] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckStatusDescriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [extension].[BackgroundCheckStatusDescriptor] ([BackgroundCheckStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffBackgroundCheck_BackgroundCheckStatusDescriptor]
ON [extension].[StaffBackgroundCheck] ([BackgroundCheckStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_StaffBackgroundCheck_BackgroundCheckTypeDescriptor] FOREIGN KEY ([BackgroundCheckTypeDescriptorId])
REFERENCES [extension].[BackgroundCheckTypeDescriptor] ([BackgroundCheckTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffBackgroundCheck_BackgroundCheckTypeDescriptor]
ON [extension].[StaffBackgroundCheck] ([BackgroundCheckTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_StaffBackgroundCheck_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffBackgroundCheck_Staff]
ON [extension].[StaffBackgroundCheck] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffEducationOrganizationAssignmentAssociationExtension] WITH CHECK ADD CONSTRAINT [FK_StaffEducationOrganizationAssignmentAssociationExtension_StaffEducationOrganizationAssignmentAssociation] FOREIGN KEY ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
REFERENCES [edfi].[StaffEducationOrganizationAssignmentAssociation] ([BeginDate], [EducationOrganizationId], [StaffClassificationDescriptorId], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffExtension_GenderDescriptor]
ON [extension].[StaffExtension] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffExtension] WITH CHECK ADD CONSTRAINT [FK_StaffExtension_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[StaffFieldworkAbsenceEvent] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkAbsenceEvent_AbsenceEventCategoryDescriptor] FOREIGN KEY ([AbsenceEventCategoryDescriptorId])
REFERENCES [edfi].[AbsenceEventCategoryDescriptor] ([AbsenceEventCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffFieldworkAbsenceEvent_AbsenceEventCategoryDescriptor]
ON [extension].[StaffFieldworkAbsenceEvent] ([AbsenceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffFieldworkAbsenceEvent] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkAbsenceEvent_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffFieldworkAbsenceEvent_Staff]
ON [extension].[StaffFieldworkAbsenceEvent] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkExperience_FieldworkTypeDescriptor] FOREIGN KEY ([FieldworkTypeDescriptorId])
REFERENCES [extension].[FieldworkTypeDescriptor] ([FieldworkTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffFieldworkExperience_FieldworkTypeDescriptor]
ON [extension].[StaffFieldworkExperience] ([FieldworkTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkExperience_ProgramGatewayDescriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [extension].[ProgramGatewayDescriptor] ([ProgramGatewayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffFieldworkExperience_ProgramGatewayDescriptor]
ON [extension].[StaffFieldworkExperience] ([ProgramGatewayDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkExperience_School] FOREIGN KEY ([FieldworkExperienceSchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffFieldworkExperience_School]
ON [extension].[StaffFieldworkExperience] ([FieldworkExperienceSchoolId] ASC)
GO

ALTER TABLE [extension].[StaffFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkExperience_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffFieldworkExperience_Section]
ON [extension].[StaffFieldworkExperience] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[StaffFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkExperience_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffFieldworkExperience_Staff]
ON [extension].[StaffFieldworkExperience] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffFieldworkExperienceCoteaching] WITH CHECK ADD CONSTRAINT [FK_StaffFieldworkExperienceCoteaching_StaffFieldworkExperience] FOREIGN KEY ([BeginDate], [FieldworkExperienceSchoolId], [FieldworkIdentifier], [StaffUSI])
REFERENCES [extension].[StaffFieldworkExperience] ([BeginDate], [FieldworkExperienceSchoolId], [FieldworkIdentifier], [StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffHighlyQualifiedAcademicSubject_AcademicSubjectDescriptor]
ON [extension].[StaffHighlyQualifiedAcademicSubject] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffHighlyQualifiedAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_StaffHighlyQualifiedAcademicSubject_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffHighlyQualifiedAcademicSubject_Staff]
ON [extension].[StaffHighlyQualifiedAcademicSubject] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_StaffProfessionalDevelopmentEventAttendance_AttendanceEventCategoryDescriptor] FOREIGN KEY ([AttendanceEventCategoryDescriptorId])
REFERENCES [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffProfessionalDevelopmentEventAttendance_AttendanceEventCategoryDescriptor]
ON [extension].[StaffProfessionalDevelopmentEventAttendance] ([AttendanceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_StaffProfessionalDevelopmentEventAttendance_ProfessionalDevelopmentEvent] FOREIGN KEY ([ProfessionalDevelopmentTitle])
REFERENCES [extension].[ProfessionalDevelopmentEvent] ([ProfessionalDevelopmentTitle])
GO

CREATE NONCLUSTERED INDEX [FK_StaffProfessionalDevelopmentEventAttendance_ProfessionalDevelopmentEvent]
ON [extension].[StaffProfessionalDevelopmentEventAttendance] ([ProfessionalDevelopmentTitle] ASC)
GO

ALTER TABLE [extension].[StaffProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_StaffProfessionalDevelopmentEventAttendance_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffProfessionalDevelopmentEventAttendance_Staff]
ON [extension].[StaffProfessionalDevelopmentEventAttendance] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffSalary] WITH CHECK ADD CONSTRAINT [FK_StaffSalary_SalaryTypeDescriptor] FOREIGN KEY ([SalaryTypeDescriptorId])
REFERENCES [extension].[SalaryTypeDescriptor] ([SalaryTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffSalary_SalaryTypeDescriptor]
ON [extension].[StaffSalary] ([SalaryTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffSalary] WITH CHECK ADD CONSTRAINT [FK_StaffSalary_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[StaffSeniority] WITH CHECK ADD CONSTRAINT [FK_StaffSeniority_CredentialFieldDescriptor] FOREIGN KEY ([CredentialFieldDescriptorId])
REFERENCES [edfi].[CredentialFieldDescriptor] ([CredentialFieldDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffSeniority_CredentialFieldDescriptor]
ON [extension].[StaffSeniority] ([CredentialFieldDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffSeniority] WITH CHECK ADD CONSTRAINT [FK_StaffSeniority_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffSeniority_Staff]
ON [extension].[StaffSeniority] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasure_ResultDatatypeTypeDescriptor] FOREIGN KEY ([ResultDatatypeTypeDescriptorId])
REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasure_ResultDatatypeTypeDescriptor]
ON [extension].[StaffStudentGrowthMeasure] ([ResultDatatypeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasure_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasure_SchoolYearType]
ON [extension].[StaffStudentGrowthMeasure] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasure_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasure_Staff]
ON [extension].[StaffStudentGrowthMeasure] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasure_StudentGrowthTypeDescriptor] FOREIGN KEY ([StudentGrowthTypeDescriptorId])
REFERENCES [extension].[StudentGrowthTypeDescriptor] ([StudentGrowthTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasure_StudentGrowthTypeDescriptor]
ON [extension].[StaffStudentGrowthMeasure] ([StudentGrowthTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasureCourseAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasureCourseAssociation_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasureCourseAssociation_Course]
ON [extension].[StaffStudentGrowthMeasureCourseAssociation] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasureCourseAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasureCourseAssociation_StaffStudentGrowthMeasure] FOREIGN KEY ([FactAsOfDate], [SchoolYear], [StaffUSI])
REFERENCES [extension].[StaffStudentGrowthMeasure] ([FactAsOfDate], [SchoolYear], [StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasureCourseAssociation_StaffStudentGrowthMeasure]
ON [extension].[StaffStudentGrowthMeasureCourseAssociation] ([FactAsOfDate] ASC, [SchoolYear] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasureEducationOrganizationAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasureEducationOrganizationAssociation_EducationOrganization]
ON [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasureEducationOrganizationAssociation_StaffStudentGrowthMeasure] FOREIGN KEY ([FactAsOfDate], [SchoolYear], [StaffUSI])
REFERENCES [extension].[StaffStudentGrowthMeasure] ([FactAsOfDate], [SchoolYear], [StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasureEducationOrganizationAssociation_StaffStudentGrowthMeasure]
ON [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] ([FactAsOfDate] ASC, [SchoolYear] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasureSectionAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasureSectionAssociation_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasureSectionAssociation_Section]
ON [extension].[StaffStudentGrowthMeasureSectionAssociation] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[StaffStudentGrowthMeasureSectionAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffStudentGrowthMeasureSectionAssociation_StaffStudentGrowthMeasure] FOREIGN KEY ([FactAsOfDate], [SchoolYear], [StaffUSI])
REFERENCES [extension].[StaffStudentGrowthMeasure] ([FactAsOfDate], [SchoolYear], [StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffStudentGrowthMeasureSectionAssociation_StaffStudentGrowthMeasure]
ON [extension].[StaffStudentGrowthMeasureSectionAssociation] ([FactAsOfDate] ASC, [SchoolYear] ASC, [StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffTeacherEducatorResearch] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherEducatorResearch_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor] FOREIGN KEY ([LevelOfDegreeAwardedDescriptorId])
REFERENCES [extension].[LevelOfDegreeAwardedDescriptor] ([LevelOfDegreeAwardedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgram_LevelOfDegreeAwardedDescriptor]
ON [extension].[StaffTeacherPreparationProgram] ([LevelOfDegreeAwardedDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgram_Staff]
ON [extension].[StaffTeacherPreparationProgram] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgram] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProgramTypeDescriptor] ([TeacherPreparationProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgram_TeacherPreparationProgramTypeDescriptor]
ON [extension].[StaffTeacherPreparationProgram] ([TeacherPreparationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddress_AddressTypeDescriptor]
ON [extension].[StaffTeacherPreparationProgramAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram] FOREIGN KEY ([StaffUSI], [TeacherPreparationProgramName])
REFERENCES [extension].[StaffTeacherPreparationProgram] ([StaffUSI], [TeacherPreparationProgramName])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddress_StaffTeacherPreparationProgram]
ON [extension].[StaffTeacherPreparationProgramAddress] ([StaffUSI] ASC, [TeacherPreparationProgramName] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddress] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddress_StateAbbreviationDescriptor]
ON [extension].[StaffTeacherPreparationProgramAddress] ([StateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProgramAddressPeriod] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProgramAddressPeriod_StaffTeacherPreparationProgramAddress] FOREIGN KEY ([AddressTypeDescriptorId], [StaffUSI], [TeacherPreparationProgramName])
REFERENCES [extension].[StaffTeacherPreparationProgramAddress] ([AddressTypeDescriptorId], [StaffUSI], [TeacherPreparationProgramName])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProgramAddressPeriod_StaffTeacherPreparationProgramAddress]
ON [extension].[StaffTeacherPreparationProgramAddressPeriod] ([AddressTypeDescriptorId] ASC, [StaffUSI] ASC, [TeacherPreparationProgramName] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociation_ProgramAssignmentDescriptor] FOREIGN KEY ([ProgramAssignmentDescriptorId])
REFERENCES [edfi].[ProgramAssignmentDescriptor] ([ProgramAssignmentDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociation_ProgramAssignmentDescriptor]
ON [extension].[StaffTeacherPreparationProviderAssociation] ([ProgramAssignmentDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociation_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociation_SchoolYearType]
ON [extension].[StaffTeacherPreparationProviderAssociation] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociation_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociation_Staff]
ON [extension].[StaffTeacherPreparationProviderAssociation] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociation_TeacherPreparationProvider] FOREIGN KEY ([TeacherPreparationProviderId])
REFERENCES [extension].[TeacherPreparationProvider] ([TeacherPreparationProviderId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociation_TeacherPreparationProvider]
ON [extension].[StaffTeacherPreparationProviderAssociation] ([TeacherPreparationProviderId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociationAcademicSubject_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociationAcademicSubject_AcademicSubjectDescriptor]
ON [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociationAcademicSubject_StaffTeacherPreparationProviderAssociation] FOREIGN KEY ([StaffUSI], [TeacherPreparationProviderId])
REFERENCES [extension].[StaffTeacherPreparationProviderAssociation] ([StaffUSI], [TeacherPreparationProviderId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociationAcademicSubject_StaffTeacherPreparationProviderAssociation]
ON [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] ([StaffUSI] ASC, [TeacherPreparationProviderId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociationGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociationGradeLevel_GradeLevelDescriptor]
ON [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderAssociationGradeLevel_StaffTeacherPreparationProviderAssociation] FOREIGN KEY ([StaffUSI], [TeacherPreparationProviderId])
REFERENCES [extension].[StaffTeacherPreparationProviderAssociation] ([StaffUSI], [TeacherPreparationProviderId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderAssociationGradeLevel_StaffTeacherPreparationProviderAssociation]
ON [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] ([StaffUSI] ASC, [TeacherPreparationProviderId] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderProgramAssociation_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderProgramAssociation_Staff]
ON [extension].[StaffTeacherPreparationProviderProgramAssociation] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[StaffTeacherPreparationProviderProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_StaffTeacherPreparationProviderProgramAssociation_TeacherPreparationProviderProgram] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProviderProgram] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_StaffTeacherPreparationProviderProgramAssociation_TeacherPreparationProviderProgram]
ON [extension].[StaffTeacherPreparationProviderProgramAssociation] ([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[StudentGradebookEntryExtension] WITH CHECK ADD CONSTRAINT [FK_StudentGradebookEntryExtension_StudentGradebookEntry] FOREIGN KEY ([BeginDate], [DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
REFERENCES [edfi].[StudentGradebookEntry] ([BeginDate], [DateAssigned], [GradebookEntryTitle], [LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName], [StudentUSI])
ON DELETE CASCADE
ON UPDATE CASCADE
GO

ALTER TABLE [extension].[StudentGrowthTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_StudentGrowthTypeDescriptor_Descriptor] FOREIGN KEY ([StudentGrowthTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_Survey_Course]
ON [extension].[Survey] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_Survey_EducationOrganization]
ON [extension].[Survey] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_Program] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [edfi].[Program] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Survey_Program]
ON [extension].[Survey] ([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_Survey_SchoolYearType]
ON [extension].[Survey] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_Survey_Section]
ON [extension].[Survey] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_SurveyCategoryDescriptor] FOREIGN KEY ([SurveyCategoryDescriptorId])
REFERENCES [extension].[SurveyCategoryDescriptor] ([SurveyCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Survey_SurveyCategoryDescriptor]
ON [extension].[Survey] ([SurveyCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[Survey] WITH CHECK ADD CONSTRAINT [FK_Survey_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_Survey_TermDescriptor]
ON [extension].[Survey] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[SurveyCategoryDescriptor] WITH CHECK ADD CONSTRAINT [FK_SurveyCategoryDescriptor_Descriptor] FOREIGN KEY ([SurveyCategoryDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestion_QuestionFormDescriptor] FOREIGN KEY ([QuestionFormDescriptorId])
REFERENCES [extension].[QuestionFormDescriptor] ([QuestionFormDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_QuestionFormDescriptor]
ON [extension].[SurveyQuestion] ([QuestionFormDescriptorId] ASC)
GO

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestion_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_Survey]
ON [extension].[SurveyQuestion] ([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestion] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestion_SurveySection] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestion_SurveySection]
ON [extension].[SurveyQuestion] ([SurveyIdentifier] ASC, [SurveySectionTitle] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionMatrix] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionMatrix_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionMatrix_SurveyQuestion]
ON [extension].[SurveyQuestionMatrix] ([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionNumericChoice] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionNumericChoice_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionNumericChoice_SurveyQuestion]
ON [extension].[SurveyQuestionNumericChoice] ([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionResponse_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyQuestion]
ON [extension].[SurveyQuestionResponse] ([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionResponse_SurveyResponse] FOREIGN KEY ([SurveyIdentifier], [SurveyResponseIdentifier])
REFERENCES [extension].[SurveyResponse] ([SurveyIdentifier], [SurveyResponseIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponse_SurveyResponse]
ON [extension].[SurveyQuestionResponse] ([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse] FOREIGN KEY ([QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier])
REFERENCES [extension].[SurveyQuestionResponse] ([QuestionCode], [SurveyIdentifier], [SurveyResponseIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionResponseSurveyQuestionMatrixElementResponse_SurveyQuestionResponse]
ON [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] ([QuestionCode] ASC, [SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyQuestionTextChoice] WITH CHECK ADD CONSTRAINT [FK_SurveyQuestionTextChoice_SurveyQuestion] FOREIGN KEY ([QuestionCode], [SurveyIdentifier])
REFERENCES [extension].[SurveyQuestion] ([QuestionCode], [SurveyIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_SurveyQuestionTextChoice_SurveyQuestion]
ON [extension].[SurveyQuestionTextChoice] ([QuestionCode] ASC, [SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Applicant] FOREIGN KEY ([ApplicantIdentifier], [EducationOrganizationId])
REFERENCES [extension].[Applicant] ([ApplicantIdentifier], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Applicant]
ON [extension].[SurveyResponse] ([ApplicantIdentifier] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Parent] FOREIGN KEY ([ParentUSI])
REFERENCES [edfi].[Parent] ([ParentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Parent]
ON [extension].[SurveyResponse] ([ParentUSI] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Prospect] FOREIGN KEY ([ProspectEducationOrganizationId], [ProspectIdentifier])
REFERENCES [extension].[Prospect] ([ProspectEducationOrganizationId], [ProspectIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Prospect]
ON [extension].[SurveyResponse] ([ProspectEducationOrganizationId] ASC, [ProspectIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Staff]
ON [extension].[SurveyResponse] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Student]
ON [extension].[SurveyResponse] ([StudentUSI] ASC)
GO

ALTER TABLE [extension].[SurveyResponse] WITH CHECK ADD CONSTRAINT [FK_SurveyResponse_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SurveyResponse_Survey]
ON [extension].[SurveyResponse] ([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveySection] WITH CHECK ADD CONSTRAINT [FK_SurveySection_Survey] FOREIGN KEY ([SurveyIdentifier])
REFERENCES [extension].[Survey] ([SurveyIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SurveySection_Survey]
ON [extension].[SurveySection] ([SurveyIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveySectionResponseRating] WITH CHECK ADD CONSTRAINT [FK_SurveySectionResponseRating_SurveyResponse] FOREIGN KEY ([SurveyIdentifier], [SurveyResponseIdentifier])
REFERENCES [extension].[SurveyResponse] ([SurveyIdentifier], [SurveyResponseIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseRating_SurveyResponse]
ON [extension].[SurveySectionResponseRating] ([SurveyIdentifier] ASC, [SurveyResponseIdentifier] ASC)
GO

ALTER TABLE [extension].[SurveySectionResponseRating] WITH CHECK ADD CONSTRAINT [FK_SurveySectionResponseRating_SurveySection] FOREIGN KEY ([SurveyIdentifier], [SurveySectionTitle])
REFERENCES [extension].[SurveySection] ([SurveyIdentifier], [SurveySectionTitle])
GO

CREATE NONCLUSTERED INDEX [FK_SurveySectionResponseRating_SurveySection]
ON [extension].[SurveySectionResponseRating] ([SurveyIdentifier] ASC, [SurveySectionTitle] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_CitizenshipStatusDescriptor] FOREIGN KEY ([CitizenshipStatusDescriptorId])
REFERENCES [edfi].[CitizenshipStatusDescriptor] ([CitizenshipStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_CitizenshipStatusDescriptor]
ON [extension].[TeacherCandidate] ([CitizenshipStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_CountryDescriptor] FOREIGN KEY ([BirthCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_CountryDescriptor]
ON [extension].[TeacherCandidate] ([BirthCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_EnglishLanguageExamDescriptor] FOREIGN KEY ([EnglishLanguageExamDescriptorId])
REFERENCES [extension].[EnglishLanguageExamDescriptor] ([EnglishLanguageExamDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_EnglishLanguageExamDescriptor]
ON [extension].[TeacherCandidate] ([EnglishLanguageExamDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_GenderDescriptor] FOREIGN KEY ([GenderDescriptorId])
REFERENCES [extension].[GenderDescriptor] ([GenderDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_GenderDescriptor]
ON [extension].[TeacherCandidate] ([GenderDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_LimitedEnglishProficiencyDescriptor] FOREIGN KEY ([LimitedEnglishProficiencyDescriptorId])
REFERENCES [edfi].[LimitedEnglishProficiencyDescriptor] ([LimitedEnglishProficiencyDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_LimitedEnglishProficiencyDescriptor]
ON [extension].[TeacherCandidate] ([LimitedEnglishProficiencyDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_OldEthnicityDescriptor] FOREIGN KEY ([OldEthnicityDescriptorId])
REFERENCES [edfi].[OldEthnicityDescriptor] ([OldEthnicityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_OldEthnicityDescriptor]
ON [extension].[TeacherCandidate] ([OldEthnicityDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_PreviousCareerDescriptor] FOREIGN KEY ([PreviousCareerDescriptorId])
REFERENCES [extension].[PreviousCareerDescriptor] ([PreviousCareerDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_PreviousCareerDescriptor]
ON [extension].[TeacherCandidate] ([PreviousCareerDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_SexDescriptor] FOREIGN KEY ([SexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_SexDescriptor]
ON [extension].[TeacherCandidate] ([SexDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_SexDescriptor1] FOREIGN KEY ([BirthSexDescriptorId])
REFERENCES [edfi].[SexDescriptor] ([SexDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_SexDescriptor1]
ON [extension].[TeacherCandidate] ([BirthSexDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_Staff]
ON [extension].[TeacherCandidate] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_StateAbbreviationDescriptor] FOREIGN KEY ([BirthStateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_StateAbbreviationDescriptor]
ON [extension].[TeacherCandidate] ([BirthStateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidate] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidate_Student] FOREIGN KEY ([StudentUSI])
REFERENCES [edfi].[Student] ([StudentUSI])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidate_Student]
ON [extension].[TeacherCandidate] ([StudentUSI] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor] FOREIGN KEY ([CumulativeEarnedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor]
ON [extension].[TeacherCandidateAcademicRecord] ([CumulativeEarnedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor1] FOREIGN KEY ([CumulativeAttemptedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor1]
ON [extension].[TeacherCandidateAcademicRecord] ([CumulativeAttemptedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor2] FOREIGN KEY ([SessionEarnedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor2]
ON [extension].[TeacherCandidateAcademicRecord] ([SessionEarnedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor3] FOREIGN KEY ([SessionAttemptedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_CreditTypeDescriptor3]
ON [extension].[TeacherCandidateAcademicRecord] ([SessionAttemptedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_EducationOrganization]
ON [extension].[TeacherCandidateAcademicRecord] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_ProgramGatewayDescriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [extension].[ProgramGatewayDescriptor] ([ProgramGatewayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_ProgramGatewayDescriptor]
ON [extension].[TeacherCandidateAcademicRecord] ([ProgramGatewayDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_SchoolYearType]
ON [extension].[TeacherCandidateAcademicRecord] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_TeacherCandidate]
ON [extension].[TeacherCandidateAcademicRecord] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_TermDescriptor] FOREIGN KEY ([TermDescriptorId])
REFERENCES [edfi].[TermDescriptor] ([TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_TermDescriptor]
ON [extension].[TeacherCandidateAcademicRecord] ([TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecord] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecord_TPPDegreeTypeDescriptor] FOREIGN KEY ([TPPDegreeTypeDescriptorId])
REFERENCES [extension].[TPPDegreeTypeDescriptor] ([TPPDegreeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecord_TPPDegreeTypeDescriptor]
ON [extension].[TeacherCandidateAcademicRecord] ([TPPDegreeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordAcademicHonor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordAcademicHonor_AcademicHonorCategoryDescriptor] FOREIGN KEY ([AcademicHonorCategoryDescriptorId])
REFERENCES [edfi].[AcademicHonorCategoryDescriptor] ([AcademicHonorCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordAcademicHonor_AcademicHonorCategoryDescriptor]
ON [extension].[TeacherCandidateAcademicRecordAcademicHonor] ([AcademicHonorCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordAcademicHonor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordAcademicHonor_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId])
REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordAcademicHonor_AchievementCategoryDescriptor]
ON [extension].[TeacherCandidateAcademicRecordAcademicHonor] ([AchievementCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordAcademicHonor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordAcademicHonor_TeacherCandidateAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
REFERENCES [extension].[TeacherCandidateAcademicRecord] ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordAcademicHonor_TeacherCandidateAcademicRecord]
ON [extension].[TeacherCandidateAcademicRecordAcademicHonor] ([EducationOrganizationId] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordClassRanking] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordClassRanking_TeacherCandidateAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
REFERENCES [extension].[TeacherCandidateAcademicRecord] ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordDiploma_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId])
REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordDiploma_AchievementCategoryDescriptor]
ON [extension].[TeacherCandidateAcademicRecordDiploma] ([AchievementCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordDiploma_DiplomaLevelDescriptor] FOREIGN KEY ([DiplomaLevelDescriptorId])
REFERENCES [edfi].[DiplomaLevelDescriptor] ([DiplomaLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordDiploma_DiplomaLevelDescriptor]
ON [extension].[TeacherCandidateAcademicRecordDiploma] ([DiplomaLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordDiploma_DiplomaTypeDescriptor] FOREIGN KEY ([DiplomaTypeDescriptorId])
REFERENCES [edfi].[DiplomaTypeDescriptor] ([DiplomaTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordDiploma_DiplomaTypeDescriptor]
ON [extension].[TeacherCandidateAcademicRecordDiploma] ([DiplomaTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordDiploma] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordDiploma_TeacherCandidateAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
REFERENCES [extension].[TeacherCandidateAcademicRecord] ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordDiploma_TeacherCandidateAcademicRecord]
ON [extension].[TeacherCandidateAcademicRecordDiploma] ([EducationOrganizationId] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordRecognition] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordRecognition_AchievementCategoryDescriptor] FOREIGN KEY ([AchievementCategoryDescriptorId])
REFERENCES [edfi].[AchievementCategoryDescriptor] ([AchievementCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordRecognition_AchievementCategoryDescriptor]
ON [extension].[TeacherCandidateAcademicRecordRecognition] ([AchievementCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordRecognition] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordRecognition_RecognitionTypeDescriptor] FOREIGN KEY ([RecognitionTypeDescriptorId])
REFERENCES [edfi].[RecognitionTypeDescriptor] ([RecognitionTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordRecognition_RecognitionTypeDescriptor]
ON [extension].[TeacherCandidateAcademicRecordRecognition] ([RecognitionTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAcademicRecordRecognition] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAcademicRecordRecognition_TeacherCandidateAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
REFERENCES [extension].[TeacherCandidateAcademicRecord] ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAcademicRecordRecognition_TeacherCandidateAcademicRecord]
ON [extension].[TeacherCandidateAcademicRecordRecognition] ([EducationOrganizationId] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAddress_AddressTypeDescriptor]
ON [extension].[TeacherCandidateAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAddress_StateAbbreviationDescriptor] FOREIGN KEY ([StateAbbreviationDescriptorId])
REFERENCES [edfi].[StateAbbreviationDescriptor] ([StateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAddress_StateAbbreviationDescriptor]
ON [extension].[TeacherCandidateAddress] ([StateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAddress_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAddress_TeacherCandidate]
ON [extension].[TeacherCandidateAddress] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAddressPeriod] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAddressPeriod_TeacherCandidateAddress] FOREIGN KEY ([AddressTypeDescriptorId], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateAddress] ([AddressTypeDescriptorId], [TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAddressPeriod_TeacherCandidateAddress]
ON [extension].[TeacherCandidateAddressPeriod] ([AddressTypeDescriptorId] ASC, [TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAid] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAid_AidTypeDescriptor] FOREIGN KEY ([AidTypeDescriptorId])
REFERENCES [extension].[AidTypeDescriptor] ([AidTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAid_AidTypeDescriptor]
ON [extension].[TeacherCandidateAid] ([AidTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateAid] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateAid_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateAid_TeacherCandidate]
ON [extension].[TeacherCandidateAid] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateBackgroundCheck_BackgroundCheckStatusDescriptor] FOREIGN KEY ([BackgroundCheckStatusDescriptorId])
REFERENCES [extension].[BackgroundCheckStatusDescriptor] ([BackgroundCheckStatusDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateBackgroundCheck_BackgroundCheckStatusDescriptor]
ON [extension].[TeacherCandidateBackgroundCheck] ([BackgroundCheckStatusDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateBackgroundCheck_BackgroundCheckTypeDescriptor] FOREIGN KEY ([BackgroundCheckTypeDescriptorId])
REFERENCES [extension].[BackgroundCheckTypeDescriptor] ([BackgroundCheckTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateBackgroundCheck_BackgroundCheckTypeDescriptor]
ON [extension].[TeacherCandidateBackgroundCheck] ([BackgroundCheckTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateBackgroundCheck] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateBackgroundCheck_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TeacherCandidateCharacteristic] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCharacteristic_StudentCharacteristicDescriptor] FOREIGN KEY ([StudentCharacteristicDescriptorId])
REFERENCES [edfi].[StudentCharacteristicDescriptor] ([StudentCharacteristicDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCharacteristic_StudentCharacteristicDescriptor]
ON [extension].[TeacherCandidateCharacteristic] ([StudentCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCharacteristic] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCharacteristic_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCharacteristic_TeacherCandidate]
ON [extension].[TeacherCandidateCharacteristic] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCharacteristicDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCharacteristicDescriptor_Descriptor] FOREIGN KEY ([TeacherCandidateCharacteristicDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TeacherCandidateCohortYear] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCohortYear_CohortYearTypeDescriptor] FOREIGN KEY ([CohortYearTypeDescriptorId])
REFERENCES [edfi].[CohortYearTypeDescriptor] ([CohortYearTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCohortYear_CohortYearTypeDescriptor]
ON [extension].[TeacherCandidateCohortYear] ([CohortYearTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCohortYear] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCohortYear_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCohortYear_SchoolYearType]
ON [extension].[TeacherCandidateCohortYear] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCohortYear] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCohortYear_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCohortYear_TeacherCandidate]
ON [extension].[TeacherCandidateCohortYear] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_Course] FOREIGN KEY ([CourseCode], [CourseEducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_Course]
ON [extension].[TeacherCandidateCourseTranscript] ([CourseCode] ASC, [CourseEducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_CourseAttemptResultDescriptor] FOREIGN KEY ([CourseAttemptResultDescriptorId])
REFERENCES [edfi].[CourseAttemptResultDescriptor] ([CourseAttemptResultDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_CourseAttemptResultDescriptor]
ON [extension].[TeacherCandidateCourseTranscript] ([CourseAttemptResultDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_CourseRepeatCodeDescriptor] FOREIGN KEY ([CourseRepeatCodeDescriptorId])
REFERENCES [edfi].[CourseRepeatCodeDescriptor] ([CourseRepeatCodeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_CourseRepeatCodeDescriptor]
ON [extension].[TeacherCandidateCourseTranscript] ([CourseRepeatCodeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_CreditTypeDescriptor] FOREIGN KEY ([AttemptedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_CreditTypeDescriptor]
ON [extension].[TeacherCandidateCourseTranscript] ([AttemptedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_CreditTypeDescriptor1] FOREIGN KEY ([EarnedCreditTypeDescriptorId])
REFERENCES [edfi].[CreditTypeDescriptor] ([CreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_CreditTypeDescriptor1]
ON [extension].[TeacherCandidateCourseTranscript] ([EarnedCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_GradeLevelDescriptor] FOREIGN KEY ([WhenTakenGradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_GradeLevelDescriptor]
ON [extension].[TeacherCandidateCourseTranscript] ([WhenTakenGradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_MethodCreditEarnedDescriptor] FOREIGN KEY ([MethodCreditEarnedDescriptorId])
REFERENCES [edfi].[MethodCreditEarnedDescriptor] ([MethodCreditEarnedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_MethodCreditEarnedDescriptor]
ON [extension].[TeacherCandidateCourseTranscript] ([MethodCreditEarnedDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_School] FOREIGN KEY ([SchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_School]
ON [extension].[TeacherCandidateCourseTranscript] ([SchoolId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscript] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscript_TeacherCandidateAcademicRecord] FOREIGN KEY ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
REFERENCES [extension].[TeacherCandidateAcademicRecord] ([EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscript_TeacherCandidateAcademicRecord]
ON [extension].[TeacherCandidateCourseTranscript] ([EducationOrganizationId] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscriptEarnedAdditionalCredits_AdditionalCreditTypeDescriptor] FOREIGN KEY ([AdditionalCreditTypeDescriptorId])
REFERENCES [edfi].[AdditionalCreditTypeDescriptor] ([AdditionalCreditTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscriptEarnedAdditionalCredits_AdditionalCreditTypeDescriptor]
ON [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] ([AdditionalCreditTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCourseTranscriptEarnedAdditionalCredits_TeacherCandidateCourseTranscript] FOREIGN KEY ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
REFERENCES [extension].[TeacherCandidateCourseTranscript] ([CourseAttemptResultDescriptorId], [CourseCode], [CourseEducationOrganizationId], [EducationOrganizationId], [SchoolYear], [TeacherCandidateIdentifier], [TermDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCourseTranscriptEarnedAdditionalCredits_TeacherCandidateCourseTranscript]
ON [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] ([CourseAttemptResultDescriptorId] ASC, [CourseCode] ASC, [CourseEducationOrganizationId] ASC, [EducationOrganizationId] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC, [TermDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCredential] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCredential_Credential] FOREIGN KEY ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
REFERENCES [edfi].[Credential] ([CredentialIdentifier], [StateOfIssueStateAbbreviationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCredential_Credential]
ON [extension].[TeacherCandidateCredential] ([CredentialIdentifier] ASC, [StateOfIssueStateAbbreviationDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateCredential] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateCredential_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateCredential_TeacherCandidate]
ON [extension].[TeacherCandidateCredential] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisability] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisability_DisabilityDescriptor] FOREIGN KEY ([DisabilityDescriptorId])
REFERENCES [edfi].[DisabilityDescriptor] ([DisabilityDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisability_DisabilityDescriptor]
ON [extension].[TeacherCandidateDisability] ([DisabilityDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisability] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisability_DisabilityDeterminationSourceTypeDescriptor] FOREIGN KEY ([DisabilityDeterminationSourceTypeDescriptorId])
REFERENCES [edfi].[DisabilityDeterminationSourceTypeDescriptor] ([DisabilityDeterminationSourceTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisability_DisabilityDeterminationSourceTypeDescriptor]
ON [extension].[TeacherCandidateDisability] ([DisabilityDeterminationSourceTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisability] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisability_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisability_TeacherCandidate]
ON [extension].[TeacherCandidateDisability] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisabilityDesignation_DisabilityDesignationDescriptor] FOREIGN KEY ([DisabilityDesignationDescriptorId])
REFERENCES [edfi].[DisabilityDesignationDescriptor] ([DisabilityDesignationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisabilityDesignation_DisabilityDesignationDescriptor]
ON [extension].[TeacherCandidateDisabilityDesignation] ([DisabilityDesignationDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateDisabilityDesignation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateDisabilityDesignation_TeacherCandidateDisability] FOREIGN KEY ([DisabilityDescriptorId], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateDisability] ([DisabilityDescriptorId], [TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateDisabilityDesignation_TeacherCandidateDisability]
ON [extension].[TeacherCandidateDisabilityDesignation] ([DisabilityDescriptorId] ASC, [TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateElectronicMail] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateElectronicMail_ElectronicMailTypeDescriptor] FOREIGN KEY ([ElectronicMailTypeDescriptorId])
REFERENCES [edfi].[ElectronicMailTypeDescriptor] ([ElectronicMailTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateElectronicMail_ElectronicMailTypeDescriptor]
ON [extension].[TeacherCandidateElectronicMail] ([ElectronicMailTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateElectronicMail] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateElectronicMail_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateElectronicMail_TeacherCandidate]
ON [extension].[TeacherCandidateElectronicMail] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkAbsenceEvent] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkAbsenceEvent_AbsenceEventCategoryDescriptor] FOREIGN KEY ([AbsenceEventCategoryDescriptorId])
REFERENCES [edfi].[AbsenceEventCategoryDescriptor] ([AbsenceEventCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateFieldworkAbsenceEvent_AbsenceEventCategoryDescriptor]
ON [extension].[TeacherCandidateFieldworkAbsenceEvent] ([AbsenceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkAbsenceEvent] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkAbsenceEvent_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateFieldworkAbsenceEvent_TeacherCandidate]
ON [extension].[TeacherCandidateFieldworkAbsenceEvent] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkExperience_FieldworkTypeDescriptor] FOREIGN KEY ([FieldworkTypeDescriptorId])
REFERENCES [extension].[FieldworkTypeDescriptor] ([FieldworkTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateFieldworkExperience_FieldworkTypeDescriptor]
ON [extension].[TeacherCandidateFieldworkExperience] ([FieldworkTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkExperience_ProgramGatewayDescriptor] FOREIGN KEY ([ProgramGatewayDescriptorId])
REFERENCES [extension].[ProgramGatewayDescriptor] ([ProgramGatewayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateFieldworkExperience_ProgramGatewayDescriptor]
ON [extension].[TeacherCandidateFieldworkExperience] ([ProgramGatewayDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkExperience_School] FOREIGN KEY ([FieldworkExperienceSchoolId])
REFERENCES [edfi].[School] ([SchoolId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateFieldworkExperience_School]
ON [extension].[TeacherCandidateFieldworkExperience] ([FieldworkExperienceSchoolId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkExperience_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateFieldworkExperience_Section]
ON [extension].[TeacherCandidateFieldworkExperience] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkExperience] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkExperience_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateFieldworkExperience_TeacherCandidate]
ON [extension].[TeacherCandidateFieldworkExperience] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateFieldworkExperienceCoteaching] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateFieldworkExperienceCoteaching_TeacherCandidateFieldworkExperience] FOREIGN KEY ([BeginDate], [FieldworkExperienceSchoolId], [FieldworkIdentifier], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateFieldworkExperience] ([BeginDate], [FieldworkExperienceSchoolId], [FieldworkIdentifier], [TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationCode_StudentIdentificationSystemDescriptor] FOREIGN KEY ([StudentIdentificationSystemDescriptorId])
REFERENCES [edfi].[StudentIdentificationSystemDescriptor] ([StudentIdentificationSystemDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationCode_StudentIdentificationSystemDescriptor]
ON [extension].[TeacherCandidateIdentificationCode] ([StudentIdentificationSystemDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationCode] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationCode_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationCode_TeacherCandidate]
ON [extension].[TeacherCandidateIdentificationCode] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_CountryDescriptor]
ON [extension].[TeacherCandidateIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [extension].[TeacherCandidateIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [extension].[TeacherCandidateIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIdentificationDocument_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIdentificationDocument_TeacherCandidate]
ON [extension].[TeacherCandidateIdentificationDocument] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateIndicator] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateIndicator_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateIndicator_TeacherCandidate]
ON [extension].[TeacherCandidateIndicator] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateInternationalAddress_AddressTypeDescriptor] FOREIGN KEY ([AddressTypeDescriptorId])
REFERENCES [edfi].[AddressTypeDescriptor] ([AddressTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateInternationalAddress_AddressTypeDescriptor]
ON [extension].[TeacherCandidateInternationalAddress] ([AddressTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateInternationalAddress_CountryDescriptor] FOREIGN KEY ([CountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateInternationalAddress_CountryDescriptor]
ON [extension].[TeacherCandidateInternationalAddress] ([CountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateInternationalAddress] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateInternationalAddress_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateInternationalAddress_TeacherCandidate]
ON [extension].[TeacherCandidateInternationalAddress] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguage] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguage_LanguageDescriptor] FOREIGN KEY ([LanguageDescriptorId])
REFERENCES [edfi].[LanguageDescriptor] ([LanguageDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguage_LanguageDescriptor]
ON [extension].[TeacherCandidateLanguage] ([LanguageDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguage] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguage_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguage_TeacherCandidate]
ON [extension].[TeacherCandidateLanguage] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguageUse] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguageUse_LanguageUseDescriptor] FOREIGN KEY ([LanguageUseDescriptorId])
REFERENCES [edfi].[LanguageUseDescriptor] ([LanguageUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguageUse_LanguageUseDescriptor]
ON [extension].[TeacherCandidateLanguageUse] ([LanguageUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateLanguageUse] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateLanguageUse_TeacherCandidateLanguage] FOREIGN KEY ([LanguageDescriptorId], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateLanguage] ([LanguageDescriptorId], [TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateLanguageUse_TeacherCandidateLanguage]
ON [extension].[TeacherCandidateLanguageUse] ([LanguageDescriptorId] ASC, [TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateOtherName] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateOtherName_OtherNameTypeDescriptor] FOREIGN KEY ([OtherNameTypeDescriptorId])
REFERENCES [edfi].[OtherNameTypeDescriptor] ([OtherNameTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateOtherName_OtherNameTypeDescriptor]
ON [extension].[TeacherCandidateOtherName] ([OtherNameTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateOtherName] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateOtherName_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateOtherName_TeacherCandidate]
ON [extension].[TeacherCandidateOtherName] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidatePersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidatePersonalIdentificationDocument_CountryDescriptor] FOREIGN KEY ([IssuerCountryDescriptorId])
REFERENCES [edfi].[CountryDescriptor] ([CountryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidatePersonalIdentificationDocument_CountryDescriptor]
ON [extension].[TeacherCandidatePersonalIdentificationDocument] ([IssuerCountryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidatePersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidatePersonalIdentificationDocument_IdentificationDocumentUseDescriptor] FOREIGN KEY ([IdentificationDocumentUseDescriptorId])
REFERENCES [edfi].[IdentificationDocumentUseDescriptor] ([IdentificationDocumentUseDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidatePersonalIdentificationDocument_IdentificationDocumentUseDescriptor]
ON [extension].[TeacherCandidatePersonalIdentificationDocument] ([IdentificationDocumentUseDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidatePersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidatePersonalIdentificationDocument_PersonalInformationVerificationDescriptor] FOREIGN KEY ([PersonalInformationVerificationDescriptorId])
REFERENCES [edfi].[PersonalInformationVerificationDescriptor] ([PersonalInformationVerificationDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidatePersonalIdentificationDocument_PersonalInformationVerificationDescriptor]
ON [extension].[TeacherCandidatePersonalIdentificationDocument] ([PersonalInformationVerificationDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidatePersonalIdentificationDocument] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidatePersonalIdentificationDocument_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidatePersonalIdentificationDocument_TeacherCandidate]
ON [extension].[TeacherCandidatePersonalIdentificationDocument] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateProfessionalDevelopmentEventAttendance_AttendanceEventCategoryDescriptor] FOREIGN KEY ([AttendanceEventCategoryDescriptorId])
REFERENCES [edfi].[AttendanceEventCategoryDescriptor] ([AttendanceEventCategoryDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateProfessionalDevelopmentEventAttendance_AttendanceEventCategoryDescriptor]
ON [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] ([AttendanceEventCategoryDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateProfessionalDevelopmentEventAttendance_ProfessionalDevelopmentEvent] FOREIGN KEY ([ProfessionalDevelopmentTitle])
REFERENCES [extension].[ProfessionalDevelopmentEvent] ([ProfessionalDevelopmentTitle])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateProfessionalDevelopmentEventAttendance_ProfessionalDevelopmentEvent]
ON [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] ([ProfessionalDevelopmentTitle] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateProfessionalDevelopmentEventAttendance_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateProfessionalDevelopmentEventAttendance_TeacherCandidate]
ON [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateProgramParticipation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateProgramParticipation_ProgramTypeDescriptor] FOREIGN KEY ([ProgramTypeDescriptorId])
REFERENCES [edfi].[ProgramTypeDescriptor] ([ProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateProgramParticipation_ProgramTypeDescriptor]
ON [extension].[TeacherCandidateProgramParticipation] ([ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateProgramParticipation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateProgramParticipation_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateProgramParticipation_TeacherCandidate]
ON [extension].[TeacherCandidateProgramParticipation] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor] FOREIGN KEY ([ProgramCharacteristicDescriptorId])
REFERENCES [edfi].[ProgramCharacteristicDescriptor] ([ProgramCharacteristicDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateProgramParticipationProgramCharacteristic_ProgramCharacteristicDescriptor]
ON [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] ([ProgramCharacteristicDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateProgramParticipationProgramCharacteristic_TeacherCandidateProgramParticipation] FOREIGN KEY ([ProgramTypeDescriptorId], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateProgramParticipation] ([ProgramTypeDescriptorId], [TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateProgramParticipationProgramCharacteristic_TeacherCandidateProgramParticipation]
ON [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] ([ProgramTypeDescriptorId] ASC, [TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateRace] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateRace_RaceDescriptor] FOREIGN KEY ([RaceDescriptorId])
REFERENCES [edfi].[RaceDescriptor] ([RaceDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateRace_RaceDescriptor]
ON [extension].[TeacherCandidateRace] ([RaceDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateRace] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateRace_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateRace_TeacherCandidate]
ON [extension].[TeacherCandidateRace] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStaffAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStaffAssociation_Staff] FOREIGN KEY ([StaffUSI])
REFERENCES [edfi].[Staff] ([StaffUSI])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStaffAssociation_Staff]
ON [extension].[TeacherCandidateStaffAssociation] ([StaffUSI] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStaffAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStaffAssociation_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStaffAssociation_TeacherCandidate]
ON [extension].[TeacherCandidateStaffAssociation] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasure_ResultDatatypeTypeDescriptor] FOREIGN KEY ([ResultDatatypeTypeDescriptorId])
REFERENCES [edfi].[ResultDatatypeTypeDescriptor] ([ResultDatatypeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasure_ResultDatatypeTypeDescriptor]
ON [extension].[TeacherCandidateStudentGrowthMeasure] ([ResultDatatypeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasure_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasure_SchoolYearType]
ON [extension].[TeacherCandidateStudentGrowthMeasure] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasure_StudentGrowthTypeDescriptor] FOREIGN KEY ([StudentGrowthTypeDescriptorId])
REFERENCES [extension].[StudentGrowthTypeDescriptor] ([StudentGrowthTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasure_StudentGrowthTypeDescriptor]
ON [extension].[TeacherCandidateStudentGrowthMeasure] ([StudentGrowthTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasure] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasure_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasure_TeacherCandidate]
ON [extension].[TeacherCandidateStudentGrowthMeasure] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasureCourseAssociation_Course] FOREIGN KEY ([CourseCode], [EducationOrganizationId])
REFERENCES [edfi].[Course] ([CourseCode], [EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasureCourseAssociation_Course]
ON [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] ([CourseCode] ASC, [EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasureCourseAssociation_TeacherCandidateStudentGrowthMeasure] FOREIGN KEY ([FactAsOfDate], [SchoolYear], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateStudentGrowthMeasure] ([FactAsOfDate], [SchoolYear], [TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasureCourseAssociation_TeacherCandidateStudentGrowthMeasure]
ON [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] ([FactAsOfDate] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_EducationOrganization]
ON [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_TeacherCandidateStudentGrowthMeasure] FOREIGN KEY ([FactAsOfDate], [SchoolYear], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateStudentGrowthMeasure] ([FactAsOfDate], [SchoolYear], [TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation_TeacherCandidateStudentGrowthMeasure]
ON [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] ([FactAsOfDate] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasureSectionAssociation_Section] FOREIGN KEY ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
REFERENCES [edfi].[Section] ([LocalCourseCode], [SchoolId], [SchoolYear], [SectionIdentifier], [SessionName])
ON UPDATE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasureSectionAssociation_Section]
ON [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] ([LocalCourseCode] ASC, [SchoolId] ASC, [SchoolYear] ASC, [SectionIdentifier] ASC, [SessionName] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateStudentGrowthMeasureSectionAssociation_TeacherCandidateStudentGrowthMeasure] FOREIGN KEY ([FactAsOfDate], [SchoolYear], [TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidateStudentGrowthMeasure] ([FactAsOfDate], [SchoolYear], [TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateStudentGrowthMeasureSectionAssociation_TeacherCandidateStudentGrowthMeasure]
ON [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] ([FactAsOfDate] ASC, [SchoolYear] ASC, [TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderAssociation_EntryTypeDescriptor] FOREIGN KEY ([EntryTypeDescriptorId])
REFERENCES [edfi].[EntryTypeDescriptor] ([EntryTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderAssociation_EntryTypeDescriptor]
ON [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ([EntryTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderAssociation_ExitWithdrawTypeDescriptor] FOREIGN KEY ([ExitWithdrawTypeDescriptorId])
REFERENCES [edfi].[ExitWithdrawTypeDescriptor] ([ExitWithdrawTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderAssociation_ExitWithdrawTypeDescriptor]
ON [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ([ExitWithdrawTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderAssociation_SchoolYearType] FOREIGN KEY ([SchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderAssociation_SchoolYearType]
ON [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ([SchoolYear] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderAssociation_SchoolYearType1] FOREIGN KEY ([ClassOfSchoolYear])
REFERENCES [edfi].[SchoolYearType] ([SchoolYear])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderAssociation_SchoolYearType1]
ON [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ([ClassOfSchoolYear] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderAssociation_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderAssociation_TeacherCandidate]
ON [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderAssociation_TeacherPreparationProvider] FOREIGN KEY ([TeacherPreparationProviderId])
REFERENCES [extension].[TeacherPreparationProvider] ([TeacherPreparationProviderId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderAssociation_TeacherPreparationProvider]
ON [extension].[TeacherCandidateTeacherPreparationProviderAssociation] ([TeacherPreparationProviderId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_EducationOrganization]
ON [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_ReasonExitedDescriptor] FOREIGN KEY ([ReasonExitedDescriptorId])
REFERENCES [edfi].[ReasonExitedDescriptor] ([ReasonExitedDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_ReasonExitedDescriptor]
ON [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] ([ReasonExitedDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_TeacherCandidate]
ON [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_TeacherPreparationProviderProgram] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProviderProgram] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTeacherPreparationProviderProgramAssociation_TeacherPreparationProviderProgram]
ON [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] ([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTelephone] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTelephone_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTelephone_TeacherCandidate]
ON [extension].[TeacherCandidateTelephone] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateTelephone] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateTelephone_TelephoneNumberTypeDescriptor] FOREIGN KEY ([TelephoneNumberTypeDescriptorId])
REFERENCES [edfi].[TelephoneNumberTypeDescriptor] ([TelephoneNumberTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateTelephone_TelephoneNumberTypeDescriptor]
ON [extension].[TeacherCandidateTelephone] ([TelephoneNumberTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateVisa] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateVisa_TeacherCandidate] FOREIGN KEY ([TeacherCandidateIdentifier])
REFERENCES [extension].[TeacherCandidate] ([TeacherCandidateIdentifier])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateVisa_TeacherCandidate]
ON [extension].[TeacherCandidateVisa] ([TeacherCandidateIdentifier] ASC)
GO

ALTER TABLE [extension].[TeacherCandidateVisa] WITH CHECK ADD CONSTRAINT [FK_TeacherCandidateVisa_VisaDescriptor] FOREIGN KEY ([VisaDescriptorId])
REFERENCES [edfi].[VisaDescriptor] ([VisaDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherCandidateVisa_VisaDescriptor]
ON [extension].[TeacherCandidateVisa] ([VisaDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProgramTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProgramTypeDescriptor_Descriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TeacherPreparationProvider] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProvider_EducationOrganization] FOREIGN KEY ([TeacherPreparationProviderId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TeacherPreparationProvider] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProvider_University] FOREIGN KEY ([UniversityId])
REFERENCES [extension].[University] ([UniversityId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProvider_University]
ON [extension].[TeacherPreparationProvider] ([UniversityId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgram] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgram_EducationOrganization] FOREIGN KEY ([EducationOrganizationId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgram_EducationOrganization]
ON [extension].[TeacherPreparationProviderProgram] ([EducationOrganizationId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgram] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgram_ProgramTypeDescriptor] FOREIGN KEY ([ProgramTypeDescriptorId])
REFERENCES [edfi].[ProgramTypeDescriptor] ([ProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgram_ProgramTypeDescriptor]
ON [extension].[TeacherPreparationProviderProgram] ([ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgram] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgram_TeacherPreparationProgramTypeDescriptor] FOREIGN KEY ([TeacherPreparationProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProgramTypeDescriptor] ([TeacherPreparationProgramTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgram_TeacherPreparationProgramTypeDescriptor]
ON [extension].[TeacherPreparationProviderProgram] ([TeacherPreparationProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgram] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgram_TPPProgramPathwayDescriptor] FOREIGN KEY ([TPPProgramPathwayDescriptorId])
REFERENCES [extension].[TPPProgramPathwayDescriptor] ([TPPProgramPathwayDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgram_TPPProgramPathwayDescriptor]
ON [extension].[TeacherPreparationProviderProgram] ([TPPProgramPathwayDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgramGradeLevel] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgramGradeLevel_GradeLevelDescriptor] FOREIGN KEY ([GradeLevelDescriptorId])
REFERENCES [edfi].[GradeLevelDescriptor] ([GradeLevelDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgramGradeLevel_GradeLevelDescriptor]
ON [extension].[TeacherPreparationProviderProgramGradeLevel] ([GradeLevelDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgramGradeLevel] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgramGradeLevel_TeacherPreparationProviderProgram] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProviderProgram] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
ON DELETE CASCADE
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgramGradeLevel_TeacherPreparationProviderProgram]
ON [extension].[TeacherPreparationProviderProgramGradeLevel] ([EducationOrganizationId] ASC, [ProgramName] ASC, [ProgramTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgramTPPProgramDegree] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgramTPPProgramDegree_AcademicSubjectDescriptor] FOREIGN KEY ([AcademicSubjectDescriptorId])
REFERENCES [edfi].[AcademicSubjectDescriptor] ([AcademicSubjectDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgramTPPProgramDegree_AcademicSubjectDescriptor]
ON [extension].[TeacherPreparationProviderProgramTPPProgramDegree] ([AcademicSubjectDescriptorId] ASC)
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgramTPPProgramDegree] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgramTPPProgramDegree_TeacherPreparationProviderProgram] FOREIGN KEY ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
REFERENCES [extension].[TeacherPreparationProviderProgram] ([EducationOrganizationId], [ProgramName], [ProgramTypeDescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TeacherPreparationProviderProgramTPPProgramDegree] WITH CHECK ADD CONSTRAINT [FK_TeacherPreparationProviderProgramTPPProgramDegree_TPPDegreeTypeDescriptor] FOREIGN KEY ([TPPDegreeTypeDescriptorId])
REFERENCES [extension].[TPPDegreeTypeDescriptor] ([TPPDegreeTypeDescriptorId])
GO

CREATE NONCLUSTERED INDEX [FK_TeacherPreparationProviderProgramTPPProgramDegree_TPPDegreeTypeDescriptor]
ON [extension].[TeacherPreparationProviderProgramTPPProgramDegree] ([TPPDegreeTypeDescriptorId] ASC)
GO

ALTER TABLE [extension].[ThemeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ThemeDescriptor_Descriptor] FOREIGN KEY ([ThemeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TPPDegreeTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_TPPDegreeTypeDescriptor_Descriptor] FOREIGN KEY ([TPPDegreeTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[TPPProgramPathwayDescriptor] WITH CHECK ADD CONSTRAINT [FK_TPPProgramPathwayDescriptor_Descriptor] FOREIGN KEY ([TPPProgramPathwayDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[University] WITH CHECK ADD CONSTRAINT [FK_University_EducationOrganization] FOREIGN KEY ([UniversityId])
REFERENCES [edfi].[EducationOrganization] ([EducationOrganizationId])
ON DELETE CASCADE
GO

ALTER TABLE [extension].[ValueTypeDescriptor] WITH CHECK ADD CONSTRAINT [FK_ValueTypeDescriptor_Descriptor] FOREIGN KEY ([ValueTypeDescriptorId])
REFERENCES [edfi].[Descriptor] ([DescriptorId])
ON DELETE CASCADE
GO

