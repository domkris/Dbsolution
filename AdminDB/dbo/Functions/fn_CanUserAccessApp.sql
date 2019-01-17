CREATE FUNCTION fn_CanUserAccessApp (@UserID INT, @ApplicationName VARCHAR(20))
RETURNS BIT
AS
BEGIN
	DECLARE @RET int
	SELECT @RET = SUM(UserID) FROM ApplicationUsers a
	JOIN Applications b
	ON  a.UserID = @UserID
	AND b.ApplicationTitle = @ApplicationName
	IF @RET IS NULL
		RETURN 0
	RETURN 1
END;