CREATE PROCEDURE crud_deleteRoleAuthorizations
@RoleAuthorizations int
AS
BEGIN
DELETE
FROM RoleAuthorizations
WHERE RoleAuthorizations = @RoleAuthorizations
END