CREATE TABLE [dbo].[Users] (
    [UserID]       INT           IDENTITY (1, 1) NOT NULL,
    [Username]     VARCHAR (100) NULL,
    [PasswordHash] VARCHAR (20)  COLLATE Croatian_CI_AS NULL,
    [IsActive]     BIT           NOT NULL,
    [UserCreated]  VARCHAR (20)  NULL,
    [DateCreated]  DATETIME      NOT NULL,
    [isRegistered] BIT           NOT NULL,
    [UserModified] VARCHAR (20)  NULL,
    [DateModified] DATETIME      NULL,
    CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED ([UserID] ASC)
);






GO
-- ==========================================================
-- Author: Domagoj Kristov
-- Create date: 15/01/2019
-- Description: 
-- ===========================================================

CREATE TRIGGER  trigger_For__Users ON AdminDB..Users
FOR UPDATE, DELETE
AS
BEGIN
	
	IF EXISTS (SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted)
	BEGIN 
		INSERT INTO Users_History(UserID, Username,PasswordHash,IsActive, UserCreated, DateCreated, IsRegistered,
			        ChangeType, UserModified, DateModified)
		SELECT UserID, Username, PasswordHash,IsActive, UserCreated, DateCreated, isRegistered,'U', UserModified , GETDATE()
		FROM inserted I	
		WHERE I.UserID = UserID
	END
	IF NOT EXISTS ( SELECT * FROM inserted) AND EXISTS (SELECT * FROM deleted) 
	BEGIN 
		INSERT INTO Users_History(UserID, Username,PasswordHash,IsActive, UserCreated, DateCreated, IsRegistered,
			        ChangeType, UserModified, DateModified)
		SELECT UserID, Username, PasswordHash,IsActive, UserCreated, DateCreated, isRegistered,'D', UserModified , GETDATE()
		FROM deleted D	
		WHERE D.UserID = UserID
	END
	

END