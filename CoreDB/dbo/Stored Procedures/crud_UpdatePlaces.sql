
-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_UpdatePlaces
	@PlaceID int,
	@PlaceNationalCode varchar(20),
	@PlaceTitle varchar(255),
	@DistrictID int,
	@RegionID int,
	@UserCreated varchar(100),
	@DateCreated datetime
AS
BEGIN
	UPDATE Places
		SET 
		PlaceNationalCode = @PlaceNationalCode,
		PlaceTitle = @PlaceTitle,
		DistrictID = @DistrictID,
		RegionID = @RegionID,
		UserCreated = @UserCreated,
		Datecreated = @DateCreated
	WHERE PlaceID = @PlaceID
END