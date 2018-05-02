# Staff Association Interchange

# Overview

This interchange defines staff and teacher information. It can be used to define employment, assignment, and teaching associations, as well as staff positions and staff leave events.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Staff Association Interchange can be used to:  

1. Exchange staff demographics and contact information.
    2. Exchange staff experience and credential information.
    3. Exchange staff employment and assignment associations to education organizations.
    4. Exchange teacher assignments to sections.
    5. Exchange staff leave events.
    6. Exchange current or historical information on filling open staff positions.


# Model Details

The following figure shows a logical view of the Staff Association Interchange schema:  

![Staff Association model details diagram](img/InterchangeStaffAssociation-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Staff Association Interchange is composed.  

| Name | Description |
|----------|-----------------|
| StaffFieldworkAbsenceEvent | Expanded reason for the staff absence |
| StaffFieldworkExperience | The information regarding a postsecondary instructional course in a particular field of study that typically involves a prescribed number or instruction periods or meetings for enrolled students. |
| StaffTeacherPreparationProviderAssociation | Information about the association between the Staff and the TeacherPreparationProvider |
| StaffTeacherPreparationProviderProgramAssociation | This association indicates the Staff associated with a teacher preparation provider program. |
| Staff | This entity represents an individual who performs specified activities for any public or private education institution or agency that provides instructional and/or support services to students or staff at the early childhood level through high school completion. For example, this includes:<br/>    1. An "employee" who performs services under the direction of the employing institution or agency is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings<br/>    2. A "contractor" or "consultant" who performs services for an agreed upon fee or an employee of a management service contracted to work on site<br/>    3. A "volunteer" who performs services on a voluntary and uncompensated basis<br/>    4. An in-kind service provider<br/>    5. An independent contractor or businessperson working at a school site. |
| StaffEducationOrganizationEmploymentAssociation | This association indicates the EducationOrganization an employee, contractor, volunteer, or other service provider is formally associated with typically indicated by which organization the staff member has a services contract with or receives compensation from. |
| StaffEducationOrganizationAssignmentAssociation |  |
| StaffSchoolAssociation | This association indicates the School(s) to which a staff member provides instructional services. |
| StaffSectionAssociation | This association indicates the class sections to which a staff member is assigned. |
| StaffLeave | This entity represents the recording of the dates of staff leave (e.g., sick leave, personal time, vacation). |
| OpenStaffPosition | This entity represents an open staff position that the education organization is seeking to fill. |
| StaffProgramAssociation | This association indicates the Staff associated with a program. |
| StaffEducationOrganizationContactAssociation | This association provides the contact information of the staff associated with the education organization. |
| StaffAbsenceEvent | This event entity represents the recording of the dates of staff absence. |
| Credential | The legal document giving authorization to perform teaching assignment services. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| ApplicantReference (in Staff) | Optional.  Reference to applicant(s) represented by this staff member. |
| CalendarReference (in StaffSchoolAssociation) | Optional.  Reference to the Calendar associated with the StaffSchoolAssociation. |
| EducationOrganizationReference (in OpenStaffPosition) | Required.  The EducationOrganization with the OpenStaffPosition. |
| EducationOrganizationReference (in StaffEducationOrganizationAssignmentAssociation) | Required.  The EducationalOrganization to which the Staff member provides services. |
| EducationOrganizationReference (in StaffEducationOrganizationContactAssociation) | Required.  The EducationalOrganization to which the Staff member provides services. |
| EducationOrganizationReference (in StaffEducationOrganizationEmploymentAssociation) | Required.  The EducationOrganization with which the staff is employed. |
| FieldworkExperienceSchoolReference (in StaffFieldworkExperience) | Required.  The school the field work experience is associated with |
| ProgramReference (in StaffProgramAssociation) | Required.  The Program associated to the Staff. |
| SchoolReference (in StaffSchoolAssociation) | Required.  The School where the Staff member provides services. |
| SectionReference (in StaffFieldworkExperience) | Optional.  The section the field work experience is associated with |
| SectionReference (in StaffSectionAssociation) | Required.  The Section the Staff member is assigned to. |
| TeacherPreparationProviderProgramReference (in StaffTeacherPreparationProviderProgramAssociation) | Required.  The Program associated to the Staff. |
| TeacherPreparationProviderReference (in StaffTeacherPreparationProviderAssociation) | Required.  The TeacherPreparationProvider for the association |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AbsenceEventCategoryDescriptor | Required.  This descriptor describes the type of absence |
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AchievementCategoryDescriptor | Optional.  This descriptor defines the category of achievement attributed to the learner. |
| AddressTypeDescriptor | Optional.  The type of address listed for an individual or organization. |
| BackgroundCheckStatusDescriptor | Optional.  This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | Optional.  This descriptor defines the classification of the background check a person receives. |
| BoardCertificationTypeDescriptor | Optional.  The descriptor holds the type of board certification awarded to an individual. |
| CertificationExamTypeDescriptor | Optional.  The descriptor holds the type of certification exam that was taken. |
| CitizenshipStatusDescriptor | Optional.  An indicator of whether or not the person is a U.S. citizen. |
| ClassroomPositionDescriptor | Required.  This descriptor defines the type of position the staff member holds in a specific class/section. |
| ContactTypeDescriptor | Optional.  This descriptor defines the set of contact types. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes. |
| CredentialFieldDescriptor | Required.  This descriptor defines the fields of certification that the state education agency offers to teachers. |
| CredentialTypeDescriptor | Required.  An indication of the category of credential an individual holds. |
| ElectronicMailTypeDescriptor | Optional.  The type of email listed for an individual or organization. |
| EmploymentStatusDescriptor | Required.  This descriptor defines the type of employment or contract. |
| FieldworkTypeDescriptor | Required.  The descriptor holds the type of fieldwork being executed by a teacher candidate. |
| GenderDescriptor | Optional.  The gender with with a person associates. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| IdentificationDocumentUseDescriptor | Optional.  Identifies the type of use given to an identification document. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. It is strongly recommended that entries use only ISO 639-3 language codes: for CodeValue, use the 3 character code; for ShortDescription and Description use the full language name. |
| LanguageUseDescriptor | Optional.  The category denoting how a language is used. |
| LevelOfDegreeAwardedDescriptor | Optional.  The descriptor holds the level of degree awarded by the teacher prep program to the person (e.g., Certificate Only, Bachelor's, Master's, etc.). |
| LevelOfEducationDescriptor | Optional.  This descriptor defines the different levels of education achievable. |
| OldEthnicityDescriptor | Optional.  Previous definition of Ethnicity combining Hispanic/Latino and Race. |
| OtherNameTypeDescriptor | Optional.  The types of alternate names for a person. |
| PersonalInformationVerificationDescriptor | Optional.  The evidence presented to verify one's personal identity; for example: driver's license, passport, birth certificate, etc. |
| PostingResultDescriptor | Optional.  Indication of whether the position was filled or retired without filling. |
| ProgramAssignmentDescriptor | Required.  This descriptor defines the name of the education program for which a teacher is assigned to a school. |
| ProgramGatewayDescriptor | Optional.  The descriptor holds the program gateway that is associated with continuation in a program. |
| RaceDescriptor | Optional.  The enumeration items defining the racial categories which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. |
| RecognitionTypeDescriptor | Optional.  The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. |
| SalaryTypeDescriptor | Optional.  The descriptor holds the type of salary that a staff member is receiving. |
| SeparationDescriptor | Optional.  Type of employment separation; for example:  Voluntary separation, Involuntary separation, Mutual agreement. Other, etc. |
| SeparationReasonDescriptor | Optional.  This descriptor defines the reasons for terminating the employment. |
| SexDescriptor | Optional.  A person's gender. |
| StaffClassificationDescriptor | Required.  This descriptor defines an individual's title of employment, official status or rank. |
| StaffIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the staff. |
| StaffLeaveEventCategoryDescriptor | Required.  A code describing the type of the leave event. |
| StateAbbreviationDescriptor | Required.  The abbreviation for the state (within the United States) or outlying area in which an address is located. |
| TeacherPreparationProgramTypeDescriptor | Optional.  The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.). |
| TeachingCredentialBasisDescriptor | Optional.  An indication of the pre-determined criteria for granting the teaching credential that an individual holds. |
| TeachingCredentialDescriptor | Required.  This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services. |
| TelephoneNumberTypeDescriptor | Optional.  The type of communication number listed for an individual. |
| TribalAffiliationDescriptor | Optional.  An American Indian tribe with which an individual is affiliated. |
| ValueTypeDescriptor | Optional.  The type (i.e. actual or projected) of value. |
| VisaDescriptor | Optional.  An indicator of a non-U.S. citizen's Visa type. |


