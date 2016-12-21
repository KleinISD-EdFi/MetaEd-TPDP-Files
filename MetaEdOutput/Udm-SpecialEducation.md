# Special Education
---
The Special Education subdomain of the Alternative and Supplemental Services domain extends the StudentProgramAssociation. A StudentSpecialEducationProgramAssociation entity provides important information about the student's participation in the Special Education Program, such as the service provider, key Individualized Education Program dates, and data about the nature of the student's disability. In addition, a RestraintEvents entity is included to represent information about special education medical restraint occurrences related to a student.



#### Special Education Model Entities

| Name        | Description  |
|-----------------|------------------|
| AttendanceEvent | This event entity represents the recording of whether a student is in attendance for a class or in attendance to receive or participate in program services. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| RestraintEvent | This event entity represents the instances where a special education student was physically or mechanically restrained due to imminent serious physical harm to themselves or others, imminent serious property destruction or a combination of both imminent serious physical harm to themselves or others and imminent serious property destruction. |
| School | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Staff | This entity represents an individual who performs specified activities for any public or private education institution or agency that provides instructional and/or support services to students or staff at the early childhood level through high school completion. For example, this includes:<br/>1. An "employee" who performs services under the direction of the employing institution or agency is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings<br/>2. A "contractor" or "consultant" who performs services for an agreed upon fee or an employee of a management service contracted to work on site<br/>3. A "volunteer" who performs services on a voluntary and uncompensated basis<br/>4. An in-kind service provider<br/>5. An independent contractor or businessperson working at a school site. |
| StaffSectionAssociation | This association indicates the class sections to which a staff member is assigned. |
| StaffProgramAssociation | This association indicates the Staff associated with a program. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |
| StudentSpecialEducationProgramAssociation | This association represents the special education program(s) that a student participates in or receives services from. The association is an extension of the StudentProgramAssociation particular for special education programs. |


![Special Education Model Diagram](/path/to/domain-model.png)
#### Special Education Model  

