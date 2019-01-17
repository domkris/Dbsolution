CREATE TABLE [dbo].[Roles] (
    [RoleID]       INT          IDENTITY (1, 1) NOT NULL,
    [RoleTitle]    VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [UserCreated]  VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]  DATETIME     NOT NULL,
    [UserModified] VARCHAR (20) COLLATE Croatian_CI_AS NULL,
    [DateModified] DATETIME     NULL,
    CONSTRAINT [PK_Roles] PRIMARY KEY CLUSTERED ([RoleID] ASC)
);






GO
-- ==========================================================
-- Author: Domagoj Kristov
-- Create date: 15/01/2019
-- Description: 
-- ===========================================================

CREATE TRIGGER  trigger_For__Roles ON AdminDB..Roles
FOR UPDATE, DELETE
AS
BEGIN
	
	IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
	BEGIN 
		INSERT INTO Roles_History(RoleID, RoleTitle, UserCreated, DateCreated, 
			        ChangeType, UserModified, DateModified)
		SELECT RoleID, RoleTitle, UserCreated, DateCreated,'U', UserModified , GETDATE()
		FROM inserted I	
		WHERE I.RoleID = RoleID
	END
	IF NOT EXISTS ( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) 
	BEGIN 
			INSERT INTO Roles_History(RoleID, RoleTitle, UserCreated, DateCreated, 
			        ChangeType, UserModified, DateModified)
		SELECT RoleID, RoleTitle, UserCreated, DateCreated,'D', UserModified , GETDATE()
		FROM deleted D	
		WHERE D.RoleID = RoleID
	END
	

END