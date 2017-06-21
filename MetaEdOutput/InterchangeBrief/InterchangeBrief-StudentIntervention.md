# Student Intervention Interchange

# Overview

This interchange describes prescribed interventions available, implementations of interventions, studies of intervention effectiveness, and education content used in the course of interventions.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Student Intervention Interchange can be used to:  

1. Exchange interventions prescribed for particular purposes.
    2. Exchange intervention prescriptions available to districts or schools.
    3. Exchange descriptions of education content (e.g., videos, handouts, games) used in interventions.
    4. Exchange intervention implementations and student results.
    5. Exchange information about formal studies of interventions.


# Model Details

The following figure shows a logical view of the Student Intervention Interchange schema:  

![Student Intervention model details diagram](img/InterchangeStudentIntervention-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Student Intervention Interchange is composed.  

| Name | Description |
|----------|-----------------|
| EducationContent | This entity represents materials for students or teachers that can be used for teaching, learning, research, and more. Education content includes full courses, course materials, modules, intervention descriptions, textbooks, streaming videos, tests, software, and any other tools, materials, or techniques used to support access to knowledge. |
| InterventionPrescription | This entity represents a formal prescription of an instructional approach focusing on the specific techniques and materials used to teach a given subject. This can be prescribed by academic research, an interventions vendor, or another entity. |
| Intervention | An implementation of an instructional approach focusing on the specific techniques and materials used to teach a given subject. |
| InterventionStudy | An experimental or quasi-experimental study of an intervention technique. |
| StudentInterventionAssociation | This association indicates the students participating in an intervention. |
| EducationOrganizationInterventionPrescriptionAssociation | This association indicates interventions made available by an education organization. Often, a district-level education organization purchases a set of intervention prescriptions and makes them available to its schools for use on demand. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| ClassPeriodReference (in Intervention) | Optional.  The class period associated with the meeting time for a bell schedule. |
| CohortReference (in StudentInterventionAssociation) | Optional.  Relates the cohort, if the student's membership in this cohort is the reason he or she is participating in this intervention. |
| EducationOrganizationReference (in EducationOrganizationInterventionPrescriptionAssociation) | Required.  The EducationalOrganization, often times a district, which is making the InterventionPrescription available to its hierarchy. In some cases, it may be an education organization network instead of a district. |
| EducationOrganizationReference (in Intervention) | Required.  Relates the Education Organization which is sponsoring the intervention implementation. |
| EducationOrganizationReference (in InterventionPrescription) | Required.  Relates the Education Organization which is sponsoring the InterventionPrescription. |
| EducationOrganizationReference (in InterventionStudy) | Required.  Relates the EducationOrganization which is sponsoring the intervention study. |
| LearningStandardReference (in EducationContent) | Optional.  Relates the competency, learning standard, skill and/or text complexity to which the learning resource is aligned. |
| StaffReference (in Intervention) | Optional.  Relates the staff member associated with the Intervention. |
| StudentReference (in StudentInterventionAssociation) | Required.  Relates the Student associated with the Intervention. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| DiagnosisDescriptor | Optional.  This descriptor defines diagnoses that interventions are intended to target. |
| GradeLevelDescriptor | Optional.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| LanguageDescriptor | Optional.  This descriptor defines the language(s) that are spoken or written. |


