create database education_db;

use education_db;

-- students table
create table students (
    id int auto_increment primary key,
    name varchar(50) not null,
    class varchar(10) not null,
    section char(1) not null
);

-- scores table
create table scores (
    id int auto_increment primary key,
    student_id int not null,
    subject varchar(30) not null,
    marks int not null check (marks between 0 and 100),
    foreign key (student_id) references students(id) on delete cascade
);

-- attendance table
create table attendance (
    id int auto_increment primary key,
    student_id int not null,
    attendance_percentage float not null check (attendance_percentage between 0 and 100),
    foreign key (student_id) references students(id) on delete cascade
);

-- insert sample data students,scores ,attendance
insert into students (name, class, section) values
('aryan gupta', '10', 'a'),
('sneha sharma', '10', 'a'),
('rahul verma', '10', 'b'),
('priya das', '10', 'b'),
('rohan mehta', '11', 'a'),
('neha kapoor', '11', 'a'),
('aman joshi', '11', 'b'),
('anjali roy', '11', 'b'),
('vikram singh', '12', 'a'),
('pooja iyer', '12', 'a'),
('siddharth malhotra', '12', 'b'),
('divya menon', '12', 'b'),
('kiran nair', '10', 'c'),
('swati rao', '11', 'c'),
('manoj kumar', '12', 'c'),
('tanisha khan', '10', 'd'),
('arjun patel', '11', 'd'),
('bhavya jain', '12', 'd'),
('nidhi sharma', '10', 'e'),
('gaurav yadav', '11', 'e');

insert into scores (student_id, subject, marks) values
(1, 'math', 85), (1, 'science', 90), (1, 'english', 78),
(2, 'math', 70), (2, 'science', 88), (2, 'english', 82),
(3, 'math', 92), (3, 'science', 75), (3, 'english', 80),
(4, 'math', 88), (4, 'science', 85), (4, 'english', 79),
(5, 'math', 76), (5, 'science', 80), (5, 'english', 85),
(6, 'math', 90), (6, 'science', 85), (6, 'english', 88),
(7, 'math', 84), (7, 'science', 75), (7, 'english', 77),
(8, 'math', 82), (8, 'science', 79), (8, 'english', 81),
(9, 'math', 93), (9, 'science', 91), (9, 'english', 89),
(10, 'math', 77), (10, 'science', 73), (10, 'english', 76),
(11, 'math', 95), (11, 'science', 97), (11, 'english', 96),
(12, 'math', 78), (12, 'science', 80), (12, 'english', 79),
(13, 'math', 85), (13, 'science', 87), (13, 'english', 90),
(14, 'math', 80), (14, 'science', 78), (14, 'english', 83),
(15, 'math', 91), (15, 'science', 89), (15, 'english', 88),
(16, 'math', 75), (16, 'science', 70), (16, 'english', 74),
(17, 'math', 88), (17, 'science', 86), (17, 'english', 84),
(18, 'math', 85), (18, 'science', 80), (18, 'english', 82),
(19, 'math', 78), (19, 'science', 75), (19, 'english', 76),
(20, 'math', 92), (20, 'science', 95), (20, 'english', 94);

insert into attendance (student_id, attendance_percentage) values
(1, 92.5), (2, 85.0), (3, 88.5), (4, 90.0), (5, 80.0),
(6, 87.5), (7, 75.0), (8, 82.5), (9, 95.0), (10, 70.0),
(11, 98.0), (12, 85.0), (13, 91.0), (14, 80.5), (15, 93.5),
(16, 68.0), (17, 88.0), (18, 84.0), (19, 76.5), (20, 97.0);

-- show the display
select * from students; 

select * from scores;

select * from attendance;
