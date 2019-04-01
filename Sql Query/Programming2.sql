
DECLARE @Test TABLE(
	Name	nvarchar(50)	, 
	Family	nvarchar(50)	,
	Term	int	
	
)

INSERT INTO @Test VALUES (
	N'پوریا'		,
	N'محمدی نسب'	,
	4
)

SELECT Name + ' ' + Family as FullName FROM @Test
