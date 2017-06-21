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
| AnonymizedStudentAcademicRecord | The academic record for an anonymized student |
| AnonymizedStudentCourseAssociation | Information about the association between an anonymized student and the course they are enrolled in |
| AnonymizedStudentCourseTranscript | The date for which the data element is relevant |
| AnonymizedStudentEducationOrganizationAssociation | Information about the association between an anonymized student and the Education Organziation they are enrolled in |
| AnonymizedStudentSectionAssociation | Information about the association between an anonymized student and the Section they are enrolled in |
| StaffFieldworkAbsenceEvent | Expanded reason for the staff absence |
| TeacherCandidate | This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program. |
| TeacherCandidateAcademicRecord | This educational entity represents the cumulative record of academic achievement for a teacher candidate. |
| TeacherCandidateFieldworkAbsenceEvent | Expanded reason for the staff absence |
| TeacherCandidateFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| TeacherCandidateTeacherPreparationProviderProgramAssociation | Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| AnonymizedStudentReference (in AnonymizedStudentAcademicRecord) | Required.  The education organization associated with aggregated student data |
| AnonymizedStudentReference (in AnonymizedStudentCourseAssociation) | Required.  The Anonymized Student reference for the association |
| AnonymizedStudentReference (in AnonymizedStudentEducationOrganizationAssociation) | Required.  The Anonymized Student reference for the association |
| AnonymizedStudentReference (in AnonymizedStudentSectionAssociation) | Required.  The Anonymozed Student reference for the association |
| CourseReference (in AnonymizedStudentCourseAssociation) | Required.  The Course reference for the assocation |
| CourseReference (in AnonymizedStudentCourseTranscript) | Required.  The course recorded in the course transcript entry. |
| EducationOrganizationReference (in AnonymizedStudentAcademicRecord) | Required.  The education organization associated with aggregated student data |
| EducationOrganizationReference (in AnonymizedStudentEducationOrganizationAssociation) | Required.  The Education Organization reference for the assocation |
| EducationOrganizationReference (in StudentAcademicRecord) | Required.  Provides user information to lookup and link to an existing educational organization record. |
| ReportCardReference (in StudentAcademicRecord) | Optional.  Report cards for the student. |
| SchoolReference (in TeacherCandidateFieldworkExperience) | Required.  The school the teacher candidate is assigned to. |
| SectionReference (in AnonymizedStudentSectionAssociation) | Required.  The Section reference for the assocation |
| SectionReference (in TeacherCandidateFieldworkExperience) | Optional.  The section the teacher candidate is assigned to. |
| StaffReference (in StaffFieldworkAbsenceEvent) | Required.  The staff associated with this absence event |
| StaffReference (in TeacherCandidate) | Optional.  The staff associated. |
| TeacherPreparationProviderProgramReference (in TeacherCandidateTeacherPreparationProviderProgramAssociation) | Required.  Reference to the Teacher Preparation Provider Program |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AbsenceEventCategoryDescriptor | Required.  The descriptor holds the code describing the type of leave taken, for example: Sick, Personal, Vacation. |
| AchievementCategoryDescriptor | Optional.  This descriptor defines the category of achievement attributed to the learner. |
| AidTypeDescriptor | Optional.  The classification of financial aid awarded to a person for the academic term/year. |
| BackgroundCheckStatusDescriptor | Optional.  This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | Optional.  The type of background check (e.g., online, criminal, employment). |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. |
| CredentialFieldDescriptor | Optional.  This descriptor defines the fields of certification that the state education agency offers to teachers. |
| DisabilityDescriptor | Optional.  This descriptor defines a student's impairment. |
| EnglishLanguageExamDescriptor | Optional.  Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). |
| FieldworkTypeDescriptor | Required.  The descriptor holds the type of fieldwork being executed by a teacher candidate. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. |
| LevelDescriptor | Optional.  This descriptor defines the grade level(s) certified for teaching. |
| LimitedEnglishProficiencyDescriptor | Optional.  This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| PreviousCareerDescriptor | Optional.  The descriptor holds the previous career of an individual. |
| ProgramCharacteristicDescriptor | Optional.  This descriptor defines important characteristics of the Program, such as categories or particular indications. |
| ProgramGatewayDescriptor | Required.  The descriptor holds the program gateway that is associated with continuation in a program. |
| ReasonExitedDescriptor | Optional.  This descriptor defines the reason a student exited a program. |
| SchoolFoodServicesEligibilityDescriptor | Optional.  This descriptor defines indications of a student's level of eligibility for breakfast, lunch, snack, supper, and milk programs. |
| ServiceDescriptor | Optional.  This descriptor defines the services provided by an education organization to populations of students associated with a program. |
| StudentCharacteristicDescriptor | Optional.  This descriptor defines the set of important characteristics of the student. |
| StudentIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the student. |
| TeachingCredentialDescriptor | Optional.  This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |
| TPPDegreeTypeDescriptor | Required.  The descriptor holds the degree that a teacher candidate accomplishes. |


