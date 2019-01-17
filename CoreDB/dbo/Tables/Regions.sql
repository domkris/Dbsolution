CREATE TABLE [dbo].[Regions] (
    [RegionID]    INT           IDENTITY (1, 1) NOT NULL,
    [RegionTitle] VARCHAR (255) COLLATE Croatian_CI_AS NOT NULL,
    [CountryID]   INT           NOT NULL,
    [UserCreated] VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated] DATETIME      NOT NULL,
    CONSTRAINT [PK_Regions] PRIMARY KEY CLUSTERED ([RegionID] ASC),
    CONSTRAINT [FK_Regions_Countries] FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Countries] ([CountryID])
);

