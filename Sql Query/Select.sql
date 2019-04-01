use Tala

-- show all : 

	--SELECT * from tbl_Student

-- show StudentID & Name  & Family

	--SELECT StudentCode, Name,Family FROM tbl_Student
	
-- show Name & Family in One field
	
	--SELECT ID,StudentCode,Name +' '+ Family as FullName,FatherName,NationalID,IDCode,PhoneNumber,Address FROM tbl_Student

-- show all the masters

	--SELECT * FROM tbl_Master
	
-- show with condition

	--SELECT  * FROM tbl_Master WHERE Field  = N'مهندسی نرم افزار'
	
	--SELECT * FROM tbl_Master WHERE Field LIKE N'%افزار%'

	--SELECT * FROM tbl_Student WHERE NationalID like '122%'

	--SELECT * FROM tbl_Lesson WHERE ID >= 3

	--SELECT * FROM tbl_Lesson WHERE ID BETWEEN 3 and 6

	--SELECT * FROM tbl_Student WHERE Address LIKE N'%خوانسار%' AND NationalID LIKE '122%'

	--SELECT * from tbl_Lesson WHERE ID in(1,2,5)

	--SELECT Field from tbl_Master GROUP BY Field

	--SELECT * FROM tbl_Lesson ORDER BY Title
