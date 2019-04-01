DECLARE @DayNum tinyint = 3

SELECT CASE 
	WHEN @DayNum in (1,2) THEN N'ابتدای هفته'
	WHEN @DayNum in (3,4) THEN N'وسط هفته'
	WHEN @DayNum in (5,6,7) THEN N'پایان هفته'
	ELSE N'عدد وارد شده نامعتبر است'
END As MSG