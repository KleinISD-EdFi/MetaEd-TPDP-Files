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
| Credential | The legal document giving authorization to perform teaching assignment services. |
| TeacherCandidate | This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program. |
| TeacherCandidateAcademicRecord | This educational entity represents the cumulative record of academic achievement for a teacher candidate. |
| TeacherCandidateFieldworkAbsenceEvent | Expanded reason for the staff absence |
| TeacherCandidateFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| TeacherCandidateStaffAssociation | This association associates teacher candidates to a staff member. |
| TeacherCandidateTeacherPreparationProviderProgramAssociation | Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| EducationOrganizationReference (in StudentAcademicRecord) | Required.  Provides user information to lookup and link to an existing educational organization record. |
| ReportCardReference (in StudentAcademicRecord) | Optional.  Report cards for the student. |
| SchoolReference (in TeacherCandidateFieldworkExperience) | Required.  The school the teacher candidate is assigned to. |
| SectionReference (in TeacherCandidateFieldworkExperience) | Optional.  The section the teacher candidate is assigned to. |
| StaffReference (in TeacherCandidate) | Optional.  The staff associated. |
| StaffReference (in TeacherCandidateStaffAssociation) | Required.  The staff associated with the teacher candidate. |
| StudentReference (in StudentAcademicRecord) | Required.  Identifies the student who is associated with the StudentAcademicRecord. |
| StudentReference (in TeacherCandidate) | Required.  The student associated. |
| TeacherPreparationProviderProgramReference (in TeacherCandidateTeacherPreparationProviderProgramAssociation) | Required.  Reference to the Teacher Preparation Provider Program |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AchievementCategoryDescriptor | Optional.  This descriptor defines the category of achievement attributed to the learner. |
| AidTypeDescriptor | Optional.  The classification of financial aid awarded to a person for the academic term/year. |
| BackgroundCheckStatusDescriptor | Optional.  This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | Optional.  The type of background check (e.g., online, criminal, employment). |
| CredentialFieldDescriptor | Required.  This descriptor defines the fields of certification that the state education agency offers to teachers. |
| EnglishLanguageExamDescriptor | Optional.  Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). |
| FieldworkTypeDescriptor | Required.  The descriptor holds the type of fieldwork being executed by a teacher candidate. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| PreviousCareerDescriptor | Optional.  The descriptor holds the previous career of an individual. |
| ProgramGatewayDescriptor | Required.  The descriptor holds the program gateway that is associated with continuation in a program. |
| ReasonExitedDescriptor | Optional.  This descriptor defines the reason a student exited a program. |
| ServiceDescriptor | Optional.  This descriptor defines the services provided by an education organization to populations of students associated with a program. |
| TeachingCredentialDescriptor | Required.  This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |
| TPPDegreeTypeDescriptor | Required.  The descriptor holds the degree that a teacher candidate accomplishes. |


