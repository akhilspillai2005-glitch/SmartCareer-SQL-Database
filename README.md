# SmartCareer – SQL Database Development

## Project Overview

SmartCareer is a student career guidance platform designed to help students explore career opportunities, identify skill gaps, and receive personalized career guidance.

This repository documents the MySQL database development and SQL analysis work completed as part of the SmartCareer group project.

## Technologies Used

- MySQL and MySQL Workbench
- SQL
- Python and Pandas for data analysis
- Supabase (PostgreSQL) for the application's later database integration
- GitHub for version control and documentation

## My SQL Contributions

### 1. Database Design
Created a relational database named `smartcareer_db` with tables for student profiles, skill scores, career preferences, goals, and recommendations.

### 2. SQL Joins
Developed SQL queries using `INNER JOIN` to combine student education details with technical skill scores using `student_id`.

### 3. Data Validation
Prepared SQL queries for checking record counts, missing values, duplicate student identifiers, and data consistency.

### 4. SQL Analytics
Prepared SQL queries to analyze:

- Student distribution by degree and branch
- Average CGPA
- Python and SQL skill scores
- Technical skill performance across branches
- Students meeting selected skill-score thresholds

## Repository Files

| File | Purpose |
|---|---|
| `01_database_schema.sql` | Database schema and table creation |
| `02_student_skill_joins.sql` | Student and skill data joins |
| `03_data_validation.sql` | Data validation queries |
| `04_analytics_queries.sql` | Student analytics and reporting queries |

## Database Development Progress

The project initially used MySQL for database design and SQL practice. Supabase was subsequently used for cloud-based data storage and application integration.

The broader SmartCareer project also includes Supabase-based authentication and an AI career guidance chatbot connected to career data through a retrieval system.

These application integrations are separate from the SQL scripts documented in this repository.

## Learning Outcomes

This work helped develop practical experience in:

- Relational database design
- SQL table creation and relationships
- SQL joins
- Data validation
- Aggregate functions and analytical queries
- GitHub repository management

## Project

SmartCareer – Student Career Guidance & Roadmap Platform

**Repository focus:** SQL Database Design, Validation and Analytics
