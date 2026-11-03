
-- SmartCareer SQL Database
-- File: 01_database_schema.sql
-- Purpose: Student information, skill scores,
-- and career recommendations

CREATE DATABASE IF NOT EXISTS smartcareer_db;
USE smartcareer_db;

-- 1. Student Information
CREATE TABLE IF NOT EXISTS students (
    student_id VARCHAR(10) PRIMARY KEY,
    age INT,
    gender VARCHAR(20),
    city VARCHAR(50),
    state VARCHAR(50),
    degree VARCHAR(50),
    branch VARCHAR(100),
    specialization VARCHAR(100),
    college_type VARCHAR(50),
    graduation_year INT,
    cgpa DECIMAL(4,2),
    backlogs INT,
    higher_education_interest VARCHAR(10)
);

-- 2. Student Skill Scores
CREATE TABLE IF NOT EXISTS student_skill_scores (
    student_id VARCHAR(10) PRIMARY KEY,
    python_score INT,
    sql_score INT,
    data_analysis_score INT,
    statistics_score INT,
    machine_learning_score INT,
    deep_learning_score INT,
    FOREIGN KEY (student_id)
        REFERENCES students(student_id)
);

-- 3. Career Recommendations
-- Proposed structure: verify against your actual table
CREATE TABLE IF NOT EXISTS career_recommendations (
    student_id VARCHAR(10) PRIMARY KEY,
    recommended_career_domain VARCHAR(100),
    recommended_role VARCHAR(100),
    FOREIGN KEY (student_id)
        REFERENCES students(student_id)
);

-- Inspect the tables
SHOW TABLES;
DESCRIBE students;
DESCRIBE student_skill_scores;
DESCRIBE career_recommendations;
