# Assessment Metadata Interchange

# Overview

The Assessment Metadata interchange describes metadata about assessments, including the definitions of the assessment and the assessment items making up the assessment. This interchange is related to the companion Student Assessment interchange, which is used to exchange students' test results.


This interchange schema supports the exchange of metadata for the following types of assessments:
    * Single-level assessment, reporting an overall score (e.g., as in an SAT test where a single score is reported for each test).
    * Two-level item assessment, reporting an overall score and a score for each assessment item (e.g., a classroom test reports the total score and individual student results for each question).
    * Two-level objective assessment, reporting an overall score and a score for each learning objective (e.g., a standardized test reports the total score and also individual student results for each learning objective).
    * Three-level assessment, reporting an overall score, a score for sections that test specific learning objectives, and a score for each assessment item (e.g., a benchmark assessment may report a total raw score, a score per objective, and individual results for each question which are tied to learning standards).


Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Assessment Metadata Interchange can be used to:  

1. Exchange metadata for standardized state or local assessment(s).
    2. Exchange metadata for classroom or benchmark assessment(s).


# Model Details

The following figure shows a logical view of the Assessment Metadata Interchange schema:  

![Assessment Metadata model details diagram](img/InterchangeAssessmentMetadata-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Assessment Metadata Interchange is composed.  

| Name | Description |
|----------|-----------------|
| Assessment | This entity represents a tool, instrument, process, or exhibition composed of a systematic sampling of behavior for measuring a student's competence, knowledge,skills, or behavior. An assessment can be used to measure differences in individuals or groups and changes in performance from one occasion to the next. |
| ObjectiveAssessment | This entity represents subtests that assess specific learning objectives. |
| AssessmentItem | This entity represents one of many single measures that make up an assessment. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| LearningObjectiveReference (in ObjectiveAssessment) | Optional.  References the LearningObjective(s) the ObjectiveAssessment tests. |
| LearningStandardReference (in AssessmentItem) | Optional.  LearningStandard tested by this item. |
| LearningStandardReference (in ObjectiveAssessment) | Optional.  LearningStandard tested by this ObjectiveAssessment. |
| MandatingEducationOrganizationReference (in Assessment) | Optional.  Optionally relates the entity mandating the use of the content standard. |
| ProgramReference (in Assessment) | Optional.  The programs associated with the Assessment. |
| SectionReference (in Assessment) | Optional.  The Section(s) to which the Assessment is associated. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Required.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AssessmentCategoryDescriptor | Optional.  This descriptor holds the category of an assessment based on format and content. |
| AssessmentIdentificationSystemDescriptor | Required.  This descriptor holds a coding scheme that is used for identification and record-keeping purposes by schools, social services or other agencies to refer to an assessment. |
| AssessmentItemCategoryDescriptor | Optional.  Category or type of the assessment item (e.g., Multiple Choice, Analytic, Prose). |
| AssessmentPeriodDescriptor | Optional.  This descriptor holds the period of time window in which an assessment is supposed to be administered (e.g., Beginning of Year, Middle of Year, End of Year). |
| AssessmentReportingMethodDescriptor | Optional.  This descriptor defines the method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. It is strongly recommended that entries use only ISO 639-3 language codes: for CodeValue, use the 3 character code; for ShortDescription and Description use the full language name. |
| PerformanceLevelDescriptor | Optional.  This descriptor defines various levels or thresholds for performance on the assessment. |
| ProgramGatewayDescriptor | Optional.  The descriptor holds the program gateway that is associated with continuation in a program. |
| PublicationStatusDescriptor | Optional.  The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown). |
| ResultDatatypeTypeDescriptor | Optional.  The results can be expressed as a number, percentile, range, level, etc. |


