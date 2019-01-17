CREATE TABLE [dbo].[Places] (
    [PlaceID]           INT           IDENTITY (1, 1) NOT NULL,
    [PlaceNationalCode] VARCHAR (20)  COLLATE Croatian_CI_AS NULL,
    [PlaceTitle]        VARCHAR (255) COLLATE Croatian_CI_AS NOT NULL,
    [DistrictID]        INT           NOT NULL,
    [RegionID]          INT           NOT NULL,
    [UserCreated]       VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]       DATETIME      NOT NULL,
    CONSTRAINT [PK_Places] PRIMARY KEY CLUSTERED ([PlaceID] ASC),
    CONSTRAINT [FK_Places_Districts] FOREIGN KEY ([DistrictID]) REFERENCES [dbo].[Districts] ([DistrictID]),
    CONSTRAINT [FK_Places_Regions] FOREIGN KEY ([RegionID]) REFERENCES [dbo].[Regions] ([RegionID])
);

