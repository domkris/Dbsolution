CREATE TABLE [dbo].[Employees] (
    [EmployeeID]       INT           IDENTITY (1, 1) NOT NULL,
    [Username]         VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [FirstName]        VARCHAR (255) COLLATE Croatian_CI_AS NOT NULL,
    [LastName]         VARCHAR (255) COLLATE Croatian_CI_AS NOT NULL,
    [NationalIDNumber] VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [NationalIDTypeID] INT           NOT NULL,
    [GenderID]         INT           NOT NULL,
    [BirthDate]        DATE          NULL,
    [Address]          VARCHAR (100) COLLATE Croatian_CI_AS NULL,
    [PlaceID]          INT           NOT NULL,
    [CountryID]        INT           NOT NULL,
    [UserCreated]      VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]      DATETIME      NOT NULL,
    CONSTRAINT [PK_Employees] PRIMARY KEY CLUSTERED ([EmployeeID] ASC),
    CONSTRAINT [FK_Employees_Countries] FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Countries] ([CountryID]),
    CONSTRAINT [FK_Employees_Gender] FOREIGN KEY ([GenderID]) REFERENCES [dbo].[Gender] ([GenderID]),
    CONSTRAINT [FK_Employees_NationalIDTypes] FOREIGN KEY ([NationalIDTypeID]) REFERENCES [dbo].[NationalIDTypes] ([NationalIDTypeID]),
    CONSTRAINT [FK_Employees_Places] FOREIGN KEY ([PlaceID]) REFERENCES [dbo].[Places] ([PlaceID])
);

