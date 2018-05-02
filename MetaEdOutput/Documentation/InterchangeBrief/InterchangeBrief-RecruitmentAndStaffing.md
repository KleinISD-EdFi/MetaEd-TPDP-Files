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
| ApplicantEducationOrganizationReference (in Applicant) | Required.  The education organization, typically a LocalEducationAgency, associated with the applicant. |
| ProspectEducationOrganizationReference (in Prospect) | Required.  The education organization, typically a LocalEducationAgency, associated with the prospect. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AddressTypeDescriptor | Optional.  The type of address listed for an individual or organization. |
| AidTypeDescriptor | Optional.  This descriptor defines the classification of financial aid awarded to a person for the academic term/year. |
| AssessmentReportingMethodDescriptor | Optional.  This descriptor defines the method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. |
| BackgroundCheckStatusDescriptor | Optional.  This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | Optional.  This descriptor defines the classification of the background check a person receives. |
| BoardCertificationTypeDescriptor | Optional.  The descriptor holds the type of board certification awarded to an individual. |
| CertificationExamTypeDescriptor | Optional.  The descriptor holds the type of certification exam that was taken. |
| CitizenshipStatusDescriptor | Optional.  An indicator of whether or not the person is a U.S. citizen. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes. |
| CredentialFieldDescriptor | Required.  This descriptor defines the fields of certification that the state education agency offers to teachers. |
| CredentialTypeDescriptor | Required.  An indication of the category of credential an individual holds. |
| DisabilityDescriptor | Optional.  This descriptor defines a student's impairment. |
| DisabilityDesignationDescriptor | Optional.  The type of disability designation (e.g., IDEA, Section 504). |
| DisabilityDeterminationSourceTypeDescriptor | Optional.  The source that provided the disability determination. |
| ElectronicMailTypeDescriptor | Optional.  The type of email listed for an individual or organization. |
| GenderDescriptor | Optional.  The gender with with a person associates. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| IdentificationDocumentUseDescriptor | Optional.  Identifies the type of use given to an identification document. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. It is strongly recommended that entries use only ISO 639-3 language codes: for CodeValue, use the 3 character code; for ShortDescription and Description use the full language name. |
| LanguageUseDescriptor | Optional.  The category denoting how a language is used. |
| LevelOfDegreeAwardedDescriptor | Optional.  The descriptor holds the level of degree awarded by the teacher prep program to the person (e.g., Certificate Only, Bachelor's, Master's, etc.). |
| LevelOfEducationDescriptor | Optional.  This descriptor defines the different levels of education achievable. |
| PersonalInformationVerificationDescriptor | Optional.  The evidence presented to verify one's personal identity; for example: driver's license, passport, birth certificate, etc. |
| RaceDescriptor | Optional.  The enumeration items defining the racial categories which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. |
| ResultDatatypeTypeDescriptor | Optional.  The results can be expressed as a number, percentile, range, level, etc. |
| SexDescriptor | Optional.  A person's gender. |
| StaffIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the staff. |
| StateAbbreviationDescriptor | Required.  The abbreviation for the state (within the United States) or outlying area in which an address is located. |
| TeacherPreparationProgramTypeDescriptor | Optional.  The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.). |
| TeachingCredentialBasisDescriptor | Optional.  An indication of the pre-determined criteria for granting the teaching credential that an individual holds. |
| TeachingCredentialDescriptor | Required.  This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services. |
| TelephoneNumberTypeDescriptor | Optional.  The type of communication number listed for an individual. |
| ValueTypeDescriptor | Optional.  The type (i.e. actual or projected) of value. |
| VisaDescriptor | Optional.  An indicator of a non-U.S. citizen's Visa type. |


