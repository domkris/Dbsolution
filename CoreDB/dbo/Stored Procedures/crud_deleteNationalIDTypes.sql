CREATE PROCEDURE [dbo].[crud_deleteNationalIDTypes]
	@NationalIDTypeID int
AS
BEGIN
	DELETE
	FROM NationalIDTypes
	WHERE NationalIDTypeID = @NationalIDTypeID
END