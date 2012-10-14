/*
   14 października 201220:38:49
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
CREATE TABLE dbo.TDC_USER_STATUS
	(
	TDC_USER_STATUS_ID int NOT NULL,
	CAPTION varchar(50) NOT NULL,
	IS_ACTIVE bit NOT NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.TDC_USER_STATUS ADD CONSTRAINT
	PK_TDC_USER_STATUS PRIMARY KEY CLUSTERED 
	(
	TDC_USER_STATUS_ID
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.TDC_USER_STATUS SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
