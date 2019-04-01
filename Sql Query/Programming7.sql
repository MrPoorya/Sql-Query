DECLARE @cnt tinyint = 1

WHILE @cnt <=5
	BEGIN
		INSERT INTO tbl_Section VALUES (
			6	,
			2	,
			@cnt,
			NULL,
			NULL
		)
		SET @cnt = @cnt + 1
	END