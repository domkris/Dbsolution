﻿CREATE PROCEDURE crud_deleteUsers
@UserID int
AS
BEGIN
DELETE
FROM Users
WHERE UserID= @UserID
END