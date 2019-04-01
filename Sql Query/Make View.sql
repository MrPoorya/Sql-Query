
CREATE VIEW View_Test AS
	SELECT Name + ' ' + Family AS FullName , NationalID FROM tbl_Student
		WHERE NationalID like '122%'