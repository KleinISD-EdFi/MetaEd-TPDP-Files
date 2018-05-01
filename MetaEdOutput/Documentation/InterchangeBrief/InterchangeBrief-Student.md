# Student Interchange

# Overview

This interchange defines students and contains all their identifying information.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Interchange can be used to:  

1. Exchange school or LEA roster of student information.
    2. Exchange new or updated student information.


# Model Details

The following figure shows a logical view of the Student Interchange schema:  

![Student model details diagram](img/InterchangeStudent-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Interchange is composed.  

| Name | Description |
|----------|-----------------|
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |



# Extended References


This interchange contains no external references.


# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AddressTypeDescriptor | Optional.  The type of address listed for an individual or organization. |
| CitizenshipStatusDescriptor | Optional.  An indicator of whether or not the person is a U.S. citizen. |
| CohortYearTypeDescriptor | Optional.  The enumeration items for the set of cohort years. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes. |
| ElectronicMailTypeDescriptor | Optional.  The type of email listed for an individual or organization. |
| IdentificationDocumentUseDescriptor | Optional.  Identifies the type of use given to an identification document. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. It is strongly recommended that entries use only ISO 639-3 language codes: for CodeValue, use the 3 character code; for ShortDescription and Description use the full language name. |
| LanguageUseDescriptor | Optional.  The category denoting how a language is used. |
| OldEthnicityDescriptor | Optional.  Previous definition of Ethnicity combining Hispanic/Latino and Race. |
| OtherNameTypeDescriptor | Optional.  The types of alternate names for a person. |
| PersonalInformationVerificationDescriptor | Optional.  The evidence presented to verify one's personal identity; for example: driver's license, passport, birth certificate, etc. |
| RaceDescriptor | Optional.  The enumeration items defining the racial categories which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. |
| SexDescriptor | Required.  A person's gender. |
| StateAbbreviationDescriptor | Optional.  The abbreviation for the state (within the United States) or outlying area in which an address is located. |
| StudentIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the student. |
| TelephoneNumberTypeDescriptor | Optional.  The type of communication number listed for an individual. |
| TribalAffiliationDescriptor | Optional.  An American Indian tribe with which an individual is affiliated. |
| VisaDescriptor | Optional.  An indicator of a non-U.S. citizen's Visa type. |


