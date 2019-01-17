CREATE TABLE [dbo].[NationalIDTypes] (
    [NationalIDTypeID]    INT           IDENTITY (1, 1) NOT NULL,
    [NationalIDTypeTitle] VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [UserCreated]         VARCHAR (100) COLLATE Croatian_CI_AS NOT NULL,
    [DateCreated]         DATETIME      NOT NULL,
    CONSTRAINT [PK_NationalIDTypes] PRIMARY KEY CLUSTERED ([NationalIDTypeID] ASC)
);

