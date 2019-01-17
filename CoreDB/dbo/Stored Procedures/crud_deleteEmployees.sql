-- =============================================
-- Author:		Domagoj Kristov
-- Create date: 10/01/2019
-- Description:	
-- =============================================
CREATE PROCEDURE crud_deleteEmployees
	@EmployeeID int
AS
BEGIN
	DELETE
	FROM Employees
	WHERE EmployeeID= @EmployeeID
END