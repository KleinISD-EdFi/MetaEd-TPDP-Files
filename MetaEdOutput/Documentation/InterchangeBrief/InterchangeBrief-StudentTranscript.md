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
| ExternalEducationOrganizationReference (in CourseTranscript) | Optional.  Optional association between CourseTranscript and ExternalEdOrg is designed to capture cases in which the student takes a course via an ExternalEducationOrganization (like an enrolled student taking a Khan Academy course). |
| ReportCardReference (in StudentAcademicRecord) | Optional.  Report cards for the student. |
| StudentReference (in StudentAcademicRecord) | Required.  Identifies the student who is associated with the StudentAcademicRecord. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicHonorCategoryDescriptor | Optional.  A designation of the type of academic distinctions earned by or awarded to the student. |
| AchievementCategoryDescriptor | Optional.  This descriptor defines the category of achievement attributed to the learner. |
| AdditionalCreditTypeDescriptor | Optional.  The type of additional credits or units of value awarded for the completion of a course. |
| CourseAttemptResultDescriptor | Required.  The result from the student's attempt to take the course, for example:<br/>    Pass<br/>    Fail<br/>    Incomplete<br/>    Withdrawn |
| CourseRepeatCodeDescriptor | Optional.  Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average. |
| CreditTypeDescriptor | Optional.  The type of credits or units of value awarded for the completion of a course. |
| DiplomaLevelDescriptor | Optional.  The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements. |
| DiplomaTypeDescriptor | Optional.  The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements. |
| GradeLevelDescriptor | Optional.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| MethodCreditEarnedDescriptor | Optional.  The method the credits were earned, for example:  Classroom, Examination, Transfer. |
| RecognitionTypeDescriptor | Optional.  The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |


