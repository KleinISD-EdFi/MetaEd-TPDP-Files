# Survey Interchange

# Overview

?



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.



# Model Details

The following figure shows a logical view of the Survey Interchange schema:  

![Survey model details diagram](img/InterchangeSurvey-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Survey Interchange is composed.  

| Name | Description |
|----------|-----------------|
| CourseSurveyResponseFacts | Survey response data provided at the aggregate level. |
| CourseSurveySectionResponseRatingFacts | Responses to survey sections collected at the aggregate level. |
| CourseSurveyQuestionResponseFacts | Survey question response data provided at the aggregate level. |
| EducationOrganizationSurveyResponseFacts | Survey response data provided at the aggregate level. |
| EducationOrganizationSurveySectionResponseRatingFacts | Responses to survey sections collected at the aggregate level. |
| EducationOrganizationSurveyQuestionResponseFacts | Survey question response data provided at the aggregate level. |
| SectionSurveyResponseFacts | Survey response data provided at the aggregate level. |
| SectionSurveySectionResponseRatingFacts | Responses to survey sections collected at the aggregate level. |
| SectionSurveyQuestionResponseFacts | Survey question response data provided at the aggregate level. |
| Survey | A survey to identified or anonymous respondants. |
| SurveyQuestion | The questions for the survey. |
| SurveyQuestionResponse | The response to a survey question. |
| SurveyResponse | Responses to a Survey for named or anonymous persons. |
| SurveySection | The section(s) of questions for the survey. |
| SurveySectionResponseRating | Optional numeric rating computed from the survey responses for the section. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| ApplicantReference (in SurveyResponse) | Optional.  *NONE* |
| CourseReference (in CourseSurveyResponseFacts) | Required.  The section(s) associated with the aggregated survey response. |
| CourseReference (in Survey) | Optional.  The course associated with the survey. |
| EducationOrganizationReference (in EducationOrganizationSurveyResponseFacts) | Required.  The section(s) associated with the aggregated survey response. |
| EducationOrganizationReference (in Survey) | Optional.  The Education Organization(s) associated with the survey. |
| ParentReference (in SurveyResponse) | Optional.  *NONE* |
| ProgramReference (in Survey) | Optional.  The program associated with the survey. |
| ProspectReference (in SurveyResponse) | Optional.  The reference to the prospect. |
| SectionReference (in SectionSurveyResponseFacts) | Required.  The section(s) associated with the aggregated survey response. |
| SectionReference (in Survey) | Optional.  The section associated with the survey. |
| StaffReference (in SurveyResponse) | Optional.  *NONE* |
| StudentReference (in SurveyResponse) | Optional.  *NONE* |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| SurveyCategoryDescriptor | Optional.  The descriptor holds the category or type of survey. |
| TermDescriptor | Optional.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |


