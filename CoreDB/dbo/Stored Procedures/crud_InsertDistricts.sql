CREATE PROCEDURE crud_InsertDistricts
@DistrictID int,
@DistrictTitle varchar(50),
@RegionID int,
@DistrictType varchar(20),
@UserCreated varchar(20),
@DateCreated datetime
AS
BEGIN
INSERT INTO Districts(
DistrictTitle,
RegionID,
DistrictType,
UserCreated,
DateCreated
)
VALUES (
@DistrictTitle,
@RegionID,
@DistrictType,
@UserCreated,
@DateCreated
)
SET @DistrictID = SCOPE_IDENTITY()
SELECT 
DistrictTitle = @DistrictTitle,
RegionID = @RegionID,
DistrictType = @DistrictType,
UserCreated= @UserCreated,
DasteCreated = @DateCreated
FROM Districts
WHERE DistrictID = @DistrictID
END