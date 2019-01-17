CREATE PROCEDURE crud_InsertRoleAuthorizations
@RoleAuthorizations int,
@RoleID int,
@AuthorizationID int
AS
BEGIN
INSERT INTO RoleAuthorizations(
	RoleID,
	AuthorizationID
)
VALUES (
	@RoleID,
	@AuthorizationID
)
SET @RoleAuthorizations = SCOPE_IDENTITY()
SELECT 
	RoledID = @RoleID,
    AuthorizationID = @AuthorizationID
FROM RoleAuthorizations
WHERE RoleAuthorizations = @RoleAuthorizations
END