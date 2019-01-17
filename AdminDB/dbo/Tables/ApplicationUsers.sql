CREATE TABLE [dbo].[ApplicationUsers] (
    [ApplicationUserID] INT IDENTITY (1, 1) NOT NULL,
    [UserID]            INT NOT NULL,
    [ApplicationID]     INT NOT NULL,
    CONSTRAINT [PK_ApplicationUsers] PRIMARY KEY CLUSTERED ([ApplicationUserID] ASC),
    CONSTRAINT [FK_ApplicationUsers_Applications] FOREIGN KEY ([ApplicationID]) REFERENCES [dbo].[Applications] ([ApplicationID])
);

