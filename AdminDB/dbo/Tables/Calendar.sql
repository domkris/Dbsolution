CREATE TABLE [dbo].[Calendar] (
    [Date]      DATETIME     NOT NULL,
    [Day]       VARCHAR (20) COLLATE Croatian_CI_AS NOT NULL,
    [TypeOfDay] CHAR (1)     COLLATE Croatian_CI_AS NOT NULL
);

