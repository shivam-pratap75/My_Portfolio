CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

-- Profile Table
CREATE TABLE IF NOT EXISTS profile (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL,
    education TEXT,
    github_link VARCHAR(255),
    linkedin_link VARCHAR(255),
    portfolio_link VARCHAR(255),
    leetcode_link VARCHAR(255),
    profile_link VARCHAR(255),
    bio TEXT,
    objective TEXT,
    interests TEXT,
    availability VARCHAR(255)
);

-- Skills Table
CREATE TABLE IF NOT EXISTS skills (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    category VARCHAR(50),
    proficiency INT DEFAULT 0,
    is_top BOOLEAN DEFAULT FALSE
);

-- Projects Table
CREATE TABLE IF NOT EXISTS projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    tech_stack VARCHAR(255),
    live_link VARCHAR(255),
    github_link VARCHAR(255)
);

-- Education Table
CREATE TABLE IF NOT EXISTS education_details (
    id INT AUTO_INCREMENT PRIMARY KEY,
    institution VARCHAR(255) NOT NULL,
    degree VARCHAR(255) NOT NULL,
    start_year VARCHAR(20),
    end_year VARCHAR(20),
    cgpa VARCHAR(50),
    coursework TEXT
);

-- Experience Table
CREATE TABLE IF NOT EXISTS experience (
    id INT AUTO_INCREMENT PRIMARY KEY,
    role VARCHAR(255) NOT NULL,
    organization VARCHAR(255) NOT NULL,
    duration VARCHAR(100),
    description TEXT
);

-- Seed Data
INSERT INTO profile (name, email, education, github_link, linkedin_link, portfolio_link, leetcode_link, profile_link, bio, objective, interests, availability) 
VALUES ('Shivam Pratap Singh', 'shivam9193496575@gmail.com', 'B.Tech. Computer Science', 'https://github.com/shivam-pratap75', 'https://www.linkedin.com/in/shivam-pratap-0b612028a', 'https://shivam-pratap75.github.io', 'https://leetcode.com/u/shivamthakur_6575/', 'https://leetcode.com/u/shivamthakur_6575/', 
'I\'m an aspiring software developer with a passion for crafting clean, efficient code and solving real-world problems through technology. With a solid foundation in systems programming (C/C++) and web applications. I\'m a proactive learner, constantly building my skills through hands-on projects (like a terminal-based file manager in C++) and staying current with industry trends.',
'A motivated technologies as Intern.',
'Exploring ebinars',
'ternship.');

INSERT INTO skills (name, category, proficiency, is_top) VALUES 
('JavaScript', 'Language', 90, TRUE),
('Node.js', 'Backend', 85, TRUE),
('MySQL', 'Database', 80, FALSE),
('React', 'Frontend', 75, TRUE),
('Python', 'Language', 70, FALSE);

INSERT INTO projects (title, description, tech_stack, live_link, github_link) VALUES 
('Personal Portfolio', 'A backend-first portfolio service.', 'Node.js, Express, MySQL', 'https://portfolio.johndoe.com', 'https://github.com/johndoe/portfolio'),
('E-commerce API', 'RESTful API for an online store.', 'Node.js, MongoDB', 'https://api.store.com', 'https://github.com/johndoe/store-api');

INSERT INTO education_details (institution, degree, start_year, end_year, cgpa, coursework) VALUES 
('National Institute of Technology Meghalaya', 'Bachelor of Technology in Computer Science and Engineering', '2023', '2027', '8.68/10', 'Data Structures & Algorithms, Object-Oriented Programming, Database Management Systems, Web Technologies, Software Engineering, Operating Systems');

INSERT INTO experience (role, organization, duration, description) VALUES 
('Literary Club Event Manager', 'National Institute of Technology Meghalaya', '2024 - Present', '• Participated in weekly coding challenges and collaborative problem-solving sessions on LeetCode\n• Collaborated with a team of 4 to develop a prototype for a college event management system, practicing Agile methodologies');
