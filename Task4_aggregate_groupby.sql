1. Count number of students in each department:
SELECT DeptID, COUNT(*) AS TotalStudents
FROM Student
GROUP BY DeptID;

2. Average credits per department:
SELECT DeptID, AVG(Credits) AS AvgCredits
FROM Course
GROUP BY DeptID;

 3. Total number of enrollments per course:
SELECT CourseID, COUNT(*) AS TotalEnrollments
FROM Enrollment
GROUP BY CourseID;

4. Department-wise faculty count:
SELECT DeptID, COUNT(*) AS TotalFaculty
FROM Faculty
GROUP BY DeptID;

 5. Show only departments with more than 1 faculty (using HAVING):
SELECT DeptID, COUNT(*) AS TotalFaculty
FROM Faculty
GROUP BY DeptID
HAVING COUNT(*) > 1;

6. Find course(s) with maximum credit:
SELECT CourseName, Credits
FROM Course
WHERE Credits = (SELECT MAX(Credits) FROM Course);

 7. Total credits taught by each faculty:
SELECT FacultyID, SUM(Credits) AS TotalCreditsTaught
FROM Course
GROUP BY FacultyID;
