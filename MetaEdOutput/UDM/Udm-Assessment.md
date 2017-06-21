# Assessment
---
This domain defines a model that can be used for a wide variety of assessments, including early childhood assessment, state standardized assessments, college entrance exams, benchmark assessments, and/or course assessments. This domain contains:
* Learning Standards that drive the curriculum and the assessments
* Assessment Metadata that describe the assessment
* Student Assessment Results that follow a parallel structure of StudentAssessment, StudentObjectiveAssessment, and StudentAssessmentItem

## Learning Standards

Many states have standard learning standards that drive the curriculum and the assessments. The Common Core State Standards Initiative(www.corestandards.org) is a national initiative for standards in this area. For states that use the Common Core, or have their own standards, the assessment model has entities for LearningStandard, which represents the lowest level of skills, and LearningObjective, which represents higher level aggregation of skills, as shown below. The model supports a hierarchical taxonomy of learning skills using multiple levels of LearningObjective, which may correspond to levels of subjects, domains, or strands; the Nomenclature attribute captures the appropriate naming of these levels whereas the SuccessCriteria attribute captures the criterion that teacher and studentsuse to check for attainment of the objective.

LearningStandard may also be hierarchically organized to support the usecase that adopters of the Common Core often decompose a standard into lower level standards in their curriculum. The HasAssociatedPrerequisite association captures prerequisites for a LearningStandard as would be specified in a learning map.

![Assessment, Learning Standards Model Diagram](/path/to/subdomain-model.png)
**Assessment, Learning Standards Model**
## Assessment Metadata

Assessment metadata is information describing the assessment. The model reflects four levels of definition, designed to  accommodate a wide variety of assessment reporting, as follows:
* The AssessmentFamily is the optional identification for a family of tests. For example, a family of statewide tests might be identified for a set of subject assessments at various grade levels. If required, AssessmentFamilies may be hierarchically organized. Semantically, characteristics of an AssessmentFamily are "inherited" by the individual Assessments.
* There are two options to associate an Assessment which are mutually exclusive: by Section and by Program. For example, if an Assessment is defined to assess Common Core Standards, then the association shall be with Section, on the other hand if the Assessment is defined to assess the Developmental Domains by an Early Learning program, then the association shall be with Program.

![Assessment, Assessment Metadata Model Diagram](/path/to/subdomain-model.png)
**Assessment, Assessment Metadata Model**
## Student Assessment

Assessment represents a specific administration of an assessment. The Assessment entity contains the minimum amount of metadata required for an assessment.
* If the Assessment is associated with one or more sections, an association is made to the section(s).
* ObjectiveAssessment is the optional identification of portions of the assessment that test specific learning objectives. If required, there can be multiple levels of hierarchical ObjectiveAssessments.
* The AssessmentItem supports the optional identification of the individual questions or items on a test to be scored. Typically,the identification of AssessmentItems is done in conjunction with their mapping to LearningStandards.
* If the assessment references the common core or other state standards for LearningStandards and LearningObjectives, then the assessment metadata would reference the preloaded standards. If the assessment references its own set of LearningObjectives and/or LearningStandards, then that data would be loaded as assessment metadata. An ObjectiveAssessment may test one or more LearningObjectives, and/or may test one or more LearningStandards.

The student's assessment results follow a similar structure to the assessment metadata.
* StudentAssessment holds the overall assessment score and other information about a specific student's results for a specific assessment.The StudentAssessment is associated with a specific student.
* StudentObjectiveAssessment optionally holds the student's score for individually scored results for a specific LearningObjective. If the assessment metadata includes ObjectiveAssessments, then there would be corresponding StudentObjectiveAssessments for each student.
* StudentAssessmentItem optionally holds the student's score forindividual AssessmentItems. If the assessment metadata includesAssessmentItems, then there would be corresponding StudentAssessmentItems for each student.

![Assessment, Student Assessment Model Diagram](/path/to/subdomain-model.png)
**Assessment, Student Assessment Model**


#### Assessment Model Entities

| Name        | Description  |
|-----------------|------------------|
| Assessment |  |
| AssessmentFamily | This entity represents a logical grouping or association of assessments that share a common purpose, heritage or content standard. There may be hierarchiesof assessment families, characteristics (e.g., Academic Subject) specified for assessment families, by convention, are inherited by the Assessments associated with the AssessmentFamily. |
| AssessmentItem | This entity represents one of many single measures that make up an assessment. |
| LearningObjective | This entity represents identified learning objectives for courses in specific grades. |
| LearningStandard | This entity is a sub-element of a learning objective consisting of a precise statement of the expectation of a student's proficiency. |
| ObjectiveAssessment | This entity represents subtests that assess specific learning objectives. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| Section | This entity represents a setting in which organized instruction of course content is provided, in-person or otherwise, to one or more students for a given period of time. A course offering may be offered to more than one section. |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentAssessment | This entity represents the analysis or scoring of a student's response on an assessment. The analysis results in a value that represents a student's performance on a set of items on a test. |
| StudentAssessmentItem | This entity represents the student's response to an assessment item and the item-level scores such as correct, incorrect, or met standard. |
| StudentObjectiveAssessment | This entity holds the score and or performance levels earned for an ObjectiveAssessment by a student. |


![Assessment Model Diagram](/path/to/domain-model.png)
#### Assessment Model  

