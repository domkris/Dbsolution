CREATE PROCEDURE crud_UpdateApplicationUsers
@ApplicationUserID int,
@UserID int,
@ApplicationID int
AS
BEGIN
UPDATE ApplicationUsers
SET  UserID = @UserID,
	 ApplicationID = @ApplicationID
WHERE ApplicationUserID = @ApplicationUserID
END