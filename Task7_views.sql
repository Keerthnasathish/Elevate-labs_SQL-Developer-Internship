1. Create a view for student enrollment details:
CREATE VIEW StudentCourseDetails AS
SELECT 
    s.StudentID, s.Name AS StudentName, 
    c.CourseName, e.EnrollmentDate
FROM Enrollment e
JOIN Student s ON s.StudentID = e.StudentID
JOIN Course c ON c.CourseID = e.CourseID;

2. View to show department-wise student count:
CREATE VIEW DepartmentStudentCount AS
SELECT 
    d.DeptName, COUNT(s.StudentID) AS TotalStudents
FROM Department d
LEFT JOIN Student s ON s.DeptID = d.DeptID
GROUP BY d.DeptName;

3. View of faculty with courses they teach:
CREATE VIEW FacultyCourses AS
SELECT 
    f.FacultyID, f.Name AS FacultyName, 
    c.CourseName, c.Credits
FROM Faculty f
JOIN Course c ON f.FacultyID = c.FacultyID;

4. View with high-credit courses only:
CREATE VIEW HighCreditCourses AS
SELECT * FROM Course
WHERE Credits >= 4;

