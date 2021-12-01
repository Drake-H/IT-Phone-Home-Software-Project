SHOW TABLES;
CREATE TABLE class (ClassID INT, CourseNumber TEXT, CreditHours INT, CourseName TEXT, Major TEXT, Semester TEXT, YearsOffered TEXT);
CREATE TABLE prerequisite (PrerequisiteLinkID INT, ClassID INT, PrerequisiteClassID INT);
CREATE TABLE accounting (Class TEXT, SchoolYear INT, Semester TEXT);
CREATE TABLE babmb (Class TEXT, SchoolYear INT, Semester TEXT);
SHOW TABLES;
DESCRIBE class;
SHOW TABLES;
LOAD DATA LOCAL INFILE 'C:/Users/chris/software-project/database/Classes.txt' INTO TABLE class;
LOAD DATA LOCAL INFILE 'C:/Users/chris/software-project/database/Prerequisites.txt' INTO TABLE prerequisite;
LOAD DATA LOCAL INFILE 'C:/Users/chris/software-project/database/AccountingMajor.txt' INTO TABLE accounting;
LOAD DATA LOCAL INFILE 'C:/Users/chris/software-project/database/BABioChem.txt' INTO TABLE babmb;

SELECT * FROM class;

SELECT * FROM prerequisite;

SELECT * FROM accounting;

SELECT * from babmb;

#Prints the course and its prerequisite
SELECT CourseNumber, PrereqCourseNumber
FROM (SELECT prerequisite.PrerequisiteLinkID, prerequisite.ClassID, class.CourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.ClassID) as table1
LEFT JOIN (SELECT prerequisite.PrerequisiteLinkID, prerequisite.PrerequisiteClassID, class.CourseNumber AS PrereqCourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.PrerequisiteClassID) as table2
ON table1.prerequisiteLinkID = table2.prerequisiteLinkID;