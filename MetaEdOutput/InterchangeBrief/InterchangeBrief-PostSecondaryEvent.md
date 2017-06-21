# Post Secondary Event Interchange

# Overview

This interchange loads student post-secondary institution events such as application, admission, and enrollment.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Post Secondary Event Interchange can be used to:  

1. Exchange information about a student's application to a postsecondary institution.
    2. Exchange student admission decisions by a postsecondary institution.
    3. Exchange a student's selection of institution when admitted to more than one.
    4. Exchange a student's enrollment in a postsecondary institution.
    5. Exchange student applications for financial aid from a postsecondary institution.
    6. Exchange degree or certification awards earned by a student at a postsecondary institution.


# Model Details

The following figure shows a logical view of the Post Secondary Event Interchange schema:  

![Post Secondary Event model details diagram](img/InterchangePostSecondaryEvent-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Post Secondary Event Interchange is composed.  

| Name | Description |
|----------|-----------------|
| PostSecondaryEvent | This entity captures significant postsecondary events during a student's high school tenure (e.g., FAFSA application or college application, acceptance, and enrollment) or during a student's enrollment at a post-secondary institution. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| StudentReference (in PostSecondaryEvent) | Required.  The student associated with the PostSecondaryEvent. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AdministrativeFundingControlDescriptor | Optional.  This descriptor holds the type of education institution as classified by its funding source (e.g., public or private). |
| EducationOrganizationIdentificationSystemDescriptor | Optional.  This descriptor defines the originating record system and code that is used for record-keeping purposes by education organizations. |


