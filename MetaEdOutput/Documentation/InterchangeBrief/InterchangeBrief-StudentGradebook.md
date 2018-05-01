# Student Gradebook Interchange

# Overview

The Student Gradebook interchange describes student gradebook entries. Gradebook entries are assignments and students' results on those assignments. The assignments themselves may be linked to learning standards or learning objectives.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Gradebook Interchange can be used to:  

1. Exchange assignments created by teachers and optionally linked to learning standards or learning objectives.
    2. Exchange students' performance on assignments.


# Model Details

The following figure shows a logical view of the Student Gradebook Interchange schema:  

![Student Gradebook model details diagram](img/InterchangeStudentGradebook-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Gradebook Interchange is composed.  

| Name | Description |
|----------|-----------------|
| GradebookEntry | This entity represents an assignment, homework, or classroom assessment to be recorded in a gradebook. |
| StudentGradebookEntry | This entity holds a student's grade or competency level for a gradebook entry. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| GradingPeriodReference (in GradebookEntry) | Optional.  Identifies the grading period for the GradebookEntry. |
| LearningObjectiveReference (in GradebookEntry) | Optional.  LearningObjectives associated with the GradebookEntry. |
| LearningStandardReference (in GradebookEntry) | Optional.  LearningStandard(s) associated with the GradebookEntry. |
| SectionReference (in GradebookEntry) | Required.  The Section associated with the GradebookEntry. |
| StudentSectionAssociationReference (in StudentGradebookEntry) | Required.  Relates the student associated with the GradebookEntry. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| CompetencyLevelDescriptor | Optional.  This descriptor defines various levels for assessed competencies. |
| GradebookEntryTypeDescriptor | Optional.  The type of the gradebook entry; for example, homework, assignment, quiz, unit test, oral presentation, etc. |
| ProgramGatewayDescriptor | Optional.  The descriptor holds the program gateway that is associated with continuation in a program. |


