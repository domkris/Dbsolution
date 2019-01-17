

-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_deleteRegions
	@RegionID int
AS
BEGIN
	DELETE
	FROM Regions
	WHERE RegionID = @RegionID
END