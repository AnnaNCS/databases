USE university;


# How many students are there for each major
SELECT Major, COUNT(Major) 
FROM Student
GROUP BY Major;

# How many sections are there of a class
SELECT Name, COUNT(Name) 
FROM Course c
GROUP BY Name;

# list ALL advisors with any student they have as advisees
SELECT Professor_id, 
	   Professor.First_name as 'Prof_firstname', 
	   Professor.Last_name as 'Prof_lastname', 
	   Student.First_name as 'Student_firstname', 
       Student.Last_name as 'Student_lastname' 
FROM Professor
LEFT JOIN Student ON Student.Advisor = Professor.Professor_id;

# Show all courses that are MWF
SELECT * 
FROM Course
WHERE TIME LIKE 'MWF%';

# Show all course that are TR
SELECT * 
FROM Course
WHERE TIME LIKE 'TR%';

# How many classes does each professor teach?
SELECT Professor.First_name, Professor.Last_name, COUNT(Course.Professor)
FROM Professor
JOIN Course ON Professor.Professor_id = Course.Professor
GROUP BY Professor.Professor_id
ORDER BY Professor.Last_name ASC;
