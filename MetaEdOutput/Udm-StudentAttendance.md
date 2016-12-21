# Student Attendance
---
The Student Attendance domain represents both daily and class period (section) attendance. This model supports two approaches for collecting attendance data:
* One attendance event for each student-section (or each student-day), reporting both attendance and absences
* "Exception only" reporting, providing attendance events only for absences and tardies



#### Student Attendance Model Entities

| Name        | Description  |
|-----------------|------------------|
| AttendanceEvent | This event entity represents the recording of whether a student is in attendance for a class or in attendance to receive or participate in program services. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| School | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| SectionAttendanceTakenEvent | Captures attendance taken event for given section. |
| Session | This entity represents the prescribed span of time when an education institution is open, instruction is provided and students are under the direction and guidance of teachers and/or education institution administration. A session may be interrupted by one or more vacations. |
| Staff | This entity represents an individual who performs specified activities for any public or private education institution or agency that provides instructional and/or support services to students or staff at the early childhood level through high school completion. For example, this includes:<br/>1. An "employee" who performs services under the direction of the employing institution or agency is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings<br/>2. A "contractor" or "consultant" who performs services for an agreed upon fee or an employee of a management service contracted to work on site<br/>3. A "volunteer" who performs services on a voluntary and uncompensated basis<br/>4. An in-kind service provider<br/>5. An independent contractor or businessperson working at a school site. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |


![Student Attendance Model Diagram](/path/to/domain-model.png)
#### Student Attendance Model  

