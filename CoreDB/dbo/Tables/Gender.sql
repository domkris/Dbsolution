CREATE TABLE [dbo].[Gender] (
    [GenderID]    INT            IDENTITY (1, 1) NOT NULL,
    [GenderShort] CHAR (5)       NULL,
    [GenderTitle] VARCHAR (255)  COLLATE Croatian_CI_AS NOT NULL,
    [UserCreated] VARCHAR (100)  COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated] DATETIME       NOT NULL,
    [Description] VARCHAR (4000) COLLATE Croatian_CI_AS NULL,
    CONSTRAINT [PK_Gender] PRIMARY KEY CLUSTERED ([GenderID] ASC)
);

