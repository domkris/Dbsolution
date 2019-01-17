CREATE PROCEDURE crud_UpdateCountries
@CountryID int,
@CountryCode char(3),
@CountryTitle varchar(100),
@UserCreated varchar(100),
@DateCreated datetime
AS
BEGIN
UPDATE Countries
SET CountryCode = @CountryCode,
CountryTitle = @CountryTitle,
UserCreated = @UserCreated,
DateCreated = @DateCreated
WHERE CountryID = @CountryID
END