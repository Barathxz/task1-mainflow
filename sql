-- Database Setup
CREATE DATABASE StudentManagement;
USE StudentManagement;

-- Create Students Table
CREATE TABLE Students (
    StudentID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50),
    Gender VARCHAR(1),
    Age INT,
    Grade VARCHAR(10),
    MathScore INT,
    ScienceScore INT,
    EnglishScore INT
);

-- Insert Sample Data
INSERT INTO Students (Name, Gender, Age, Grade, MathScore, ScienceScore, EnglishScore) VALUES
('John Doe', 'M', 18, 'A', 85, 90, 88),
('Jane Smith', 'F', 19, 'B', 78, 82, 79),
('Michael Brown', 'M', 18, 'A', 92, 89, 94),
('Emily Davis', 'F', 20, 'C', 65, 70, 68),
('Chris Wilson', 'M', 21, 'B', 75, 80, 78),
('Sarah Johnson', 'F', 19, 'A', 88, 91, 87),
('David Lee', 'M', 22, 'C', 58, 62, 60),
('Sophia Martinez', 'F', 18, 'B', 73, 76, 75),
('James Taylor', 'M', 20, 'A', 95, 93, 97),
('Olivia White', 'F', 21, 'C', 66, 69, 64);

-- Task 1: Display All Students and Their Details
SELECT * FROM Students;

-- Task 2: Calculate Average Scores for Each Subject
SELECT 
    AVG(MathScore) AS AverageMathScore,
    AVG(ScienceScore) AS AverageScienceScore,
    AVG(EnglishScore) AS AverageEnglishScore
FROM Students;

-- Task 3: Find the Student(s) with the Highest Total Score
SELECT Name, (MathScore + ScienceScore + EnglishScore) AS TotalScore
FROM Students
ORDER BY TotalScore DESC
LIMIT 1;

-- Task 4: Count the Number of Students in Each Grade
SELECT Grade, COUNT(*) AS NumberOfStudents
FROM Students
GROUP BY Grade;

-- Task 5: Find Average Score for Male and Female Students
SELECT Gender,
    AVG(MathScore) AS AverageMath,
    AVG(ScienceScore) AS AverageScience,
    AVG(EnglishScore) AS AverageEnglish
FROM Students
GROUP BY Gender;

-- Task 6: Identify Students with Math Score Above 80
SELECT *
FROM Students
WHERE MathScore > 80;

-- Task 7: Update Grade of a Student with a Specific Student ID
UPDATE Students
SET Grade = 'B'
WHERE StudentID = 3;
