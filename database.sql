CREATE DATABASE rpo_db;
\c rpo_db

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) UNIQUE NOT NULL,
    password VARCHAR(128) NOT NULL,
    role VARCHAR(20) NOT NULL
);

CREATE TABLE works (
    id SERIAL PRIMARY KEY,
    organization VARCHAR(100) NOT NULL,
    sp VARCHAR(100) NOT NULL,
    workshop VARCHAR(100) NOT NULL,
    object VARCHAR(100) NOT NULL,
    resp_preparation VARCHAR(100) NOT NULL,
    resp_execution VARCHAR(100) NOT NULL,
    description TEXT NOT NULL,
    work_name VARCHAR(100) NOT NULL,
    rpo_type VARCHAR(50) NOT NULL,
    approval_adjacent VARCHAR(10) NOT NULL,
    risk_level VARCHAR(50) NOT NULL,
    working_group VARCHAR(20) NOT NULL,
    work_type VARCHAR(20) NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    pbotos_approved BOOLEAN DEFAULT FALSE,
    cits_approved BOOLEAN DEFAULT FALSE,
    gi_approved BOOLEAN DEFAULT FALSE,
    rejected_by VARCHAR(50),
    status VARCHAR(50) DEFAULT 'В процессе',
    work_times JSON DEFAULT '{}',
    comments TEXT
);s TEXT
);