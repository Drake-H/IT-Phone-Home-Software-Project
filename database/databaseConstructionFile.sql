SHOW TABLES;
CREATE TABLE class (ClassID INT, CourseNumber TEXT, CreditHours INT, CourseName TEXT, Major TEXT);
CREATE TABLE prerequisite (PrerequisiteLinkID INT, ClassID INT, PrerequisiteClassID INT);
SHOW TABLES;
DESCRIBE class;
SHOW TABLES;
LOAD DATA LOCAL INFILE '../Classes.txt' INTO TABLE class;
LOAD DATA LOCAL INFILE '../Prerequisites.txt' INTO TABLE prerequisite;

SELECT * FROM class;

SELECT * FROM prerequisite;

SELECT prerequisite.CourseNumber AS Course, prerequisite.Prerequisite AS PrerequisiteNum
FROM prerequisite, class
LEFT JOIN class AS class1 
ON prerequisite.CourseNumber = class1.ClassID
LEFT JOIN class AS class2 
ON prerequisite.Prerequisite=class2.ClassID
HAVING prerequisite.Prerequisite = class.CourseNumber
AND prerequisite.CourseNumber = class.CourseNumber;

SELECT Prerequisite as classNumber, class.CourseNumber
FROM prerequisite, class
WHERE class.ClassID = prerequisite.Prerequisite;

SELECT prerequisite.CourseNumber, prerequisite.Prerequisite, class.CourseNumber
FROM prerequisite, class
HAVING class.CourseNumber = prerequisite.CourseNumber;
#LEFT JOIN class as c1
	#ON prerequisite.CourseNumber = c1.ClassID
#LEFT JOIN class as c2

SELECT class.CourseNumber, prerequisite.PrerequisiteID
FROM class, prerequisite
WHERE class.classID = prerequisite.PrerequisiteID;

SELECT Prerequisite
FROM prerequisite;

SELECT prerequisite.CourseID, prerequisite.PrerequisiteID
FROM prerequisite;

SELECT prerequisite.ClassID, class.CourseNumber, prerequisite.PrerequisiteClassID, class.CourseNumber AS PrerequisiteCourseNumber
FROM class, prerequisite
WHERE class.ClassID = prerequisite.ClassID;

SELECT prerequisite.PrerequisiteClassID, class.CourseNumber, prerequisite.ClassID
FROM class, prerequisite
WHERE class.ClassID = prerequisite.PrerequisiteClassID;

SELECT prerequisite.ClassID, class.CourseNumber
FROM class, prerequisite
WHERE class.ClassID = prerequisite.ClassID;

SELECT prerequisite.PrerequisiteClassID, class.CourseNumber
FROM class, prerequisite
WHERE class.ClassID = prerequisite.PrerequisiteClassID;

SELECT
	(SELECT prerequisite.ClassID
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.ClassID),
    (SELECT prerequisite.PrerequisiteClassID
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.PrerequisiteClassID)
FROM class, prerequisite;
    
(SELECT prerequisite.ClassID, class.CourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.ClassID)
UNION (SELECT prerequisite.PrerequisiteClassID, class.CourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.PrerequisiteClassID);

#Prints the course and its prerequisite
SELECT CourseNumber, PrereqCourseNumber
FROM (SELECT prerequisite.PrerequsiteLinkID, prerequisite.ClassID, class.CourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.ClassID) as table1
LEFT JOIN (SELECT prerequisite.PrerequsiteLinkID, prerequisite.PrerequisiteClassID, class.CourseNumber AS PrereqCourseNumber
	FROM class, prerequisite
	WHERE class.ClassID = prerequisite.PrerequisiteClassID) as table2
ON table1.prerequsiteLinkID = table2.prerequsiteLinkID;