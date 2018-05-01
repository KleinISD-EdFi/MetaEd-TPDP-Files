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
| EducationOrganizationFacts | Selective fact(s) about the education organization used for comparative analysis. |
| TeacherPreparationProvider | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| TeacherPreparationProviderProgram | This entity represents information regarding a teacher preparation provider program. |
| University | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
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
| CommunityOrganization | This entity represents an administrative unit at the state level which exists primarily to operate local community providers. |
| CommunityProvider | This entity represents an educational organization that includes staff and students who participate in classes and educational activity groups. |
| CommunityProviderLicense | The legal document held by the CommunityProvider that authorizes the holder to perform certain functions and or services. |
| PostSecondaryInstitution | An organization that provides educational programs for individuals who have completed or otherwise left educational programs in secondary school(s). |



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
| AcademicSubjectDescriptor | Required.  This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AddressTypeDescriptor | Required.  The type of address listed for an individual or organization. |
| AdministrativeFundingControlDescriptor | Optional.  This descriptor holds the type of education institution as classified by its funding source (e.g., public or private). |
| CareerPathwayDescriptor | Optional.  The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator. |
| CharterApprovalAgencyTypeDescriptor | Optional.  The type of agency that approved the establishment or continuation of a charter school. |
| CharterStatusDescriptor | Optional.  The category of charter school. For example: School Charter, Open Enrollment Charter. |
| CompetencyLevelDescriptor | Optional.  This descriptor defines various levels for assessed competencies. |
| CountryDescriptor | Optional.  This descriptor defines the name and code of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes. |
| CourseDefinedByDescriptor | Optional.  Specifies whether the course was defined by the state education agency, local education agency, school, or national organization. |
| CourseGPAApplicabilityDescriptor | Optional.  An indicator of whether or not this course being described is included in the computation of the student's Grade Point Average, and if so, if it is weighted differently than regular courses. |
| CourseIdentificationSystemDescriptor | Required.  This descriptor defines a standard code that identifies the organization of subject matter and related learning experiences provided for the instruction of students. |
| CourseLevelCharacteristicDescriptor | Optional.  The item for indication of the nature and difficulty of instruction: Remedial, Basic, Honors, Ap, IB, Dual Credit, CTE. etc. |
| CreditTypeDescriptor | Optional.  The type of credits or units of value awarded for the completion of a course. |
| EducationOrganizationCategoryDescriptor | Required.  The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state. |
| EducationOrganizationIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes by education organizations. |
| FederalLocaleCodeDescriptor | Optional.  (TPDP Extension) The descriptor holds the federal locale code applicable to an education organization. |
| GradeLevelDescriptor | Required.  This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| GunFreeSchoolsActReportingStatusDescriptor | Optional.  An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921. |
| InstitutionTelephoneNumberTypeDescriptor | Optional.  The type of communication number listed for an organization. |
| InternetAccessDescriptor | Optional.  The type of Internet access available. |
| LicenseStatusDescriptor | Optional.  This descriptor defines the license statuses. |
| LicenseTypeDescriptor | Required.  This descriptor defines the type of a license. |
| LocalEducationAgencyCategoryDescriptor | Required.  The category of local education agency/district. For example: Independent or Charter. |
| MagnetSpecialProgramEmphasisSchoolDescriptor | Optional.  A school that has been designed to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing or eliminating racial isolation; and/or to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language). |
| MediumOfInstructionDescriptor | Optional.  The media through which teachers provide instruction to students and students and teachers communicate about instructional matters. |
| NetworkPurposeDescriptor | Required.  The purpose(s) of the network, e.g. shared services, collective procurement, etc. |
| OperationalStatusDescriptor | Optional.  The current operational status of the education organization (e.g., active, inactive). |
| PostSecondaryInstitutionLevelDescriptor | Optional.  A classification of whether a post-secondary institution's highest level of offering is a program of 4 years or higher (4 year), 2 but less than 4 years (2 year) or less than 2 years. |
| ProgramCharacteristicDescriptor | Optional.  This descriptor defines important characteristics of the Program, such as categories or particular indications. |
| ProgramSponsorDescriptor | Optional.  Ultimate and intermediate providers of funds for a particular educational or service program or activity or for an individual's participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Org). |
| ProgramTypeDescriptor | Required.  The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. |
| ProviderCategoryDescriptor | Required.  This descriptor holds the category of the provider. |
| ProviderProfitabilityDescriptor | Optional.  This descriptor indicates the profitability status of the provider. |
| ProviderStatusDescriptor | Required.  This descriptor defines the status of the provider. |
| SchoolCategoryDescriptor | Optional.  The category of school. For example: High School, Middle School, Elementary School. |
| SchoolChoiceImplementStatusDescriptor | Optional.  An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA, as amended. |
| SchoolStatusDescriptor | Optional.  The descriptor holds the status of a school e.g. priority or focus. |
| SchoolTypeDescriptor | Optional.  The type of education institution as classified by its primary focus. |
| ServiceDescriptor | Optional.  This descriptor defines the services provided by an education organization to populations of students associated with a program. |
| StateAbbreviationDescriptor | Required.  The abbreviation for the state (within the United States) or outlying area in which an address is located. |
| TeacherPreparationProgramTypeDescriptor | Optional.  The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.). |
| TitleIPartASchoolDesignationDescriptor | Optional.  Denotes the Title I Part A designation for the school. |
| TPPDegreeTypeDescriptor | Required.  The descriptor holds the degree that a teacher candidate accomplishes. |
| TPPProgramPathwayDescriptor | Optional.  The descriptor holds the program pathways available at TPP's. |
| ValueTypeDescriptor | Optional.  The type (i.e. actual or projected) of value. |


