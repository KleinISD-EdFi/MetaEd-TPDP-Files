# Performance Measure Interchange

# Overview

?



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.



# Model Details

The following figure shows a logical view of the Performance Measure Interchange schema:  

![Performance Measure model details diagram](img/InterchangePerformanceMeasure-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Performance Measure Interchange is composed.  

| Name | Description |
|----------|-----------------|
| PerformanceMeasure | Information about the performance measure |
| PerformanceMeasureFacts | This entity represents aggregated information regarding performance measure data. |
| Rubric | This entity represents the rubric used to conduct the observation. |
| RubricLevel | This entity represents the level of the rubric. |
| RubricLevelResponse | This entity represents the response to the rubric level. |
| RubricLevelResponseFacts | This entity represents the rubric level response at the aggregate level. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| CourseReference (in PerformanceMeasure) | Optional.  The course offered by the education organization. |
| PersonBeingReviewedStaffReference (in PerformanceMeasure) | Optional.  The staff associated with the performance measure. |
| ProspectReference (in PerformanceMeasure) | Optional.  The reference to the prospect. |
| ReviewerStaffReference (in PerformanceMeasure) | Optional.  The staff associated with the performance measure. |
| RubricEducationOrganizationReference (in Rubric) | Required.  The education organization, typically a LocalEducationAgency, associated with the prospect. |
| TeacherCandidateReference (in PerformanceMeasure) | Optional.  The teacher candidate associated with the performance measure. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| LevelTypeDescriptor | Required.  The descriptor holds the level (e.g., 1, 2, 3, etc.) of the rubric at which the data is captured. |
| PerformanceMeasureTypeDescriptor | Required.  The descriptor holds the type (e.g., walkthrough, summative) of observation conducted. |
| ProgramGatewayDescriptor | Optional.  The descriptor holds the program gateway that is associated with continuation in a program. |
| RubricTypeDescriptor | Required.  The descriptor holds the rubric types. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |
| ThemeDescriptor | Optional.  The descriptor holds the theme of the specified level of the rubric. |


