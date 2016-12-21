# Education Organization
---
The Education Organization domain defines the organizational structure and hierarchy of education organizations. The entity EducationOrganization serves as an abstraction for common attributes and associations. Throughout the model, if there is an association to/from an EducationOrganization the meaning is that the association may be associated with two or more types of organizations. The model supports the following structure:
* StateEducationAgency is an optional entity for the state department of education or equivalent.
* EducationServiceCenter is an optional entity for a regional organization between the district and state level.
* LocalEducationAgency represents a school district or charter management organization.
* School represents the point of education instruction.
* EducationOrganizationNetwork represents a self-organized membership network of peer-level schools or LEAs intended to provide shared services or collective purchasing.
* AccountabilityRating holds education organization ratings assigned by an accountability system.



#### Education Organization Model Entities

| Name        | Description  |
|-----------------|------------------|
| AccountabilityRating | An accountability rating for a school or district. |
| EducationOrganization | This entity represents any public or private institution, organization, or agency that provides instructional or support services to students or staff at any level. |
| EducationOrganizationNetwork | This entity is a self-organized membership network of peer-level education organizations intended to provide shared services or collective procurement. |
| EducationOrganizationNetworkAssociation | Properties of the association between the EducationOrganization and its network(s). |
| EducationServiceCenter | This entity represents a regional, multi-services public agency authorized by state law to develop, manage and provide services, programs, or other support options (e.g., construction, food services, and technology services) to LEAs. |
| FeederSchoolAssociation | The association from feeder school to the receiving school. |
| LocalEducationAgency | This entity represents an administrative unit at the local level which exists primarily to operate schools or to contract for educational services. It includes school districts, charter schools, charter management organizations, or other local administrative organizations. |
| School | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| StateEducationAgency | This entity represents the agency of the state charged with the primary responsibility for coordinating and supervising public instruction, including the setting of standards for elementary and secondary instructional programs. |


![Education Organization Model Diagram](/path/to/domain-model.png)
#### Education Organization Model  

