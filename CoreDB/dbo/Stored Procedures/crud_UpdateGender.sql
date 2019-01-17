-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_UpdateGender
	@GenderID int,
	@GenderShort char(5),
	@GenderTitle varchar(255),
	@UserCreated varchar(100),
	@DateCreated datetime,
	@Description varchar(4000)
AS
BEGIN
	UPDATE Gender
		SET 
		GenderShort = @GenderShort,
		GenderTitle = @GenderTitle,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated,
		Description = @Description
	WHERE GenderID = @GenderID
END