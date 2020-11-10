DROP DATABASE IF EXISTS `university`;
CREATE DATABASE `university`;
USE `university`;

CREATE TABLE `Location`(
`Location_code` VARCHAR(50),
PRIMARY KEY(`Location_code`)
);

CREATE TABLE `Major`(
`Dep_id` VARCHAR(50) NOT NULL,
`Name` VARCHAR(50),
`Dep_char` VARCHAR(50),
PRIMARY KEY(`Dep_id`)
);

CREATE TABLE `Professor`(
`Professor_id` VARCHAR(50) NOT NULL,
`First_name` VARCHAR (50),
`Last_name` VARCHAR (50),
`Dept_in` VARCHAR(50),
`Office_location` VARCHAR(50),
PRIMARY KEY(`Professor_id`),
FOREIGN KEY(`Dept_in`) REFERENCES `Major`(`Dep_id`),
FOREIGN KEY(`Office_location`) REFERENCES `Location`(`Location_code`)
);


CREATE TABLE `Student`(
`Student_id` VARCHAR(50) NOT NULL,
`First_name` VARCHAR (50),
`Last_name` VARCHAR (50),
`Advisor` VARCHAR (50),
`Major` VARCHAR(50),
`Course 1` VARCHAR (50),
`Course 2` VARCHAR (50),
`Course 3` VARCHAR (50),
`Course 4` VARCHAR (50),
PRIMARY KEY(`Student_id`)
);


CREATE TABLE `Course`(
`Course_id` VARCHAR(50) NOT NULL,
`Section` INT,
`Name` VARCHAR (50),
`Dept_id` VARCHAR (50),
`Units` INT,
`Professor` VARCHAR (50),
`Time` VARCHAR (50),
`Course_location` VARCHAR (50),
`Student_enr` INT,
`Description` VARCHAR (450),
PRIMARY KEY(`Course_id`),
FOREIGN KEY(`Dept_id`) REFERENCES `Major`(`Dep_id`),
FOREIGN KEY(`Professor`) REFERENCES `Professor`(`Professor_id`),
FOREIGN KEY(`Course_location`) REFERENCES `Location`(`Location_code`)
);

ALTER TABLE `Major`
ADD FOREIGN KEY (`Dep_char`) REFERENCES `Professor`(`Professor_id`);

ALTER TABLE `Student`
ADD FOREIGN KEY(`Advisor`) REFERENCES `Professor`(`Professor_id`),
ADD FOREIGN KEY(`Major`) REFERENCES `Major`(`Dep_id`);

