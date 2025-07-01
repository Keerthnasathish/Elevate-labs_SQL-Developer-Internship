1. Subquery in SELECT: Show student name and total number of courses enrolled:
SELECT Name,
   (SELECT COUNT(*) FROM Enrollment e WHERE e.StudentID = s.StudentID) AS TotalCourses
FROM Student s;

2. Subquery in WHERE: List students who enrolled in more than 1 course:
SELECT * FROM Student
WHERE StudentID IN (
    SELECT StudentID FROM Enrollment GROUP BY StudentID
    HAVING COUNT(*) > 1
);

3. Subquery in FROM (Derived table): Show number of enrollments per course:
SELECT c.CourseName, sub.TotalEnrolled
FROM Course c
JOIN ( SELECT CourseID, COUNT(*) AS TotalEnrolled FROM Enrollment GROUP BY CourseID) sub ON c.CourseID = sub.CourseID;

4. Correlated Subquery: Students enrolled in a course with max credits:
SELECT Name FROM Student WHERE StudentID IN ( SELECT StudentID FROM Enrollment WHERE CourseID = (SELECT CourseID
  FROM Course WHERE Credits = (SELECT MAX(Credits) FROM Course)));

5. EXISTS: Find students who are enrolled in at least one course:
SELECT * FROM Student s WHERE EXISTS (SELECT 1 FROM Enrollment e WHERE e.StudentID = s.StudentID);
