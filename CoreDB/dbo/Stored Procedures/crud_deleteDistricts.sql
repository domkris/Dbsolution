CREATE PROCEDURE crud_deleteDistricts
@DistrictID int
AS
BEGIN
DELETE
FROM Districts
WHERE DistrictID= @DistrictID
END