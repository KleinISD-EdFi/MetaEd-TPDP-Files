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
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| TeacherCandidate | This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program. |
| TeacherCandidateAcademicRecord | This educational entity represents the cumulative record of academic achievement for a teacher candidate. |
| TeacherCandidateCourseTranscript | This entity is the final record of a student's performance in their courses at the end of a semester or school year. |
| TeacherCandidateFieldworkAbsenceEvent | Expanded reason for the staff absence |
| TeacherCandidateFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| TeacherCandidateStaffAssociation | This association associates teacher candidates to a staff member. |
| TeacherCandidateTeacherPreparationProviderAssociation | Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram |
| TeacherCandidateTeacherPreparationProviderProgramAssociation | Information about the association between the Teacher Candidate and the TeacherPreparationProviderProgram |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| CourseReference (in TeacherCandidateCourseTranscript) | Required.  The course recorded in the course transcript entry. |
| EducationOrganizationReference (in TeacherCandidateAcademicRecord) | Required.  Provides user information to lookup and link to an existing educational organization record. |
| EducationOrganizationReference (in TeacherCandidateTeacherPreparationProviderProgramAssociation) | Required.  Related the program to an EducationOrganization. |
| FieldworkExperienceSchoolReference (in TeacherCandidateFieldworkExperience) | Required.  The school the teacher candidate is assigned to. |
| SchoolReference (in TeacherCandidateCourseTranscript) | Optional.  The School that provided the reported instruction. |
| SectionReference (in TeacherCandidateFieldworkExperience) | Optional.  The section the teacher candidate is assigned to. |
| StaffReference (in TeacherCandidate) | Optional.  The staff associated. |
| StaffReference (in TeacherCandidateStaffAssociation) | Required.  The staff associated with the teacher candidate. |
| TeacherPreparationProviderProgramReference (in TeacherCandidateTeacherPreparationProviderProgramAssociation) | Required.  The Program associated to the Staff. |
| TeacherPreparationProviderReference (in TeacherCandidateTeacherPreparationProviderAssociation) | Required.  Teacher Preparation Provider for the association |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AbsenceEventCategoryDescriptor | Required.  This descriptor describes the type of absence |
| AcademicHonorCategoryDescriptor | Optional.  A designation of the type of academic distinctions earned by or awarded to the student. |
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AchievementCategoryDescriptor | Optional.  This descriptor defines the category of achievement attributed to the learner. |
| AdditionalCreditTypeDescriptor | Optional.  The type of additional credits or units of value awarded for the completion of a course. |
| AddressTypeDescriptor | Optional.  The type of address listed for an individual or organization. |
| AidTypeDescriptor | Optional.  This descriptor defines the classification of financial aid awarded to a person for the academic term/year. |
| BackgroundCheckStatusDescriptor | Optional.  This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | Optional.  This descriptor defines the classification of the background check a person receives. |
| BoardCertificationTypeDescriptor | Optional.  The descriptor holds the type of board certification awarded to an individual. |
| CertificationExamTypeDescriptor | Optional.  The descriptor holds the type of certification exam that was taken. |
| CitizenshipStatusDescriptor | Optional.  An indicator of whether or not the person is a U.S. citizen. |
| CohortYearTypeDescriptor | Optional.  The enumeration items for the set of cohort years. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes. |
| CourseAttemptResultDescriptor | Required.  The result from the student's attempt to take the course, for example:<br/>    Pass<br/>    Fail<br/>    Incomplete<br/>    Withdrawn |
| CourseRepeatCodeDescriptor | Optional.  Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average. |
| CredentialFieldDescriptor | Required.  This descriptor defines the fields of certification that the state education agency offers to teachers. |
| CredentialTypeDescriptor | Required.  An indication of the category of credential an individual holds. |
| CreditTypeDescriptor | Optional.  The type of credits or units of value awarded for the completion of a course. |
| DiplomaLevelDescriptor | Optional.  The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements. |
| DiplomaTypeDescriptor | Optional.  The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements. |
| DisabilityDescriptor | Optional.  This descriptor defines a student's impairment. |
| DisabilityDesignationDescriptor | Optional.  The type of disability designation (e.g., IDEA, Section 504). |
| DisabilityDeterminationSourceTypeDescriptor | Optional.  The source that provided the disability determination. |
| ElectronicMailTypeDescriptor | Optional.  The type of email listed for an individual or organization. |
| EnglishLanguageExamDescriptor | Optional.  Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). |
| EntryTypeDescriptor | Optional.  This descriptor defines the process by which a student enters a school during a given academic session. |
| ExitWithdrawTypeDescriptor | Optional.  This descriptor defines the circumstances under which the student exited from membership in an educational institution. |
| FieldworkTypeDescriptor | Required.  The descriptor holds the type of fieldwork being executed by a teacher candidate. |
| GenderDescriptor | Optional.  The gender with with a person associates. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| IdentificationDocumentUseDescriptor | Optional.  Identifies the type of use given to an identification document. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. It is strongly recommended that entries use only ISO 639-3 language codes: for CodeValue, use the 3 character code; for ShortDescription and Description use the full language name. |
| LanguageUseDescriptor | Optional.  The category denoting how a language is used. |
| LimitedEnglishProficiencyDescriptor | Optional.  This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| MethodCreditEarnedDescriptor | Optional.  The method the credits were earned, for example:  Classroom, Examination, Transfer. |
| OldEthnicityDescriptor | Optional.  Previous definition of Ethnicity combining Hispanic/Latino and Race. |
| OtherNameTypeDescriptor | Optional.  The types of alternate names for a person. |
| PersonalInformationVerificationDescriptor | Optional.  The evidence presented to verify one's personal identity; for example: driver's license, passport, birth certificate, etc. |
| PreviousCareerDescriptor | Optional.  The descriptor holds the previous career of an individual. |
| ProgramCharacteristicDescriptor | Optional.  This descriptor defines important characteristics of the Program, such as categories or particular indications. |
| ProgramGatewayDescriptor | Required.  The descriptor holds the program gateway that is associated with continuation in a program. |
| ProgramTypeDescriptor | Optional.  The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. |
| RaceDescriptor | Optional.  The enumeration items defining the racial categories which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. |
| ReasonExitedDescriptor | Optional.  This descriptor defines the reason a student exited a program. |
| RecognitionTypeDescriptor | Optional.  The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. |
| SexDescriptor | Required.  A person's gender. |
| StateAbbreviationDescriptor | Required.  The abbreviation for the state (within the United States) or outlying area in which an address is located. |
| StudentCharacteristicDescriptor | Optional.  This descriptor captures important characteristics of the student's environment or situation. Generally used for non-program-based student characteristics. |
| StudentIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the student. |
| TeachingCredentialBasisDescriptor | Optional.  An indication of the pre-determined criteria for granting the teaching credential that an individual holds. |
| TeachingCredentialDescriptor | Required.  This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services. |
| TelephoneNumberTypeDescriptor | Optional.  The type of communication number listed for an individual. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |
| TPPDegreeTypeDescriptor | Required.  The descriptor holds the degree that a teacher candidate accomplishes. |
| TribalAffiliationDescriptor | Optional.  An American Indian tribe with which an individual is affiliated. |
| ValueTypeDescriptor | Required.  The type (i.e. actual or projected) of value. |
| VisaDescriptor | Optional.  An indicator of a non-U.S. citizen's Visa type. |


