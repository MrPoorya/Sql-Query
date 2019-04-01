 SET QUOTED_IDENTIFIER ON
 GO
 
 CREATE FUNCTION Fn_PLessonTerm
 (
 	@TermNum tinyint
 )
 	RETURNS nvarchar(200)
 AS
 	BEGIN
	 	
	 	DECLARE @Title nvarchar(50)
	 	
		SELECT TOP 1 
		@Title = tbl_Lesson.Title
		FROM tbl_Unit
		INNER JOIN tbl_Section ON tbl_Section.ID = tbl_Unit.SectionID
		INNER JOIN tbl_Lesson ON tbl_Lesson.ID = tbl_Section.LessonID
		WHERE tbl_Unit.TermNum = @TermNum
		GROUP BY tbl_Lesson.Title
		ORDER BY COUNT(tbl_Lesson.ID) DESC
		
		RETURN @Title
		
 	END