CREATE TABLE ADMIN(
ADMIN_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
ADMIN_NAME VARCHAR(50),
ADMIN_POST VARCHAR(30));

CREATE TABLE DEPARTMENT(
DEPARTMENT_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
ADMIN_ID INT,
DEPARTMENT_NAME VARCHAR(30),
DEPARTMENT_MANAGER VARCHAR(50)
CONSTRAINT fk_d_adminid FOREIGN KEY(ADMIN_ID) REFERENCES ADMIN(ADMIN_ID)
);

CREATE TABLE OFFICE(
OFFICE_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
BUILDING_LOCATION VARCHAR(50),
ROOM_NO INT,
[FLOOR] INT);

CREATE TABLE DOCTOR(
DOCTOR_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
DEPARTMENT_ID INT,
OFFICE_ID INT,
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
SPECIALIST VARCHAR(40),
PHONE VARCHAR(14),
EMAIL VARCHAR(30)
CONSTRAINT fk_d_deptid FOREIGN KEY(DEPARTMENT_ID) REFERENCES DEPARTMENT(DEPARTMENT_ID),
CONSTRAINT fk_d_offid FOREIGN KEY(OFFICE_ID) REFERENCES OFFICE(OFFICE_ID)
);

CREATE TABLE PATIENT(
PATIENT_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1), 
FIRST_NAME VARCHAR(50),
LAST_NAME VARCHAR(50),
NATIONALITY VARCHAR(20),
GENDER VARCHAR(14),
ADDRESS VARCHAR(60),
DOB DATE,
PHONE VARCHAR(14),
EMAIL VARCHAR(30)
);

CREATE TABLE APPOINTMENT(
APPOINTMENT_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
PATIENT_ID INT,
DOCTOR_ID INT,
[TYPE] VARCHAR(40),
CREATED_DATE DATETIME,
APPOINTMENT_DATE DATE,
APPOINTMENT_TIME TIME,
APPOINTMENT_DESCRIPTION VARCHAR(50)
CONSTRAINT fk_a_patid FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID),
CONSTRAINT fk_a_docid FOREIGN KEY (DOCTOR_ID) REFERENCES DOCTOR(DOCTOR_ID)
);

CREATE TABLE VISIT(
VISIT_ID INT NOT NULL PRIMARY KEY IDENTITY(1,1),
PATIENT_ID INT,
DOCTOR_ID INT,
VISIT_DATE DATE,
DIAGNOSIS VARCHAR(50),
REFERENCE VARCHAR(40)
CONSTRAINT fk_v_patid FOREIGN KEY (PATIENT_ID) REFERENCES PATIENT(PATIENT_ID),
CONSTRAINT fk_v_docid FOREIGN KEY (DOCTOR_ID) REFERENCES DOCTOR(DOCTOR_ID)
);

INSERT INTO ADMIN (ADMIN_NAME,ADMIN_POST) VALUES 
('Harry Potter','ADMIN1'),
('Severus Snape','ADMIN2'),
('Hermoine Granger','ADMIN3'),
('Ron Weasly','ADMIN4'),
('Albus Dumbledore','ADMIN5'),
('Lord Voldemort','ADMIN6'),
('Ginny Weasly','ADMIN7'),
('Draco Malfoy','ADMIN8'),
('Rubeus Hagrid','ADMIN9'),
('Neville Longbottom','ADMIN10')

INSERT INTO DEPARTMENT (ADMIN_ID,DEPARTMENT_NAME,DEPARTMENT_MANAGER) VALUES 
(1,'Cardiologist',1),
(2,'Gastroenterologist',2),
(3,'Nephrologist',3),
(4,'Pulmonologist',4),
(5,'Ophthalmologist',5),
(6,'Dermatologist',6),
(7,'Psychiatrist',7),
(8,'Neurologist',8),
(9,'Radiologist',9),
(10,'Orthopedics',10)

INSERT INTO OFFICE (BUILDING_LOCATION,ROOM_NO,[FLOOR]) VALUES 
('33 gay head street',1,1),
('33 gay head street',2,1),
('33 gay head street',3,1),
('33 gay head street',4,1),
('33 gay head street',5,1),
('33 gay head street',1,2),
('33 gay head street',2,2),
('33 gay head street',3,2),
('33 gay head street',4,2),
('33 gay head street',5,2)

INSERT INTO DOCTOR (DEPARTMENT_ID,OFFICE_ID,FIRST_NAME,LAST_NAME,SPECIALIST,PHONE,EMAIL) VALUES
(1,1,'Harish','Gunda','Cardiologist','8578691532','gunda.sa@gmail.com'),
(2,2,'Utkarsh','Dhande','Gastroenterologist','8578691533','dhande.ut@gmail.com'),
(3,3,'Aditya','Dasani','Nephrologist','8578691534','dasani.ad@gmail.com'),
(4,4,'Dev','Patel','Pulmonologist','8578691535','patel.de@gmail.com'),
(5,5,'Tejas','Narayan','Otolaryngologist','8578691536','narayan.te@gmail.com'),
(6,6,'Bharat','Vennupusa','Dermatologist','8578691537','vennupusa.bh@gmail.com'),
(7,7,'Tapan','Katipelli','Psychiatrist','8578691538','katipelli.ta@gmail.com'),
(8,8,'Vipanchi','Kattula','Neurologist','8578691539','kattula.vi@gmail.com'),
(9,9,'Lohit','Kilaru','Radiologist','8578691510','kilaru.lo@gmail.com'),
(10,10,'Phani','Sesha','Orthopedics','8578691511','sesha.ph@gmail.com')

INSERT INTO PATIENT (FIRST_NAME,LAST_NAME,NATIONALITY,GENDER,[ADDRESS],DOB,PHONE,EMAIL) VALUES
('Jessi','Kams','Indian','M','33 Gay Head Street','01/01/1996','8578691535'),
('Rev','Katha','Indian','M','33 Gay Head Street','02/02/1995','8578691536'),
('Matty','Rep','USA','M','54 Heath Street','03/03/2000','8578691537'),
('John','Doe','USA','M','75 Bluehill Street','04/04/1998','8578691538'),
('Jane','Doe','USA','F','33 Nubian Street','05/05/1996','8578691539'),
('Rachel','Zane','Indian','F','33 Gay Head Street','06/06/1996','8578691541'),
('Monica','Geller','Indian','F','33 Gay Head Street','07/07/1995','8578691542'),
('Phoebe','Buffay','USA','F','54 Heath Street','08/08/2000','8578691543'),
('Penny','Hemsworth','USA','F','75 Bluehill Street','08/09/1998','8578691544'),
('Bernadette','Doe','USA','F','33 Nubian Street','10/11/1996','8578691545')

INSERT INTO APPOINTMENT (PATIENT_ID,DOCTOR_ID,[TYPE],CREATED_DATE,APPOINTMENT_DATE,APPOINTMENT_TIME,APPOINTMENT_DESCRIPTION) VALUES
 (1,1,'Heart',GETDATE(),'4/10/2022','10:00 AM','Patient experiencing severe heart burn'),
 (2,2,'Stomach',GETDATE(),'4/12/2022','12:00 AM','Patient experiencing severe stomach ache'),
 (3,3,'Kidney',GETDATE(),'03/07/2022','4:00 PM','Patient experiencing pain near kidney'),
 (4,4,'Lungs',GETDATE(),'02/11/2022','6:00 PM','Patient unable to breathe'),
 (5,5,'ENT',GETDATE(),'01/12/2022','01:00 PM','Patient experiencing severe heart burn'),
 (6,6,'Skin',GETDATE(),'04/14/2022','10:00 AM','Patient experiencing itchy and dry skin'),
 (7,7,'Mental',GETDATE(),'04/15/2022','12:00 AM','Patient experiencing severe anxiety'),
 (8,8,'Nerves',GETDATE(),'03/06/2022','4:00 PM','Patient experiencing pain in nerves'),
 (9,9,'XRay',GETDATE(),'02/15/2022','6:00 PM','Patient need consultation with XRay'),
 (10,10,'Bone',GETDATE(),'01/19/2022','01:00 PM','Patient experiencing severe heart pain in the joints')

 INSERT INTO VISIT (PATIENT_ID,DOCTOR_ID,VISIT_DATE,DIAGNOSIS,REFERENCE) VALUES
 (1,1,'Heart','4/10/2022','This patient is suffering from cornary heart disease because of unhealthy and lazy lifestyle',''),
 (2,2,'Stomach','4/12/2022','This patient is suffering from Gastritis.XRay shows inflammed and swollend lining',''),
 (3,3,'Kidney','03/07/2022','This patient has kidney stones',''),
 (4,4,'Lungs','02/11/2022','This patient is suffering from mild asthma',''),
 (5,5,'ENT','01/12/2022','This patient''s ears,nose and throat are all perfectly fine',''),
 (6,6,'Skin','04/14/2022','This patient has dermatitis eczema',''),
 (7,7,'Mental','04/15/2022','This patient''s illness is highly likely to be caused by PPD based on the extensive negative diagnostic evaluation, the large number of unrelated symptoms and the presence of multiple sources of stress.  Most significant among the latter are her many ACEs which have led to poor self-esteem, a lack of self-care skills and chronic anxiety.  These have made it difficult or impossible for her to cope with several difficult aspects of her current life including her unsupportive husband and children with special needs',''),
 (8,8,'Nerves','03/06/2022','This patient has Alzheimer''s disease',''),
 (9,9,'XRay','02/15/2022','This patient has stones in the kidney',''),
 (10,10,'Bone','01/19/2022','This patient''s illness is highyl likely caused by Arthritis','')

 INSERT INTO MEDICINE (MEDICINE_NAME,MEDICINE_TYPE,MEDICINE_DESCRIPTION,MEDICINE_PRICE) VALUES
 ('','','',1),
 ('','','',1),
 ('','','',1),
 ('','','',1),
 ('','','',1),
 ('','','',1),
 ('','','',1),
 ('','','',1),
 ('','','',1),
 ('','','',1)

 INSERT INTO PRESCRIPTION (MEDICINE_ID,VISIT_ID,TIMEFRAME,QUANTITY,DOSAGE) VALUES
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 ()

  INSERT INTO BILL (VISIT_ID,DOCTOR_CHARGE,MEDICINE_CHARGE,LAB_CHARGE) VALUES
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 ()

  INSERT INTO INSURANCE (PATIENT_ID,PUBLISH_DATE,EXPIRATION_DATE,INSURANCE_COMPANY,INSURANCE_PLAN_ID) VALUES
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 (),
 ()
