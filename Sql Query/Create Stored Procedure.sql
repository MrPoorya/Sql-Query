
SET QUOTED_IDENTIFIER ON
	GO
	
CREATE PROCEDURE Stp_StudentInfo
	@StudentID 	bigint	,
	@TermNum	tinyint	
AS
BEGIN
	SET NOCOUNT ON
	
	SELECT tbl_Student.StudentCode	,
	   tbl_Student.Name + ' ' + tbl_Student.Family AS FullName	,
	  -- tbl_Lesson.Title	,
	  -- tbl_Lesson.UnitNum	,
	   --tbl_Unit.Score,
	   SUM(tbl_Lesson.UnitNum * tbl_Unit.Score)/SUM(tbl_Lesson.UnitNum) AS Averages	,
	   tbl_Unit.TermNum
FROM tbl_Student 
	INNER JOIN tbl_Unit ON tbl_Student.ID = tbl_Unit.StudentID
	INNER JOIN tbl_Section ON tbl_Unit.SectionID = tbl_Section.ID
	INNER JOIN tbl_Lesson ON tbl_Section.LessonID = tbl_Lesson.ID
	
WHERE tbl_Student.ID = @StudentID AND tbl_Unit.TermNum = @TermNum 
GROUP BY tbl_Student.ID,tbl_Student.StudentCode ,tbl_Student.Name , tbl_Student.Family, tbl_Unit.TermNum	

END
