use Tala

CREATE TABLE tbl_Lesson(
	ID int PRIMARY KEY IDENTITY(1,1), 
	Code int NOT NULL , 
	Title nvarchar(50) NOT NULL , 
	Field nvarchar(50) NOT NULL , 
	UnitNum smallint NOT NULL
)

CREATE TABLE tbl_Master(
	ID int PRIMARY key IDENTITY(1,1),
	Name nvarchar(100) NOT NULL ,
	Family nvarchar(200) NOT NULL , 
	FatherName nvarchar(100) NOT NULL,
	NationalID char(12) NOT NULL , 
	IDCode int NULL , 
	PhoneNum bigint NOT	NULL , 
	Address nvarchar(MAX) NULL , 
	Certificate nvarchar(100) NOT NULL , 
	Field nvarchar(200) NOT NULL
)

CREATE TABLE tbl_Section(
	ID int PRIMARY KEY IDENTITY(1,1),
	LessonID int NOT NULL FOREIGN KEY REFERENCES tbl_Lesson(ID),
	masterID int NOT NULL FOREIGN KEY REFERENCES tbl_Master(ID),
	WeekDay smallint NOT NULL ,
	ClassTime time NULL , 
	ClassNumber smallint NULL
)

CREATE TABLE tbl_Student(
	ID int PRIMARY KEY IDENTITY(1,1),
	StudentCode bigint NOT NULL , 
	Name nvarchar(100) NOT NULL , 
	Family nvarchar(200) NOT NULL , 
	FatherName nvarchar(100) NOT NULL , 
	NationalID char(12) NOT NULL , 
	IDCode int NULL,
	PhoneNumber bigint NOT NULL	,
	Address nvarchar(MAX) NULL 	
)

CREATE TABLE tbl_Unit(
	ID int PRIMARY KEY IDENTITY(1,1),
	SectionID int NOT NULL FOREIGN KEY REFERENCES tbl_Section(ID),
	StudentID int NOT NULL FOREIGN KEY REFERENCES tbl_Student(ID),
	TermNum tinyint NOT NULL ,
	Score decimal(18,0) NOT NULL
)

