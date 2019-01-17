CREATE PROCEDURE crud_deleteCountries
@CountryID int
AS
BEGIN
DELETE
FROM Countries
WHERE CountryID= @CountryID
END