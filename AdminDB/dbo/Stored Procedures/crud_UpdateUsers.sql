CREATE PROCEDURE crud_UpdateUsers
@UserID int,
@Username varchar(100),
@PasswordHash varchar(200),
@IsActive bit,
@UserCreated varchar(20),
@DateCreated datetime,
@IsRegistered bit
AS
BEGIN
UPDATE Users
SET	Username = @Username,
	PasswordHash = @PasswordHash,
	IsActive = @IsActive,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated,
	IsRegistered = @IsRegistered
WHERE UserID = @UserID
END