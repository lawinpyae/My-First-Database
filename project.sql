use pj;

CREATE TABLE Student (
Student_id INT  AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(20),
NRC VARCHAR(20),
Date_Of_Birth DATE,
Gender VARCHAR(7),
Email VARCHAR(30),
Ph_no VARCHAR(15),
City VARCHAR(20)
);

CREATE TABLE Instructor (
Instructor_id INT AUTO_INCREMENT PRIMARY KEY,
Instructor_name VARCHAR(20),
NRC VARCHAR(20),
Gender VARCHAR(7),
Ph_no VARCHAR(15),
Email VARCHAR(30),
Salary INT
);

CREATE TABLE Course (
Course_id INT AUTO_INCREMENT PRIMARY KEY,
Course_Name VARCHAR(5),
Description TEXT,
Duration VARCHAR(10),
Price INT
);

CREATE TABLE Section (
Section_id INT AUTO_INCREMENT PRIMARY KEY,
Instructor_id INT,
Course_id INT,
Start_Time VARCHAR(10),
End_Time VARCHAR(10),
Days VARCHAR(10),
FOREIGN KEY(Instructor_id) REFERENCES Instructor (Instructor_id) on delete cascade on update cascade,
FOREIGN KEY(Course_id) REFERENCES Course (Course_id) on delete cascade on update cascade
);

CREATE TABLE Registration (
Registration_id INT AUTO_INCREMENT PRIMARY KEY,
Section_id  INT,
Student_id INT,
Registration_Date DATE,
Status VARCHAR(10),
Registration_Method VARCHAR(10),
FOREIGN KEY (Section_id) REFERENCES Section (Section_id) on delete cascade on update cascade ,
FOREIGN KEY (Student_id) REFERENCES Student (Student_id) on delete cascade on update cascade
);

CREATE TABLE Payment (
Payment_id INT AUTO_INCREMENT PRIMARY KEY,
Registration_id INT,
Payment_Date DATE,
Payment_Type VARCHAR(5),
Discount_percent INT,
FOREIGN KEY (Registration_id) REFERENCES Registration (Registration_id) on delete cascade on update cascade
);

CREATE TABLE Exam (
Exam_id INT AUTO_INCREMENT PRIMARY KEY,
Exam_Type VARCHAR(10),
Max_Scores INT,
Min_Scores INT
);

INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Thuta Phyo','8/ALN(N)778240', '2005-2-5','Male','thuta1@gmail.com','09-484589921','Yangon');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Aung That','8/PKK(N)271197', '2000-6-9','Male','aung2@gmail.com','09-401582899','Bahan');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Khaing Thwe','12/MGD(N)248311', '2001-7-7','Female','khaing3@gmail.com','09-401592271','Mayangone');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Su Yee Nwe','12/TMN(N)129278', '1997-9-9','Female','su4@gmail.com','09-427362230','Yangon');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Ye Yint Naing','12/LTN(N)050268', '1996-7-21','Male','yeyint5@gmail.com','09-440302722','Insein');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Bhone Myint','12/BHN(N)221005', '2000-4-30','Male','bhone6@gmail.com','09-670411918','South Dagon');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Pwint Phyu','8/SLN(N)003492', '2000-4-4','Female','pwint7@gmail.com','09-683099932','Yangon');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Thiri Han','9/MHL(N)308252', '2003-12-31','Female','thiri8@gmail.com','09-686077082','Yangon');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Zin Min Hein','10/MLN(N)241357', '1999-4-9','Male','zin9@gmail.com','09-401051979','Thingyangyan');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Si Thu Lwin','12/MGT(N)118249', '2001-6-8','Male','sithu10@gmail.com','09-782331069','Mingalardone');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Ye Htut Man','9/ZBT(N)111451', '2000-2-22','Male','yehtut11@gmail.com','09-680815840','ThatarOo');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Yoon Nadi','7/NLP(N)120166', '2003-4-21','Female','yoon12@gmail.com','09-256583947','Bahan');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Cherry Phyo','8/MGY(N)189500', '2005-4-30','Female','cherry13@gmail.com','09-754803377','PaZunTaung');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Ti Khant Ko','12/MGT(N)418289', '1999-10-24','Male','tikhant14@gmail.com','09-66785242','Yangon');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Hein Wunna','8/SLN(N)220745', '1997-11-5','Male','hein15@gmail.com','09-984934442','Hlae Ku');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Zwe Htoo Myint','13/TPN(N)135128', '2001-2-21','Male','zwe16@gmail.com','09-761420761','Kyi Myin Taing');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Khin Pa Pa','9/AMY(N)177578', '2003-2-23','Female','khinpa17@gmail.com','09-699295021','Bahan');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Thura Zaw','11/TKN(N)132294', '2000-1-1','Male','thura18@gmail.com','09-796412170','Mhawbi');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Zar Zar Ko','5/KLN(N)079090', '1999-11-23','Female','zar19@gmail.com','09-754121774','South Oakklar');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Kyaw Soe Thein','9/LON(N)312676','2003-4-7','Male','kyawsoe20@gmail.com','09-683117244','North Oakkalar');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Yuzana Maung','5/SKN(N)312223', '1998-5-31','Female','yuzana21@gmail.com','09-255093200','Bahan');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Min Thura Bo','13/LYN(N)245649', '2001-5-10','Male','minthura22@gmail.com','09-978422312','Mayangone');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Kaung Myat Hein','9/YMT(N)241179', '1999-6-9','Male','kaumgmyat23@gmail.com','09-256395369','Sanchaung');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Thura Soe Lwin','8/STY(N)046981', '2000-6-7','Male','thurasoe24@gmail.com','09-979426443','Sanchaung');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Bhone Zarni Htut','14/KLN(N)197585', '2002-4-8','Male','bhone25@gmail.com','09-4444102294','ShwePyiThar');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Thin Mya Mya Zaw','9/KAZ(N)059597', '1998-9-5','Female','thinmya26@gmail.com','09-776553249','Bahan');
INSERT INTO Student (Name,NRC,Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Ma Thuzar Myint','8/TYN(N)125181', '2004-1-2','Female','thuza27@gmail.com','09-452525560','Mayangone');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Thaung Htike Zaw','10/TPY(N)189979', '2002-7-16','Male','thaunghtike28@gmail.com','09-979357755','HlaingTharYar');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Bo Lwin Myint','7/KTK(N)232559', '1996-5-30','Male','bolwinmyint29@gmail.com','09-256332491','ThingunGyun');
INSERT INTO Student (Name,NRC, Date_Of_Birth,Gender,Email,Ph_no,City) VALUES ('Mg Hein Myat Thu','10/MLM(N)309807', '2004-6-8','Male','heinmyat30@gmail.com','09-675987542','Yangon');


INSERT INTO Instructor (Instructor_name,NRC,Gender,Ph_no,Email,Salary) VALUES ('Daw Ei Ei Tun','12/DGS(N)276925','Female','09-795345115','ei12@gamil.com',150000);
INSERT INTO Instructor (Instructor_name,NRC,Gender,Ph_no,Email,Salary) VALUES ('U Nanda Aung','8/NMN(N)161219','Male','09-980702235','aung16@gamil.com',160000);
INSERT INTO Instructor (Instructor_name,NRC,Gender,Ph_no,Email,Salary) VALUES ('Daw Hanni Naing','12/AKM(N)229106','Female','09-689183635','hanni17@gmail.com',180000);
INSERT INTO Instructor (Instructor_name,NRC,Gender,Ph_no,Email,Salary) VALUES ('Daw Khaing Pyae Sone','12/AKT(N)271240','Female','09-401582337','Kaing10@gmail.com',190000);
INSERT INTO Instructor (Instructor_name,NRC,Gender,Ph_no,Email,Salary) VALUES ('Daw Shin Shin Htwe','8/KHN(N)362251','Female','09-975742479','shin11@gmail.com',2000000);



INSERT INTO Course (Course_Name,Description,Duration,Price) VALUES ('N5','Minna Text Book and N5 Grammar Book','3-months',150000);
INSERT INTO Course (Course_Name,Description,Duration,Price) VALUES ('N4','Minna Text Book ,Grammar and Kanji','3-months',170000);
INSERT INTO Course (Course_Name,Description,Duration,Price) VALUES ('N3','Minna Text Book and N5 Grammar Book','4-months',200000);
INSERT INTO Course (Course_Name,Description,Duration,Price) VALUES ('N2','Advanced Shinkanzen ,Tango and Kanji Master','5-months',220000);
INSERT INTO Course (Course_Name,Description,Duration,Price) VALUES ('N1','Speaking aKanji','6-months',300000);



INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (1,1,'7:30AM','9:00AM','Weekday');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (2,2,'9:00AM','10:30AM','Weekday');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (3,3,'10:30AM','12:00AM','Weekday');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (4,4,'2:00PM','3:30PM','Weekday');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (5,5,'3:30PM','5:00PM','Weekday');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (1,1,'7:00AM','9:00AM','Weekend');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (2,2,'9:00AM','11:00AM','Weekend');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (3,3,'12:00AM','2:00PM','Weekend');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (4,4,'2:00PM','4:00PM','Weekend');
INSERT INTO Section (Instructor_id,Course_id,Start_Time,End_Time,Days) VALUES (5,5,'4:00PM','6:00PM','Weekend');


INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,1,'2024-4-23','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,2,'2024-4-24','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,3,'2024-4-25','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,4,'2024-4-24','old','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,5,'2024-4-26','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,6,'2024-4-27','old','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,7,'2024-4-28','newbie','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,8,'2024-4-27','newbie','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,9,'2024-4-29','newbie','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,10,'2024-4-30','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,11,'2024-4-23','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,12,'2024-4-25','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,13,'2024-4-24','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,14,'2024-4-26','old','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,15,'2024-4-28','old','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,16,'2024-4-29','old','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,17,'2024-4-30','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,18,'2024-4-24','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,19,'2024-4-26','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,20,'2024-4-29','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,21,'2024-4-23','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,22,'2024-4-24','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,23,'2024-4-25','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,24,'2024-4-26','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,25,'2024-4-28','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,26,'2024-4-27','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,27,'2024-4-29','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,28,'2024-4-30','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,29,'2024-4-25','old','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,30,'2024-4-26','old','in-person');

INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,2,'2023-4-24','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,3,'2023-4-25','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,4,'2023-4-24','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,6,'2023-4-27','newbie','online');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,14,'2023-4-26','newbie','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,15,'2023-4-28','newbie','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,16,'2023-4-29','newbie','e-mail');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,17,'2023-4-30','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,18,'2023-4-24','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,25,'2023-4-28','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (5,26,'2023-4-27','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (3,27,'2023-4-29','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (2,28,'2023-4-30','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (1,29,'2023-4-25','newbie','in-person');
INSERT INTO Registration (Section_id,Student_id,Registration_Date,Status,Registration_Method) VALUES (4,30,'2023-4-26','newbie','in-person');


INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (1,'2024-4-23','Cash',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (2,'2024-4-24','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (3,'2024-4-25','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (4,'2024-4-24','E-Bay',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (5,'2024-4-26','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (6,'2024-4-27','E-Bay',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (7,'2024-4-28','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (8,'2024-4-27','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (9,'2024-4-29','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (10,'2024-4-30','Cash',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (11,'2024-4-23','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (12,'2024-4-25','Cash',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (13,'2024-4-24','Cash',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (14,'2024-4-26','E-Bay',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (15,'2024-4-28','E-Bay',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (16,'2024-4-29','E-Bay',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (17,'2024-4-30','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (18,'2024-4-24','E-Bay',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (19,'2024-4-26','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (20,'2024-4-29','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (21,'2024-4-23','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (22,'2024-4-24','E-Bay',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (23,'2024-4-25','Cash',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (24,'2024-4-26','Cash',0);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (25,'2024-4-28','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (26,'2024-4-27','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (27,'2024-4-29','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (28,'2024-4-30','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (29,'2024-4-25','Cash',10);
INSERT INTO Payment (Registration_id,Payment_Date,Payment_Type,Discount_percent) VALUES (30,'2024-4-26','E-Bay',10);



INSERT INTO Exam (Exam_Type,Max_Scores,Min_Scores) VALUES ('JLPT',180,60);
INSERT INTO Exam (Exam_Type,Max_Scores,Min_Scores) VALUES ('JFT',180,60);
INSERT INTO Exam (Exam_Type,Max_Scores,Min_Scores) VALUES ('Nat-Test',180,60);




create user project@localhost identified by 'pj';

Grant select on Registration to project@localhost;

show grants;


create view Student_Info as 
select Student_id,Name,NRC,Email,Ph_no from Student;

select * from Student_Info;

create view Count_Of_newbie as 
select count(*) as Count_Of_New_Student from Student as s,Registration as r
where s.Student_id=r.Student_id and r.Status='newbie' and r.Registration_Date between '2024-4-23' and '2024-4-30';

select * from Count_Of_newbie;

create view Count_Of_old as 
select count(*) as Count_Of_Old_Student from Student as s,Registration as r
where s.Student_id=r.Student_id and r.Status='newbie' and r.Registration_Date between '2023-4-24' and '2023-4-30';

select * from Count_Of_old;




SELECT * FROM Student;

SELECT * FROM Instructor;

SELECT * FROM Course;

SELECT * FROM Section;

SELECT * FROM Registration;

SELECT * FROM Payment;

SELECT * FROM Exam;



select count(*) as Num_Of_N5_Student from Course as c,Section as s,Registration as r,Student as st where c.Course_id=s.Course_id and s.Section_id=r.Section_id and r.Student_id=st.Student_id and c.Course_Name='N5';


select Instructor_name from Instructor where Salary=(select max(Salary) from Instructor);


select Instructor_id,Instructor_name from Instructor where Salary between 150000 and 200000;


select s.Student_id,s.Name from Student as s,Registration as r,Payment as p 
where r.Student_id=s.Student_id and p.Registration_id=r.Registration_id and r.Status='old';


select s.Student_id,s.Name from Student as s where Gender='Male' and City in ('Bahan','Yangon');


select s.Student_id,s.Name from Student as s,Registration as r where r.Status='newbie' and s.Student_id=r.Student_id and
exists (select t.Registration_Method from Registration as t where t.Registration_Method='in-person' and r.Registration_id=t.Registration_id);


select i.Instructor_id,i.Instructor_name from Instructor as i,Section as s,Course as c 
where i.Instructor_id=s.Instructor_id and c.Course_id=s.Course_id and s.Days='Weekend' and c.Course_Name='N1';



select s.Name,c.Course_Name,p.Discount_percent,p.Payment_Date from Student as s,Course as c,Payment as p,Registration as r,Section as se
where c.Course_id=se.Course_id and se.Section_id=r.Section_id and p.Registration_id=r.Registration_id and r.Student_id=s.Student_id
 and r.Registration_id=2;
 
 
select SUM(c.Price) as Total_Amount_Of_N5 from Student as s,Registration as r,Section as se,Course as c
where s.Student_id=r.Registration_id and r.Section_id=se.Section_id and se.Course_id=c.Course_id and c.Course_id=1;
 
