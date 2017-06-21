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
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. |
| DisabilityDescriptor | Optional.  This descriptor defines a student's impairment. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. |
| LimitedEnglishProficiencyDescriptor | Optional.  This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| ProgramCharacteristicDescriptor | Optional.  This descriptor defines important characteristics of the Program, such as categories or particular indications. |
| SchoolFoodServicesEligibilityDescriptor | Optional.  This descriptor defines indications of a student's level of eligibility for breakfast, lunch, snack, supper, and milk programs. |
| StudentCharacteristicDescriptor | Optional.  This descriptor defines the set of important characteristics of the student. |
| StudentIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes of the student. |


