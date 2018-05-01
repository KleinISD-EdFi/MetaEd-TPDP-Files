# Finance Interchange

# Overview

This interchange describes financial data related to an Education Organization.



Like all standard Ed-Fi interchanges, this schema references the Ed-Fi Core XSD and can be extended using the Ed-Fi Extensions Framework. See the [Ed-Fi Data Standard - Developers' Guide] for more information.


# Use Cases

The Finance Interchange can be used to:  

1. Exchange budget data for an education organization.
    2. Exchange actuals against a budget for an education organization.
    3. Exchange an education organization's payroll data.


# Model Details

The following figure shows a logical view of the Finance Interchange schema:  

![Finance model details diagram](img/InterchangeFinance-interchange-brief.png)


# Entities

The following table describes the primary entities of which the Finance Interchange is composed.  

| Name | Description |
|----------|-----------------|
| Account | This financial entity represents a funding source combined with its purpose and type of transaction. It provides a formal record of the debits and credits relating to the specific account. |
| AccountCode | The set of account codes defined by an education organization for a fiscal year. |
| Actual | This financial entity represents the sum of the financial transactions to date relating to a specific account. |
| Budget | This financial entity represents the amount of monies allocated to be spent or received by an education organization as related to a specific account. |
| ContractedStaff | This financial entity represents the sum of the financial transactions to date for contracted staff. ContractedStaff includes "contractors" or "consultants" who perform services for an agreed upon fee, or an employee of a management service contracted to work on site. |
| Payroll | This financial entity represents the sum of the financial transactions to date for employee compensation. An "employee" who performs services under the direction of the employing institution or agency, is compensated for such services by the employer and is eligible for employee benefits and wage or salary tax withholdings. |



# Extended References


This interchange includes the following Extended References.  

| Extended Reference Name | Description |
|-----------------------------|-----------------|
| EducationOrganizationReference (in Account) | Required.  Relates the account to an Education Organization. |
| EducationOrganizationReference (in AccountCode) | Required.  A reference to the education organization for which the codes are applicable. |
| StaffReference (in ContractedStaff) | Required.  Relates the staff member to the associated ContractedStaff expense. |
| StaffReference (in Payroll) | Required.  Staff member associated with the Payroll expense. |



# Descriptor Dependencies

This interchange references the following Ed-Fi Descriptors, thus requiring them to have been defined using the Descriptors interchange prior to this interchange. For more information on the Ed-Fi Descriptor Pattern, see the [Ed-Fi Data Standard - Developers' Guide].  

| Descriptor Name | Description |
|---------------------|-----------------|
| AccountClassificationDescriptor | Required.  This descriptor holds the set of account code categories defined for the education accounting system organized by account code type (e.g., fund, function, object). |


