# Bell Schedule
---
The BellSchedule represents the class period scheduling in a day or over a course of days. The model is meant to accommodate a wide variety of bell schedules including block schedules, as follows:
* Sections are assigned  one or more "logical" ClassPeriods, which represents the basic unit for scheduling that section.
* A BellSchedule defines the MeetingTimes (time of the day) for each logical ClassPeriod. ClassPeriod does not have to meet every day and specific meeting days are defined in BellSchedule by its Date attribute.
* The association between BellSchedule Date attribute indicates which days of the Session the BellSchedule was in effect. This allows the school to have a BellSchedule that is special for a specific day, such as for a testing day or a late-start day.
* A School may have multiple BellSchedules defined, and may have different BellSchedules on the same calendar time period (e.g. for different grades).



#### Bell Schedule Model Entities

| Name        | Description  |
|-----------------|------------------|
| BellSchedule | This entity represents the schedule of class period meeting times. |
| ClassPeriod | This entity represents the designation of a regularly scheduled series of class meetings at designated times and days of the week. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| School |  |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Session | A term in the school year, generally a unit of time into which courses are scheduled, instruction occurs and by which credits are awarded. Sessions may be interrupted by vacations or other events. |


![Bell Schedule Model Diagram](/path/to/domain-model.png)
#### Bell Schedule Model  

