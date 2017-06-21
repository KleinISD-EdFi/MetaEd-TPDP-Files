# Student Program Interchange

# Overview

This interchange loads students' participation in programs.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Program Interchange can be used to:  

1. Exchange School or Local Education Agency student lists of program participation.
    2. Exchange a program's services offered to students.
    3. Exchange the services provided to a student during his or her participation in a program.


# Model Details

The following figure shows a logical view of the Student Program Interchange schema:  

![Student Program model details diagram](img/InterchangeStudentProgram-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Program Interchange is composed.  

| Name | Description |
|----------|-----------------|
| StudentProgramAssociation | This association represents the Program(s) that a student participates in or is served by. |
| StudentSpecialEducationProgramAssociation | This association represents the special education program(s) that a student participates in or receives services from. The association is an extension of the StudentProgramAssociation particular for special education programs. |
| RestraintEvent | This event entity represents the instances where a special education student was physically or mechanically restrained due to imminent serious physical harm to themselves or others, imminent serious property destruction or a combination of both imminent serious physical harm to themselves or others and imminent serious property destruction. |
| StudentCTEProgramAssociation | This association represents the career and technical education (CTE) program that a student participates in. The association is an extension of the StudentProgramAssociation particular for CTE programs. |
| StudentTitleIPartAProgramAssociation | This association represents the Title I Part A program(s) that a student participates in or from which the Student receives services. The association is an extension of the StudentProgramAssociation particular for Title I Part A programs. |
| StudentMigrantEducationProgramAssociation | This association represents the migrant education program(s) that a student participates in or receives services from. The association is an extension of the StudentProgramAssociation with added elements particular to migrant education programs. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| EducationOrganizationReference (in StudentProgramAssociation) | Required.  The EducationOrganization where the Student is participating in or receiving the Program services. |
| ProgramReference (in RestraintEvent) | Optional.  The special education program associated with the RestraintEvent. |
| ProgramReference (in StudentProgramAssociation) | Required.  The Program associated with the Student. |
| SchoolReference (in RestraintEvent) | Required.  The school where the RestraintEvent occurred. |
| StaffReference (in StudentSpecialEducationProgramAssociation) | Optional.  Relates the ServiceProvider to the Staff. |
| StudentReference (in RestraintEvent) | Required.  Reference to student that was restrained. |
| StudentReference (in StudentProgramAssociation) | Required.  The Student associated with the Program. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| ContinuationOfServicesReasonDescriptor | Optional.  In the Migrant Education program, a provision allows continuation of services after a child is no longer considered migratory for certain reasons. This descriptor holds the reasons prescribed in the statute. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| ReasonExitedDescriptor | Optional.  This descriptor defines the reason a student exited a program. |
| ServiceDescriptor | Optional.  This descriptor defines the services provided by an education organization to populations of students associated with a program. |
| SpecialEducationSettingDescriptor | Optional.  This descriptor defines the major instructional setting (more than 50 percent of a student's special education program). |


