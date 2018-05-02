# Student Attendance
---
The Student Attendance domain represents both daily and classperiod (section) attendance. This model supports two approaches for collecting attendance data:
* One attendance event for each student-section (or each student-day), reporting both attendance and absences
* "Exception only" reporting, providing attendance events only for absences and tardies



#### Student Attendance Model Entities

| Name        | Description  |
|-----------------|------------------|
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| School | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| SectionAttendanceTakenEvent | Captures attendance taken event for given section. |
| Session | A term in the school year, generally a unit of time into which courses are scheduled, instruction occurs and by which credits are awarded. Sessions may be interrupted by vacations or other events. |
| Staff |  |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentProgramAttendanceEvent | This event entity represents the recording of whether a student is in attendance to receive or participate in program services. |
| StudentSchoolAttendanceEvent | This event entity represents the recording of whether a student is in attendance for a school day. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |
| StudentSectionAttendanceEvent | This event entity represents the recording of whether a student is in attendance for a section. |


![Student Attendance Model Diagram](/path/to/domain-model.png)
#### Student Attendance Model  

