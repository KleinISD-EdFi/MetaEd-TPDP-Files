# Student Identification and Demographics
---
The Student Identification and Demographics domain represents the core information about students and parents.
* The Student entity captures important information and characteristics of a student.
* The Parent entity spans all variants of parent, guardian. It can also hold other important contacts that have been approved by the parent/guardian for contact in cases of emergency or even pick-up from school.
* The StudentParentAssociation links students and parents and indicates the relation.



#### Student Identification and Demographics Model Entities

| Name        | Description  |
|-----------------|------------------|
| Parent | This entity represents a parent or guardian of a student, such as mother, father, or caretaker. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentParentAssociation | This association relates students to their parents, guardians, or caretakers. |
| StudentEducationOrganizationAssociation | This association represents student information that is specific to a student's relationship with an EducationOrganization. Enrollment relationship semantics are covered by StudentSchoolAssociation. |


![Student Identification and Demographics Model Diagram](/path/to/domain-model.png)
#### Student Identification and Demographics Model  

