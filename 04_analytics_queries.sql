
USE smartcareer_db;

-- SmartCareer Analytics Queries
-- MySQL reporting and summary analysis

-- 1. Number of students by degree
SELECT
    degree,
    COUNT(*) AS total_students
FROM students
GROUP BY degree
ORDER BY total_students DESC;

-- 2. Number of students by branch
SELECT
    branch,
    COUNT(*) AS total_students
FROM students
GROUP BY branch
ORDER BY total_students DESC;

-- 3. Average CGPA by degree
SELECT
    degree,
    ROUND(AVG(cgpa), 2) AS average_cgpa
FROM students
GROUP BY degree
ORDER BY average_cgpa DESC;

-- 4. Average Python and SQL scores
SELECT
    ROUND(AVG(python_score), 2) AS avg_python,
    ROUND(AVG(sql_score), 2) AS avg_sql
FROM student_skill_scores;

-- 5. Average technical skills by branch
SELECT
    s.branch,
    COUNT(*) AS student_count,
    ROUND(AVG(sk.python_score), 2) AS avg_python,
    ROUND(AVG(sk.sql_score), 2) AS avg_sql
FROM students AS s
INNER JOIN student_skill_scores AS sk
    ON s.student_id = sk.student_id
GROUP BY s.branch
ORDER BY student_count DESC;

-- 6. Students with strong Python skills
SELECT
    s.student_id,
    s.degree,
    s.branch,
    sk.python_score
FROM students AS s
INNER JOIN student_skill_scores AS sk
    ON s.student_id = sk.student_id
WHERE sk.python_score >= 80
ORDER BY sk.python_score DESC;
