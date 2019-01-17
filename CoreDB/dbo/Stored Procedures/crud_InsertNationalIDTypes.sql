-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_InsertNationalIDTypes
	@NationalIDTypeID int,
	@NationalIDTypeTitle varchar(100),
	@UserCreated varchar(100),
	@DateCreated datetime
AS
BEGIN
	INSERT INTO NationalIDTypes(
		NationalIDTypeTitle,
		UserCreated,
		DateCreated
	)
	VALUES (
		@NationalIDTYpeTitle,
		@UserCreated,
		@DateCreated
	)
	SET @NationalIDTypeID = SCOPE_IDENTITY()
	SELECT 
		NationalIDTYpeTitle = @NationalIDTYpeTitle,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated
	FROM NationalIDTypes
	WHERE NationalIDTypeID = @NationalIDTypeID
END