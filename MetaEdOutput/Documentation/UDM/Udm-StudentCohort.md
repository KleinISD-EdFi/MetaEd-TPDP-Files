# Student Cohort
---
The Student Cohort domain represents a wide variety of collections of students that are distinct from class rosters or program participants. This could include students that are tagged for interventions or students tagged for the purposes of tracking or analysis, such as a school principal's "watch list." The StudentCohortAssociation captures the assignment of students to cohorts.

Cohorts may be associated with programs and may have staff associated with the cohort who is providing services, oversight,or sponsorship. Cohorts are associated with Intervention entities via the StudentInterventionAssociation.



#### Student Cohort Model Entities

| Name        | Description  |
|-----------------|------------------|
| Cohort | This entity represents any type of list of designated students for tracking, analysis, or intervention. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| Intervention | An implementation of an instructional approach focusing on the specific techniques and materials used to teach a given subject. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Staff |  |
| StaffCohortAssociation | This association indicates the Staff associated with a cohort of students. |
| StaffSectionAssociation | This association indicates the class sections to which a staff member is assigned. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentCohortAssociation | This association represents the Cohort(s) for which a student is designated. |
| StudentInterventionAssociation | This association indicates the students participating in an intervention. |
| StudentSectionAssociation | This association indicates the course sections to which a student is assigned. |


![Student Cohort Model Diagram](/path/to/domain-model.png)
#### Student Cohort Model  

