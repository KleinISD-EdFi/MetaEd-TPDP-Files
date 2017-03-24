# Student Attendance Interchange

# Overview

The Student Attendance interchange describes student attendance events. It can be used to exchange daily attendance or section-level attendance. It may be used in cases where only absences are reported (attendance is assumed if no absence is reported), or where both attendance and absences are reported.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Attendance Interchange can be used to:  

1. Exchange a school's or LEA's section (class), school (daily), intervention, or program attendance data.
2. Exchange a school's or LEA's section attendance taken data.
3. Exchange attendance data for a particular student (e.g., for a transfer student).


# Model Details

The following figure shows a logical view of the Student Attendance Interchange schema:  

![Student Attendance model details diagram](img/InterchangeStudentAttendance-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Attendance Interchange is composed.  

| Name | Description |
|----------|-----------------|
| StudentInterventionAttendanceEvent | This event entity represents the recording of whether a student is in attendance for an intervention service. |
| StudentProgramAttendanceEvent | This event entity represents the recording of whether a student is in attendance to receive or participate in program services. |
| StudentSchoolAttendanceEvent | This event entity represents the recording of whether a student is in attendance for a school day. |
| StudentSectionAttendanceEvent | This event entity represents the recording of whether a student is in attendance for a section. |
| SectionAttendanceTakenEvent | Captures attendance taken event for given section. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| CalendarDateReference (in SectionAttendanceTakenEvent) | Required.  NEEDS DOCUMENTATION |
| EducationOrganizationReference (in StudentProgramAttendanceEvent) | Required.  The EducationOrganization where the student is participating in or receiving the program services. |
| InterventionReference (in StudentInterventionAttendanceEvent) | Required.  Relates the Intervention associated with the AttendanceEvent. |
| ProgramReference (in StudentProgramAttendanceEvent) | Required.  Relates the Program associated with the AttendanceEvent. |
| SchoolReference (in StudentSchoolAttendanceEvent) | Required.  Relates the School associated with the AttendanceEvent. |
| SectionReference (in SectionAttendanceTakenEvent) | Required.  NEEDS DOCUMENTATION |
| SectionReference (in StudentSectionAttendanceEvent) | Required.  Relates the Section associated with the AttendanceEvent. |
| SessionReference (in StudentSchoolAttendanceEvent) | Required.  Relates the Session associated with the AttendanceEvent. |
| StaffReference (in SectionAttendanceTakenEvent) | Optional.  NEEDS DOCUMENTATION |
| StudentReference (in StudentInterventionAttendanceEvent) | Required.  Relates the Student associated with the AttendanceEvent. |
| StudentReference (in StudentProgramAttendanceEvent) | Required.  Relates the Student associated with the AttendanceEvent. |
| StudentReference (in StudentSchoolAttendanceEvent) | Required.  Relates the Student associated with the AttendanceEvent. |
| StudentReference (in StudentSectionAttendanceEvent) | Required.  Relates the Student associated with the AttendanceEvent. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AttendanceEventCategoryDescriptor | Required.  This descriptor holds the category of the attendance event (e.g., tardy). The map to known enumeration values is required. |


