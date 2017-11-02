
----------------------------------------------------------------------------------------------------------------------------
-- NOTE: This script is automatically generated using the 'XSDEnumerationsToTypeInserts.xslt' transformation.
-- The Linqpad script 'Execute-XSLT-transforms-against-Ed-Fi-Core-schema.linq' can be used to interactively regenerate the SQL script.
----------------------------------------------------------------------------------------------------------------------------
IF NOT EXISTS(SELECT * FROM extension.[AbsenceEventCategoryType])
BEGIN
INSERT INTO [extension].[AbsenceEventCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Doctor', 'Doctor', 'Doctor');
INSERT INTO [extension].[AbsenceEventCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Family', 'Family', 'Family');
INSERT INTO [extension].[AbsenceEventCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Injured', 'Injured', 'Injured');
INSERT INTO [extension].[AbsenceEventCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[AbsenceEventCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Personal', 'Personal', 'Personal');
INSERT INTO [extension].[AbsenceEventCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Sick', 'Sick', 'Sick');
INSERT INTO [extension].[AbsenceEventCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Vacation', 'Vacation', 'Vacation');
INSERT INTO [extension].[ApplicationEventResultType] (CodeValue, ShortDescription, [Description]) VALUES ('NA', 'NA', 'NA');
INSERT INTO [extension].[ApplicationEventResultType] (CodeValue, ShortDescription, [Description]) VALUES ('Advance', 'Advance', 'Advance');
INSERT INTO [extension].[ApplicationEventResultType] (CodeValue, ShortDescription, [Description]) VALUES ('Screen out', 'Screen out', 'Screen out');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Email', 'Email', 'Email');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Employee', 'Employee', 'Employee');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Internet', 'Internet', 'Internet');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Job Fair', 'Job Fair', 'Job Fair');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Print', 'Print', 'Print');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Radio', 'Radio', 'Radio');
INSERT INTO [extension].[ApplicationSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Word of Mouth', 'Word of Mouth', 'Word of Mouth');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Accepted', 'Accepted', 'Accepted');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Candidate Pool ', 'Candidate Pool ', 'Candidate Pool ');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Extended', 'Extended', 'Extended');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('In Progress', 'In Progress', 'In Progress');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Interview', 'Interview', 'Interview');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('No response', 'No response', 'No response');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Phone Interview', 'Phone Interview', 'Phone Interview');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Pre-screened', 'Pre-screened', 'Pre-screened');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Recommendations', 'Recommendations', 'Recommendations');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Rejected', 'Rejected', 'Rejected');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Sample Lesson', 'Sample Lesson', 'Sample Lesson');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('School Visit', 'School Visit', 'School Visit');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Selected', 'Selected', 'Selected');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Submitted', 'Submitted', 'Submitted');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Video', 'Video', 'Video');
INSERT INTO [extension].[ApplicationStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Withdrawn', 'Withdrawn', 'Withdrawn');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Accepted', 'Accepted', 'Accepted');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Communication', 'Communication', 'Communication');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Extended', 'Extended', 'Extended');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Interview', 'Interview', 'Interview');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('No response', 'No response', 'No response');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Phone Interview', 'Phone Interview', 'Phone Interview');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Pre-screened', 'Pre-screened', 'Pre-screened');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Recommendations', 'Recommendations', 'Recommendations');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Rejected', 'Rejected', 'Rejected');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Sample Lesson', 'Sample Lesson', 'Sample Lesson');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('School Visit', 'School Visit', 'School Visit');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Selected', 'Selected', 'Selected');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Video', 'Video', 'Video');
INSERT INTO [extension].[ApplicationEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Withdrawn', 'Withdrawn', 'Withdrawn');
INSERT INTO [extension].[BackgroundCheckStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Eligible', 'Eligible', 'Eligible');
INSERT INTO [extension].[BackgroundCheckStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Employer Review', 'Employer Review', 'Employer Review');
INSERT INTO [extension].[BackgroundCheckStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Not Eligible', 'Not Eligible', 'Not Eligible');
INSERT INTO [extension].[BackgroundCheckStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Started', 'Started', 'Started');
INSERT INTO [extension].[BackgroundCheckStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Submitted', 'Submitted', 'Submitted');
INSERT INTO [extension].[BackgroundCheckStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Waiting', 'Waiting', 'Waiting');
INSERT INTO [extension].[BackgroundCheckType] (CodeValue, ShortDescription, [Description]) VALUES ('City', 'City', 'City');
INSERT INTO [extension].[BackgroundCheckType] (CodeValue, ShortDescription, [Description]) VALUES ('County', 'County', 'County');
INSERT INTO [extension].[BackgroundCheckType] (CodeValue, ShortDescription, [Description]) VALUES ('Federal', 'Federal', 'Federal');
INSERT INTO [extension].[BackgroundCheckType] (CodeValue, ShortDescription, [Description]) VALUES ('State', 'State', 'State');
INSERT INTO [extension].[BackgroundCheckType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[EmploymentEventType] (CodeValue, ShortDescription, [Description]) VALUES ('New Hire', 'New Hire', 'New Hire');
INSERT INTO [extension].[EmploymentEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Title change', 'Title change', 'Title change');
INSERT INTO [extension].[EmploymentEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Transfer', 'Transfer', 'Transfer');
INSERT INTO [extension].[OpenStaffPositionReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('New', 'New', 'New');
INSERT INTO [extension].[OpenStaffPositionReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Replacement', 'Replacement', 'Replacement');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Family', 'Family', 'Family');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Health', 'Health', 'Health');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Leaving district', 'Leaving district', 'Leaving district');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Leaving state', 'Leaving state', 'Leaving state');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Quitting', 'Quitting', 'Quitting');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Reduction in force', 'Reduction in force', 'Reduction in force');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Retiring', 'Retiring', 'Retiring');
INSERT INTO [extension].[EmploymentSeparationReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Transfer', 'Transfer', 'Transfer');
INSERT INTO [extension].[EmploymentSeparationType] (CodeValue, ShortDescription, [Description]) VALUES ('Involuntary', 'Involuntary', 'Involuntary');
INSERT INTO [extension].[EmploymentSeparationType] (CodeValue, ShortDescription, [Description]) VALUES ('Voluntary', 'Voluntary', 'Voluntary');
INSERT INTO [extension].[FundingSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('District', 'District', 'District');
INSERT INTO [extension].[FundingSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Federal', 'Federal', 'Federal');
INSERT INTO [extension].[FundingSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[FundingSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('State', 'State', 'State');
INSERT INTO [extension].[HireStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Applied', 'Applied', 'Applied');
INSERT INTO [extension].[HireStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Hired', 'Hired', 'Hired');
INSERT INTO [extension].[HireStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Not Accepted', 'Not Accepted', 'Not Accepted');
INSERT INTO [extension].[HireStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Offered', 'Offered', 'Offered');
INSERT INTO [extension].[HireStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Recommended', 'Recommended', 'Recommended');
INSERT INTO [extension].[HireStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Rejected', 'Rejected', 'Rejected');
INSERT INTO [extension].[HireStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Withdrawn', 'Withdrawn', 'Withdrawn');
INSERT INTO [extension].[HiringSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('District', 'District', 'District');
INSERT INTO [extension].[HiringSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[HiringSourceType] (CodeValue, ShortDescription, [Description]) VALUES ('School', 'School', 'School');
INSERT INTO [extension].[InternalExternalHireType] (CodeValue, ShortDescription, [Description]) VALUES ('External', 'External', 'External');
INSERT INTO [extension].[InternalExternalHireType] (CodeValue, ShortDescription, [Description]) VALUES ('Internal', 'Internal', 'Internal');
INSERT INTO [extension].[LevelOfDegreeAwardedType] (CodeValue, ShortDescription, [Description]) VALUES ('Associates', 'Associates', 'Associates');
INSERT INTO [extension].[LevelOfDegreeAwardedType] (CodeValue, ShortDescription, [Description]) VALUES ('Bachelors', 'Bachelors', 'Bachelors');
INSERT INTO [extension].[LevelOfDegreeAwardedType] (CodeValue, ShortDescription, [Description]) VALUES ('Masters', 'Masters', 'Masters');
INSERT INTO [extension].[LevelOfDegreeAwardedType] (CodeValue, ShortDescription, [Description]) VALUES ('None', 'None', 'None');
INSERT INTO [extension].[LevelOfDegreeAwardedType] (CodeValue, ShortDescription, [Description]) VALUES ('PhD', 'PhD', 'PhD');
INSERT INTO [extension].[OpenStaffPositionEventStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Approved', 'Approved', 'Approved');
INSERT INTO [extension].[OpenStaffPositionEventStatusType] (CodeValue, ShortDescription, [Description]) VALUES ('Pending', 'Pending', 'Pending');
INSERT INTO [extension].[OpenStaffPositionEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Closed', 'Closed', 'Closed');
INSERT INTO [extension].[OpenStaffPositionEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Declared', 'Declared', 'Declared');
INSERT INTO [extension].[OpenStaffPositionEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Filled', 'Filled', 'Filled');
INSERT INTO [extension].[OpenStaffPositionEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Posted', 'Posted', 'Posted');
INSERT INTO [extension].[OpenStaffPositionEventType] (CodeValue, ShortDescription, [Description]) VALUES ('Withdrawn', 'Withdrawn', 'Withdrawn');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Radio box', 'Radio box', 'Radio box');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Checkbox', 'Checkbox', 'Checkbox');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Dropdown', 'Dropdown', 'Dropdown');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Matrix of numeric ratings', 'Matrix of numeric ratings', 'Matrix of numeric ratings');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Matrix of dropdowns', 'Matrix of dropdowns', 'Matrix of dropdowns');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Ranking', 'Ranking', 'Ranking');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Textbox', 'Textbox', 'Textbox');
INSERT INTO [extension].[QuestionFormType] (CodeValue, ShortDescription, [Description]) VALUES ('Matrix of textboxes', 'Matrix of textboxes', 'Matrix of textboxes');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Beginning of year', 'Beginning of year', 'Beginning of year');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Mid-Year', 'Mid-Year', 'Mid-Year');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('End of Year', 'End of Year', 'End of Year');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Q1', 'Q1', 'Q1');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Q2', 'Q2', 'Q2');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Q3', 'Q3', 'Q3');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Q4', 'Q4', 'Q4');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Fall', 'Fall', 'Fall');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Winter', 'Winter', 'Winter');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Spring', 'Spring', 'Spring');
INSERT INTO [extension].[StaffEvaluationPeriodType] (CodeValue, ShortDescription, [Description]) VALUES ('Summer', 'Summer', 'Summer');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Ineffective', 'Ineffective', 'Ineffective');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Minimally Effective', 'Minimally Effective', 'Minimally Effective');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Developing', 'Developing', 'Developing');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Effective', 'Effective', 'Effective');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Highly Effective', 'Highly Effective', 'Highly Effective');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Accomplished', 'Accomplished', 'Accomplished');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Skilled', 'Skilled', 'Skilled');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Demonstrated', 'Demonstrated', 'Demonstrated');
INSERT INTO [extension].[StaffEvaluationRatingLevelType] (CodeValue, ShortDescription, [Description]) VALUES ('Not Demonstrated', 'Not Demonstrated', 'Not Demonstrated');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Formal evaluation', 'Formal evaluation', 'Formal evaluation');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Formal Observation', 'Formal Observation', 'Formal Observation');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Informal Observation', 'Informal Observation', 'Informal Observation');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Formal evaluation self-rating', 'Formal evaluation self-rating', 'Formal evaluation self-rating');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Formal Observation self-rating', 'Formal Observation self-rating', 'Formal Observation self-rating');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Informal Observation self-rating', 'Informal Observation self-rating', 'Informal Observation self-rating');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Student Growth Measures', 'Student Growth Measures', 'Student Growth Measures');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Student Survey', 'Student Survey', 'Student Survey');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Student Work ', 'Student Work ', 'Student Work ');
INSERT INTO [extension].[StaffEvaluationType] (CodeValue, ShortDescription, [Description]) VALUES ('Walkthrough', 'Walkthrough', 'Walkthrough');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Administrator', 'Administrator', 'Administrator');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Applicant ', 'Applicant ', 'Applicant ');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Community', 'Community', 'Community');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('District', 'District', 'District');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Exit', 'Exit', 'Exit');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Parent', 'Parent', 'Parent');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Principal', 'Principal', 'Principal');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Student', 'Student', 'Student');
INSERT INTO [extension].[SurveyCategoryType] (CodeValue, ShortDescription, [Description]) VALUES ('Teacher', 'Teacher', 'Teacher');
INSERT INTO [extension].[TeacherPreparationProgramType] (CodeValue, ShortDescription, [Description]) VALUES ('Alternate', 'Alternate', 'Alternate');
INSERT INTO [extension].[TeacherPreparationProgramType] (CodeValue, ShortDescription, [Description]) VALUES ('Other', 'Other', 'Other');
INSERT INTO [extension].[TeacherPreparationProgramType] (CodeValue, ShortDescription, [Description]) VALUES ('Traditional', 'Traditional', 'Traditional');
INSERT INTO [extension].[WithdrawReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Displeased', 'Displeased', 'Displeased');
INSERT INTO [extension].[WithdrawReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Dropped out', 'Dropped out', 'Dropped out');
INSERT INTO [extension].[WithdrawReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Hired Elsewhere', 'Hired Elsewhere', 'Hired Elsewhere');
INSERT INTO [extension].[WithdrawReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Not Eligible', 'Not Eligible', 'Not Eligible');
INSERT INTO [extension].[WithdrawReasonType] (CodeValue, ShortDescription, [Description]) VALUES ('Unknown', 'Unknown', 'Unknown');
END
    