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
| TeacherCandidate | This entity represents an individual for whom instruction and/or services in a Teacher Preparation Program are provided under the jurisdiction of a Teacher Preparation Provider.  A teacher candidate is a person who has been enrolled in a teacher preparation program. |



# Extended References


This interchange contains no external references.


# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AidTypeDescriptor | Optional.  The classification of financial aid awarded to a person for the academic term/year. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. |
| DisabilityDescriptor | Optional.  This descriptor defines a student's impairment. |
| EnglishLanguageExamDescriptor | Optional.  Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. |
| LimitedEnglishProficiencyDescriptor | Optional.  This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| TeacherCandidateCharacteristicDescriptor | Optional.  The characteristic designated for the TeacherCandidate. |
| TeacherCandidateIdentificationSystemDescriptor | Optional.  A coding scheme that is used for identification and record-keeping purposes by schools, social services, or other agencies to refer to a TeacherCandidate. |


