CREATE TABLE [dbo].[Applications] (
    [ApplicationID]    INT          IDENTITY (1, 1) NOT NULL,
    [ApplicationTitle] VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [UserCreated]      VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]      DATETIME     NOT NULL,
    [UserModified]     VARCHAR (20) COLLATE Croatian_CI_AS NULL,
    [DateModified]     DATETIME     NULL,
    CONSTRAINT [PK_Applications] PRIMARY KEY CLUSTERED ([ApplicationID] ASC)
);






GO
-- ==========================================================
-- Author: Domagoj Kristov
-- Create date: 15/01/2019
-- Description: 
-- ===========================================================

CREATE TRIGGER  trigger_For__Applications ON AdminDB..Applications
FOR UPDATE, DELETE
AS
BEGIN
	
	IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
	BEGIN 
		INSERT INTO Applications_History(ApplicationID, ApplicationTitle, UserCreated, DateCreated, 
			        ChangeType, UserModified, DateModified)
		SELECT ApplicationID, ApplicationTitle, UserCreated, DateCreated,'U', UserModified , GETDATE()
		FROM inserted I	
		WHERE I.ApplicationID = ApplicationID
	END
	IF NOT EXISTS ( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) 
	BEGIN 
		INSERT INTO Applications_History(ApplicationID, ApplicationTitle, UserCreated, DateCreated, 
			        ChangeType, UserModified, DateModified)
		SELECT ApplicationID, ApplicationTitle, UserCreated, DateCreated,'D', UserModified , GETDATE()
		FROM deleted D
		WHERE D.ApplicationID = ApplicationID	
	END
	

END