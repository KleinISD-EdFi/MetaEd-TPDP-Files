# Standards Interchange

# Overview

The Standards Interchange describes learning objectives and learning standards taught in courses, tested by assessments, and logged as grades.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Standards Interchange can be used to:  

1. Exchange learning standard information to be used when defining courses, assessments and grades.
    2. Exchange learning objective information to be used when defining courses, assessments and grades.


# Model Details

The following figure shows a logical view of the Standards Interchange schema:  

![Standards model details diagram](img/InterchangeStandards-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Standards Interchange is composed.  

| Name | Description |
|----------|-----------------|
| LearningObjective | This entity represents identified learning objectives for courses in specific grades. |
| LearningStandard | This entity is a sub-element of a learning objective consisting of a precise statement of the expectation of a student's proficiency. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| MandatingEducationOrganizationReference (in LearningObjective) | Optional.  Optionally relates the entity mandating the use of the content standard. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Required.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |


