
-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_deleteGender
	@GenderID int
AS
BEGIN
	DELETE
	FROM Gender
	WHERE GenderID= @GenderID
END