CREATE VIEW View_presentation AS
	SELECT tbl_Master.Name + ' ' + tbl_Master.Family AS FullName ,tbl_Lesson.Title,tbl_Section.WeekDay , tbl_Section.ClassTime , tbl_Section.ClassNumber
		FROM tbl_Section
			INNER JOIN
				tbl_Master ON tbl_Section.masterID = tbl_Master.ID
			INNER JOIN
				tbl_Lesson ON tbl_Section.LessonID = tbl_Lesson.ID