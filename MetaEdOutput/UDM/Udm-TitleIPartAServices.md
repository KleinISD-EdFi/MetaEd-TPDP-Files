# Title I Part A Services
---
The Title I Part A Services subdomain of the Alternative andSupplemental Services domain extends the StudentProgramAssociation to specify Title I Part A participation for a student.



#### Title I Part A Services Model Entities

| Name        | Description  |
|-----------------|------------------|
| AttendanceEvent | This event entity represents the recording of whether a student is in attendance for a class or in attendance to receive or participate in program services. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| School |  |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Staff |  |
| StaffProgramAssociation | This association indicates the Staff associated with a program. |
| StaffSchoolAssociation | This association indicates the School(s) to which a staff member provides instructional services. |
| StaffSectionAssociation | This association indicates the class sections to which a staff member is assigned. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |
| StudentTitleIPartAProgramAssociation | This association represents the Title I Part A program(s) that a student participates in or from which the Student receives services. The association is an extension of the StudentProgramAssociation particular for Title I Part A programs. |


![Title I Part A Services Model Diagram](/path/to/domain-model.png)
#### Title I Part A Services Model  

