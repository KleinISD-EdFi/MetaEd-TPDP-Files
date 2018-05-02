-- Extended Properties [extension].[AidTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the classification of financial aid awarded to a person for the academic term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AidTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AidTypeDescriptor', @level2type=N'COLUMN', @level2name=N'AidTypeDescriptorId'
GO

-- Extended Properties [extension].[AnonymizedStudent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Domain entity to collect data for indiviudal students with whom the teacher candidate is associated through field work or student teaching', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Domain entity to collect data for indiviudal students with whom the teacher candidate is associated through field work or student teaching', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'Section504Enrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ELL enrollment of the student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'ELLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ESL enrollment of the student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'ESLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in SPED of the student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'SPEDEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in Title I of the student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'TitleIEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator that identifies if the student has been flagged as being at risk according to the District''s definition of at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'AtriskIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of times a student has moved schools during the current school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudent', @level2type=N'COLUMN', @level2name=N'Mobility'
GO

-- Extended Properties [extension].[AnonymizedStudentAcademicRecord] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic record for an anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentAcademicRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of grade points an individual earned for this session.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average cumulative grade point average for a student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum grade point average that can be achieved by a student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'GPAMax'
GO

-- Extended Properties [extension].[AnonymizedStudentAssessment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the analysis or scoring of a Student''s response on an assessment. The analysis results in a value that represents a Student''s performance on a set of items on a test.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentAssessment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the assessment was administered', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier that uniquely identifies the assessment to which the student results are associated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term in which the assessment was administered', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title if any specific assessment given to a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of an assessment based on format and content. For example: Achievement test Advanced placement test Alternate assessment/grade-level standards Attitudinal test Cognitive and perceptual skills test ...', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'AssessmentCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject associated with a student assessment', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Grade level for which effectiveness is measured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessment', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

-- Extended Properties [extension].[AnonymizedStudentAssessmentPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The performance level(s) achieved for the StudentAssessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentAssessmentPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the assessment was administered', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier that uniquely identifies the assessment to which the student results are associated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional indicator of whether the performance level was met.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which performance level value describes the student proficiency.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the instructor of the class uses to report the performance and achievement. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or numerical grade. In some cases, more than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentPerformanceLevel', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO

-- Extended Properties [extension].[AnonymizedStudentAssessmentScoreResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which performance level value describes the student proficiency.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentAssessmentScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date the assessment was administered', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier that uniquely identifies the assessment to which the student results are associated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of a meaningful raw score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentAssessmentScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO

-- Extended Properties [extension].[AnonymizedStudentCourseAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the association between an anonymized student and the course they are enrolled in', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentCourseAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseAssociation', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseAssociation', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseAssociation', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseAssociation', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[AnonymizedStudentCourseTranscript] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentCourseTranscript'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalLetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseRepeatCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in a school or other institution or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO

-- Extended Properties [extension].[AnonymizedStudentDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisability', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisability', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisability', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO

-- Extended Properties [extension].[AnonymizedStudentDisabilityDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentDisabilityDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO

-- Extended Properties [extension].[AnonymizedStudentEducationOrganizationAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the association between an anonymized student and the Education Organziation they are enrolled in', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentEducationOrganizationAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[AnonymizedStudentLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguage', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguage', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguage', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO

-- Extended Properties [extension].[AnonymizedStudentLanguageUse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguageUse', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguageUse', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguageUse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO

-- Extended Properties [extension].[AnonymizedStudentRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s
                   recognition of his or her community or with which the individual most
                   identifies. The data model allows for multiple entries so that each individual
                   can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentRace', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentRace', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentRace', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s
                   recognition of his or her community or with which the individual most
                   identifies. The data model allows for multiple entries so that each individual
                   can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO

-- Extended Properties [extension].[AnonymizedStudentSectionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the association between an anonymized student and the Section they are enrolled in', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AnonymizedStudentSectionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Unique identifier for anonymized student', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'AnonymizedStudentIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AnonymizedStudentSectionAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[Applicant] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person who makes a formal application for an OpenStaffPosition.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Applicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the person is a U.S. citizen.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'CitizenshipStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The extent of formal instruction an individual has received (e.g., the highest grade in school completed or its equivalent or the highest degree received).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HighestCompletedLevelOfEducationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a similar professional position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'YearsOfPriorProfessionalExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a teaching position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'YearsOfPriorTeachingExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The login ID for the user; used for security access control interface.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a teacher is classified as highly qualified for his/her assignment according to state definition. This attribute indicates the teacher is highly qualified for ALL Sections being taught.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HighlyQualifiedTeacher'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject(s) in which the staff is deemed to be "highly qualified".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'HighlyQualifiedAcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Applicant', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO

-- Extended Properties [extension].[ApplicantAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[ApplicantAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddressPeriod', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddressPeriod', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[ApplicantAid] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the financial aid a person is awarded.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantAid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of financial aid awarded to a person for the academic term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'AidTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the award was designated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the award was removed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the condition (e.g., placement in a high need school) under which the aid was given.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'AidConditionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of financial aid awarded to a person for the term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'AidAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates a person who receives Pell Grant aid.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantAid', @level2type=N'COLUMN', @level2name=N'PellGrantRecipient'
GO

-- Extended Properties [extension].[ApplicantBackgroundCheck] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Applicant background check history and disposition.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantBackgroundCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of background check (e.g., online, criminal, employment).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was requested.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckRequestedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was completed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckCompletedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person has or has not completed a fingerprint.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantBackgroundCheck', @level2type=N'COLUMN', @level2name=N'Fingerprint'
GO

-- Extended Properties [extension].[ApplicantCredential] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal document or authorization giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantCredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantCredential', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [extension].[ApplicantDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disability condition(s) that best describes an individual''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisability', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisability', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO

-- Extended Properties [extension].[ApplicantDisabilityDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantDisabilityDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO

-- Extended Properties [extension].[ApplicantElectronicMail] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantElectronicMail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The electronic mail (e-mail) address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'PrimaryEmailAddressIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic email address should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantElectronicMail', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[ApplicantIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe the documentation of citizenship.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [extension].[ApplicantInternationalAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an international address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[ApplicantLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguage', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO

-- Extended Properties [extension].[ApplicantLanguageUse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO

-- Extended Properties [extension].[ApplicantPersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantPersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [extension].[ApplicantRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantRace', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantRace', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO

-- Extended Properties [extension].[ApplicantScoreResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A meaningful score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantScoreResult', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantScoreResult', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of a meaningful raw score or statistical expression of the performance of an individual. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantScoreResult', @level2type=N'COLUMN', @level2name=N'Result'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantScoreResult', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO

-- Extended Properties [extension].[ApplicantStaffIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an applicant by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantStaffIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a staff member.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'StaffIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a staff member by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the staff Identification Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantStaffIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO

-- Extended Properties [extension].[ApplicantTeacherPreparationProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Teacher Preparation Program(s) completed by the teacher.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantTeacherPreparationProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier assigned to the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the organization providing the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The major area for a degree or area of specialization for a certificate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'MajorSpecialization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final GPA the teacher achieved in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of degree awarded by the teacher preparation program to the person (e.g., Certificate Only, Bachelor''s, Master''s, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedDescriptorId'
GO

-- Extended Properties [extension].[ApplicantTeacherPreparationProgramAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The address of the institution providing the teacher prep program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantTeacherPreparationProgramAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[ApplicantTeacherPreparationProgramAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantTeacherPreparationProgramAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[ApplicantTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantTelephone', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[ApplicantVisa] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ApplicantVisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantVisa', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantVisa', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ApplicantVisa', @level2type=N'COLUMN', @level2name=N'VisaDescriptorId'
GO

-- Extended Properties [extension].[AssessmentExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'AssessmentExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of an assessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The typical grade level for which an assessment is designed. If the assessment spans a range of grades, then this attribute holds the highest grade assessed. If only one grade level is assessed then only this attribute is used. For example:
        Adult
        Prekindergarten
        First grade
        Second grade
        ...', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'AssessedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the Assessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The version identifier for the assessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'AssessmentVersion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the program gateway an assessment may be associated with for continuation in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'AssessmentExtension', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO

-- Extended Properties [extension].[BackgroundCheckStatusDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckStatusDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckStatusDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO

-- Extended Properties [extension].[BackgroundCheckTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This descriptor defines the classification of the background check a person receives.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BackgroundCheckTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BackgroundCheckTypeDescriptor', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeDescriptorId'
GO

-- Extended Properties [extension].[BoardCertificationTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of board certification awarded to an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'BoardCertificationTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'BoardCertificationTypeDescriptor', @level2type=N'COLUMN', @level2name=N'BoardCertificationTypeDescriptorId'
GO

-- Extended Properties [extension].[CertificationExamTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of certification exam that was taken.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CertificationExamTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CertificationExamTypeDescriptor', @level2type=N'COLUMN', @level2name=N'CertificationExamTypeDescriptorId'
GO

-- Extended Properties [extension].[CourseCourseTranscriptFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final grade earned of the group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseCourseTranscriptFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final letter grade earned of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO

-- Extended Properties [extension].[CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final letter grade earned of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FinalLetterGrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students receiving a letter grade by letter grade type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'LetterGradeTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students receiving a letter grade by type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'LetterGradeTypePercentage'
GO

-- Extended Properties [extension].[CourseCourseTranscriptFactsAggregatedNumericGradeEarned] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the numeric grade received by the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average final numeric grade for the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'AverageFinalNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'NumericGradeNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'NumericGradeStandardDeviation'
GO

-- Extended Properties [extension].[CourseCourseTranscriptFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseCourseTranscriptFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[CourseStudentAcademicRecordFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complex type that provides data about a group of student and their academic record', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAcademicRecordFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum grade point average a student can receive in the course', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'AggregatedGPAMax'
GO

-- Extended Properties [extension].[CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the cumulative grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average cumulative grade point average for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average grade point for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointStandardDeviation'
GO

-- Extended Properties [extension].[CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the cumulative grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average cumulative grade point average for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average grade point for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointStandardDeviation'
GO

-- Extended Properties [extension].[CourseStudentAcademicRecordFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[CourseStudentAssessmentFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complex type that provides data about a group of students and their assesssment score results and performance levels', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAssessmentFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of a specific assessment given to a group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of an assessment based on format and content. For example: Achievement test, Advanced placement, Alternate assessment/grade-level standards, Attitudinal test, Cognitive and perceptual skills test.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AssessmentCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject associated with a CourseStudentAssessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level associated with a CourseStudentAssessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date a specific assessment was administered to a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term in which the assessment was administered', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [extension].[CourseStudentAssessmentFactsAggregatedPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the performance level for an assessment of a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which performance level value describes the Student proficiency.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who met the performance level', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMetNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who met the performance level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMetPercentage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who achieved each performance level by performance level type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who achieved performance level by each performance level type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelTypePercentage'
GO

-- Extended Properties [extension].[CourseStudentAssessmentFactsAggregatedScoreResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the score from an assessment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all Students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AverageScoreResultDatatypeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A meaningful average score or statistical expression of the performance of an group. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AverageScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average assessment score for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'ScoreNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average assessment score for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'ScoreStandardDeviation'
GO

-- Extended Properties [extension].[CourseStudentAssessmentFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentAssessmentFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[CourseStudentFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This domain entity collects data for aggregated level students with whom the teacher candidate is associated through field work or student teaching	AggregatedStudentFact', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFacts', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedByDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the disability of a group aggregated by course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedByDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the disability of a group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of student who have a disability by disability type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'TypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have a disability by each specific disability type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'Percentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the disability of a group aggregated by course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who have a disability.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'StudentsDisabledNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Percentage of students who have a disability', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'StudentsDisabledPercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedELLEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ELL enrollment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedELLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are ELL.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ELLEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as ELL', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ELLEnrollmentPercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedESLEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ESL enrollment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedESLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are ESL.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ESLEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as ESL', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ESLEnrollmentPercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedGender] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the gender', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedGender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who identify by each gender type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who associate with each gender type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderTypePercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedHispanicLatinoEthnicity] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the Eth ethnicity of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are hispanic/latino', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicityNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as hispanic/latino.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicityPercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The data about the language', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the language of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each language type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by language type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageTypePercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the race of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each race type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by each race type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceTypePercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedSchoolFoodServiceProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if the student is eligible for Free and Reduce Price Lunch', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the students who are enrolled based on School Food Services Eligibility', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SchoolFoodServiceProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students eligibile for SchoolFoodServicesEligibility by category', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'TypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are eligible for SchoolFoodServicesEligibility by type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'TypePercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedSection504Enrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedSection504Enrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'Number504Enrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'Percentage504Enrolled'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedSex] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the sex of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each sex type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by each sex type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexTypePercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedSPED] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in SPED of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedSPED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students enrolled in SPED', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SPEDEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students enrolled in a SPED program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SPEDEnrollmentPercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsAggregatedTitleIEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in Title I of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsAggregatedTitleIEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students eligible for Title I', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'TitleIEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are Title I eligible.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'TitleIEnrollmentPercentage'
GO

-- Extended Properties [extension].[CourseStudentFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseStudentFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[CourseSurveyQuestionResponseFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Survey question response data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseSurveyQuestionResponseFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO

-- Extended Properties [extension].[CourseSurveyQuestionResponseFactsAggregatedNumericResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric response survey data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Matrix element response survey data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For aggregated matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'AggregatedMatrixElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[CourseSurveyResponseFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Survey response data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseSurveyResponseFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [extension].[CourseSurveySectionResponseRatingFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Responses to survey sections collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseSurveySectionResponseRatingFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO

-- Extended Properties [extension].[CourseSurveySectionResponseRatingFactsAggregatedNumericResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average of the numeric responses to survey sections collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CourseSurveySectionResponseRatingFactsAggregatedNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CourseSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[CredentialBoardCertification] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Board certification information for an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CredentialBoardCertification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialBoardCertification', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialBoardCertification', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether an individual is board certified.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialBoardCertification', @level2type=N'COLUMN', @level2name=N'BoardCertification'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which a board certification was awarded.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialBoardCertification', @level2type=N'COLUMN', @level2name=N'BoardCertificationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of board certification awarded to an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialBoardCertification', @level2type=N'COLUMN', @level2name=N'BoardCertificationTypeDescriptorId'
GO

-- Extended Properties [extension].[CredentialCertificationExam] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Certification information for an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CredentialCertificationExam'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialCertificationExam', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialCertificationExam', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the certification.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialCertificationExam', @level2type=N'COLUMN', @level2name=N'CertificationExamTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of certification exam that was taken.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialCertificationExam', @level2type=N'COLUMN', @level2name=N'CertificationExamTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The overall score that was received on the certification exam.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialCertificationExam', @level2type=N'COLUMN', @level2name=N'CertificationExamOverallScore'
GO

-- Extended Properties [extension].[CredentialExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CredentialExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether this is the credential currently being used for employment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'CurrentCredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active credential held by an individual was revoked.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'RevocationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the revocation of credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'RevocationReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an active credential held by an individual was suspended.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'SuspensionDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the suspension of credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'SuspensionReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialExtension', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO

-- Extended Properties [extension].[CredentialRecommendation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the recommendation for the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CredentialRecommendation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendation', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendation', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field of certification for the certificate (e.g., Mathematics, Music).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendation', @level2type=N'COLUMN', @level2name=N'CredentialFieldDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level(s) certified for teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendation', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the category of a legal document giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendation', @level2type=N'COLUMN', @level2name=N'TeachingCredentialDescriptorId'
GO

-- Extended Properties [extension].[CredentialRecommendingInstitution] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information regarding the institution that is recommending a candidate for certification.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'CredentialRecommendingInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendingInstitution', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendingInstitution', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendingInstitution', @level2type=N'COLUMN', @level2name=N'RecommendingInstutionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which a recommendation for a candidate is made.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendingInstitution', @level2type=N'COLUMN', @level2name=N'RecommendingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The country that the recommendation for a candidate was made in.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendingInstitution', @level2type=N'COLUMN', @level2name=N'RecommendingInstitutionCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a recommendation was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'CredentialRecommendingInstitution', @level2type=N'COLUMN', @level2name=N'RecommendingInstitutionStateAbbreviationDescriptorId'
GO

-- Extended Properties [extension].[EducationOrganizationCourseTranscriptFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final grade earned of the group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationCourseTranscriptFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final letter grade earned of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO

-- Extended Properties [extension].[EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final letter grade earned of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FinalLetterGrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students receiving a letter grade by letter grade type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'LetterGradeTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students receiving a letter grade by type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'LetterGradeTypePercentage'
GO

-- Extended Properties [extension].[EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the numeric grade received by the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average final numeric grade for the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'AverageFinalNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'NumericGradeNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'NumericGradeStandardDeviation'
GO

-- Extended Properties [extension].[EducationOrganizationCourseTranscriptFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[EducationOrganizationFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Selective fact(s) about the education organization used for comparative analysis.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of date for the fact(s) about the Education Organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year associated with the fact(s).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of administrators employed by education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'NumberAdministratorsEmployed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Enrollment count of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Number of teachers employed by education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'NumberTeachersEmployed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students eligible for free and reduced lunches.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'PercentStudentsFreeReducedLunch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Percent of students in education organization with limited English proficiency.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'PercentStudentsLimitedEnglishProficiency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Percent of students in education organization in special education program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'PercentStudentsSpecialEducation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of staff hired for the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'HiringRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of staff retained for the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'RetentionRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of staff retired for the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'RetirementRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average number of years that all staff have been employed in the current district of employment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFacts', @level2type=N'COLUMN', @level2name=N'AverageYearsInDistrictEmployed'
GO

-- Extended Properties [extension].[EducationOrganizationFactsAggregatedSalary] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Salary information collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationFactsAggregatedSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of date for the fact(s) about the Education Organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year associated with the fact(s).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average of salaries collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'AverageSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of salaries averaged that were collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'CountOfSalariesAveraged'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The standard deviation of the salaries collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'StandardDeviation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum value in a salary range for staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'SalaryMinRange'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum value in a salary range for staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsAggregatedSalary', @level2type=N'COLUMN', @level2name=N'SalaryMaxRange'
GO

-- Extended Properties [extension].[EducationOrganizationFactsVacancies] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents actual and projected vacancies for the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationFactsVacancies'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of a vacancy.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsVacancies', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsVacancies', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of date for the fact(s) about the Education Organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsVacancies', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year associated with the fact(s).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsVacancies', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type (i.e. actual or projected) of value.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsVacancies', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of vacancies, projected or actual, associated with an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationFactsVacancies', @level2type=N'COLUMN', @level2name=N'NumberOfVacancies'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAcademicRecordFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complex type that provides data about a group of student and their academic record', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAcademicRecordFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum grade point average a student can receive in the education organization', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'AggregatedGPAMax'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the cumulative grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average cumulative grade point average for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average grade point for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointStandardDeviation'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the cumulative grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average cumulative grade point average for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average grade point for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointStandardDeviation'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAssessmentFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complex type that provides data about a group of students and their assesssment score results and performance levels', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAssessmentFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of a specific assessment given to a group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of an assessment based on format and content. For example: Achievement test, Advanced placement, Alternate assessment/grade-level standards, Attitudinal test, Cognitive and perceptual skills test.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AssessmentCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject associated with a CourseStudentAssessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level associated with a CourseStudentAssessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date a specific assessment was administered to a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term in which the assessment was administered', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the performance level for an assessment of a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which performance level value describes the Student proficiency.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who met the performance level', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMetNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who met the performance level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMetPercentage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who achieved each performance level by performance level type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who achieved performance level by each performance level type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelTypePercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAssessmentFactsAggregatedScoreResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the score from an assessment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all Students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AverageScoreResultDatatypeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A meaningful average score or statistical expression of the performance of an group. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AverageScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average assessment score for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'ScoreNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average assessment score for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'ScoreStandardDeviation'
GO

-- Extended Properties [extension].[EducationOrganizationStudentAssessmentFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This domain entity collects data for aggregated level students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedByDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the disability of a group aggregated by course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedByDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the disability of a group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of student who have a disability by disability type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'TypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have a disability by each specific disability type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'Percentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the disability of a group aggregated by course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who have a disability.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'StudentsDisabledNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Percentage of students who have a disability', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'StudentsDisabledPercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedELLEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ELL enrollment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedELLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are ELL.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ELLEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as ELL', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ELLEnrollmentPercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedESLEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ESL enrollment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedESLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are ESL.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ESLEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as ESL', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ESLEnrollmentPercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedGender] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the gender', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedGender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who identify by each gender type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who associate with each gender type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderTypePercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ethnicity of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are hispanic/latino', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicityNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as hispanic/latino.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicityPercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The data about the language', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the language of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each language type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by language type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageTypePercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the race of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each race type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by each race type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceTypePercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if the student is eligible for Free and Reduce Price Lunch', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the students who are enrolled based on School Food Services Eligibility', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SchoolFoodServiceProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students eligibile for SchoolFoodServicesEligibility by category', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'TypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are eligible for SchoolFoodServicesEligibility by type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'TypePercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedSection504Enrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedSection504Enrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'Number504Enrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'Percentage504Enrolled'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedSex] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the sex of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each sex type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by each sex type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexTypePercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedSPED] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in SPED of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedSPED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students enrolled in SPED', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SPEDEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students enrolled in a SPED program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SPEDEnrollmentPercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsAggregatedTitleIEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in Title I of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsAggregatedTitleIEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students eligible for Title I', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'TitleIEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are Title I eligible.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'TitleIEnrollmentPercentage'
GO

-- Extended Properties [extension].[EducationOrganizationStudentFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationStudentFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[EducationOrganizationSurveyQuestionResponseFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Survey question response data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationSurveyQuestionResponseFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO

-- Extended Properties [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric response survey data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Matrix element response survey data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For aggregated matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'AggregatedMatrixElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[EducationOrganizationSurveyResponseFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Survey response data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationSurveyResponseFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [extension].[EducationOrganizationSurveySectionResponseRatingFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Responses to survey sections collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationSurveySectionResponseRatingFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO

-- Extended Properties [extension].[EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the numeric response for an aggregated survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EducationOrganizationSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[EnglishLanguageExamDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'EnglishLanguageExamDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'EnglishLanguageExamDescriptor', @level2type=N'COLUMN', @level2name=N'EnglishLanguageExamDescriptorId'
GO

-- Extended Properties [extension].[ExternalCourseTranscript] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity is the final record of a student''s performance in their courses at the end of a semester or school year of an ExternalEducationOrgnaization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalCourseTranscript'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'ExternalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s grade level at time of course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'WhenTakenGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s grade level at time of course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'OfferedGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method the credits were earned (e.g., Classroom, Examination, Transfer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'MethodCreditEarnedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalLetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseRepeatCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'ExternalCourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in the school, if different from the CourseTitle.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'AlternativeCourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the school that identifies the course offering, the code from an external educational organization, or other alternate course code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'AlternativeCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The intended major subject area of the course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates the career cluster or pathway the course is associated with as part of a CTE curriculum.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'CareerPathwayDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the content standards and goals covered in the course. Reference may be made to state or national content standards.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseDescription'
GO

-- Extended Properties [extension].[ExternalCourseTranscriptCourseIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The code that identifies the organization of subject matter and related learning experiences provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalCourseTranscriptCourseIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A system that is used to identify the organization of subject matter and related learning experiences provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'CourseIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'ExternalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a course by a school, school system, state, or other agency or entity. For multi-part course codes, concatenate the parts separated by a "/". For example, consider the following SCED code-    subject = 20 Math    course = 272 Geometry    level = G General    credits = 1.00   course sequence 1 of 1- would be entered as 20/272/G/1.00/1 of 1.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the Identification Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO

-- Extended Properties [extension].[ExternalCourseTranscriptCourseLevelCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalCourseTranscriptCourseLevelCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of specific program or designation with which the course is associated (e.g., AP, IB, Dual Credit, CTE).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'CourseLevelCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'ExternalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptCourseLevelCharacteristic', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO

-- Extended Properties [extension].[ExternalCourseTranscriptEarnedAdditionalCredits] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of additional credits a student attempted and could earn for successfully completing a given course (e.g., dual credit, AP, IB).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'AdditionalCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'ExternalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'Credits'
GO

-- Extended Properties [extension].[ExternalEducationOrganization] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents any external public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. This entity is provided to refer to organizations about which local school and districts have little to no information.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalEducationOrganization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganization', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A short name for the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganization', @level2type=N'COLUMN', @level2name=N'ShortNameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The public web site address (URL) for the EducationOrganization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganization', @level2type=N'COLUMN', @level2name=N'WebSite'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current operational status of the EducationOrganization (e.g., active, inactive).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganization', @level2type=N'COLUMN', @level2name=N'OperationalStatusDescriptorId'
GO

-- Extended Properties [extension].[ExternalEducationOrganizationAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes the physical location of the education entity, including the street address, city, state, ZIP code, and ZIP code + 4.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalEducationOrganizationAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[ExternalEducationOrganizationAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalEducationOrganizationAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[ExternalEducationOrganizationCategory] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalEducationOrganizationCategory'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationCategory', @level2type=N'COLUMN', @level2name=N'EducationOrganizationCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationCategory', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO

-- Extended Properties [extension].[ExternalEducationOrganizationIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to an education organization by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalEducationOrganizationIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school system, state, or agency assigning the identification code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationIdentificationCode', @level2type=N'COLUMN', @level2name=N'EducationOrganizationIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationIdentificationCode', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code that is assigned to an education organization by a school, school system, state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO

-- Extended Properties [extension].[ExternalEducationOrganizationInstitutionTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the education entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalEducationOrganizationInstitutionTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInstitutionTelephone', @level2type=N'COLUMN', @level2name=N'InstitutionTelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInstitutionTelephone', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInstitutionTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO

-- Extended Properties [extension].[ExternalEducationOrganizationInternationalAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes the international physical location of the education entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalEducationOrganizationInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalEducationOrganizationInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[ExternalStudentAcademicRecord] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This educational entity represents the cumulative record of academic achievement for a student that is being collected from an extrnal education organization about which local school and districts have little to no information.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalStudentAcademicRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cumulative number of grade points an individual earns by successfully completing courses or examinations during his or her enrollment in the ExternalEducationOrganizationas well as those transferred from schools in which the individual had been previously enrolled.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeGradePointsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure of average performance in all courses taken by an individual during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her ExternalEducationOrganizaiton as well as those transferred from schools in which the individual was previously enrolled.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'GradeValueQualifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month and year the student is projected to graduate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'ProjectedGraduationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of grade points an individual earned for the session.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionGradePointsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade point average for an individual computed as the grade points earned during the session divided by the number of credits attempted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionGradePointAverage'
GO

-- Extended Properties [extension].[ExternalStudentAcademicRecordAcademicHonor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Academic distinctions earned by or awarded to the student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalStudentAcademicRecordAcademicHonor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A designation of the type of academic distinctions earned by or awarded to the student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AcademicHonorCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of academic distinctions earned by or awarded to the individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the honor was awarded or earned.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorAwardExpiresDate'
GO

-- Extended Properties [extension].[ExternalStudentAcademicRecordClassRanking] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic rank information of a student in relation to his or her graduating class.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalStudentAcademicRecordClassRanking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic rank of a student in relation to his or her graduating class (e.g., 1st, 2nd, 3rd).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'ClassRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students in the student''s graduating class.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'TotalNumberInClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic percentage rank of a student in relation to his or her graduating class (e.g., 95%, 80%, 50%).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'PercentageRanking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date class ranking was determined.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'ClassRankingDate'
GO

-- Extended Properties [extension].[ExternalStudentAcademicRecordDiploma] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Diploma(s) earned by the student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalStudentAcademicRecordDiploma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.
        Minimum high school program
        Recommended high school program
        Distinguished Achievement Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicated a student who reached a state-defined threshold of vocational education and who attained a high school diploma or its recognized state equivalent or GED.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'CTECompleter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of diploma given to the student for accomplishments.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaAwardExpiresDate'
GO

-- Extended Properties [extension].[ExternalStudentAcademicRecordRecognition] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recognitions given to the student for accomplishments in a co-curricular or extracurricular activity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ExternalStudentAcademicRecordRecognition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The external term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'ExternalTerm'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The full, legally accepted name of the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The nature of recognition given to the learner for accomplishments in a co-curricular, or extra-curricular activity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of academic distinctions earned by or awarded to the individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the recognition was awarded or earned.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ExternalStudentAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardExpiresDate'
GO

-- Extended Properties [extension].[FieldworkTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of fieldwork being executed by a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'FieldworkTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'FieldworkTypeDescriptor', @level2type=N'COLUMN', @level2name=N'FieldworkTypeDescriptorId'
GO

-- Extended Properties [extension].[GenderDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with with a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'GenderDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GenderDescriptor', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO

-- Extended Properties [extension].[GradebookEntryExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'GradebookEntryExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the assignment, homework, or assessment was assigned or executed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'DateAssigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the activity to be recorded in the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'GradebookEntryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the assignment was due.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'DueDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the program gateway an assessment may be associated with for continuation in the program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'GradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO

-- Extended Properties [extension].[LevelOfDegreeAwardedDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the level of degree awarded by the teacher prep program to the person (e.g., Certificate Only, Bachelor''s, Master''s, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelOfDegreeAwardedDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelOfDegreeAwardedDescriptor', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedDescriptorId'
GO

-- Extended Properties [extension].[LevelTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the level (e.g., 1, 2, 3, etc.) of the rubric at which the data is captured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'LevelTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'LevelTypeDescriptor', @level2type=N'COLUMN', @level2name=N'LevelTypeDescriptorId'
GO

-- Extended Properties [extension].[PerformanceMeasure] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the performance measure', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An assigned unique identifier for the performance measure instance.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type (e.g., walkthrough, summative) of performance measure conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of a performance measure.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the performance measure was to be conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'ScheduleDateOfPerformanceMeasure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the performance measure was conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'ActualDateOfPerformanceMeasure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of the the time at which the performance measure was conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'TimeOfPerformanceMeasure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actual or estimated number of clock minutes during which the performance measure was conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'DurationOfPerformanceMeasure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether the performance measure was announced or not.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'Announced'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether co-teaching was part of the performance measure or not.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'CoteachingObserved'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any comments about the performance measure to be captured', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasure', @level2type=N'COLUMN', @level2name=N'Comments'
GO

-- Extended Properties [extension].[PerformanceMeasureFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents aggregated information regarding performance measure data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasureFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated observation data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFacts', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFacts', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFacts', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type (e.g., walkthrough, summative) of performance measure conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFacts', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of a performance measure.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFacts', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO

-- Extended Properties [extension].[PerformanceMeasureFactsGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the aggregated performance measure data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasureFactsGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated observation data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFactsGradeLevel', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the aggregated performance measure data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFactsGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFactsGradeLevel', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFactsGradeLevel', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFactsGradeLevel', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureFactsGradeLevel', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [extension].[PerformanceMeasureGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the performance measure.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasureGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the performance measure.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An assigned unique identifier for the performance measure instance.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureGradeLevel', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureIdentifier'
GO

-- Extended Properties [extension].[PerformanceMeasurePersonBeingReviewed] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information regarding the person taking the performance measure.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasurePersonBeingReviewed'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An assigned unique identifier for the performance measure instance.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasurePersonBeingReviewed', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasurePersonBeingReviewed', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasurePersonBeingReviewed', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasurePersonBeingReviewed', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasurePersonBeingReviewed', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasurePersonBeingReviewed', @level2type=N'COLUMN', @level2name=N'PersonBeingReviewedStaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasurePersonBeingReviewed', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[PerformanceMeasureProgramGateway] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the program gateway that may be associated for continuation in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasureProgramGateway'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An assigned unique identifier for the performance measure instance.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureProgramGateway', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the program gateway that may be associated for continuation in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureProgramGateway', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO

-- Extended Properties [extension].[PerformanceMeasureReviewer] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person that conducted the performance measure.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasureReviewer'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewer', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewer', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An assigned unique identifier for the performance measure instance.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewer', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewer', @level2type=N'COLUMN', @level2name=N'ReviewerStaffUSI'
GO

-- Extended Properties [extension].[PerformanceMeasureReviewerReceivedTraining] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the person administering the performance measure has or has not received training on conducting performance measures.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasureReviewerReceivedTraining'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewerReceivedTraining', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewerReceivedTraining', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An assigned unique identifier for the performance measure instance.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewerReceivedTraining', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date on which the person administering the performance meausre received training on how to conduct performance measures.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewerReceivedTraining', @level2type=N'COLUMN', @level2name=N'ReceivedTrainingDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A score indicating how much homogeneity, or consensus, there is in the ratings given by judges.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureReviewerReceivedTraining', @level2type=N'COLUMN', @level2name=N'InterRaterReliabilityScore'
GO

-- Extended Properties [extension].[PerformanceMeasureTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type (e.g., walkthrough, summative) of observation conducted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PerformanceMeasureTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PerformanceMeasureTypeDescriptor', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureTypeDescriptorId'
GO

-- Extended Properties [extension].[PreviousCareerDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the previous career of an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'PreviousCareerDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'PreviousCareerDescriptor', @level2type=N'COLUMN', @level2name=N'PreviousCareerDescriptorId'
GO

-- Extended Properties [extension].[ProfessionalDevelopmentEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about a professional development event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProfessionalDevelopmentEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name for a professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentEvent', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing an organization that is offering a specific professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentEvent', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentOfferedByDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of total hours the professional development contains.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentEvent', @level2type=N'COLUMN', @level2name=N'TotalHours'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a teacher candidate is active in a professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentEvent', @level2type=N'COLUMN', @level2name=N'Required'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not a professional development event is comprised of multiple sessions or not.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentEvent', @level2type=N'COLUMN', @level2name=N'MultipleSession'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a teacher candidate''s professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentEvent', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentReason'
GO

-- Extended Properties [extension].[ProfessionalDevelopmentOfferedByDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the organization that a professional development is offered by.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProfessionalDevelopmentOfferedByDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProfessionalDevelopmentOfferedByDescriptor', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentOfferedByDescriptorId'
GO

-- Extended Properties [extension].[ProgramGatewayDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the program gateway that is associated with continuation in a program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProgramGatewayDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProgramGatewayDescriptor', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO

-- Extended Properties [extension].[Prospect] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prospect for employment or contract that has not yet made formal application, often obtained from job fairs or university recruiting visits.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Prospect'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A prefix used to denote the title, degree, position, or seniority of the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'PersonalTitlePrefix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A name given to an individual at birth, baptism, or during another naming ceremony, or through legal change.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'FirstName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A secondary name given to an individual at birth, baptism, or during another naming ceremony.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'MiddleName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name borne in common by members of a family.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'LastSurname'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An appendage, if any, used to denote an individual''s generation in his family (e.g., Jr., Sr., III).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'GenerationCodeSuffix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person''s maiden name.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'MaidenName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the prospect applied for a position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Applied'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator whether the person was met by a representative of the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Met'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Additional notes about the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Notes'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The rating initially assigned to the prospect prior to an official screening.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'PreScreeningRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the prospect was a referral.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'Referral'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person making the referral.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'ReferredBy'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The user name of the person on social media.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'SocialMediaUserName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The social media network name (e.g., LinkedIn, Twitter, etc.) associated with the SocialMediaUserName.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'SocialMediaNetworkName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Prospect', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO

-- Extended Properties [extension].[ProspectCredential] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal document or authorization giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectCredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCredential', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCredential', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCredential', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCredential', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO

-- Extended Properties [extension].[ProspectCurrentPosition] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The current position of the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectCurrentPosition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The location, typically City and State, for the institution.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name of an individual''s position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'PositionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject the staff person''s assignment to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPosition', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO

-- Extended Properties [extension].[ProspectCurrentPositionGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the individual''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectCurrentPositionGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of grade levels for which the individual''s assignment is responsible.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPositionGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPositionGradeLevel', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectCurrentPositionGradeLevel', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO

-- Extended Properties [extension].[ProspectDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disability condition(s) that best describes an individual''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisability', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisability', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO

-- Extended Properties [extension].[ProspectDisabilityDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectDisabilityDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO

-- Extended Properties [extension].[ProspectPersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectPersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectPersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [extension].[ProspectProfessionalDevelopmentEventAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of whether a prospect is in attendance for professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectProfessionalDevelopmentEventAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this attendance event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name for a professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the attendance event, for example:
       Present
       Unexcused absence
       Excused absence
       Tardy.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a teacher candidate''s absence.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceEventReason'
GO

-- Extended Properties [extension].[ProspectQualifications] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The qualifications of a prospective mentor teacher.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectQualifications'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectQualifications', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectQualifications', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether the prospect is eligible for the position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectQualifications', @level2type=N'COLUMN', @level2name=N'Eligible'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether or not a prospect mentor teacher has capacity to serve.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectQualifications', @level2type=N'COLUMN', @level2name=N'CapacityToServe'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years of service at the current school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectQualifications', @level2type=N'COLUMN', @level2name=N'YearsOfServiceCurrentPlacement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years of service as a teacher.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectQualifications', @level2type=N'COLUMN', @level2name=N'YearsOfServiceTotal'
GO

-- Extended Properties [extension].[ProspectRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRace', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRace', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO

-- Extended Properties [extension].[ProspectRecruitmentEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference(s) to events associated with the recruitment process.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectRecruitmentEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectRecruitmentEvent', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO

-- Extended Properties [extension].[ProspectTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTelephone', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[ProspectTouchpoint] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Content associated with different touchpoints with the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ProspectTouchpoint'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The content associated with or an artifact from the touchpoint.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'TouchpointContent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the touchpoint.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ProspectTouchpoint', @level2type=N'COLUMN', @level2name=N'TouchpointDate'
GO

-- Extended Properties [extension].[QuestionFormDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The form of question: 1) Radio box: multiple choice, single selection; 2) Checkbox: Multiple choice, multiple selection; 3) Dropdown: multiple choice, single selection; 4) Matrix, numeric rating scale; 5) Matrix of dropdowns; 6) Ranking; 7) Single textbox; 8) Matrix of text boxes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'QuestionFormDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'QuestionFormDescriptor', @level2type=N'COLUMN', @level2name=N'QuestionFormDescriptorId'
GO

-- Extended Properties [extension].[RecruitmentEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Events associated with the recruitment process.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RecruitmentEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The long description of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The location of the event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RecruitmentEvent', @level2type=N'COLUMN', @level2name=N'EventLocation'
GO

-- Extended Properties [extension].[Rubric] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Rubric'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Rubric', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Rubric', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Rubric', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Rubric', @level2type=N'COLUMN', @level2name=N'RubricDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A score indicating how much homogeneity, or consensus, there is in the ratings given by judges.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Rubric', @level2type=N'COLUMN', @level2name=N'InterRaterReliabilityScore'
GO

-- Extended Properties [extension].[RubricLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the level of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevel', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevel', @level2type=N'COLUMN', @level2name=N'RubricLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevel', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevel', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO

-- Extended Properties [extension].[RubricLevelInformation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the level of the rubric at which the data is captured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricLevelInformation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'RubricLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level (e.g., 1, 2, 3, etc.) of the rubric at which the data is captured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'LevelTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the level of the rubric at which the data is captured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'LevelTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the level of the rubric at which the data is captured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'LevelDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score for the level of the rubic.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'MinimumScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score for the level of the rubic.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelInformation', @level2type=N'COLUMN', @level2name=N'MaximumScore'
GO

-- Extended Properties [extension].[RubricLevelResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the response to the rubric level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricLevelResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An assigned unique identifier for the performance measure instance.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'PerformanceMeasureIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'RubricLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The score for the specified level of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'NumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text response(s) for the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'TextResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator that the rubric component is an area of refinement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'AreaOfRefinement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator that the rubric component is an area of reinforcement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponse', @level2type=N'COLUMN', @level2name=N'AreaOfReinforcement'
GO

-- Extended Properties [extension].[RubricLevelResponseFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the rubric level response at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricLevelResponseFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated observation data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFacts', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFacts', @level2type=N'COLUMN', @level2name=N'RubricLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFacts', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFacts', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO

-- Extended Properties [extension].[RubricLevelResponseFactsAggregatedNumericResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric response survey data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricLevelResponseFactsAggregatedNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated observation data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'RubricLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[RubricLevelTheme] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The theme of the specified level of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricLevelTheme'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelTheme', @level2type=N'COLUMN', @level2name=N'RubricEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelTheme', @level2type=N'COLUMN', @level2name=N'RubricLevelCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelTheme', @level2type=N'COLUMN', @level2name=N'RubricTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of rubric used to conduct the observation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelTheme', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The theme of the specified level of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricLevelTheme', @level2type=N'COLUMN', @level2name=N'ThemeDescriptorId'
GO

-- Extended Properties [extension].[RubricTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the rubric types.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'RubricTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'RubricTypeDescriptor', @level2type=N'COLUMN', @level2name=N'RubricTypeDescriptorId'
GO

-- Extended Properties [extension].[SalaryTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of salary that a staff member is receiving.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SalaryTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SalaryTypeDescriptor', @level2type=N'COLUMN', @level2name=N'SalaryTypeDescriptorId'
GO

-- Extended Properties [extension].[SectionCourseTranscriptFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final grade earned of the group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionCourseTranscriptFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final letter grade earned of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFacts', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO

-- Extended Properties [extension].[SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the final letter grade earned of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'FinalLetterGrade'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students receiving a letter grade by letter grade type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'LetterGradeTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students receiving a letter grade by type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedFinalLetterGradeEarned', @level2type=N'COLUMN', @level2name=N'LetterGradeTypePercentage'
GO

-- Extended Properties [extension].[SectionCourseTranscriptFactsAggregatedNumericGradeEarned] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the numeric grade received by the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average final numeric grade for the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'AverageFinalNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'NumericGradeNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsAggregatedNumericGradeEarned', @level2type=N'COLUMN', @level2name=N'NumericGradeStandardDeviation'
GO

-- Extended Properties [extension].[SectionCourseTranscriptFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionCourseTranscriptFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionCourseTranscriptFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[SectionStudentAcademicRecordFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complex type that provides data about a group of students and their academic record.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAcademicRecordFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum GPA a student can earn for the section', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFacts', @level2type=N'COLUMN', @level2name=N'AggregatedGPAMax'
GO

-- Extended Properties [extension].[SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the cumulative grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average cumulative grade point average for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average grade point for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedCumulativeGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointStandardDeviation'
GO

-- Extended Properties [extension].[SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the cumulative grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average cumulative grade point average for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average grade point for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average grade point for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsAggregatedSessionGradePointAverage', @level2type=N'COLUMN', @level2name=N'GradePointStandardDeviation'
GO

-- Extended Properties [extension].[SectionStudentAcademicRecordFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAcademicRecordFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[SectionStudentAssessmentFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This domain entity collects data for aggregated level students with whom the teacher candidate is associated through field work or student teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAssessmentFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of any specific assessment given to a group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AssessmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of an assessment based on format and content. For example: Achievement test, Advanced placement, Alternate assessment/grade-level standards, Attitudinal test, Cognitive and perceptual skills test.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AssessmentCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject associated with a CourseStudentAssessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade level associated with a CourseStudentAssessment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date a specific assessment was administered to a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFacts', @level2type=N'COLUMN', @level2name=N'AdministrationDate'
GO

-- Extended Properties [extension].[SectionStudentAssessmentFactsAggregatedPerformanceLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the performance level for an assessment of a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which performance level value describes the Student proficiency.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who met the performance level', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMetNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who met the performance level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelMetPercentage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who achieved each performance level by performance level type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who achieved performance level by each performance level type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedPerformanceLevel', @level2type=N'COLUMN', @level2name=N'PerformanceLevelTypePercentage'
GO

-- Extended Properties [extension].[SectionStudentAssessmentFactsAggregatedScoreResult] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the score from an assessment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method that the administrator of the assessment uses to report the performance and achievement of all Students. It may be a qualitative method such as performance level descriptors or a quantitative method such as a numerical grade or cut score. More than one type of reporting method may be used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AssessmentReportingMethodDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AverageScoreResultDatatypeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A meaningful average score or statistical expression of the performance of an group. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'AverageScoreResult'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average assessment score for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'ScoreNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average assessment score for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsAggregatedScoreResult', @level2type=N'COLUMN', @level2name=N'ScoreStandardDeviation'
GO

-- Extended Properties [extension].[SectionStudentAssessmentFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentAssessmentFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year the assessment was taken', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'TakenSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentAssessmentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[SectionStudentFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This domain entity collects data for aggregated level students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFacts', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFacts', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFacts', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFacts', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFacts', @level2type=N'COLUMN', @level2name=N'SessionName'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedByDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the disability of a group aggregated by course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedByDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the disability of a group.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of student who have a disability by disability type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'TypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have a disability by each specific disability type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedByDisability', @level2type=N'COLUMN', @level2name=N'Percentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the disability of a group aggregated by course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who have a disability.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'StudentsDisabledNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Percentage of students who have a disability', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedDisabilityTotalStudentsDisabled', @level2type=N'COLUMN', @level2name=N'StudentsDisabledPercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedELLEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ELL enrollment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedELLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are ELL.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ELLEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as ELL', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedELLEnrollment', @level2type=N'COLUMN', @level2name=N'ELLEnrollmentPercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedESLEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ESL enrollment of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedESLEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are ESL.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ESLEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as ESL', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedESLEnrollment', @level2type=N'COLUMN', @level2name=N'ESLEnrollmentPercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedGender] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the gender', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedGender'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who identify by each gender type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who associate with each gender type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedGender', @level2type=N'COLUMN', @level2name=N'GenderTypePercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedHispanicLatinoEthnicity] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the ethnicity of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are hispanic/latino', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicityNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are identified as hispanic/latino.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedHispanicLatinoEthnicity', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicityPercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The data about the language', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the language of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each language type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by language type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedLanguage', @level2type=N'COLUMN', @level2name=N'LanguageTypePercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the race of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The way this data element is listed, it must allow for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each race type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by each race type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedRace', @level2type=N'COLUMN', @level2name=N'RaceTypePercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedSchoolFoodServiceProgramService] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if the student is eligible for Free and Reduce Price Lunch', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the students who are enrolled based on School Food Services Eligibility', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SchoolFoodServiceProgramServiceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students eligibile for SchoolFoodServicesEligibility by category', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'TypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are eligible for SchoolFoodServicesEligibility by type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSchoolFoodServiceProgramService', @level2type=N'COLUMN', @level2name=N'TypePercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedSection504Enrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedSection504Enrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'Number504Enrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are enrolled in a 504 program', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSection504Enrollment', @level2type=N'COLUMN', @level2name=N'Percentage504Enrolled'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedSex] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the sex of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedSex'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students by each sex type', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexTypeNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students by each sex type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSex', @level2type=N'COLUMN', @level2name=N'SexTypePercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedSPED] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in SPED of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedSPED'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students enrolled in SPED', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SPEDEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students enrolled in a SPED program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedSPED', @level2type=N'COLUMN', @level2name=N'SPEDEnrollmentPercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsAggregatedTitleIEnrollment] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Data about the enrollment in Title I of the group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsAggregatedTitleIEnrollment'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students eligible for Title I', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'TitleIEnrollmentNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who are Title I eligible.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsAggregatedTitleIEnrollment', @level2type=N'COLUMN', @level2name=N'TitleIEnrollmentPercentage'
GO

-- Extended Properties [extension].[SectionStudentFactsStudentsEnrolled] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the number of students enrolled', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionStudentFactsStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the data, i.e., is the data projected, actual or other', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students enrolled in the respective Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'NumberStudentsEnrolled'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percent of students who have been identified as at risk.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentAtRisk'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The percentage of students who have moved at least once during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionStudentFactsStudentsEnrolled', @level2type=N'COLUMN', @level2name=N'PercentMobility'
GO

-- Extended Properties [extension].[SectionSurveyQuestionResponseFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Survey question response data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionSurveyQuestionResponseFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO

-- Extended Properties [extension].[SectionSurveyQuestionResponseFactsAggregatedNumericResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric response survey data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Matrix element response survey data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For aggregated matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'AggregatedMatrixElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyQuestionResponseFactsAggregatedSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[SectionSurveyResponseFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Survey response data provided at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionSurveyResponseFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveyResponseFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO

-- Extended Properties [extension].[SectionSurveySectionResponseRatingFacts] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Responses to survey sections collected at the aggregate level.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionSurveySectionResponseRatingFacts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFacts', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO

-- Extended Properties [extension].[SectionSurveySectionResponseRatingFactsAggregatedNumericResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information about the numeric response for an aggregated survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The as-of-date for the aggregated survey data.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'FactsAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The average numeric response for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'AverageNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of data values in set of data that makes up the average numeric grade for a group', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseNCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure used to quantify the amount of variation or dispersion of a set of data values, in this case specific to the average numeric grade for a group of students', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SectionSurveySectionResponseRatingFactsAggregatedNumericResponse', @level2type=N'COLUMN', @level2name=N'NumericResponseStandardDeviation'
GO

-- Extended Properties [extension].[StaffApplicant] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reference to applicant(s) represented by this staff member.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffApplicant'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffApplicant', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffApplicant', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffApplicant', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [extension].[StaffBackgroundCheck] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Staff background check history and disposition.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffBackgroundCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of background check (e.g., online, criminal, employment).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was requested.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckRequestedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was completed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckCompletedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person has or has not completed a fingerprint.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffBackgroundCheck', @level2type=N'COLUMN', @level2name=N'Fingerprint'
GO

-- Extended Properties [extension].[StaffEducationOrganizationAssignmentAssociationExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffEducationOrganizationAssignmentAssociationExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s employment, contract, or relationship with the LEA.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The titles of employment, official status, or rank of education staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffClassificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of years that an individual has previously held a teaching position in one or more education institutions.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffEducationOrganizationAssignmentAssociationExtension', @level2type=N'COLUMN', @level2name=N'YearsOfExperienceAtCurrentEducationOrganization'
GO

-- Extended Properties [extension].[StaffExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the probation period ended or is scheduled to end.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'ProbationCompleteDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the staff member is tenured.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'Tenured'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the staff is on track for tenure.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffExtension', @level2type=N'COLUMN', @level2name=N'TenureTrack'
GO

-- Extended Properties [extension].[StaffFieldworkAbsenceEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the staff absence', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffFieldworkAbsenceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the code describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this absence event', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the staff absence', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The hours the staff was absence if not the entire working day', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'HoursAbsent'
GO

-- Extended Properties [extension].[StaffFieldworkExperience] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffFieldworkExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the staff first starts fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'FieldworkExperienceSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier for the fieldwork experience', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'FieldworkIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of fieldwork being executed by a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'FieldworkTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of hours per week for fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'HoursPerWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the staff ends fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the program gateway that is associated with continuation in a program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperience', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO

-- Extended Properties [extension].[StaffFieldworkExperienceCoteaching] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The act of two teachers (teacher candidate and cooperating teacher) working together with groups of students; sharing the planning, organization, delivery, and assessment of instruction, as well as the physical space.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffFieldworkExperienceCoteaching'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the staff first starts fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'FieldworkExperienceSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier for the fieldwork experience', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'FieldworkIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate first starts co-teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'CoteachingBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate stopped co-teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'CoteachingEndDate'
GO

-- Extended Properties [extension].[StaffHighlyQualifiedAcademicSubject] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject(s) in which the staff is deemed to be "highly qualified".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffHighlyQualifiedAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic subject(s) in which the staff is deemed to be "highly qualified".', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffHighlyQualifiedAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffHighlyQualifiedAcademicSubject', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [extension].[StaffProfessionalDevelopmentEventAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of whether a staff is in attendance for professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffProfessionalDevelopmentEventAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this attendance event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name for a professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the attendance event, for example:
       Present
       Unexcused absence
       Excused absence
       Tardy.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a teacher candidate''s absence.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceEventReason'
GO

-- Extended Properties [extension].[StaffSalary] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information regarding the salary of a staff member.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffSalary'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSalary', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum salary range for a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSalary', @level2type=N'COLUMN', @level2name=N'SalaryMinRange'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum salary range for a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSalary', @level2type=N'COLUMN', @level2name=N'SalaryMaxRange'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of salary that a staff member is receiving.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSalary', @level2type=N'COLUMN', @level2name=N'SalaryTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The salary of a staff member.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSalary', @level2type=N'COLUMN', @level2name=N'SalaryAmount'
GO

-- Extended Properties [extension].[StaffSeniority] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entries of job experience contributing to computations of seniority.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffSeniority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The field of the credential being applied.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'CredentialFieldDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the education organization worked.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of years of experience.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffSeniority', @level2type=N'COLUMN', @level2name=N'YearsExperience'
GO

-- Extended Properties [extension].[StaffStudentGrowthMeasure] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complex type that provides data about a group of students and their student growth as it pertains to the Teacher Candidate', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffStudentGrowthMeasure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the student growth is measured', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthMeasureDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identification of the type of score that was used to determine student growth', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The target score that has been set for the group of students as it pertains to their student growth.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthTargetScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actual score a group of students receives on their student growth assessment', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthActualScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if the student has met the student growth target score', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthMet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students included in the average score result.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthNCount'
GO

-- Extended Properties [extension].[StaffStudentGrowthMeasureCourseAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any courses associated with the staff''s student growth data, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffStudentGrowthMeasureCourseAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[StaffStudentGrowthMeasureEducationOrganizationAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any education organizations associated with the staff''s student growth data, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffStudentGrowthMeasureEducationOrganizationAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[StaffStudentGrowthMeasureSectionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any sections associated with the staff''s student growth data, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffStudentGrowthMeasureSectionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[StaffTeacherEducatorResearch] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Teacher preparation provider faculty that instruct teacher candidates in content area or pedagogy.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherEducatorResearch'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherEducatorResearch', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the start or effective date of a staff member''s teacher educator position for an Education Organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherEducatorResearch', @level2type=N'COLUMN', @level2name=N'ResearchExperienceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the research experience.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherEducatorResearch', @level2type=N'COLUMN', @level2name=N'ResearchExperienceTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the research experience.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherEducatorResearch', @level2type=N'COLUMN', @level2name=N'ResearchExperienceDescription'
GO

-- Extended Properties [extension].[StaffTeacherPreparationProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Teacher Preparation Program(s) completed by the teacher.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An identifier assigned to the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the organization providing the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'NameOfInstitution'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The major area for a degree or area of specialization for a certificate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'MajorSpecialization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final GPA the teacher achieved in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'GPA'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of degree awarded by the teacher preparation program to the person (e.g., Certificate Only, Bachelor''s, Master''s, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgram', @level2type=N'COLUMN', @level2name=N'LevelOfDegreeAwardedDescriptorId'
GO

-- Extended Properties [extension].[StaffTeacherPreparationProgramAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The address of the institution providing the teacher prep program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProgramAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[StaffTeacherPreparationProgramAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProgramAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the Teacher Preparation Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProgramAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[StaffTeacherPreparationProviderAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the association between the Staff and the TeacherPreparationProvider', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProviderAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identification code for the Teacher Preparation Provider', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProviderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier for a school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Program Assignment for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'ProgramAssignmentDescriptorId'
GO

-- Extended Properties [extension].[StaffTeacherPreparationProviderAssociationAcademicSubject] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of a degree.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProviderAssociationAcademicSubject'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of a degree.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identification code for the Teacher Preparation Provider', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociationAcademicSubject', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProviderId'
GO

-- Extended Properties [extension].[StaffTeacherPreparationProviderAssociationGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProviderAssociationGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels for the association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identification code for the Teacher Preparation Provider', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderAssociationGradeLevel', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProviderId'
GO

-- Extended Properties [extension].[StaffTeacherPreparationProviderProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association indicates the Staff associated with a teacher preparation provider program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StaffTeacherPreparationProviderProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Start date for the association of staff to this program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'End date for the association of staff to this program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the staff has access to the student records of the program per district interpretation of FERPA and other privacy laws, regulations, and policies.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StaffTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'StudentRecordAccess'
GO

-- Extended Properties [extension].[StudentGradebookEntryExtension] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StudentGradebookEntryExtension'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Month, day, and year of the Student''s entry or assignment to the Section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the assignment, homework, or assessment was assigned or executed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'DateAssigned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name or title of the activity to be recorded in the GradebookEntry.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'GradebookEntryTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date that the assignment was completed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'DateCompleted'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indication of whether the assignment was passed or not.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGradebookEntryExtension', @level2type=N'COLUMN', @level2name=N'AssignmentPassed'
GO

-- Extended Properties [extension].[StudentGrowthTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identification of the type of score that was used to determine student growth', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'StudentGrowthTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'StudentGrowthTypeDescriptor', @level2type=N'COLUMN', @level2name=N'StudentGrowthTypeDescriptorId'
GO

-- Extended Properties [extension].[Survey] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A survey to identified or anonymous respondants.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'Survey'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SurveyTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year associated with the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'AssociatedSchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Term the survey was given.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Category or Type of Survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SurveyCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'Survey', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO

-- Extended Properties [extension].[SurveyCategoryDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the category or type of survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyCategoryDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyCategoryDescriptor', @level2type=N'COLUMN', @level2name=N'SurveyCategoryDescriptorId'
GO

-- Extended Properties [extension].[SurveyQuestion] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The questions for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The form of question: 1) Radio box: multiple choice, single selection; 2) Checkbox: Multiple choice, multiple selection; 3) Dropdown: multiple choice, single selection; 4) Matrix, numeric rating scale; 5) Matrix of dropdowns; 6) Ranking; 7) Single textbook; 8) Matrix of text boxes', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'QuestionFormDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text of the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'QuestionText'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestion', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO

-- Extended Properties [extension].[SurveyQuestionMatrix] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the matrix element in the survey', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionMatrix'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrix', @level2type=N'COLUMN', @level2name=N'MatrixElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrix', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrix', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score possible on a survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrix', @level2type=N'COLUMN', @level2name=N'MinRawScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score possible on a survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionMatrix', @level2type=N'COLUMN', @level2name=N'MaxRawScore'
GO

-- Extended Properties [extension].[SurveyQuestionNumericChoice] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix of rating scale and for ranking, the numeric choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionNumericChoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix of rating scale and for ranking, the numeric choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionNumericChoice', @level2type=N'COLUMN', @level2name=N'NumericChoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionNumericChoice', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionNumericChoice', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO

-- Extended Properties [extension].[SurveyQuestionResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The response to a survey question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates there was no response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'NoResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numeric response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'NumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text response(s) for the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponse', @level2type=N'COLUMN', @level2name=N'TextResponse'
GO

-- Extended Properties [extension].[SurveyQuestionResponseSurveyQuestionMatrixElementResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix questions, the response for each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For matrix questions, the text identifying each row of the matrix.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'MatrixElement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numeric response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The text response(s) for the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'TextResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates there was no response to the question.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'NoResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minimum score possible on a survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'MinNumericResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The maximum score possible on a survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionResponseSurveyQuestionMatrixElementResponse', @level2type=N'COLUMN', @level2name=N'MaxNumericResponse'
GO

-- Extended Properties [extension].[SurveyQuestionTextChoice] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For radio buttons, checkboxes, dropdowns, matrix of drop downs - the list of choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyQuestionTextChoice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifying code for the question, unique for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionTextChoice', @level2type=N'COLUMN', @level2name=N'QuestionCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionTextChoice', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For radio buttons, checkboxes, dropdowns, matrix of drop downs - the list of choices.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyQuestionTextChoice', @level2type=N'COLUMN', @level2name=N'TextChoice'
GO

-- Extended Properties [extension].[SurveyResponse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Responses to a Survey for named or anonymous persons.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveyResponse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date of the survey response.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ResponseDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Email address of the respondent.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Full name of the respondent.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'FullName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Location of the respondent, oten a citr, district, or school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'Location'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a parent.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ParentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier assigned to a person making formal application for an open staff position.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ApplicantIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the prospect.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ProspectIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveyResponse', @level2type=N'COLUMN', @level2name=N'ProspectEducationOrganizationId'
GO

-- Extended Properties [extension].[SurveySection] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The section(s) of questions for the survey.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveySection'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySection', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySection', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO

-- Extended Properties [extension].[SurveySectionResponseRating] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Optional numeric rating computed from the survey responses for the section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'SurveySectionResponseRating'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique survey identifier from the survey tool.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SurveyIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier of the survey typically from the survey application.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SurveyResponseIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or label for the survey section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SurveySectionTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Numeric rating computed from the survey responses for the section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'SurveySectionResponseRating', @level2type=N'COLUMN', @level2name=N'SectionRating'
GO

-- Extended Properties [extension].[TeacherCandidate] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
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
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'SexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which an individual was born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The city the student was born in.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthCity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which an individual was born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the Province or jurisdiction in which an individual is born.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthInternationalProvince'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The country in which an individual is born. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthCountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'For students born outside of the U.S., the date the student entered the U.S.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'DateEnteredUS'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator of whether the student was born with other siblings (i.e., twins, triplets, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'MultipleBirthStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A person''s gender at birth.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'BirthSexDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Locator for the student photo.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'ProfileThumbnail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the individual traces his or her origin or descent to Mexico, Puerto Rico, Cuba, Central, and South America, and other Spanish cultures, regardless of race. The term, "Spanish origin," can be used in addition to "Hispanic or Latino."', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'HispanicLatinoEthnicity'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Previous definition of Ethnicity combining Hispanic/Latino and race:
      1 - American Indian or Alaskan Native
      2 - Asian or Pacific Islander
      3 - Black, not of Hispanic origin
      4 - Hispanic
      5 - White, not of Hispanic origin.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'OldEthnicityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of whether or not the person is a U.S. citizen.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'CitizenshipStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of inadequate financial condition of an individual''s family, as determined by family income, number of family members/dependents, participation in public assistance programs, and/or other characteristics considered relevant by federal, state, and local policy.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'EconomicDisadvantaged'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'LimitedEnglishProficiencyDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates a state health or weather related event that displaces a group of students, and may require additional funding, educational, or social services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'DisplacementStatus'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The login ID for the user; used for security access control interface.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'LoginId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The gender with which a person associates.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'GenderDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The tuition for a person''s participation in a program, service. or course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'TuitionCost'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'EnglishLanguageExamDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The career previous for an individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'PreviousCareerDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication of whether a teacher candidate has completed the teacher preparation program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'ProgramComplete'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'StudentUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidate', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO

-- Extended Properties [extension].[TeacherCandidateAcademicRecord] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This educational entity represents the cumulative record of academic achievement for a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAcademicRecord'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeEarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeAttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cumulative number of grade points an individual earns by successfully completing courses or examinations during his or her enrollment in the current school as well as those transferred from schools in which the individual had been previously enrolled.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeGradePointsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure of average performance in all courses taken by an individual during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the individual was previously enrolled.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'CumulativeGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The scale of equivalents, if applicable, for grades awarded as indicators of performance in schoolwork. For example, numerical equivalents for letter grades used in determining a student''s Grade Point Average (A=4, B=3, C=2, D=1 in a four-point system) or letter equivalents for percentage grades (90-100%=A, 80-90%=B, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'GradeValueQualifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month and year the student is projected to graduate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'ProjectedGraduationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionEarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionAttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of grade points an individual earned for this session.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionGradePointsEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade point average for an individual computed as the grade points earned during the session divided by the number of credits attempted.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'SessionGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A measure of average performance in all courses taken by an individual within a given content area during his or her school career as determined for record-keeping purposes. This is obtained by dividing the total grade points received by the total number of credits attempted. This usually includes grade points received and credits attempted in his or her current school as well as those transferred from schools in which the individual was previously enrolled.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'ContentGradePointAverage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The cumulative number of grade points an individual earns within a given content area by successfully completing courses or examinations during his or her enrollment in the current school as well as those transferred from schools in which the individual had been previously enrolled.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'ContentGradePointEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies the program gateway that may be associated for continuation in the program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The degree type that a teacher candidate accomplishes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecord', @level2type=N'COLUMN', @level2name=N'TPPDegreeTypeDescriptorId'
GO

-- Extended Properties [extension].[TeacherCandidateAcademicRecordAcademicHonor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Academic distinctions earned by or awarded to the student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAcademicRecordAcademicHonor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A designation of the type of academic distinctions earned by or awarded to the student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AcademicHonorCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of academic distinctions earned by or awarded to the individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the honor was awarded or earned.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordAcademicHonor', @level2type=N'COLUMN', @level2name=N'HonorAwardExpiresDate'
GO

-- Extended Properties [extension].[TeacherCandidateAcademicRecordClassRanking] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic rank information of a student in relation to his or her graduating class.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAcademicRecordClassRanking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic rank of a student in relation to his or her graduating class (e.g., 1st, 2nd, 3rd).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'ClassRank'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The total number of students in the student''s graduating class.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'TotalNumberInClass'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The academic percentage rank of a student in relation to his or her graduating class (e.g., 95%, 80%, 50%).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'PercentageRanking'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date class ranking was determined.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordClassRanking', @level2type=N'COLUMN', @level2name=N'ClassRankingDate'
GO

-- Extended Properties [extension].[TeacherCandidateAcademicRecordDiploma] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Diploma(s) earned by the student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAcademicRecordDiploma'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the student met  graduation requirements and was awarded a diploma.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements.
        Minimum high school program
        Recommended high school program
        Distinguished Achievement Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicated a student who reached a state-defined threshold of vocational education and who attained a high school diploma or its recognized state equivalent or GED.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'CTECompleter'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of diploma given to the student for accomplishments.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordDiploma', @level2type=N'COLUMN', @level2name=N'DiplomaAwardExpiresDate'
GO

-- Extended Properties [extension].[TeacherCandidateAcademicRecordRecognition] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Recognitions given to the student for accomplishments in a co-curricular or extracurricular activity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAcademicRecordRecognition'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The nature of recognition given to the learner for accomplishments in a co-curricular, or extra-curricular activity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title assigned to the achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of achievement attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The system that defines the categories by which an achievement is attributed to the learner.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'AchievementCategorySystem'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the agent, entity, or institution issuing the element.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) from which the award was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'IssuerOriginURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The criteria for competency-based completion of the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'Criteria'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of a web page describing the competency-based completion criteria for the achievement/award.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'CriteriaURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A statement or reference describing the evidence that the learner met the criteria for attainment of the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'EvidenceStatement'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Uniform Resource Locator (URL) for the unique address of an image representing an award or badge associated with the Achievement.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'ImageURL'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the type of academic distinctions earned by or awarded to the individual.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the recognition was awarded or earned.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date on which the award expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAcademicRecordRecognition', @level2type=N'COLUMN', @level2name=N'RecognitionAwardExpiresDate'
GO

-- Extended Properties [extension].[TeacherCandidateAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an address, including the street address, city, state, and ZIP code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The street number and street name or post office box number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'StreetNumberName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The apartment, room, or suite number of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'ApartmentRoomSuiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of the building on the site, if more than one building shares the same address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'BuildingSiteNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the city in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'City'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the state (within the United States) or outlying area in which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'StateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The five or nine digit zip code or overseas postal code portion of an address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'PostalCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the county, parish, borough, or comparable unit (within a state) in
                      ''which an address is located.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'NameOfCounty'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The Federal Information Processing Standards (FIPS) numeric code for the county issued by the National Institute of Standards and Technology (NIST). Counties are considered to be the "first-order subdivisions" of each State and statistically equivalent entity, regardless of their local designations (county, parish, borough, etc.) Counties in different States will have the same code. A unique county number is created when combined with the 2-digit FIPS State Code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'CountyFIPSCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the address should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddress', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[TeacherCandidateAddressPeriod] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The time periods for which the address is valid. For physical addresses, the periods in which the person lived at that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAddressPeriod'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization.    For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddressPeriod', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the start of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddressPeriod', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddressPeriod', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year for the end of the period.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAddressPeriod', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[TeacherCandidateAid] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents the financial aid a person is awarded.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateAid'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The classification of financial aid awarded to a person for the academic term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'AidTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the award was designated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the award was removed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the condition (e.g., placement in a high need school) under which the aid was given.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'AidConditionDescription'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The amount of financial aid awarded to a person for the term/year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'AidAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates a person who receives Pell Grant aid.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateAid', @level2type=N'COLUMN', @level2name=N'PellGrantRecipient'
GO

-- Extended Properties [extension].[TeacherCandidateBackgroundCheck] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Applicant background check history and disposition.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateBackgroundCheck'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateBackgroundCheck', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of background check (e.g., online, criminal, employment).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was requested.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckRequestedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The status of the background check (e.g., pending, under investigation, offense(s) found, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckStatusDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the background check was completed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateBackgroundCheck', @level2type=N'COLUMN', @level2name=N'BackgroundCheckCompletedDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that a person has or has not completed a fingerprint.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateBackgroundCheck', @level2type=N'COLUMN', @level2name=N'Fingerprint'
GO

-- Extended Properties [extension].[TeacherCandidateCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the teacher candidate''s home situation:
      Displaced Homemaker, Immigrant, Migratory, Military Parent, Pregnant Teen, Single Parent, and Unaccompanied Youth.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The characteristic designated for the Student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'StudentCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the characteristic was designated.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the characteristic was removed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the characteristic.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristic', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

-- Extended Properties [extension].[TeacherCandidateCharacteristicDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The characteristic designated for the TeacherCandidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCharacteristicDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCharacteristicDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherCandidateCharacteristicDescriptorId'
GO

-- Extended Properties [extension].[TeacherCandidateCohortYear] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type and year of a cohort (e.g., 9th grade) the student belongs to as determined by the year that student entered a specific grade.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCohortYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of cohort year (9th grade, graduation).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCohortYear', @level2type=N'COLUMN', @level2name=N'CohortYearTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the  school year for the Cohort.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCohortYear', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCohortYear', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[TeacherCandidateCourseTranscript] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity is the final record of a student''s performance in their courses at the end of a semester or school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCourseTranscript'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'AttemptedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Conversion factor that when multiplied by the number of credits is equivalent to Carnegie units.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'EarnedCreditConversion'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Student''s grade level at time of course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'WhenTakenGradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The method the credits were earned (e.g., Classroom, Examination, Transfer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'MethodCreditEarnedDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalLetterGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The final indicator of student performance in a class as submitted by the instructor.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'FinalNumericGradeEarned'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student''s academic grade average.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseRepeatCodeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in a school or other institution or organization. In departmentalized classes at the elementary, secondary, and postsecondary levels (and for staff development activities), this refers to the name by which a course is identified (e.g., American History, English III). For elementary and other non-departmentalized classes, it refers to any portion of the instruction for which a grade or report is assigned (e.g., reading, composition, spelling, language arts).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'CourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptive name given to a course of study offered in the school, if different from the CourseTitle.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'AlternativeCourseTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the school that identifies the course offering, the code from an external educational organization, or other alternate course code.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscript', @level2type=N'COLUMN', @level2name=N'AlternativeCourseCode'
GO

-- Extended Properties [extension].[TeacherCandidateCourseTranscriptEarnedAdditionalCredits] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of additional credits a student attempted and could earn for successfully completing a given course (e.g., dual credit, AP, IB).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of credits or units of value awarded for the completion of a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'AdditionalCreditTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The result from the student''s attempt to take the course, for example:
        Pass
        Fail
        Incomplete
        Withdrawn.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'CourseAttemptResultDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'CourseEducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The term for the session during the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'TermDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of credits or units of value awarded for the completion of a course', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCourseTranscriptEarnedAdditionalCredits', @level2type=N'COLUMN', @level2name=N'Credits'
GO

-- Extended Properties [extension].[TeacherCandidateCredential] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The legal document or authorization giving authorization to perform teaching assignment services.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateCredential'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifier or serial number assigned to the credential.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCredential', @level2type=N'COLUMN', @level2name=N'CredentialIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The abbreviation for the name of the state (within the United States) or extra-state jurisdiction in which a license/credential was issued.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCredential', @level2type=N'COLUMN', @level2name=N'StateOfIssueStateAbbreviationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateCredential', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[TeacherCandidateDisability] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The disability condition(s) that best describes an individual''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of the disability diagnosis.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDiagnosis'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order by severity of student''s disabilities: 1- Primary, 2 -  Secondary, 3 - Tertiary, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'OrderOfDisability'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The source that provided the disability determination.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisability', @level2type=N'COLUMN', @level2name=N'DisabilityDeterminationSourceTypeDescriptorId'
GO

-- Extended Properties [extension].[TeacherCandidateDisabilityDesignation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateDisabilityDesignation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A disability category that describes a child''s impairment.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Whether the disability is IDEA, Section 504, or other disability designation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'DisabilityDesignationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateDisabilityDesignation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[TeacherCandidateElectronicMail] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The numbers, letters, and symbols used to identify an electronic mail (e-mail) user within the network to which the individual or organization belongs.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateElectronicMail'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of email listed for an individual or organization. For example: Home/Personal, Work, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The electronic mail (e-mail) address listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'ElectronicMailAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic mail address should be used as the principal electronic mail address for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'PrimaryEmailAddressIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the electronic email address should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateElectronicMail', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[TeacherCandidateFieldworkAbsenceEvent] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the staff absence', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateFieldworkAbsenceEvent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the code describing the type of leave taken, for example: Sick, Personal, Vacation.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this absence event', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'EventDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Expanded reason for the teacher candidate absence', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'AbsenceEventReason'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The hours the staff was absent if not the entire working day.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkAbsenceEvent', @level2type=N'COLUMN', @level2name=N'HoursAbsent'
GO

-- Extended Properties [extension].[TeacherCandidateFieldworkExperience] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateFieldworkExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate first starts fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'FieldworkExperienceSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier for the fieldwork experience', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'FieldworkIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the school year.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of fieldwork being executed by a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'FieldworkTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of hours per week for fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'HoursPerWeek'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate ends fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the program gateway that is associated with continuation in a program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperience', @level2type=N'COLUMN', @level2name=N'ProgramGatewayDescriptorId'
GO

-- Extended Properties [extension].[TeacherCandidateFieldworkExperienceCoteaching] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The act of two teachers (teacher candidate and cooperating teacher) working together with groups of students; sharing the planning, organization, delivery, and assessment of instruction, as well as the physical space.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateFieldworkExperienceCoteaching'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate first starts fieldwork.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'FieldworkExperienceSchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier for the fieldwork experience', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'FieldworkIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate first starts co-teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'CoteachingBeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate stopped co-teaching.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateFieldworkExperienceCoteaching', @level2type=N'COLUMN', @level2name=N'CoteachingEndDate'
GO

-- Extended Properties [extension].[TeacherCandidateIdentificationCode] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The organization code or name assigning the StudentIdentificationCode.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'AssigningOrganizationIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a student.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'StudentIdentificationSystemDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a student by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationCode', @level2type=N'COLUMN', @level2name=N'IdentificationCode'
GO

-- Extended Properties [extension].[TeacherCandidateIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Describe the documentation of citizenship.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [extension].[TeacherCandidateIndicator] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Indicator(s) or metric(s) computed for the student (e.g., at risk) to influence more effective education or direct specific interventions.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the indicator or metric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name for a group of indicators.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'IndicatorGroup'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The value of the indicator or metric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'Indicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date when the indicator was assigned or computed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the indicator or metric was sunset or removed.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the program association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateIndicator', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

-- Extended Properties [extension].[TeacherCandidateInternationalAddress] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The set of elements that describes an international address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateInternationalAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of address listed for an individual or organization. For example:  Physical Address, Mailing Address, Home Address, etc.)', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The second line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The third line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The fourth line of the address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'AddressLine4'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The name of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'CountryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic latitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'Latitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The geographic longitude of the physical address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'Longitude'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The first date the address is valid. For physical addresses, the date the person moved to that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The last date the address is valid. For physical addresses, this would be the date the person moved from that address.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateInternationalAddress', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[TeacherCandidateLanguage] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The language(s) the individual uses to communicate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateLanguage'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguage', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguage', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[TeacherCandidateLanguageUse] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateLanguageUse'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A specification of which written or spoken communication is being used.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A description of how the language is used (e.g. Home Language, Native Language, Spoken Language).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguageUse', @level2type=N'COLUMN', @level2name=N'LanguageUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateLanguageUse', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[TeacherCandidateOtherName] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Other names (e.g., alias, nickname, previous legal name) associated with a person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateOtherName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The types of alternate names for a person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'OtherNameTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateOtherName', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
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

-- Extended Properties [extension].[TeacherCandidatePersonalIdentificationDocument] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The documents presented as evident to verify one''s personal identity; for example: drivers license, passport, birth certificate, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidatePersonalIdentificationDocument'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The primary function of the document used for establishing identity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IdentificationDocumentUseDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The category of the document relative to its purpose.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'PersonalInformationVerificationDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title of the document given by the issuer.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The day when the document  expires, if null then never expires.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'DocumentExpirationDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identifier on the issuer''s identification system.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerDocumentIdentificationCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Name of the entity or institution that issued the document.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Country of origin of the document. It is strongly recommended that entries use only ISO 3166 2-letter country codes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidatePersonalIdentificationDocument', @level2type=N'COLUMN', @level2name=N'IssuerCountryDescriptorId'
GO

-- Extended Properties [extension].[TeacherCandidateProfessionalDevelopmentEventAttendance] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This event entity represents the recording of whether a teacher candidate is in attendance for professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateProfessionalDevelopmentEventAttendance'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Date for this attendance event.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The title or name for a professional development.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'ProfessionalDevelopmentTitle'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code describing the attendance event, for example:
       Present
       Unexcused absence
       Excused absence
       Tardy.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceEventCategoryDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The reported reason for a teacher candidate''s absence.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProfessionalDevelopmentEventAttendance', @level2type=N'COLUMN', @level2name=N'AttendanceEventReason'
GO

-- Extended Properties [extension].[TeacherCandidateProgramParticipation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Key programs the student is participating in or receives services from.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateProgramParticipation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the Student was associated with the Program or service.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date the Program participation ended.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The person, organization, or department that designated the program association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipation', @level2type=N'COLUMN', @level2name=N'DesignatedBy'
GO

-- Extended Properties [extension].[TeacherCandidateProgramParticipationProgramCharacteristic] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Program, such as categories or particular indications.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateProgramParticipationProgramCharacteristic'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reflects important characteristics of the Program, such as categories or particular indications.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipationProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'ProgramCharacteristicDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipationProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateProgramParticipationProgramCharacteristic', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[TeacherCandidateRace] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateRace'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The general racial category which most clearly reflects the individual''s recognition of his or her community or with which the individual most identifies. The data model allows for multiple entries so that each individual can specify all appropriate races.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateRace', @level2type=N'COLUMN', @level2name=N'RaceDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateRace', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO

-- Extended Properties [extension].[TeacherCandidateStaffAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This association associates teacher candidates to a staff member.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateStaffAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStaffAssociation', @level2type=N'COLUMN', @level2name=N'StaffUSI'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStaffAssociation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate is associated to the staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStaffAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The month, day, and year on which the teacher candidate stops association with the staff.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStaffAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[TeacherCandidateStudentGrowthMeasure] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Complex type that provides data about a group of students and their student growth as it pertains to the Teacher Candidate', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateStudentGrowthMeasure'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the student growth is measured', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthMeasureDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The datatype of the result. The results can be expressed as a number, percentile, range, level, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'ResultDatatypeTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identification of the type of score that was used to determine student growth', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The target score that has been set for the group of students as it pertains to their student growth.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthTargetScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The actual score a group of students receives on their student growth assessment', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthActualScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Identifies if the student growth target score is achieved.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthMet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The number of students included in the average score result.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasure', @level2type=N'COLUMN', @level2name=N'StudentGrowthNCount'
GO

-- Extended Properties [extension].[TeacherCandidateStudentGrowthMeasureCourseAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any courses associated with the teacher candidate''s student growth data, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a course.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'CourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureCourseAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any education organizations associated with the teacher candidate''s student growth data, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureEducationOrganizationAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[TeacherCandidateStudentGrowthMeasureSectionAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Any sections associated with the teacher candidate''s student growth data, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The date for which the data element is relevant', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'FactAsOfDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local code assigned by the School that identifies the course offering provided for the instruction of students.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'LocalCourseCode'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to a school.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The school year for which the data is associated', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The local identifier assigned to a section.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SectionIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier for the calendar for the academic session (e.g., 2010/11, 2011 Summer).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'SessionName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Begin date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateStudentGrowthMeasureSectionAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO

-- Extended Properties [extension].[TeacherCandidateTeacherPreparationProviderAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateTeacherPreparationProviderAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'EntryDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identification code for the Teacher Preparation Provider', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProviderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'School Year for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'SchoolYear'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Entry Type for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'EntryTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Exit date for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'ExitWithdrawDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Exit type for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'ExitWithdrawTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'School Year cohort for the association', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderAssociation', @level2type=N'COLUMN', @level2name=N'ClassOfSchoolYear'
GO

-- Extended Properties [extension].[TeacherCandidateTeacherPreparationProviderProgramAssociation] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The begin date for the association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'BeginDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The end date for the association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'EndDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Reason exited for the association.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTeacherPreparationProviderProgramAssociation', @level2type=N'COLUMN', @level2name=N'ReasonExitedDescriptorId'
GO

-- Extended Properties [extension].[TeacherCandidateTelephone] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The 10-digit telephone number, including the area code, for the person.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateTelephone'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of communication number listed for an individual or organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumberTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The telephone number including the area code, and extension, if applicable.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TelephoneNumber'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The order of priority assigned to telephone numbers to define which number to attempt first, second, etc.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'OrderOfPriority'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number is technically capable of sending and receiving Short Message Service (SMS) text messages.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'TextMessageCapabilityIndicator'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indication that the telephone number should not be published.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateTelephone', @level2type=N'COLUMN', @level2name=N'DoNotPublishIndicator'
GO

-- Extended Properties [extension].[TeacherCandidateVisa] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherCandidateVisa'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique alphanumeric code assigned to a teacher candidate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateVisa', @level2type=N'COLUMN', @level2name=N'TeacherCandidateIdentifier'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'An indicator of a non-US citizen''s Visa type.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherCandidateVisa', @level2type=N'COLUMN', @level2name=N'VisaDescriptorId'
GO

-- Extended Properties [extension].[TeacherPreparationProgramTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProgramTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProgramTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO

-- Extended Properties [extension].[TeacherPreparationProvider] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProvider'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identification code for the Teacher Preparation Provider', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProvider', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProviderId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identification code of the University', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProvider', @level2type=N'COLUMN', @level2name=N'UniversityId'
GO

-- Extended Properties [extension].[TeacherPreparationProviderProgram] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents information regarding a teacher preparation provider program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProviderProgram'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique number or alphanumeric code assigned to a program by a school, school system, a state, or other agency or entity.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'ProgramId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The major area for a degree or area of specialization for a certificate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'MajorSpecialization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The minor area for a degree or area of specialization for a certificate.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'MinorSpecialization'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.).', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'TeacherPreparationProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code for describing the program pathway, for example: Residency, Internship, Traditional', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgram', @level2type=N'COLUMN', @level2name=N'TPPProgramPathwayDescriptorId'
GO

-- Extended Properties [extension].[TeacherPreparationProviderProgramGradeLevel] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels served at the TPP Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProviderProgramGradeLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramGradeLevel', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The grade levels served at the TPP Program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramGradeLevel', @level2type=N'COLUMN', @level2name=N'GradeLevelDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramGradeLevel', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramGradeLevel', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO

-- Extended Properties [extension].[TeacherPreparationProviderProgramTPPProgramDegree] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Details of the degree.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TeacherPreparationProviderProgramTPPProgramDegree'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The identifier assigned to an education organization.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramTPPProgramDegree', @level2type=N'COLUMN', @level2name=N'EducationOrganizationId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The formal name of the Program of instruction, training, services, or benefits available through federal, state, or local agencies.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramTPPProgramDegree', @level2type=N'COLUMN', @level2name=N'ProgramName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type of program.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramTPPProgramDegree', @level2type=N'COLUMN', @level2name=N'ProgramTypeDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language) of a degree.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramTPPProgramDegree', @level2type=N'COLUMN', @level2name=N'AcademicSubjectDescriptorId'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A code for describing the degree type that a teacher candidate accomplishes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TeacherPreparationProviderProgramTPPProgramDegree', @level2type=N'COLUMN', @level2name=N'TPPDegreeTypeDescriptorId'
GO

-- Extended Properties [extension].[ThemeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the theme of the specified level of the rubric.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ThemeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ThemeDescriptor', @level2type=N'COLUMN', @level2name=N'ThemeDescriptorId'
GO

-- Extended Properties [extension].[TPPDegreeTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the degree that a teacher candidate accomplishes.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TPPDegreeTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPDegreeTypeDescriptor', @level2type=N'COLUMN', @level2name=N'TPPDegreeTypeDescriptorId'
GO

-- Extended Properties [extension].[TPPProgramPathwayDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The descriptor holds the program pathways available at TPP''s.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'TPPProgramPathwayDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'TPPProgramPathwayDescriptor', @level2type=N'COLUMN', @level2name=N'TPPProgramPathwayDescriptorId'
GO

-- Extended Properties [extension].[University] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'University'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The unique identification code of the University', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'University', @level2type=N'COLUMN', @level2name=N'UniversityId'
GO

-- Extended Properties [extension].[ValueTypeDescriptor] --
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'The type (i.e. actual or projected) of value.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE', @level1name=N'ValueTypeDescriptor'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'A unique identifier used as Primary Key, not derived from business logic, when acting as Foreign Key, references the parent table.', @level0type=N'SCHEMA', @level0name=N'extension', @level1type=N'TABLE',@level1name=N'ValueTypeDescriptor', @level2type=N'COLUMN', @level2name=N'ValueTypeDescriptorId'
GO

