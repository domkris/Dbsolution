CREATE PROCEDURE crud_deleteApplications
@ApplicationID int
AS
BEGIN
DELETE
FROM Applications
WHERE ApplicationID = @ApplicationID
END