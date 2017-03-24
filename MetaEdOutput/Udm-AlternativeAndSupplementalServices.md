# Alternative and Supplemental Services
---
This domain defines the model for a wide range of programs, including education programs, alternative programs, extracurricular programs, supplemental programs, and early learning programs.
* A Program entity defines programs with services offered by an education organization.
* A StudentProgramAssociation links Program entities to participating students.
* A StaffProgramAssociation links Program entities to assigned staff.



#### Alternative and Supplemental Services Model Entities

| Name        | Description  |
|-----------------|------------------|
| AttendanceEvent | This event entity represents the recording of whether a student is in attendance for a class or in attendance to receive or participate in program services. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| School |  |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Staff |  |
| StaffProgramAssociation | This association indicates the Staff associated with a program. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |


![Alternative and Supplemental Services Model Diagram](/path/to/domain-model.png)
#### Alternative and Supplemental Services Model  

# Alternative and Supplemental Services Subdomains
---
Four additional subdomains have been pre-defined in the Ed-Fi UDM for specific and relatively common instances of Alternative and Supplemental Services:
* Career and Technical Education
* Migrant Education
* Special Education
* Title I Part A Services