# Education Organization Interchange

# Overview

The Education Organization interchange describes education organizations, their structure, and their education offerings. It is used to exchange education organization information about a state's schools, local education agencies (LEAs), education service centers (ESCs), and others.

In addition, the interchange (optionally) supports the definition of the education offerings provided by schools, specifically the available courses and alternative/supplemental programs offered. Courses in this context refer to "course catalog" information. As such, this interchange may define current as well as past courses.

Locations and ClassPeriods can be re-used across Schools, if they are the same, using LocationReference and ClassPeriodReference within other domain entities in the interchange.


Accountability Ratings can be assigned to a school or LEA through this interchange.


Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Education Organization Interchange can be used to:  

1. Exchange a state's full or partial hierarchy of education organizations.
2. Exchange new or updated education organization information (e.g., change of address).
3. Exchange available courses.
4. Exchange available program offerings.
5. Exchange accountability rating information.


# Model Details

The following figure shows a logical view of the Education Organization Interchange schema:  

![Education Organization model details diagram](img/InterchangeEducationOrganization-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Education Organization Interchange is composed.  

| Name | Description |
|----------|-----------------|
| StateEducationAgency | This entity represents the agency of the state charged with the primary responsibility for coordinating and supervising public instruction, including the setting of standards for elementary and secondary instructional programs. |
| EducationServiceCenter | This entity represents a regional, multi-services public agency authorized by state law to develop, manage and provide services, programs, or other support options (e.g., construction, food services, and technology services) to LEAs. |
| FeederSchoolAssociation | The association from feeder school to the receiving school. |
| LocalEducationAgency | This entity represents an administrative unit at the local level which exists primarily to operate schools or to contract for educational services. It includes school districts, charter schools, charter management organizations, or other local administrative organizations. |
| School | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| Location | This entity represents the physical space where students gather for a particular class/section. The Location may be an indoor or outdoor area designated for the purpose of meeting the educational needs of students. |
| ClassPeriod | This entity represents the designation of a regularly scheduled series of class meetings at designated times and days of the week. |
| Course | This educational entity represents the organization of subject matter and related learning experiences provided for the instruction of students on a regular or systematic basis. |
| Program | This entity represents any program designed to work in conjunction with, or as a supplement to, the main academic program. Programs may provide instruction, training, services, or benefits through federal, state, or local agencies. Programs may also include organized extracurricular activities for students. |
| AccountabilityRating | An accountability rating for a school or district. |
| EducationOrganizationPeerAssociation | The association from an education organization to its peers. |
| EducationOrganizationNetwork | This entity is a self-organized membership network of peer-level education organizations intended to provide shared services or collective procurement. |
| EducationOrganizationNetworkAssociation | Properties of the association between the EducationOrganization and its network(s). |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| LearningObjectiveReference (in Course) | Optional.  Learning Objectives to be mastered in the course. |
| LearningObjectiveReference (in Program) | Optional.  References the LearningObjective(s) with which the Program is associated. |
| LearningStandardReference (in Course) | Optional.  Learning Standard(s) to be taught by the course. |
| LearningStandardReference (in Program) | Optional.  LearningStandard followed by this program. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AcademicSubjectDescriptor | Optional.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AdministrativeFundingControlDescriptor | Optional.  This descriptor holds the type of education institution as classified by its funding source (e.g., public or private). |
| CompetencyLevelDescriptor | Optional.  This descriptor defines various levels for assessed competencies. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. |
| CourseIdentificationSystemDescriptor | Required.  This descriptor defines a standard code that identifies the organization of subject matter and related learning experiences provided for the instruction of students. |
| EducationOrganizationIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes by education organizations. |
| FederalLocaleCodeDescriptor | Optional.  (TPDP Extension) The descriptor holds the federal locale code applicable to an education organization. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| ProgramCharacteristicDescriptor | Optional.  This descriptor defines important characteristics of the Program, such as categories or particular indications. |
| SchoolStatusDescriptor | Optional.  The descriptor holds the status of a school e.g. priority or focus. |
| ServiceDescriptor | Optional.  This descriptor defines the services provided by an education organization to populations of students associated with a program. |


