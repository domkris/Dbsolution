-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_UpdateRegions
	@RegionID int,
	@RegionTitle varchar(255),
	@CountryID int,
	@UserCreated varchar(100),
	@DateCreated datetime
AS
BEGIN
	UPDATE Regions
		SET 
		RegionTitle = @RegionTitle,
		CountryID = @CountryID,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated
	WHERE RegionID = @RegionID
END