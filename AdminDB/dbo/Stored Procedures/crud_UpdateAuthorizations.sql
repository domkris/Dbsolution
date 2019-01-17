CREATE PROCEDURE crud_UpdateAuthorizations
@AuthorizationID int,
@AuthorizationTitle varchar(20),
@UserCreated varchar(20),
@DateCreated datetime
AS
BEGIN
UPDATE Authorizations
SET AuthorizationTitle = @AuthorizationTitle,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated
WHERE AuthorizationID = @AuthorizationID
END