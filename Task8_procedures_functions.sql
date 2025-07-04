1. Create a Stored Procedure:
 Example: Stored Procedure to get students by department
CREATE PROCEDURE GetStudentsByDept(IN dept INT)
BEGIN
    SELECT StudentID, Name, Email
    FROM Student
    WHERE DeptID = dept;
END 

To call it:
CALL GetStudentsByDept(1);

2. Create a Function:
Example: Function to return course credit by CourseID
CREATE FUNCTION GetCourseCredits(cid INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE credits INT;
    SELECT Credits INTO credits FROM Course WHERE CourseID = cid;
    RETURN credits;
END 

To use it:
SELECT CourseName, GetCourseCredits(CourseID) AS Credits
FROM Course;
