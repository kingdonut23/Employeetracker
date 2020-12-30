DROP DATABASE IF EXISTS employee_info;

CREATE DATABASE employee_info;

USE employee_info;

CREATE TABLE department (
    id INT AUTO_INCREMENT,
    name VARCHAR(30),
    PRIMARY KEY (id)
);

insert into department (name)
VALUES ("IT Tech"), ('IT Tech Manager'), ('Deverlopment'), ('Development Manager'), 
('Customer Service'), ('Customer Service Manager'), ('Poduction'), ('Production Manager');

CREATE TABLE role (
    id INT AUTO_INCREMENT,
    title VARCHAR(30),
    salary DECIMAL(65 , 2 ),
    department_id INT,
    FOREIGN KEY (department_id)
        REFERENCES department (id),
    PRIMARY KEY (id)
);

INSERT INTO role (title, salary, department_id)
VALUES ('Assistant Manager', 50000.00, 1), ('Help Desk Tech',40000.00 , 1), 
('Level 2', 45000.00, 1), ('IT Manager', 85000.00, 2), ('Developer', 80000.00, 3), 
('Developer Manager', 100000.00, 4), ('Customer Service Rep.', 35000.00, 5), 
('Customer Service Manager', 55000.00, 6), ('Production Floor', 55000.00, 7), 
('Production Manager', 95000.00, 8);

CREATE TABLE employee (
    id INT AUTO_INCREMENT,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    role_id INT,
    manager_id INT,
    FOREIGN KEY (role_id)
        REFERENCES role (id),
    FOREIGN KEY (manager_id)
        REFERENCES department (id),
    PRIMARY KEY (id)
);

INSERT INTO employee (first_name, last_name, role_id, manager_id)
VALUES ('David', 'Ysasi', 1, 1) , ('Andres', 'Lazo', 2, 1), 
('Ryan', 'Holdeman', 4, 2), ('Jeffery','Davis', 5, 3), ('Simon', 'White', 6, 4), 
('Karen', 'Simpson', 7, 5), ('Bich', 'Nguyen', 7, 5), ('Ryan','Caines', 8, 6), 
('Jonathan', 'Zimo', 9, 7), ('Dale', 'Davis', 10, 8);

SELECT 
    *
FROM
    employee;
    
SELECT 
    *
FROM
    role;
    
SELECT 
    *
FROM
    department