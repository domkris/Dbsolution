-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_InsertGender
	@GenderID int,
	@GenderShort char(5),
	@GenderTitle varchar(255),
	@UserCreated varchar(100),
	@DateCreated datetime,
	@Description varchar(4000)
AS
BEGIN
	INSERT INTO Gender(
		GenderShort,
		GenderTitle,
		UserCreated,
		DateCreated,
		Description
	)
	VALUES (
		@GenderShort,
		@GenderTitle,
		@UserCreated,
		@DateCreated,
		@Description
	)
	SET @GenderID = SCOPE_IDENTITY()
	SELECT 
		GenderShort = @GenderShort,
		GenderTitle = @GenderTitle,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated,
		Description = @Description
	FROM Gender
	WHERE GenderID = @GenderID
END