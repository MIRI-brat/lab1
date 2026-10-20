
CREATE TABLE faculties (
    faculty_code SERIAL PRIMARY KEY,
    faculty_name VARCHAR(150) NOT NULL,
    foundation_date DATE,
    activity_type VARCHAR(255),
    max_students INTEGER
);


CREATE TABLE departments (
    department_code SERIAL PRIMARY KEY,
    faculty_code INTEGER NOT NULL,
    department_name VARCHAR(150) NOT NULL,
    head_of_department VARCHAR(150),
    is_graduating VARCHAR(50), -- или BOOLEAN, если храните да/нет
    website VARCHAR(255),
    phone VARCHAR(50),
    

    CONSTRAINT fk_faculty 
        FOREIGN KEY (faculty_code) 
        REFERENCES faculties(faculty_code) 
        ON DELETE CASCADE
);