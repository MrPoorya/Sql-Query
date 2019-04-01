DECLARE @Orderd varchar(7) = 'Name'


SELECT StudentCode , Name , Family from tbl_Student
	ORDER BY CASE @Orderd
		WHEN 'Name' THEN Name
		WHEN 'Family' THEN Family
		Else NationalID
	end