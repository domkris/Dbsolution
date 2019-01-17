CREATE TABLE [dbo].[Users_History] (
    [UserID]       INT           NOT NULL,
    [Username]     VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [PasswordHash] VARCHAR (200) COLLATE Croatian_CI_AS NOT NULL,
    [IsActive]     BIT           NOT NULL,
    [UserCreated]  VARCHAR (20)  COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]  DATETIME      NOT NULL,
    [IsRegistered] BIT           NOT NULL,
    [ChangeType]   CHAR (1)      COLLATE Croatian_CI_AS NOT NULL,
    [UserModified] VARCHAR (20)  COLLATE Croatian_CI_AS NULL,
    [DateModified] DATETIME      NOT NULL
);



