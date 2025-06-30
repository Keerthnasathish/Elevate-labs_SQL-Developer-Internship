1. INNER JOIN :- Students with their Department Names:
SELECT Student.StudentID, Student.Name, Department.DeptName
FROM Student
INNER JOIN Department ON Student.DeptID = Department.DeptID;

 2. LEFT JOIN :- All Students and Their Departments (even if Dept is NULL):
SELECT Student.StudentID, Student.Name, Department.DeptName
FROM Student
LEFT JOIN Department ON Student.DeptID = Department.DeptID;

 3. RIGHT JOIN:
SELECT Department.DeptName, Student.Name
FROM Department
LEFT JOIN Student ON Student.DeptID = Department.DeptID;

4. Join Course and Faculty:
SELECT Course.CourseName, Faculty.Name AS FacultyName
FROM Course
INNER JOIN Faculty ON Course.FacultyID = Faculty.FacultyID;

5. Join Enrollment with Student and Course:
SELECT s.Name AS StudentName, c.CourseName, e.EnrollmentDate
FROM Enrollment e
JOIN Student s ON e.StudentID = s.StudentID
JOIN Course c ON e.CourseID = c.CourseID;
