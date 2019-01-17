CREATE PROCEDURE crud_UpdateApplications
@ApplicationID int,
@ApplicationTitle varchar(20),
@UserCreated varchar(4000),
@DateCreated datetime
AS
BEGIN
UPDATE Applications
SET  ApplicationTitle = @ApplicationTitle,
	 UserCreated = @UserCreated,
	 DateCreated = @DateCreated
WHERE ApplicationID = @ApplicationID
END