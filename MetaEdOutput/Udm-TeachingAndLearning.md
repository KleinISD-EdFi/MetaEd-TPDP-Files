# Teaching and Learning
---
The Teaching and Learning domain represents the following concepts:
* The course catalog, representing the course definitions and course offerings available at a school in each session
* The student's class enrollments in sections and the teacher(s) assigned to that section
* Early childhood enrollments in programs and the staff members related to that program

The model is based upon multiple levels of definition, as follows:
* A Course entity represents the definition of the course, its characteristics, and its mapping to LearningStandards or LearningObjectives. A course may be defined a state, LEA or school level.
* The CourseOffering entity represents a course that is offered by a school during a session. The CourseOffering will have a LocalCourseCode and may have a LocalCourseTitle.
* A school will have one or more sections for each CourseOffering. Students are enrolled in specific sections. Each Section entity will have one or more assigned staff, will typically meet in a specific location in the school, and will be assigned a ClassPeriod entity for the session. Since early learning teaching and learning is based on programs, students are enrolled by association to the Program and Staff entities as well.

## Course Catalog

A Course entity represents the definition of the course, its characteristics, and its mapping to LearningStandards or LearningObjectives. A course may be defined a state, LEA or school level. The CourseOffering entity represents a course that is offered by a school during a session. The CourseOffering will have a LocalCourseCode and may have a LocalCourseTitle.

![Teaching and Learning, Course Catalog Model Diagram](/path/to/subdomain-model.png)
**Teaching and Learning, Course Catalog Model**
## Sections and Programs

A school will have one or more Sections for each CourseOffering. Students are enrolled in specific Sections. Each Section will have one or more assigned Staff, will typically meet in a specific location in the school, and be assigned a ClassPeriod for the Session.

![Teaching and Learning, Sections and Programs Model Diagram](/path/to/subdomain-model.png)
**Teaching and Learning, Sections and Programs Model**


#### Teaching and Learning Model Entities

| Name        | Description  |
|-----------------|------------------|
| ClassPeriod | This entity represents the designation of a regularly scheduled series of class meetings at designated times and days of the week. |
| Course | This educational entity represents the organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis. |
| CourseOffering | This entity represents an entry in the course catalog of available courses offered by the school during a session. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| LearningObjective | This entity represents identified learning objectives for courses in specific grades. |
| LearningStandard | This entity is a sub-element of a learning objective consisting of a precise statement of the expectation of a student's proficiency. |
| Location | This entity represents the physical space where students gather for a particular class/section. The Location may be an indoor or outdoor area designated for the purpose of meeting the educational needs of students. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| School |  |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Session | This entity represents the prescribed span of time when an education institution is open, instruction is provided and students are under the direction and guidance of teachers and/or education institution administration. A session may be interrupted by one or more vacations. |
| Staff |  |
| StaffProgramAssociation | This association indicates the Staff associated with a program. |
| StaffSchoolAssociation | This association indicates the School(s) to which a staff member provides instructional services. |
| StaffSectionAssociation | This association indicates the class sections to which a staff member is assigned. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentSchoolAssociation | This association represents the School in which a student is enrolled. The semantics of enrollment may differ slightly by state. Non-enrollment relationships between a student and an education organization may be described using the StudentEducationOrganizationAssociation. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |


![Teaching and Learning Model Diagram](/path/to/domain-model.png)
#### Teaching and Learning Model  

