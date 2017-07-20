# Recruitment and Staffing Interchange

# Overview

?



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.



# Model Details

The following figure shows a logical view of the Recruitment and Staffing Interchange schema:  

![Recruitment and Staffing model details diagram](img/InterchangeRecruitmentAndStaffing-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Recruitment and Staffing Interchange is composed.  

| Name | Description |
|----------|-----------------|
| Credential | The legal document giving authorization to perform teaching assignment services. |
| Applicant | A person who makes a formal application for an OpenStaffPosition. |
| Prospect | A prospect for employment or contract that has not yet made formal application, often obtained from job fairs or university recruiting visits. |
| RecruitmentEvent | Events associated with the recruitment process. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| EducationOrganizationReference (in Applicant) | Required.  The education organization, typically a LocalEducationAgency, associated with the applicant. |
| ProspectEducationOrganizationReference (in Prospect) | Required.  The education organization, typically a LocalEducationAgency, associated with the prospect. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AidTypeDescriptor | Optional.  The classification of financial aid awarded to a person for the academic term/year. |
| BackgroundCheckStatusDescriptor | Optional.  This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | Optional.  The type of background check (e.g., online, criminal, employment). |
| BoardCertificationTypeDescriptor | Optional.  The descriptor holds the  type of board certification awarded to an individual. |
| CertificationExamTypeDescriptor | Optional.  The descriptor holds the  type of certification exam that was taken. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. |
| CredentialFieldDescriptor | Required.  This descriptor defines the fields of certification that the state education agency offers to teachers. |
| DisabilityDescriptor | Optional.  This descriptor defines a student's impairment. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. |
| LevelDescriptor | Optional.  This descriptor defines the grade level(s) certified for teaching. |
| LevelOfDegreeAwardedDescriptor | Optional.  The descriptor holds the level of degree awarded by the teacher prep program to the person (e.g., Certificate Only, Bachelor's, Master's, etc.). |
| LevelOfEducationDescriptor | Optional.  This descriptor defines the different levels of education achievable. |
| StaffIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the staff. |
| TeacherPreparationProgramTypeDescriptor | Optional.  The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.). |
| TeachingCredentialDescriptor | Required.  This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services. |


