# Teacher Preparation
---
?



#### Teacher Preparation Model Entities

| Name        | Description  |
|-----------------|------------------|
| AnonymizedStudent | Domain entity to collect data for indiviudal students with whom the teacher candidate is associated through field work or student teaching |
| AnonymizedStudentAcademicRecord | The academic record for an anonymized student |
| AnonymizedStudentAssessment | This entity represents the analysis or scoring of a Student's response on an assessment. The analysis results in a value that represents a Student's performance on a set of items on a test. |
| AnonymizedStudentCourseTranscript | The date for which the data element is relevant |
| Applicant | A person who makes a formal application for an OpenStaffPosition. |
| Assessment |  |
| CourseCourseTranscriptFacts | Data about the final grade earned of the group. |
| CourseStudentAcademicRecordFacts | Complex type that provides data about a group of student and their academic record |
| CourseStudentAssessmentFacts | Complex type that provides data about a group of students and their assesssment score results and performance levels |
| CourseStudentFacts | This domain entity collects data for aggregated level students with whom the teacher candidate is associated through field work or student teaching	AggregatedStudentFact |
| CourseSurveyQuestionResponseFacts | Survey question response data provided at the aggregate level. |
| CourseSurveyResponseFacts | Survey response data provided at the aggregate level. |
| CourseSurveySectionResponseRatingFacts | Responses to survey sections collected at the aggregate level. |
| Credential |  |
| EducationOrganizationCourseTranscriptFacts | Data about the final grade earned of the group. |
| EducationOrganizationFacts | Selective fact(s) about the education organization used for comparative analysis. |
| EducationOrganizationStudentAcademicRecordFacts | Complex type that provides data about a group of student and their academic record |
| EducationOrganizationStudentAssessmentFacts | Complex type that provides data about a group of students and their assesssment score results and performance levels |
| EducationOrganizationStudentFacts | This domain entity collects data for aggregated level students. |
| EducationOrganizationSurveyQuestionResponseFacts | Survey question response data provided at the aggregate level. |
| EducationOrganizationSurveyResponseFacts | Survey response data provided at the aggregate level. |
| EducationOrganizationSurveySectionResponseRatingFacts | Responses to survey sections collected at the aggregate level. |
| ExternalCourseTranscript | This entity is the final record of a student's performance in their courses at the end of a semester or school year of an ExternalEducationOrgnaization. |
| ExternalEducationOrganization | This entity represents any external public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. This entity is provided to refer to organizations about which local school and districts have little to no information. |
| ExternalStudentAcademicRecord | This educational entity represents the cumulative record of academic achievement for a student that is being collected from an extrnal education organization about which local school and districts have little to no information. |
| GradebookEntry |  |
| PerformanceMeasure | Information about the performance measure |
| PerformanceMeasureFacts | This entity represents aggregated information regarding performance measure data. |
| ProfessionalDevelopmentEvent | Information about a professional development event. |
| Prospect | A prospect for employment or contract that has not yet made formal application, often obtained from job fairs or university recruiting visits. |
| ProspectProfessionalDevelopmentEventAttendance | This event entity represents the recording of whether a prospect is in attendance for professional development. |
| RecruitmentEvent | Events associated with the recruitment process. |
| Rubric | This entity represents the rubric used to conduct the observation. |
| RubricLevel | This entity represents the level of the rubric. |
| RubricLevelResponse | This entity represents the response to the rubric level. |
| RubricLevelResponseFacts | This entity represents the rubric level response at the aggregate level. |
| School |  |
| SectionCourseTranscriptFacts | Data about the final grade earned of the group. |
| SectionStudentAcademicRecordFacts | Complex type that provides data about a group of students and their academic record. |
| SectionStudentAssessmentFacts | This domain entity collects data for aggregated level students with whom the teacher candidate is associated through field work or student teaching. |
| SectionStudentFacts | This domain entity collects data for aggregated level students. |
| SectionSurveyQuestionResponseFacts | Survey question response data provided at the aggregate level. |
| SectionSurveyResponseFacts | Survey response data provided at the aggregate level. |
| SectionSurveySectionResponseRatingFacts | Responses to survey sections collected at the aggregate level. |
| Staff |  |
| StaffFieldworkAbsenceEvent | Expanded reason for the staff absence |
| StaffFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| StaffProfessionalDevelopmentEventAttendance | This event entity represents the recording of whether a staff is in attendance for professional development. |
| StaffStudentGrowthMeasure | Complex type that provides data about a group of students and their student growth as it pertains to the Teacher Candidate |
| StudentGradebookEntry |  |
| Survey | A survey to identified or anonymous respondants. |
| SurveyQuestion | The questions for the survey. |
| SurveyQuestionResponse | The response to a survey question. |
| SurveyResponse | Responses to a Survey for named or anonymous persons. |
| SurveySection | The section(s) of questions for the survey. |
| SurveySectionResponseRating | Optional numeric rating computed from the survey responses for the section. |
| TeacherCandidate | This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program. |
| TeacherCandidateAcademicRecord | This educational entity represents the cumulative record of academic achievement for a teacher candidate. |
| TeacherCandidateFieldworkAbsenceEvent | Expanded reason for the staff absence |
| TeacherCandidateFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| TeacherCandidateProfessionalDevelopmentEventAttendance | This event entity represents the recording of whether a teacher candidate is in attendance for professional development. |
| TeacherCandidateStudentGrowthMeasure | Complex type that provides data about a group of students and their student growth as it pertains to the Teacher Candidate |
| TeacherPreparationProvider | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| TeacherPreparationProviderProgram | This entity represents information regarding a teacher preparation provider program. |
| University | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| AnonymizedStudentCourseAssociation | Information about the association between an anonymized student and the course they are enrolled in |
| AnonymizedStudentEducationOrganizationAssociation | Information about the association between an anonymized student and the Education Organziation they are enrolled in |
| AnonymizedStudentSectionAssociation | Information about the association between an anonymized student and the Section they are enrolled in |
| StaffEducationOrganizationAssignmentAssociation | This association indicates the education organization to which a staff member provides services; also known as school of service. |
| StaffTeacherPreparationProviderAssociation | Information about the association between the Staff and the TeacherPreparationProvider |
| StaffTeacherPreparationProviderProgramAssociation | This association indicates the Staff associated with a teacher preparation provider program. |
| TeacherCandidateStaffAssociation | This association associates teacher candidates to a staff member. |
| TeacherCandidateTeacherPreparationProviderAssociation | Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram |
| TeacherCandidateTeacherPreparationProviderProgramAssociation | Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram |


![Teacher Preparation Model Diagram](/path/to/domain-model.png)
#### Teacher Preparation Model  

