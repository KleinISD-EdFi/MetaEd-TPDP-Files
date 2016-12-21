# Student Transcript Interchange

# Overview

This interchange defines transcript information for a course and student academic records for a given session. Course transcripts link to the student academic record for the session in which the course was taken.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Transcript Interchange can be used to:  

1. Exchange a student's full or partial academic record.
2. Exchange a transcript for a course or set of courses.


# Model Details

The following figure shows a logical view of the Student Transcript Interchange schema:  

![Student Transcript model details diagram](img/InterchangeStudentTranscript-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Transcript Interchange is composed.  

| Name | Description |
|----------|-----------------|
| StudentAcademicRecord | This educational entity represents the cumulative record of academic achievement for a student. |
| CourseTranscript | This entity is the final record of a student's performance in their courses at the end of a semester or school year. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| CourseReference (in CourseTranscript) | Required.  The course recorded in the course transcript entry. |
| EducationOrganizationReference (in StudentAcademicRecord) | Required.  Provides user information to lookup and link to an existing educational organization record. |
| ReportCardReference (in StudentAcademicRecord) | Optional.  Report cards for the student. |
| SchoolReference (in CourseTranscript) | Optional.  The School that provided the reported instruction. |
| StudentReference (in StudentAcademicRecord) | Required.  Identifies the student who is associated with the StudentAcademicRecord. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AchievementCategoryDescriptor | Optional.  This descriptor defines the category of achievement attributed to the learner. |
| GradeLevelDescriptor | Optional.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |


