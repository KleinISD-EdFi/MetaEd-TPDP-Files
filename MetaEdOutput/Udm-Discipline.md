# Discipline
---
The Discipline domain is based upon the concepts of a DisciplineIncident (i.e., the violation or offense) and a DisciplineAction (i.e., the punishment).
* A DisciplineIncident represents the actions or behaviors that constitute an “offense” in violation of laws, rules, policies, or norms of behavior. The DisciplineIncident is associated with the school where the incident occurred.
* StudentDisciplineIncidentAssociation links students to DisciplineIncidents and indicates their role in that incident. When multiple students are involved in a DisciplineIncident, the StudentParticipation attribute indicates what the involvement of the student was in that incident (e.g., perpetrator, victim, witness). The Behaviors attribute is used when students have different levels of involvement, and therefore different offenses, for the same discipline incident (e.g., one might have used a knife in a fight versus another who fought without a weapon).
* A DisciplineAction represents the punitive or other actions taken against the students. One or more DisciplineActions may be applied to one DisciplineIncident (e.g., suspension plus after-school study hall). Alternatively, one DisciplineAction could have multiple Disciplines as an attribute to accomplish the same thing.



#### Discipline Model Entities

| Name        | Description  |
|-----------------|------------------|
| DisciplineAction | This event entity represents actions taken by an education organization after a disruptive event that is recorded as a discipline incident. |
| DisciplineIncident | This event entity represents an occurrence of an infraction ranging from a minor heavioral problem that disrupts the orderly functioning of a school or classroom (such as tardiness) to a criminal act that results in the involvement of a law enforcement official (such as robbery). A single event (e.g., a fight) is one incident regardless of how many perpetrators or victims are involved. Discipline incidents are events classified as warranting discipline action. |
| School |  |
| Staff |  |
| Student | This entity represents an individual for whom instruction, services, and/or care are provided in an early childhood, elementary, or secondary educational program under the jurisdiction of a school, education agency or other institution or program. A student is a person who has been enrolled in a school or other educational institution. |
| StudentDisciplineIncidentAssociation | This association indicates those students who were victims, perpetrators, witnesses, and reporters for a discipline incident. |


![Discipline Model Diagram](/path/to/domain-model.png)
#### Discipline Model  

