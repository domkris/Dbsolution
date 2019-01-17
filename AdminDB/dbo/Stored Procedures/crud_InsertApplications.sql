CREATE PROCEDURE crud_InsertApplications
@ApplicationID int,
@ApplicationTitle varchar(20),
@UserCreated varchar(4000),
@DateCreated datetime
AS
BEGIN
INSERT INTO Applications(
	ApplicationTitle,
	UserCreated,
	DateCreated
)
VALUES (
	@ApplicationTitle,
	@UserCreated,
	@DateCreated
)
SET @ApplicationID = SCOPE_IDENTITY()
SELECT 
	ApplicationTitle = @ApplicationTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated
FROM Applications
WHERE ApplicationID = @ApplicationID
END