# Professional Development Interchange

# Overview

?



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.



# Model Details

The following figure shows a logical view of the Professional Development Interchange schema:  

![Professional Development model details diagram](img/InterchangeProfessionalDevelopment-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Professional Development Interchange is composed.  

| Name | Description |
|----------|-----------------|
| ProfessionalDevelopmentEvent | Information about a professional development event. |
| ProspectProfessionalDevelopmentEventAttendance | This event entity represents the recording of whether a prospect is in attendance for professional development. |
| StaffProfessionalDevelopmentEventAttendance | This event entity represents the recording of whether a staff is in attendance for professional development. |
| TeacherCandidateProfessionalDevelopmentEventAttendance | This event entity represents the recording of whether a teacher candidate is in attendance for professional development. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| ProspectReference (in ProspectProfessionalDevelopmentEventAttendance) | Required.  The staff associated with the professional development attendance event. |
| StaffReference (in StaffProfessionalDevelopmentEventAttendance) | Required.  The staff associated with the professional development attendance event. |
| TeacherCandidateReference (in TeacherCandidateProfessionalDevelopmentEventAttendance) | Required.  The teacher candidate associated with the professional development attendance event. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AttendanceEventCategoryDescriptor | Required.  This descriptor holds the category of the attendance event (e.g., tardy). The map to known enumeration values is required. |
| ProfessionalDevelopmentOfferedByDescriptor | Required.  The descriptor holds the organization that a professional development is offered by. |


