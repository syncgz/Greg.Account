/*
   14 października 201221:21:39
   User: 
   Server: GRZESIEKPC
   Database: Greg.Homer
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.TD_CLAIM SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
ALTER TABLE dbo.TD_ROLE SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.TC_ROLE_CLAIM
	(
	TC_ROLE_CLAIM_ID int NOT NULL IDENTITY (1, 1),
	TD_ROLE_ID int NOT NULL,
	TD_CLAIM_ID int NOT NULL,
	IS_ACTIVE bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.TC_ROLE_CLAIM ADD CONSTRAINT
	PK_TC_ROLE_CLAIM PRIMARY KEY CLUSTERED 
	(
	TC_ROLE_CLAIM_ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.TC_ROLE_CLAIM ADD CONSTRAINT
	FK_TC_ROLE_CLAIM_TD_ROLE FOREIGN KEY
	(
	TD_ROLE_ID
	) REFERENCES dbo.TD_ROLE
	(
	TD_ROLE_ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.TC_ROLE_CLAIM ADD CONSTRAINT
	FK_TC_ROLE_CLAIM_TD_CLAIM FOREIGN KEY
	(
	TD_CLAIM_ID
	) REFERENCES dbo.TD_CLAIM
	(
	TD_CLAIM_ID
	) ON UPDATE  NO ACTION 
	 ON DELETE  NO ACTION 
	
GO
ALTER TABLE dbo.TC_ROLE_CLAIM SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
