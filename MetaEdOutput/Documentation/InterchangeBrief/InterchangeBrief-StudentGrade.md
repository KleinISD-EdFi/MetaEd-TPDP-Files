# Student Grade Interchange

# Overview

This interchange defines grades for a grading period or group of grading periods. Grades are defined for groups of grading periods in the case where the grade is cumulative over a semester or academic year (also referred to as "final grades").



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Grade Interchange can be used to:  

1. Exchange a student's full or partial academic record or transcript.
2. Exchange interim, grading period, semester, or final report card data.
3. Exchange grades.
4. Exchange students' graduation information.


# Model Details

The following figure shows a logical view of the Student Grade Interchange schema:  

![Student Grade model details diagram](img/InterchangeStudentGrade-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Grade Interchange is composed.  

| Name | Description |
|----------|-----------------|
| ReportCard | This educational entity represents the collection of student grades for courses taken during a grading period. |
| Grade | This educational entity represents an overall score or assessment tied to a course over a period of time (i.e., the grading period). Student grades are usually a compilation of marks and other scores. |
| CompetencyObjective | This entity holds additional competencies for student achievement that are not associated with specific learning objectives (e.g., paying attention in class). |
| LearningObjective | This entity represents identified learning objectives for courses in specific grades. |
| StudentCompetencyObjective | This entity represents the competency assessed or evaluated for the student against a specific learning  objective. |
| StudentLearningObjective | This entity represents the competency assessed or evaluated for the student against a specific LearningObjective. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| EducationOrganizationReference (in CompetencyObjective) | Required.  The EducationOrganization that defines the curriculum and courses offered - often the LEA or school. |
| EducationOrganizationReference (in ReportCard) | Required.  Identifies the EducationOrganization that issued the ReportCard. |
| GradingPeriodReference (in Grade) | Required.  Identifies the grading period for the Grade. |
| GradingPeriodReference (in ReportCard) | Required.  Identifies the grading period for this report card. |
| GradingPeriodReference (in StudentCompetencyObjective) | Required.  Relates the CompetencyObjective to a grading period. |
| GradingPeriodReference (in StudentLearningObjective) | Required.  Relates the LearningObjective to a grading period. |
| LearningStandardReference (in LearningObjective) | Optional.  LearningStandard(s) included in this objective. |
| MandatingEducationOrganizationReference (in LearningObjective) | Optional.  Optionally relates the entity mandating the use of the content standard. |
| StudentProgramAssociationReference (in StudentCompetencyObjective) | Optional.  Relates the Student and Program associated with the CompetencyObjective. |
| StudentProgramAssociationReference (in StudentLearningObjective) | Optional.  Relates the Student and Program associated with the LearningObjective. |
| StudentReference (in ReportCard) | Required.  Identifies the student that is associated with the ReportCard. |
| StudentReference (in StudentCompetencyObjective) | Required.  Relates the student associated with the CompetencyObjective. |
| StudentReference (in StudentLearningObjective) | Required.  Relates the Student associated with the LearningObjective. |
| StudentSectionAssociationReference (in Grade) | Required.  Relates the student and Section associated with the Grade. |
| StudentSectionAssociationReference (in StudentCompetencyObjective) | Optional.  Relates the Student and Section associated with the CompetencyObjective. |
| StudentSectionAssociationReference (in StudentLearningObjective) | Optional.  Relates the Student and Section associated with the LearningObjective. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Required.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| CompetencyLevelDescriptor | Required.  This descriptor defines various levels for assessed competencies. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| GradeTypeDescriptor | Required.  The type of grade in a report card or transcript (e.g., Final, Exam, Grading Period). |
| PerformanceBaseConversionDescriptor | Optional.  Defines standard levels of competency or performance that can be used for dashboard visualizations: advanced, proficient, basic, and below basic. |
| PublicationStatusDescriptor | Optional.  The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown). |


