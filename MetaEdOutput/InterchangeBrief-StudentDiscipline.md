# Student Discipline Interchange

# Overview

This interchange defines discipline incidents and discipline actions.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Discipline Interchange can be used to:  

1. Exchange a student's full or partial discipline history.
2. Exchange a student's updated discipline record.
3. Exchange school or LEA discipline data.


# Model Details

The following figure shows a logical view of the Student Discipline Interchange schema:  

![Student Discipline model details diagram](img/InterchangeStudentDiscipline-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Discipline Interchange is composed.  

| Name | Description |
|----------|-----------------|
| DisciplineIncident | This event entity represents an occurrence of an infraction ranging from a minor heavioral problem that disrupts the orderly functioning of a school or classroom (such as tardiness) to a criminal act that results in the involvement of a law enforcement official (such as robbery). A single event (e.g., a fight) is one incident regardless of how many perpetrators or victims are involved. Discipline incidents are events classified as warranting discipline action. |
| StudentDisciplineIncidentAssociation | This association indicates those students who were victims, perpetrators, witnesses, and reporters for a discipline incident. |
| DisciplineAction | This event entity represents actions taken by an education organization after a disruptive event that is recorded as a discipline incident. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| AssignmentSchoolReference (in DisciplineAction) | Optional.  Optional school where student is transferred for discipline. |
| ResponsibilitySchoolReference (in DisciplineAction) | Required.  School responsible for student's discipline. |
| SchoolReference (in DisciplineIncident) | Required.  Relates the DisciplineIncident to the school where the incident occurred. |
| StaffReference (in DisciplineAction) | Optional.  The staff responsible for enforcing the DisciplineAction. |
| StaffReference (in DisciplineIncident) | Optional.  Identifies the staff reporter of the DisciplineIncident by use of a pre-existing school or district unique identifier. |
| StudentReference (in DisciplineAction) | Required.  The student(s) disciplined by the DisciplineAction. |
| StudentReference (in StudentDisciplineIncidentAssociation) | Required.  Relates the Student associated with the DisciplineIncident. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| BehaviorDescriptor | Optional.  This descriptor holds the categories of behavior describing a discipline incident. |
| DisciplineDescriptor | Required.  This descriptor defines the type of action or removal from the classroom used to discipline the student involved as a perpetrator in a discipline incident. |
| ReporterDescriptionDescriptor | Optional.  This descriptor defines the type of individual who reported an incident. |
| WeaponDescriptor | Optional.  This descriptor defines the types of weapon used during an incident. |


