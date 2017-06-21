# Student Cohort Interchange

# Overview

Cohorts are used to designate groups of students outside of class rosters, enrollment lists, or program participation.

    The Student Cohort interchange describes student cohort information. It can be used to exchange information regarding any named group of students, or cohort, for tracking, analysis, or intervention.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Cohort Interchange can be used to:  

1. Exchange students identified for special tracking (e.g., a principal watch list).
    2. Exchange students identified for interventions.
    3. Exchange staff members associated with a cohort who are providing support, services, or sponsorship.
    4. Exchange staff members that are allowed to see specific student records (e.g., therapists and specialists).


# Model Details

The following figure shows a logical view of the Student Cohort Interchange schema:  

![Student Cohort model details diagram](img/InterchangeStudentCohort-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Cohort Interchange is composed.  

| Name | Description |
|----------|-----------------|
| Cohort | This entity represents any type of list of designated students for tracking, analysis, or intervention. |
| StudentCohortAssociation | This association represents the Cohort(s) for which a student is designated. |
| StaffCohortAssociation | This association indicates the Staff associated with a cohort of students. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| EducationOrganizationReference (in Cohort) | Required.  The education organization associated with and owner of the Cohort. |
| ProgramReference (in Cohort) | Optional.  The (optional) program associated with this Cohort (e.g., special education). |
| SectionReference (in StudentCohortAssociation) | Optional.  The Cohort representing the subdivision of students within one or more sections. For example, a group of students may be given additional instruction and tracked as a cohort. |
| StaffReference (in StaffCohortAssociation) | Required.  The Staff associated with the cohort of students. |
| StudentReference (in StudentCohortAssociation) | Required.  The Student associated with the Cohort. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |


