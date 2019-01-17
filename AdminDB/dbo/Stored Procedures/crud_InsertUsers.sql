CREATE PROCEDURE crud_InsertUsers
@UserID int,
@Username varchar(100),
@PasswordHash varchar(200),
@IsActive bit,
@UserCreated varchar(20),
@DateCreated datetime,
@IsRegistered bit
AS
BEGIN
INSERT INTO Users(
	Username,
	PasswordHash,
	IsActive,
	UserCreated,
	DateCreated,
	IsRegistered
)
VALUES (
	@Username,
	@PasswordHash,
	@IsActive,
	@UserCreated,
	@DateCreated,
	@IsRegistered
)
SET @UserID = SCOPE_IDENTITY()
SELECT 
	Username = @Username,
	PasswordHash = @PasswordHash,
	IsActive = @IsActive,
	UserCreated = @UserCreated,
	DateCreated = @DateCreated,
	IsRegistered = @IsRegistered
FROM Users
WHERE UserID = @UserID
END