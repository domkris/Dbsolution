﻿CREATE FUNCTION fn_GetDayType (@Date DATETIME)
RETURNS VARCHAR(10)
AS
BEGIN
	DECLARE @RET VARCHAR(10)
	SET @RET = (SELECT 
	CASE DATEPART( DW,@Date)
		WHEN 1 THEN 'Sunday'
		WHEN 2 THEN 'Monday'
		WHEN 3 THEN 'Tuesday'
		WHEN 4 THEN 'Wednesday'
		WHEN 5 THEN 'Thursday'
		WHEN 6 THEN 'Friday'
		WHEN 7 THEN 'Saturday'
		ELSE 'Exception!'
		END
	)
	RETURN @RET
END