CREATE TABLE [dbo].[RoleAuthorizations] (
    [RoleAuthorizations] INT IDENTITY (1, 1) NOT NULL,
    [RoleID]             INT NOT NULL,
    [AuthorizationID]    INT NOT NULL,
    CONSTRAINT [PK_RoleAuthorizations] PRIMARY KEY CLUSTERED ([RoleAuthorizations] ASC),
    CONSTRAINT [FK_RoleAuthorizations_Authorizations] FOREIGN KEY ([AuthorizationID]) REFERENCES [dbo].[Authorizations] ([AuthorizationID]),
    CONSTRAINT [FK_RoleAuthorizations_RoleAuthorizations] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[Roles] ([RoleID])
);

