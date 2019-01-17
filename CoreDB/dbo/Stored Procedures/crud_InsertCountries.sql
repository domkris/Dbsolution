CREATE PROCEDURE crud_InsertCountries
@CountryID int,
@CountryCode char(3),
@CountryTitle varchar(100),
@UserCreated varchar(100),
@DateCreated datetime
AS
BEGIN
INSERT INTO Countries(
	CountryCode,
	CountryTitle,
	UserCreated,
	DateCreated
)
VALUES (
@CountryCode,
@CountryTitle,
@UserCreated,
@DateCreated
)
SET @CountryID = SCOPE_IDENTITY()
SELECT 
CountryCode = @CountryCode,
CountryTitle = @CountryTitle,
UserCreated = @UserCreated,
DateCreated = @DateCreated
FROM Countries
WHERE CountryID = @CountryID
END