# Education Org Calendar Interchange

# Overview

The Education Organization Calendar interchange carries school calendar information. It can be used to exchange school calendar data, including instructional days, sessions, and grading periods.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Education Org Calendar Interchange can be used to:  

1. Exchange dates indicating which days are instructional days, holidays, or teacher-only days.
    2. Exchange session start dates and end dates.
    3. Exchange grading period definitions.


# Model Details

The following figure shows a logical view of the Education Org Calendar Interchange schema:  

![Education Org Calendar model details diagram](img/InterchangeEducationOrgCalendar-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Education Org Calendar Interchange is composed.  

| Name | Description |
|----------|-----------------|
| Session | A term in the school year, generally a unit of time into which courses are scheduled, instruction occurs and by which credits are awarded. Sessions may be interrupted by vacations or other events. |
| GradingPeriod | This entity represents the time span for which grades are reported. |
| Calendar | A set of dates associated with an organization. |
| CalendarDate | The type of scheduled or unscheduled event for the day. |
| AcademicWeek | This entity represents the academic weeks for a school year, optionally captured to support analyses. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| SchoolReference (in AcademicWeek) | Required.  Relates the academic week to an existing School. |
| SchoolReference (in Calendar) | Required.  Reference to the School associated with the Calendar. |
| SchoolReference (in GradingPeriod) | Required.  Provide user information to lookup and link to an existing school record. |
| SchoolReference (in Session) | Required.  Relates the Session to the school. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| CalendarEventDescriptor | Required.  This descriptor holds the types of scheduled or unscheduled event for the day (e.g., Instructional day, Teacher only day, Holiday, Make-up day, Weather day, Student late arrival/early dismissal day). |
| CalendarTypeDescriptor | Required.  This descriptor defines the calendar types. |
| GradeLevelDescriptor | Optional.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| GradingPeriodDescriptor | Required.  This descriptor defines the name of the period for which grades are reported. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| TermDescriptor | Required.  This descriptor defines the term of a session during the school year (e.g., Fall Semester). |


