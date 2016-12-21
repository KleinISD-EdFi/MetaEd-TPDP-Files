# Parent Interchange

# Overview

This interchange defines parents and captures the familial relationship between the student and the parent as well as indicators for the parent for residence, primary parental contact, and emergency contact.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Parent Interchange can be used to:  

1. Exchange school or LEA new or updated parent information.
2. Exchange parent contact or emergency contact information.


# Model Details

The following figure shows a logical view of the Parent Interchange schema:  

![Parent model details diagram](img/InterchangeParent-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Parent Interchange is composed.  

| Name | Description |
|----------|-----------------|
| Parent | This entity represents a parent or guardian of a student, such as mother, father, or caretaker. |
| StudentParentAssociation | This association relates students to their parents, guardians, or caretakers. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| StudentReference (in StudentParentAssociation) | Required.  The Student associated with the Parent. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. |


