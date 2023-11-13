create Database RainbowSchoolDB
use RainbowSchoolDB

--Subjects Table
Create Table Subjects
(
subjectId int primary key Identity (1,1),
subjectName varchar(50),
TeacherName varchar(50)
)
INSERT INTO Subjects
VALUES
('Computer Science','Abhay'),
('Mathematics','Vishnu'),
('History','Nikhil'),
('Science','Faizan'),
('Kannada','Vikram')
--Classes Table
Create Table Classes
(
ClassId int primary key Identity (1,1),
ClassName varchar(50),
ClassFloor int
)
INSERT INTO Classes
VALUES
('Class 1',0),
('Class 2',0),
('Class 3',1),
('Class 4',1),
('Class 5',2),
('Class 6',2),
('Class 7',2),
('Class 8',3)

--Student Table
create Table Student
(
RollNo int primary key Identity (1,1),
studentName varchar(50),
classId int foreign key references Classes(ClassId),
subjectId int foreign key references Subjects(subjectId)
)
INSERT into Student
Values
('Surya',1,5),
('Lokesh',1,4),
('Suhas',2,3),
('Hrithik',8,1),
('Tony',7,5),
('Nidhi',5,3),
('Krupa',6,4),
('Ananya',7,2)

--printing Values
select * from Subjects
select * from Classes
select * from Student