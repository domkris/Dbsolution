CREATE TABLE [dbo].[Authorizations] (
    [AuthorizationID]    INT          IDENTITY (1, 1) NOT NULL,
    [AuthorizationTitle] VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [UserCreated]        VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]        DATETIME     NOT NULL,
    [UserModified]       VARCHAR (20) COLLATE Croatian_CI_AS NULL,
    [DateModified]       DATETIME     NULL,
    CONSTRAINT [PK_Authorizations] PRIMARY KEY CLUSTERED ([AuthorizationID] ASC)
);






GO
-- ==========================================================
-- Author: Domagoj Kristov
-- Create date: 15/01/2019
-- Description: 
-- ===========================================================

CREATE TRIGGER  trigger_For__Authorizations ON AdminDB..Authorizations
FOR UPDATE, DELETE
AS
BEGIN
	
	IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
	BEGIN 
		INSERT INTO Authorizations_History(AuthorizationID, AuthorizationTitle, UserCreated, DateCreated, 
			        ChangeType, UserModified, DateModified)
		SELECT AuthorizationID, AuthorizationTitle, UserCreated, DateCreated,'U', UserModified , GETDATE()
		FROM inserted I	
		WHERE I.AuthorizationID = AuthorizationID
	END
	IF NOT EXISTS ( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) 
	BEGIN 
		INSERT INTO Authorizations_History(AuthorizationID, AuthorizationTitle, UserCreated, DateCreated, 
			        ChangeType, UserModified, DateModified)
		SELECT AuthorizationID, AuthorizationTitle, UserCreated, DateCreated,'D', UserModified , GETDATE()
		FROM deleted D
		WHERE D.AuthorizationID = AuthorizationID
	END
	

END