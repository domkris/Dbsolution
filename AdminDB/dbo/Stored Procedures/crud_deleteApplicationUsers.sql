CREATE PROCEDURE crud_deleteApplicationUsers
@ApplicationUserID int
AS
BEGIN
DELETE
FROM ApplicationUsers
WHERE ApplicationUserID = @ApplicationUserID
END