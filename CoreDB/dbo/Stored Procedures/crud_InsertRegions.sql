-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_InsertRegions
	@RegionID int,
	@RegionTitle varchar(255),
	@CountryID int,
	@UserCreated varchar(100),
	@DateCreated datetime
AS
BEGIN
	INSERT INTO Regions(
		RegionTitle,
		CountryID,
		UserCreated,
		DateCreated
	)
	VALUES (
		@RegionTitle,
		@CountryID,
		@UserCreated,
		@DateCreated
	)
	SET @RegionID = SCOPE_IDENTITY()
	SELECT 
		RegionTitle = @RegionTitle,
		CountryID = @CountryID,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated
	FROM Regions
	WHERE RegionID = @RegionID
END