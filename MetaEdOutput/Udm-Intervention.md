# Intervention
---
The Intervention domain describes educational interventions and, more generally, supplemental education content aimed at altering behavior or improving the understanding of a concept. Interventions span from in-classroom teaching methods to formal out-of-class intervention programs.
* InterventionPrescription describes an activity intended to address a specific problem or diagnosis. It identifies the kinds of students targeted and how the intervention should be delivered.
* Intervention is a specific implementation of an instructional approach, outlined in an InterventionPrescription, with one or more students in a Cohort. Interventions may be one-time actions or recurring actions over time. Interventions typically have assigned Staff. AttendanceEvents may be captured for Interventions.
* EducationContent metadata may be linked to InterventionPrescriptions and/or Interventions. The EducationContent includes descriptive information about the content conforming to the Learning Resource Metadata Initiative (LRMI).
* StudentInterventionAssociation links Students to Interventions in which they participate. The effectiveness of an Intervention for a given Student is also captured. Data about a formal InterventionStudy for an InterventionPrescription may also be associated.



#### Intervention Model Entities

| Name        | Description  |
|-----------------|------------------|
| AttendanceEvent | This event entity represents the recording of whether a student is in attendance for a class or in attendance to receive or participate in program services. |
| Cohort | This entity represents any type of list of designated students for tracking, analysis, or intervention. |
| EducationContent | This entity represents materials for students or teachers that can be used for teaching, learning, research, and more. Education content includes full courses, course materials, modules, intervention descriptions, textbooks, streaming videos, tests, software, and any other tools, materials, or techniques used to support access to knowledge. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| EducationOrganizationInterventionPrescriptionAssociation | This association indicates interventions made available by an education organization. Often, a district-level education organization purchases a set of intervention prescriptions and makes them available to its schools for use on demand. |
| Intervention | An implementation of an instructional approach focusing on the specific techniques and materials used to teach a given subject. |
| InterventionPrescription | This entity represents a formal prescription of an instructional approach focusing on the specific techniques and materials used to teach a given subject. This can be prescribed by academic research, an interventions vendor, or another entity. |
| InterventionStudy | An experimental or quasi-experimental study of an intervention technique. |
| Staff | This entity represents an individual who performs specified activities for any public or private education institution or agency that provides instructional and/or support services to students or staff at the early childhood level through high school completion. For example, this includes:<br/>1. An "employee" who performs services under the direction of the employing institution or agency is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings<br/>2. A "contractor" or "consultant" who performs services for an agreed upon fee or an employee of a management service contracted to work on site<br/>3. A "volunteer" who performs services on a voluntary and uncompensated basis<br/>4. An in-kind service provider<br/>5. An independent contractor or businessperson working at a school site. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentCohortAssociation | This association represents the Cohort(s) for which a student is designated. |
| StudentInterventionAssociation | This association indicates the students participating in an intervention. |


![Intervention Model Diagram](/path/to/domain-model.png)
#### Intervention Model  

