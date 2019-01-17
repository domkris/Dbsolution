CREATE TABLE [dbo].[Countries] (
    [CountryID]    INT           IDENTITY (1, 1) NOT NULL,
    [CountryCode]  CHAR (3)      COLLATE Croatian_CI_AS NULL,
    [CountryTitle] VARCHAR (100) COLLATE Croatian_CI_AS NULL,
    [UserCreated]  VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]  DATETIME      NOT NULL,
    CONSTRAINT [PK_Countries] PRIMARY KEY CLUSTERED ([CountryID] ASC)
);

