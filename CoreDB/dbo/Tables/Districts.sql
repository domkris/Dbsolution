CREATE TABLE [dbo].[Districts] (
    [DistrictID]    INT           IDENTITY (1, 1) NOT NULL,
    [DistrictTitle] VARCHAR (50)  COLLATE Croatian_CI_AS NULL,
    [RegionID]      INT           NOT NULL,
    [DistrictType]  VARCHAR (20)  COLLATE Croatian_CI_AS NOT NULL,
    [UserCreated]   VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]   DATETIME      NOT NULL,
    CONSTRAINT [PK_Districts] PRIMARY KEY CLUSTERED ([DistrictID] ASC),
    CONSTRAINT [FK_Districts_Regions] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Regions] ([RegionID])
);

