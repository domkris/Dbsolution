CREATE PROCEDURE crud_InsertRoles
@RoleID int,
@RoleTitle varchar(20),
@UserCreated varchar(20),
@DateCreated datetime
AS
BEGIN
INSERT INTO Roles(
	RoleTitle,
	UserCreated,
	DateCreated
)
VALUES (
	@RoleTitle,
	@UserCreated,
	@DateCreated
)
SET @RoleID = SCOPE_IDENTITY()
SELECT 
	RoleTitle = @RoleTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated
FROM Roles
WHERE RoleID = @RoleID
END