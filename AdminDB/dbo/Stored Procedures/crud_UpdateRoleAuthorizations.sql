CREATE PROCEDURE crud_UpdateRoleAuthorizations
@RoleAuthorizations int,
@RoleID int,
@AuthorizationID int
AS
BEGIN
UPDATE RoleAuthorizations
SET RoleID = @RoleID,
	AuthorizationID = @AuthorizationID
WHERE RoleAuthorizations = @RoleAuthorizations
END