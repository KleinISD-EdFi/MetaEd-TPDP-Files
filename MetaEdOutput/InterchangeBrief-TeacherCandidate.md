# Teacher Candidate Interchange

# Overview

This interchange defines teacher candidates and contains all their identifying information.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.



# Model Details

The following figure shows a logical view of the Teacher Candidate Interchange schema:  

![Teacher Candidate model details diagram](img/InterchangeTeacherCandidate-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Teacher Candidate Interchange is composed.  

| Name | Description |
|----------|-----------------|
| AnonymizedStudent | Domain entity to collect data for indiviudal students with whom the teacher candidate is associated through field work or student teaching |
| AnonymizedStudentAcademicRecord | The academic record for an anonymized student |
| AnonymizedStudentAssessment | This entity represents the analysis or scoring of a Student's response on an assessment. The analysis results in a value that represents a Student's performance on a set of items on a test. |
| AnonymizedStudentCourseAssociation | Information about the association between an anonymized student and the course they are enrolled in |
| AnonymizedStudentCourseTranscript | The date for which the data element is relevant |
| AnonymizedStudentEducationOrganizationAssociation | Information about the association between an anonymized student and the Education Organziation they are enrolled in |
| AnonymizedStudentSectionAssociation | Information about the association between an anonymized student and the Section they are enrolled in |
| CourseCourseTranscriptFact | Data about the final letter grade earned of the group |
| CourseStudentAcademicRecordFact | Complex type that provides data about a group of student and their academic record |
| CourseStudentAssessmentFact | Complex type that provides data about a group of students and their assesssment score results and performance levels |
| CourseStudentFact | This domain entity collects data for aggregated level students with whom the teacher candidate is associated through field work or student teaching	AggregatedStudentFact |
| EducationOrganizationCourseTranscriptFact | Data about the final letter grade earned of the group |
| EducationOrganizationStudentAcademicRecordFact | Complex type that provides data about a group of student and their academic record |
| EducationOrganizationStudentAssessmentFact | Complex type that provides data about a group of students and their assesssment score results and performance levels |
| EducationOrganizationStudentFact | This domain entity collects data for aggregated level students with whom the teacher candidate is associated through field work or student teaching |
| SectionCourseTranscriptFact | Data about the final letter grade earned of the group |
| SectionStudentAcademicRecordFact | Complex type that provides data about a group of student and their academic record |
| SectionStudentAssessmentFact | ? |
| SectionStudentFact | This domain entity collects data for aggregated level students with whom the teacher candidate is associated through field work or student teaching |
| StaffFieldworkAbsenceEvent | Expanded reason for the staff absence |
| StaffFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| StaffStudentGrowthFact | Complex type that provides data about a group of students and their student growth as it pertains to the Teacher Candidate |
| TeacherCandidate | This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program. |
| TeacherCandidateAcademicRecord | ? |
| TeacherCandidateFieldworkAbsenceEvent | Expanded reason for the staff absence |
| TeacherCandidateFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| TeacherCandidateStudentGrowthFact | Complex type that provides data about a group of students and their student growth as it pertains to the Teacher Candidate |
| TeacherCandidateTeacherPreparationProviderProgramAssociation | Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| CourseReference (in AnonymizedStudent) | Optional.  The course associated with aggregated student data |
| CourseReference (in AnonymizedStudentAssessment) | Optional.  The course associated with aggregated student data |
| CourseReference (in AnonymizedStudentCourseAssociation) | Required.  The Course reference for the assocation |
| CourseReference (in AnonymizedStudentCourseTranscript) | Required.  The course recorded in the course transcript entry. |
| CourseReference (in CourseStudentAcademicRecordFact) | Required.  The course for which the data is associated |
| CourseReference (in CourseStudentAssessmentFact) | Required.  The course associated with aggregated student data |
| CourseReference (in CourseStudentFact) | Required.  The course associated with aggregated student data |
| EducationOrganizationReference (in AnonymizedStudent) | Optional.  The education organization associated with aggregated student data |
| EducationOrganizationReference (in AnonymizedStudentAcademicRecord) | Required.  The education organization associated with aggregated student data |
| EducationOrganizationReference (in AnonymizedStudentEducationOrganizationAssociation) | Required.  The Education Organization reference for the assocation |
| EducationOrganizationReference (in EducationOrganizationStudentAcademicRecordFact) | Required.  The section associated with aggregated student data |
| EducationOrganizationReference (in EducationOrganizationStudentAssessmentFact) | Required.  The education organization associated with aggregated student data |
| EducationOrganizationReference (in EducationOrganizationStudentFact) | Required.  The education organization associated with aggregated student data |
| EducationOrganizationReference (in StudentAcademicRecord) | Required.  Provides user information to lookup and link to an existing educational organization record. |
| ReportCardReference (in StudentAcademicRecord) | Optional.  Report cards for the student. |
| SchoolReference (in StaffFieldworkExperience) | Required.  The school the field work experience is associated with |
| SchoolReference (in TeacherCandidateFieldworkExperience) | Required.  The school the teacher candidate is assigned to. |
| SectionReference (in AnonymizedStudent) | Optional.  The section associated with aggregated student data |
| SectionReference (in AnonymizedStudentAssessment) | Optional.  The section associated with aggregated student data |
| SectionReference (in AnonymizedStudentSectionAssociation) | Required.  The Section reference for the assocation |
| SectionReference (in SectionStudentAcademicRecordFact) | Required.  The section associated with aggregated student data |
| SectionReference (in SectionStudentAssessmentFact) | Required.  The section associated with aggregated student data |
| SectionReference (in SectionStudentFact) | Required.  The section associated with aggregated student data |
| SectionReference (in StaffFieldworkExperience) | Optional.  The section the field work experience is associated with |
| SectionReference (in TeacherCandidateFieldworkExperience) | Optional.  The section the teacher candidate is assigned to. |
| StaffReference (in StaffFieldworkAbsenceEvent) | Required.  The staff associated with this absence event |
| StaffReference (in StaffFieldworkExperience) | Required.  The staff the field work experience is associated with |
| StaffReference (in StaffStudentGrowthFact) | Required.  The staff associated with aggregated student growth data |
| StaffReference (in TeacherCandidate) | Optional.  The staff associated. |
| TeacherPreparationProviderProgramReference (in TeacherCandidateTeacherPreparationProviderProgramAssociation) | Required.  Reference to the Teacher Preparation Provider Program |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AbsenceEventCategoryDescriptor | Required.  The descriptor holds the code describing the type of leave taken, for example: Sick, Personal, Vacation. |
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AchievementCategoryDescriptor | Optional.  This descriptor defines the category of achievement attributed to the learner. |
| AidTypeDescriptor | Optional.  The classification of financial aid awarded to a person for the academic term/year. |
| AssessmentCategoryDescriptor | Optional.  This descriptor holds the category of an assessment based on format and content. |
| BackgroundCheckStatusDescriptor | Optional.  This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | Optional.  The type of background check (e.g., online, criminal, employment). |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. |
| DisabilityDescriptor | Optional.  This descriptor defines a student's impairment. |
| EnglishLanguageExamDescriptor | Optional.  Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). |
| FieldworkTypeDescriptor | Required.  The descriptor holds the type of fieldwork being executed by a teacher candidate. |
| GradeLevelDescriptor | Optional.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. |
| LimitedEnglishProficiencyDescriptor | Optional.  This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| PerformanceLevelDescriptor | Optional.  This descriptor defines various levels or thresholds for performance on the assessment. |
| PreviousCareerDescriptor | Optional.  The descriptor holds the previous career of an individual. |
| ProgramCharacteristicDescriptor | Optional.  This descriptor defines important characteristics of the Program, such as categories or particular indications. |
| ProgramGatewayDescriptor | Required.  The descriptor holds the program gateway that is associated with continuation in a program. |
| ReasonExitedDescriptor | Optional.  This descriptor defines the reason a student exited a program. |
| SchoolFoodServicesEligibilityDescriptor | Optional.  This descriptor defines indications of a student's level of eligibility for breakfast, lunch, snack, supper, and milk programs. |
| ServiceDescriptor | Optional.  This descriptor defines the services provided by an education organization to populations of students associated with a program. |
| StudentCharacteristicDescriptor | Optional.  This descriptor defines the set of important characteristics of the student. |
| StudentGrowthTypeDescriptor | Optional.  Identification of the type of score that was used to determine student growth |
| StudentIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the student. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |
| TPPDegreeTypeDescriptor | Required.  The descriptor holds the degree that a teacher candidate accomplishes. |


