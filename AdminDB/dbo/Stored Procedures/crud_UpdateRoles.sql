CREATE PROCEDURE crud_UpdateRoles
@RoleID int,
@RoleTitle varchar(20),
@UserCreated varchar(20),
@DateCreated datetime
AS
BEGIN
UPDATE Roles
SET	RoleTitle = @RoleTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated
WHERE RoleID = @RoleID
END