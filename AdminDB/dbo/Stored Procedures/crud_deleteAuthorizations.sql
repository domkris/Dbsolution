CREATE PROCEDURE crud_deleteAuthorizations
@AuthorizationID int
AS
BEGIN
DELETE
FROM Authorizations
WHERE AuthorizationID = @AuthorizationID
END