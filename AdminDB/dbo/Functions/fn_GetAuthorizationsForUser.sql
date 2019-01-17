CREATE FUNCTION fn_GetAuthorizationsForUser (@UserID INT, @ApplicationName VARCHAR(20))
RETURNS TABLE
AS
RETURN
(
	SELECT a.UserID, b.ApplicationTitle FROM ApplicationUsers a
	JOIN Applications b
	ON  a.UserID = @UserID
	AND b.ApplicationTitle = @ApplicationName
	
);