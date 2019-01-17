CREATE PROCEDURE crud_InsertAuthorizations
@AuthorizationID int,
@AuthorizationTitle varchar(20),
@UserCreated varchar(20),
@DateCreated datetime
AS
BEGIN
INSERT INTO Authorizations(
	AuthorizationTitle,
	UserCreated,
	DateCreated
)
VALUES (
	@AuthorizationTitle,
	@UserCreated,
	@DateCreated
)
SET @AuthorizationID = SCOPE_IDENTITY()
SELECT 
	AuthorizationTitle = @AuthorizationTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated
FROM Authorizations
WHERE AuthorizationID = @AuthorizationID
END