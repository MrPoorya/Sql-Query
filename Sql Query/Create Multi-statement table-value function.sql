 SET QUOTED_IDENTIFIER ON
 GO
 
 	CREATE FUNCTION FunTV_PLessonTerm
 	(
 		@TermNum tinyint
 	)
 	RETURNS @Rtn TABLE
 	(
 		LessonID int	,
 		Title	nvarchar(50),
 		TotalSelect int
 	)
 	AS 
 	BEGIN
	 	INSERT 	INTO @Rtn	
		SELECT 
		tbl_Lesson.ID,
		tbl_Lesson.Title ,
		COUNT(tbl_Lesson.ID) AS TotalSelect
		FROM tbl_Unit
		INNER JOIN tbl_Section ON tbl_Section.ID = tbl_Unit.SectionID
		INNER JOIN tbl_Lesson ON tbl_Lesson.ID = tbl_Section.LessonID
		WHERE tbl_Unit.TermNum = @TermNum
		GROUP BY tbl_Lesson.ID,tbl_Lesson.Title
		ORDER BY TotalSelect DESC
		
		RETURN 
		
 	END
 	
 	