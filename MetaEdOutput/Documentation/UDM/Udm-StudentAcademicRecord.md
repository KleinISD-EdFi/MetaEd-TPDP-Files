# Student Academic Record
---
The Student Academic Record domain models the various kinds of student performance reporting.
* A student transcript contains information about course-level grades and credits. A student transcript consists of a StudentAcademicRecord associated with each Session which has aCourseTranscript for each course taken.
* Report cards contain information for grading period grades and competencies. A report card consists of a ReportCard entity for each GradingPeriod. A Grade is associated with each Section entity.
* Gradebook contains grades and competencies for classroom quizzes, tests, homework, and projects. An assignment in a Gradebook is represented as a GradebookEntry. Each student's score for that entry is a StudentGradebookEntry which can be a grade or a CompetencyLevelDescriptor.

## Student Transcript

A student transcript contains information about course-level grades and credits. A student transcript consists of aStudentAcademicRecord associated with each Session which has a CourseTranscript for each course taken.

![Student Academic Record, Student Transcript Model Diagram](/path/to/subdomain-model.png)
**Student Academic Record, Student Transcript Model**
## Report Card

A Student has a ReportCard for each GradingPeriod. A Grade is associated with each Section. For early grade levels, a StudentCompetencyObjective is assigned to CompetencyObjectives and a StudentLearningObjective is assigned to LearningObjectives, for example, assigning a "Satisfactory" for "Participates in class discussions." The StudentLearningObjective is either associated to a Section or a Program.

![Student Academic Record, Report Card Model Diagram](/path/to/subdomain-model.png)
**Student Academic Record, Report Card Model**
## Gradebook

An individual assignment in a gradebook is represented as a GradebookEntry. A GradebookEntry may be mapped to LearningStandards or a LearningObjective. Each student's score for that entry is a StudentGradebookEntry which can be a grade or a CompetencyLevel.

![Student Academic Record, Gradebook Model Diagram](/path/to/subdomain-model.png)
**Student Academic Record, Gradebook Model**


#### Student Academic Record Model Entities

| Name        | Description  |
|-----------------|------------------|
| CompetencyObjective | This entity holds additional competencies for student achievement that are not associated with specific learning objectives (e.g., paying attention in class). |
| Course | This educational entity represents the organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis. |
| CourseOffering | This entity represents an entry in the course catalog of available courses offered by the school during a session. |
| CourseTranscript | This entity is the final record of a student's performance in their courses at the end of a semester or school year. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| Grade | This educational entity represents an overall score or assessment tied to a course over a period of time (i.e., the grading period). Student grades are usually a compilation of marks and other scores. |
| GradebookEntry |  |
| GradingPeriod | This descriptor defines the name of the period for which grades are reported. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| LearningObjective | This entity represents identified learning objectives for courses in specific grades. |
| LearningStandard | This entity is a sub-element of a learning objective consisting of a precise statement of the expectation of a student's proficiency. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| ReportCard | This educational entity represents the collection of student grades for courses taken during a grading period. |
| School | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Session | A term in the school year, generally a unit of time into which courses are scheduled, instruction occurs and by which credits are awarded. Sessions may be interrupted by vacations or other events. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentAcademicRecord | This educational entity represents the cumulative record of academic achievement for a student. |
| StudentCompetencyObjective | This entity represents the competency assessed or evaluated for the student against a specific learning  objective. |
| StudentGradebookEntry |  |
| StudentLearningObjective | This entity represents the competency assessed or evaluated for the student against a specific LearningObjective. |
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |


![Student Academic Record Model Diagram](/path/to/domain-model.png)
#### Student Academic Record Model  

