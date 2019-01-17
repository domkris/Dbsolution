CREATE TABLE [dbo].[Applications_History] (
    [ApplicationID]    INT          NOT NULL,
    [ApplicationTitle] VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [UserCreated]      VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]      DATETIME     NOT NULL,
    [ChangeType]       CHAR (1)     COLLATE Croatian_CI_AS NOT NULL,
    [UserModified]     VARCHAR (20) COLLATE Croatian_CI_AS NULL,
    [DateModified]     DATETIME     NOT NULL
);



