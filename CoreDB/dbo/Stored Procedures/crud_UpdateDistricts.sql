CREATE PROCEDURE crud_UpdateDistricts
@DistrictID int,
@DistrictTitle varchar(50),
@RegionID int,
@DistrictType varchar(20),
@UserCreated varchar(20),
@DateCreated datetime
AS
BEGIN
UPDATE Districts
SET DistrictTitle = @DistrictTitle,
RegionID = @RegionID,
DistrictType = @DistrictType,
UserCreated= @UserCreated,
DateCreated = @DateCreated
WHERE DistrictID = @DistrictID
END