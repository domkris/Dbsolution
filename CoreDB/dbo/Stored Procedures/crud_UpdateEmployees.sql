﻿-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE [dbo].[crud_UpdateEmployees]
	@EmployeeID int,
	@Username varchar(100),
	@FirstName varchar(255),
	@LastName varchar(255),
	@NationalIDNumber varchar(100),
	@NationalIDTypeID int,
	@GenderID int,
	@BirthDate date,
	@Address varchar(100),
	@PlaceID int,
	@CountryID int,
	@UserCreated varchar(100),
	@DateCreated datetime
AS
BEGIN
	UPDATE Employees
		SET 
		Username = @Username,
		FirstName = @FirstName,
		LastName = @LastName,
		NationalIDNumber = @NationalIDNumber,
		NationalIDTypeID = @NationalIDTypeID,
		GenderID = @GenderID,
		BirthDate = @BirthDate,
		Address = @Address,
		PlaceID = @PlaceID,
		CountryID = @CountryID,
		UserCreated = @UserCreated,
		DateCreated = @DateCreated
	WHERE EmployeeID = @EmployeeID
END