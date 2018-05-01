# Descriptors Interchange

# Overview

Descriptors provide states, districts, vendors, and other users of the Ed-Fi solution with the flexibility to use their own enumerations and code sets without modifying the Ed-Fi core schema.

The Descriptor interchange is used to describe metadata about the descriptors and their structure. It is used to define enumeration vocabularies that are not "fixed" within the XML schema, but are loaded in XML files and linked to their source.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Descriptors Interchange can be used to:  

1. Exchange state, district, or vendor code sets in a way that Ed-Fi technology implementations can understand the semantics
2. Exchange code or enumeration values that change over time, but where longitudinal analysis is still important


# Model Details

The following figure shows a logical view of the Descriptors Interchange schema:  

![Descriptors model details diagram](img/InterchangeDescriptors-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Descriptors Interchange is composed.  

| Name | Description |
|----------|-----------------|
| AbsenceEventCategoryDescriptor | This descriptor describes the type of absence |
| AcademicHonorCategoryDescriptor | A designation of the type of academic distinctions earned by or awarded to the student. |
| AcademicSubjectDescriptor | This descriptor holds the description of the content or subject area (e.g., arts, mathematics, reading, stenography, or a foreign language). |
| AccommodationDescriptor | This descriptor defines variations used in how an assessment is presented or taken. |
| AccountClassificationDescriptor | This descriptor holds the set of account code categories defined for the education accounting system organized by account code type (e.g., fund, function, object). |
| AchievementCategoryDescriptor | This descriptor defines the category of achievement attributed to the learner. |
| AdditionalCreditTypeDescriptor | The type of additional credits or units of value awarded for the completion of a course. |
| AddressTypeDescriptor | The type of address listed for an individual or organization. |
| AdministrationEnvironmentDescriptor | The environment in which the test was administered. For example:<br/>    Electronic<br/>    Classroom<br/>    Testing Center<br/>    ... |
| AdministrativeFundingControlDescriptor | This descriptor holds the type of education institution as classified by its funding source (e.g., public or private). |
| AssessmentCategoryDescriptor | This descriptor holds the category of an assessment based on format and content. |
| AssessmentIdentificationSystemDescriptor | This descriptor holds a coding scheme that is used for identification and record-keeping purposes by schools, social services or other agencies to refer to an assessment. |
| AssessmentItemCategoryDescriptor | Category or type of the assessment item (e.g., Multiple Choice, Analytic, Prose). |
| AssessmentItemResultDescriptor | The analyzed result of a student's response to an assessment item.. For example:<br/>    Correct<br/>    Incorrect<br/>    Met standard<br/>    ... |
| AssessmentPeriodDescriptor | This descriptor holds the period of time window in which an assessment is supposed to be administered (e.g., Beginning of Year, Middle of Year, End of Year). |
| AssessmentReportingMethodDescriptor | This descriptor defines the method that the instructor of the class uses to report the performance and achievement of all students. It may be a qualitative method such as individualized teacher comments or a quantitative method such as a letter or a numerical grade. |
| AttemptStatusDescriptor | This descriptor describes a student's attempt status for a section. |
| AttendanceEventCategoryDescriptor | This descriptor holds the category of the attendance event (e.g., tardy). The map to known enumeration values is required. |
| BehaviorDescriptor | This descriptor holds the categories of behavior describing a discipline incident. |
| CalendarEventDescriptor | This descriptor holds the types of scheduled or unscheduled event for the day (e.g., Instructional day, Teacher only day, Holiday, Make-up day, Weather day, Student late arrival/early dismissal day). |
| CalendarTypeDescriptor | This descriptor defines the calendar types. |
| CareerPathwayDescriptor | The career cluster or pathway representing the career path of the Vocational/Career Tech concentrator. |
| CharterApprovalAgencyTypeDescriptor | The type of agency that approved the establishment or continuation of a charter school. |
| CharterStatusDescriptor | The category of charter school. For example: School Charter, Open Enrollment Charter. |
| CitizenshipStatusDescriptor | An indicator of whether or not the person is a U.S. citizen. |
| ClassroomPositionDescriptor | This descriptor defines the type of position the staff member holds in a specific class/section. |
| CohortScopeDescriptor | The scope of cohort (e.g., school, district, classroom). |
| CohortTypeDescriptor | The type of the cohort (e.g., academic intervention, classroom breakout). |
| CohortYearTypeDescriptor | The enumeration items for the set of cohort years. |
| CompetencyLevelDescriptor | This descriptor defines various levels for assessed competencies. |
| ContactTypeDescriptor | This descriptor defines the set of contact types. |
| ContentClassDescriptor | The predominate type or kind characterizing the learning resource. |
| ContinuationOfServicesReasonDescriptor | In the Migrant Education program, a provision allows continuation of services after a child is no longer considered migratory for certain reasons. This descriptor holds the reasons prescribed in the statute. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| CostRateDescriptor | The rate by which a cost applies (e.g. $1 per student). |
| CountryDescriptor | This descriptor defines the name and code of the country. It is strongly recommended that entries use only ISO 3166 2-letter country codes. |
| CourseAttemptResultDescriptor | The result from the student's attempt to take the course, for example:<br/>    Pass<br/>    Fail<br/>    Incomplete<br/>    Withdrawn |
| CourseDefinedByDescriptor | Specifies whether the course was defined by the state education agency, local education agency, school, or national organization. |
| CourseGPAApplicabilityDescriptor | An indicator of whether or not this course being described is included in the computation of the student's Grade Point Average, and if so, if it is weighted differently than regular courses. |
| CourseIdentificationSystemDescriptor | This descriptor defines a standard code that identifies the organization of subject matter and related learning experiences provided for the instruction of students. |
| CourseLevelCharacteristicDescriptor | The item for indication of the nature and difficulty of instruction: Remedial, Basic, Honors, Ap, IB, Dual Credit, CTE. etc. |
| CourseRepeatCodeDescriptor | Indicates that an academic course has been repeated by a student and how that repeat is to be computed in the student's academic grade average. |
| CredentialFieldDescriptor | This descriptor defines the fields of certification that the state education agency offers to teachers. |
| CredentialTypeDescriptor | An indication of the category of credential an individual holds. |
| CreditTypeDescriptor | The type of credits or units of value awarded for the completion of a course. |
| CurriculumUsedDescriptor | The type of curriculum used in an early learning classroom or group. |
| DeliveryMethodDescriptor | The way in which an intervention was implemented: individual, small group, whole class, or whole school. |
| DiagnosisDescriptor | This descriptor defines diagnoses that interventions are intended to target. |
| DiplomaLevelDescriptor | The level of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements. |
| DiplomaTypeDescriptor | The type of diploma/credential that is awarded to a student in recognition of his/her completion of the curricular requirements. |
| DisabilityDescriptor | This descriptor defines a student's impairment. |
| DisabilityDesignationDescriptor | The type of disability designation (e.g., IDEA, Section 504). |
| DisabilityDeterminationSourceTypeDescriptor | The source that provided the disability determination. |
| DisciplineDescriptor | This descriptor defines the type of action or removal from the classroom used to discipline the student involved as a perpetrator in a discipline incident. |
| DisciplineActionLengthDifferenceReasonDescriptor | Indicates the reason for the difference, if any, between the official and actual lengths of a student's disciplinary assignment. |
| EducationalEnvironmentDescriptor | The setting in which a child receives education and related services. |
| EducationOrganizationCategoryDescriptor | The classification of the education agency within the geographic boundaries of a state according to the level of administrative and operational control granted by the state. |
| EducationOrganizationIdentificationSystemDescriptor | This descriptor defines the originating record system and code that is used for record-keeping purposes by education organizations. |
| EducationPlanDescriptor | The type of education plan(s) the student is following, if appropriate. For example:<br/>    Special education<br/>    Vocational. |
| ElectronicMailTypeDescriptor | The type of email listed for an individual or organization. |
| EmploymentStatusDescriptor | This descriptor defines the type of employment or contract. |
| EntryGradeLevelReasonDescriptor | The primary reason as to why a staff member determined that a student should be promoted or not (or be demoted) at the end of a given school term. |
| EntryTypeDescriptor | This descriptor defines the process by which a student enters a school during a given academic session. |
| EventCircumstanceDescriptor | An unusual event occurred during the administration of the assessment. This could include fire alarm, student became ill, etc. |
| ExitWithdrawTypeDescriptor | This descriptor defines the circumstances under which the student exited from membership in an educational institution. |
| FederalLocaleCodeDescriptor | (TPDP Extension) The descriptor holds the federal locale code applicable to an education organization. |
| GradebookEntryTypeDescriptor | The type of the gradebook entry; for example, homework, assignment, quiz, unit test, oral presentation, etc. |
| GradeLevelDescriptor | This descriptor defines the set of grade levels. The map to known Ed-Fi enumeration values is required. |
| GradeTypeDescriptor | The type of grade in a report card or transcript (e.g., Final, Exam, Grading Period). |
| GradingPeriodDescriptor | This descriptor defines the name of the period for which grades are reported. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| GraduationPlanTypeDescriptor | This descriptor defines the set of graduation plan types. |
| GunFreeSchoolsActReportingStatusDescriptor | An indication of whether the school or local education agency (LEA) submitted a Gun-Free Schools Act (GFSA) of 1994 report to the state, as defined by Title 18, Section 921. |
| HomelessPrimaryNighttimeResidenceDescriptor | The primary nighttime residence of the student at the time the student is identified as homeless. |
| HomelessProgramServiceDescriptor | This descriptor defines the services provided by an education organization to populations of students associated with a homeless program. |
| IdentificationDocumentUseDescriptor | Identifies the type of use given to an identification document. |
| IncidentLocationDescriptor | Identifies where the incident occurred and whether or not it occurred on school property. |
| InstitutionTelephoneNumberTypeDescriptor | The type of communication number listed for an organization. |
| InteractivityStyleDescriptor | The predominate mode of learning supported by the learning resource. Acceptable values are active, expositive, or mixed. |
| InternetAccessDescriptor | The type of Internet access available. |
| InterventionClassDescriptor | The way in which an intervention is used: curriculum, supplement, or practice. |
| InterventionEffectivenessRatingDescriptor | An intervention demonstrates effectiveness if the research has shown that the program caused an improvement in outcomes. Rating Values: positive effects, potentially positive effects, mixed effects, potentially negative effects, negative effects, and no discernible effects. |
| LanguageDescriptor | This descriptor defines the language(s) that are spoken or written. It is strongly recommended that entries use only ISO 639-3 language codes: for CodeValue, use the 3 character code; for ShortDescription and Description use the full language name. |
| LanguageInstructionProgramServiceDescriptor | This descriptor defines the services provided by an education organization to populations of students associated with a language instruction program. |
| LanguageUseDescriptor | The category denoting how a language is used. |
| LearningStandardCategoryDescriptor | An additional classification of the type of a specific learning standard. |
| LevelOfEducationDescriptor | This descriptor defines the different levels of education achievable. |
| LicenseStatusDescriptor | This descriptor defines the license statuses. |
| LicenseTypeDescriptor | This descriptor defines the type of a license. |
| LimitedEnglishProficiencyDescriptor | This descriptor defines the indications that the student has been identified as limited English proficient by the Language Proficiency Assessment Committee (LPAC), or English proficient. The mapping of descriptor values to known Ed-Fi enumeration values is required. |
| LocalEducationAgencyCategoryDescriptor | The category of local education agency/district. For example: Independent or Charter. |
| MagnetSpecialProgramEmphasisSchoolDescriptor | A school that has been designed to attract students of different racial/ethnic backgrounds for the purpose of reducing, preventing or eliminating racial isolation; and/or to provide an academic or social focus on a particular theme (e.g., science/math, performing arts, gifted/talented, or foreign language). |
| MediumOfInstructionDescriptor | The media through which teachers provide instruction to students and students and teachers communicate about instructional matters. |
| MethodCreditEarnedDescriptor | The method the credits were earned, for example:  Classroom, Examination, Transfer. |
| MigrantEducationProgramServiceDescriptor | This descriptor defines the services provided by an education organization to populations of students associated with a migrant education program. |
| MonitoredDescriptor | This descriptor defines monitorization statuses for students who are no longer receiving language instruction program services. |
| NeglectedOrDelinquentProgramDescriptor | This descriptor defines the type of program under ESEA Title I, Part D, Subpart 1 (state programs) or Subpart 2 (LEA). |
| NeglectedOrDelinquentProgramServiceDescriptor | This descriptor defines the services provided by an education organization to populations of students associated with a neglected or delinquent program. |
| NetworkPurposeDescriptor | The purpose(s) of the network, e.g. shared services, collective procurement, etc. |
| OldEthnicityDescriptor | Previous definition of Ethnicity combining Hispanic/Latino and Race. |
| OperationalStatusDescriptor | The current operational status of the education organization (e.g., active, inactive). |
| OtherNameTypeDescriptor | The types of alternate names for a person. |
| ParticipationDescriptor | This descriptor defines participation in a yearly English language assessment. |
| PerformanceBaseConversionDescriptor | Defines standard levels of competency or performance that can be used for dashboard visualizations: advanced, proficient, basic, and below basic. |
| PerformanceLevelDescriptor | This descriptor defines various levels or thresholds for performance on the assessment. |
| PersonalInformationVerificationDescriptor | The evidence presented to verify one's personal identity; for example: driver's license, passport, birth certificate, etc. |
| PopulationServedDescriptor | The type of students the Section is offered and tailored to. |
| PostingResultDescriptor | Indication of whether the position was filled or retired without filling. |
| PostSecondaryEventCategoryDescriptor | A code describing the type of post-secondary event (e.g., college application or acceptance). |
| PostSecondaryInstitutionLevelDescriptor | A classification of whether a post-secondary institution's highest level of offering is a program of 4 years or higher (4 year), 2 but less than 4 years (2 year) or less than 2 years. |
| ProficiencyDescriptor | This descriptor defines proficiency levels for a yearly English language assessment. |
| ProgramAssignmentDescriptor | This descriptor defines the name of the education program for which a teacher is assigned to a school. |
| ProgramCharacteristicDescriptor | This descriptor defines important characteristics of the Program, such as categories or particular indications. |
| ProgramSponsorDescriptor | Ultimate and intermediate providers of funds for a particular educational or service program or activity or for an individual's participation in the program or activity (e.g., Federal, State, ESC, District, School, Private Org). |
| ProgramTypeDescriptor | The formal name of the program of instruction, training, services, or benefits available through federal, state, or local agencies. |
| ProgressDescriptor | This descriptor defines yearly progress or growth from last year’s assessment. |
| ProgressLevelDescriptor | This descriptor defines progress measured from pre- to post-test. |
| ProviderCategoryDescriptor | This descriptor holds the category of the provider. |
| ProviderProfitabilityDescriptor | This descriptor indicates the profitability status of the provider. |
| ProviderStatusDescriptor | This descriptor defines the status of the provider. |
| PublicationStatusDescriptor | The publication status of the document (i.e., Adopted, Draft, Published, Deprecated, Unknown). |
| RaceDescriptor | The enumeration items defining the racial categories which most clearly reflects the individual's recognition of his or her community or with which the individual most identifies. |
| ReasonExitedDescriptor | This descriptor defines the reason a student exited a program. |
| ReasonNotTestedDescriptor | The primary reason student is not tested. For example:<br/>    Absent<br/>    Refusal by parent<br/>    Refusal by student<br/>    Medical waiver<br/>    Illness<br/>    Disruptive behavior<br/>    LEP Exempt<br/>    '... |
| RecognitionTypeDescriptor | The nature of recognition given to the student for accomplishments in a co-curricular, or extra-curricular activity. |
| RelationDescriptor | The nature of an individual's relationship to a student. |
| RepeatIdentifierDescriptor | An indication as to whether a student has previously taken a given course. |
| ReporterDescriptionDescriptor | This descriptor defines the type of individual who reported an incident. |
| ResidencyStatusDescriptor | This descriptor defines indications of the location of a person's legal residence relative to (within or outside of) the boundaries of the public school attended and its administrative unit. |
| ResponseIndicatorDescriptor | Indicator of the response.  For example:<br/>    Nonscorable response<br/>    Ineffective response<br/>    Effective response<br/>    Partial response<br/>    ... |
| ResponsibilityDescriptor | This descriptor defines types of responsibility an education organization may have for a student (e.g., accountability, attendance, funding). |
| RestraintEventReasonDescriptor | The items of categorization of the circumstances or reason for the restraint. |
| ResultDatatypeTypeDescriptor | The results can be expressed as a number, percentile, range, level, etc. |
| RetestIndicatorDescriptor | Indicator if the test was retaken.  For example:<br/>    Primary administration<br/>    First retest<br/>    Second retest<br/>    ... |
| SchoolCategoryDescriptor | The category of school. For example: High School, Middle School, Elementary School. |
| SchoolChoiceImplementStatusDescriptor | An indication of whether the LEA was able to implement the provisions for public school choice under Title I, Part A, Section 1116 of ESEA, as amended. |
| SchoolFoodServiceProgramServiceDescriptor | This descriptor defines the services provided by an education organization to populations of students associated with a school food service program. |
| SchoolTypeDescriptor | The type of education institution as classified by its primary focus. |
| SectionCharacteristicDescriptor | This descriptor defines characteristics of a Section, such as whether attendance is taken and the Section is graded. |
| SeparationDescriptor | Type of employment separation; for example:  Voluntary separation, Involuntary separation, Mutual agreement. Other, etc. |
| SeparationReasonDescriptor | This descriptor defines the reasons for terminating the employment. |
| ServiceDescriptor | This descriptor defines the services provided by an education organization to populations of students associated with a program. |
| SexDescriptor | A person's gender. |
| SpecialEducationProgramServiceDescriptor | This descriptor defines the services provided by an education organization to populations of students associated with a special education program. |
| SpecialEducationSettingDescriptor | This descriptor defines the major instructional setting (more than 50 percent of a student's special education program). |
| StaffClassificationDescriptor | This descriptor defines an individual's title of employment, official status or rank. |
| StaffIdentificationSystemDescriptor | This descriptor defines the originating record system and code that is used for record-keeping purposes of the staff. |
| StaffLeaveEventCategoryDescriptor | A code describing the type of the leave event. |
| StateAbbreviationDescriptor | The abbreviation for the state (within the United States) or outlying area in which an address is located. |
| StudentCharacteristicDescriptor | This descriptor captures important characteristics of the student's environment or situation. Generally used for non-program-based student characteristics. |
| StudentIdentificationSystemDescriptor | This descriptor defines the originating record system and code that is used for record-keeping purposes of the student. |
| StudentParticipationCodeDescriptor | The role or type of participation of a student in a discipline incident; for example: Victim, Perpetrator, Witness, Reporter. |
| TeachingCredentialDescriptor | This descriptor defines an indication of the category of a legal document giving authorization to perform teaching assignment services. |
| TeachingCredentialBasisDescriptor | An indication of the pre-determined criteria for granting the teaching credential that an individual holds. |
| TechnicalSkillsAssessmentDescriptor | This descriptor defines the results of technical skills assessment aligned with industry recognized standards. |
| TelephoneNumberTypeDescriptor | The type of communication number listed for an individual. |
| TermDescriptor | This descriptor defines the term of a session during the school year (e.g., Fall Semester). |
| TitleIPartAParticipantDescriptor | An indication of the type of Title I program, if any, in which the student is participating and served. |
| TitleIPartASchoolDesignationDescriptor | Denotes the Title I Part A designation for the school. |
| TribalAffiliationDescriptor | An American Indian tribe with which an individual is affiliated. |
| VisaDescriptor | An indicator of a non-U.S. citizen's Visa type. |
| WeaponDescriptor | This descriptor defines the types of weapon used during an incident. |
| AidTypeDescriptor | This descriptor defines the classification of financial aid awarded to a person for the academic term/year. |
| BackgroundCheckStatusDescriptor | This descriptor holds the  status of the background check (e.g., pending, under investigation, offense(s) found, etc.). |
| BackgroundCheckTypeDescriptor | This descriptor defines the classification of the background check a person receives. |
| BoardCertificationTypeDescriptor | The descriptor holds the type of board certification awarded to an individual. |
| CertificationExamTypeDescriptor | The descriptor holds the type of certification exam that was taken. |
| EnglishLanguageExamDescriptor | Indicates that a person passed, failed, or did not take an English Language assessment (e.g., TOEFFL). |
| FieldworkTypeDescriptor | The descriptor holds the type of fieldwork being executed by a teacher candidate. |
| GenderDescriptor | The gender with with a person associates. |
| LevelOfDegreeAwardedDescriptor | The descriptor holds the level of degree awarded by the teacher prep program to the person (e.g., Certificate Only, Bachelor's, Master's, etc.). |
| LevelTypeDescriptor | The descriptor holds the level (e.g., 1, 2, 3, etc.) of the rubric at which the data is captured. |
| PerformanceMeasureTypeDescriptor | The descriptor holds the type (e.g., walkthrough, summative) of observation conducted. |
| PreviousCareerDescriptor | The descriptor holds the previous career of an individual. |
| ProfessionalDevelopmentOfferedByDescriptor | The descriptor holds the organization that a professional development is offered by. |
| ProgramGatewayDescriptor | The descriptor holds the program gateway that is associated with continuation in a program. |
| QuestionFormDescriptor | The form of question: 1) Radio box: multiple choice, single selection; 2) Checkbox: Multiple choice, multiple selection; 3) Dropdown: multiple choice, single selection; 4) Matrix, numeric rating scale; 5) Matrix of dropdowns; 6) Ranking; 7) Single textbox; 8) Matrix of text boxes. |
| RubricTypeDescriptor | The descriptor holds the rubric types. |
| SalaryTypeDescriptor | The descriptor holds the type of salary that a staff member is receiving. |
| SchoolStatusDescriptor | The descriptor holds the status of a school e.g. priority or focus. |
| StudentGrowthTypeDescriptor | Identification of the type of score that was used to determine student growth |
| SurveyCategoryDescriptor | The descriptor holds the category or type of survey. |
| TeacherCandidateCharacteristicDescriptor | The characteristic designated for the TeacherCandidate. |
| TeacherPreparationProgramTypeDescriptor | The descriptor holds the type of teacher prep program (e.g., college, alternative, TFA, etc.). |
| ThemeDescriptor | The descriptor holds the theme of the specified level of the rubric. |
| TPPDegreeTypeDescriptor | The descriptor holds the degree that a teacher candidate accomplishes. |
| TPPProgramPathwayDescriptor | The descriptor holds the program pathways available at TPP's. |
| ValueTypeDescriptor | The type (i.e. actual or projected) of value. |



# Extended References


This interchange contains no external references.


