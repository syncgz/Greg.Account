USE [Greg.Account]
GO

INSERT INTO [dbo].[TD_APPLICATION]
           ([NAME]
           ,[DESCRIPTION]
           ,[IS_ACTIVE]
           ,[GUID])
     VALUES
           ('Homer'
           ,''
           ,1
           ,NEWID())
GO

INSERT INTO [dbo].[TDC_USER_STATUS]([TDC_USER_STATUS_ID],[CAPTION],[IS_ACTIVE])VALUES(1,'OPEN',1);
INSERT INTO [dbo].[TDC_USER_STATUS]([TDC_USER_STATUS_ID],[CAPTION],[IS_ACTIVE])VALUES(2,'CLOSED',1);
GO

INSERT INTO [dbo].[TD_USER]
           ([TDC_USER_STATUS_ID]
           ,[NAME]
           ,[SURNAME]
           ,[EMAIL]
           ,[LOGIN]
           ,[PASSWORD]
           ,[IS_ACTIVE])
     VALUES
           (1
           ,'Grzegorz'
           ,'¯arnowski'
           ,'lapa.grzechu@gmail.com'
           ,'gzarnowski'
           ,'abc'
           ,1)
GO

INSERT INTO [dbo].[TC_APPLICATION_USER]
           ([TD_APPLICATION_ID]
           ,[TD_USER_ID]
           ,[IS_ACTIVE])
     VALUES
           (1
           ,1
           ,1)
GO

INSERT INTO [dbo].[TD_ROLE]
           ([NAME]
           ,[DESCRIPTION]
           ,[IS_ACTIVE])
     VALUES
           ('ADMINISTRATOR'
           ,''
           ,1)
GO

INSERT INTO [dbo].[TC_USER_ROLE]
           ([TD_USER_ID]
           ,[TD_ROLE_ID]
           ,[IS_ACTIVE])
     VALUES
           (1
           ,1
           ,1)
GO

USE [Greg.Account]
GO

INSERT INTO [dbo].[TD_CLAIM]
           ([NAME]
           ,[GUID]
           ,[IS_ACTIVE])
     VALUES
           ('APPLICATION_LOGIN'
           ,NEWID()
           ,1)
GO

INSERT INTO [dbo].[TC_ROLE_CLAIM]
           ([TD_ROLE_ID]
           ,[TD_CLAIM_ID]
           ,[IS_ACTIVE])
     VALUES
           (1
           ,1
           ,1)
GO



