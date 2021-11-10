SHOW TABLES;
CREATE TABLE class (ClassID INT, CourseNumber TEXT, CreditHours INT, CourseName TEXT, Major TEXT);
CREATE TABLE prerequisite (PrerequisiteLinkID INT, ClassID INT, PrerequisiteClassID INT);
SHOW TABLES;
DESCRIBE class;
SHOW TABLES;
LOAD DATA LOCAL INFILE 'C:/Users/chris/software-project/database/Classes.txt' INTO TABLE class;
LOAD DATA LOCAL INFILE 'C:/Users/chris/software-project/database/Prerequisites.txt' INTO TABLE prerequisite;

SELECT * FROM class;

SELECT * FROM prerequisite;

#Prints the course and its prerequisite
SELECT CourseNumber, PrereqCourseNumber
FROM (SELECT prerequisite.PrerequisiteLinkID, prerequisite.ClassID, class.CourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.ClassID) as table1
LEFT JOIN (SELECT prerequisite.PrerequisiteLinkID, prerequisite.PrerequisiteClassID, class.CourseNumber AS PrereqCourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.PrerequisiteClassID) as table2
ON table1.prerequisiteLinkID = table2.prerequisiteLinkID;