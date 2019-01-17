-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_deletePlaces
	@PlaceID int
AS
BEGIN
	DELETE
	FROM Places
	WHERE PlaceID = @PlaceID
END