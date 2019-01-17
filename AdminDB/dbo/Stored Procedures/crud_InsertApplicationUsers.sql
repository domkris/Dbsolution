CREATE PROCEDURE crud_InsertApplicationUsers
@ApplicationUserID int,
@UserID int,
@ApplicationID int
AS
BEGIN
INSERT INTO ApplicationUsers(
	UserID,
	ApplicationID
)
VALUES (
	@UserID,
	@ApplicationID
)
SET @ApplicationUserID = SCOPE_IDENTITY()
SELECT 
	UserID = @UserID,
	ApplicationID = @ApplicationID
FROM Applicationusers
WHERE ApplicationUserID = @ApplicationUserID
END