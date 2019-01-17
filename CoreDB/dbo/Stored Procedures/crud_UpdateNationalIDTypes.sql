-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_UpdateNationalIDTypes
	@NationalIDTypeID int,
	@NationalIDTypeTitle varchar(100),
	@UserCreated varchar(100),
	@DateCreated datetime
AS
BEGIN
	UPDATE NationalIDTypes
		SET 
		NationalIDTYpeTitle = @NationalIDTYpeTitle,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated
	WHERE NationalIDTypeID = @NationalIDTypeID
END