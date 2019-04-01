DECLARE @DayNum tinyint

set @DayNum = 3

SELECT CASE @dayNum 
	WHEN 1 THEN N'شنبه'
	WHEN 2 THEN N'یکشنبه'
	WHEN 3 THEN N'دوشنبه'
	WHEN 4 THEN N'سه شنبه'
	WHEN 5 THEN N'چهارشنبه'
	WHEN 6 THEN N'پنجشنبه'
	WHEN 7 THEN N'جمعه'
	ELSE N'نامعتبر'
END