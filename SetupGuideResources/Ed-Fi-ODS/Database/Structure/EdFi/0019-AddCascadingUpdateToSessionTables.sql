ALTER TABLE edfi.SessionAcademicWeek
	DROP CONSTRAINT FK_SessionAcademicWeek_Session
GO
ALTER TABLE edfi.SessionGradingPeriod
	DROP CONSTRAINT FK_SessionGradingPeriod_Session
GO
ALTER TABLE edfi.Session SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE edfi.SessionGradingPeriod ADD CONSTRAINT
	FK_SessionGradingPeriod_Session FOREIGN KEY
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) REFERENCES edfi.Session
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE edfi.SessionGradingPeriod SET (LOCK_ESCALATION = TABLE)
GO
ALTER TABLE edfi.SessionAcademicWeek ADD CONSTRAINT
	FK_SessionAcademicWeek_Session FOREIGN KEY
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) REFERENCES edfi.Session
	(
	SchoolId,
	SchoolYear,
	TermDescriptorId
	) ON UPDATE  CASCADE 
	 ON DELETE  CASCADE 
	
GO
ALTER TABLE edfi.SessionAcademicWeek SET (LOCK_ESCALATION = TABLE)
GO