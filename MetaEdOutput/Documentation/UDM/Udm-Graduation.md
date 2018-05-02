# Graduation
---
The Graduation domain model represents student outcomes.
* A GraduationPlan entity represents either a generic graduation plan for all or many students or an individualized graduation plan. The GraduationPlan supports several levels of detail, including overall credit requirements, credits by subject area, or down to specific courses to be taken.
* A PostSecondaryEvent entity represents significant postsecondary education information, such as college applications, remedial course enrollment, acceptances, and detailed postsecondary institution information.
* A Diploma element represents graduation certificate information with associated honors and other recognitions as part of the StudentAcademicRecord.



#### Graduation Model Entities

| Name        | Description  |
|-----------------|------------------|
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| GraduationPlan | This entity is a plan outlining the required credits,credits by subject, credits by course, and other criteria required for graduation. A graduation plan may be one or more standard plans defined by an education organization and/or individual plans for some or all students. |
| PostSecondaryEvent | This entity captures significant postsecondary events during a student's high school tenure (e.g., FAFSA application or college application, acceptance, and enrollment) or during a student's enrollment at a post-secondary institution. |
| PostSecondaryInstitution | An organization that provides educational programs for individuals who have completed or otherwise left educational programs in secondary school(s). |
| School | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentAcademicRecord | This educational entity represents the cumulative record of academic achievement for a student. |
| StudentSchoolAssociation | This association represents the School in which a student is enrolled. The semantics of enrollment may differ slightly by state. Non-enrollment relationships between a student and an education organization may be described using the StudentEducationOrganizationAssociation. |


![Graduation Model Diagram](/path/to/domain-model.png)
#### Graduation Model  

