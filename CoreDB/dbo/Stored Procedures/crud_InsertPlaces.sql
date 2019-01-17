-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_InsertPlaces
	@PlaceID int,
	@PlaceNationalCode varchar(20),
	@PlaceTitle varchar(255),
	@DistrictID int,
	@RegionID int,
	@UserCreated varchar(100),
	@DateCreated datetime
AS
BEGIN
	INSERT INTO Places(
		PlaceNationalCode,
		PlaceTitle,
		DistrictID,
		RegionID,
		UserCreated,
		DateCreated
	)
	VALUES (
		@PlaceNationalCode,
		@PlaceTitle,
		@DistrictID,
		@RegionID,
		@UserCreated,
		@DateCreated
	)
	SET @PlaceID = SCOPE_IDENTITY()
	SELECT 
		PlaceNationalCode = @PlaceNationalCode,
		PlaceTitle = @PlaceTitle,
		DistrictID = @DistrictID,
		RegionID = @RegionID,
		UserCreated = @UserCreated,
		Datecreated = @DateCreated
	FROM Places
	WHERE PlaceID = @PlaceID
END