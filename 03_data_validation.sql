
USE smartcareer_db;

-- SmartCareer Data Validation
-- Check record counts, duplicates and missing values.

-- 1. Count records in important tables
SELECT 'students' AS table_name,
       COUNT(*) AS total_records
FROM students

UNION ALL

SELECT 'student_skill_scores',
       COUNT(*)
FROM student_skill_scores

UNION ALL

SELECT 'career_recommendations',
       COUNT(*)
FROM career_recommendations

UNION ALL

SELECT 'smartcareer_cleaned',
       COUNT(*)
FROM smartcareer_cleaned;


-- 2. Check duplicate student IDs
-- In the cleaned dataset, the column name
-- may differ. Verify its schema first.
SHOW COLUMNS FROM smartcareer_cleaned;

-- Check duplicates in the students table
SELECT student_id, COUNT(*) AS occurrences
FROM students
GROUP BY student_id
HAVING COUNT(*) > 1;


-- 3. Check missing student information
SELECT
    COUNT(*) AS total_students,
    SUM(student_id IS NULL) AS missing_ids,
    SUM(degree IS NULL) AS missing_degrees,
    SUM(branch IS NULL) AS missing_branches,
    SUM(cgpa IS NULL) AS missing_cgpa
FROM students;


-- 4. Check missing skill scores
SELECT
    COUNT(*) AS total_records,
    SUM(python_score IS NULL) AS missing_python,
    SUM(sql_score IS NULL) AS missing_sql
FROM student_skill_scores;


-- 5. Check invalid academic values
SELECT *
FROM students
WHERE cgpa < 0
   OR cgpa > 10
   OR backlogs < 0;
