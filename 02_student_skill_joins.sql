
USE smartcareer_db;

-- SmartCareer: Student and Skill Data JOIN
-- Combines student education with technical skills.

SELECT
    s.student_id,
    s.degree,
    s.branch,
    sk.python_score,
    sk.sql_score
FROM students AS s
INNER JOIN student_skill_scores AS sk
    ON s.student_id = sk.student_id
LIMIT 10;
