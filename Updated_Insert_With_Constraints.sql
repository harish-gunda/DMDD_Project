INSERT INTO ADMIN (ADMIN_NAME,ADMIN_POST) VALUES 
('Harry Potter','BUSINESS'),
('Severus Snape','FINANCE'),
('Hermoine Granger','FINANCE'),
('Ron Weasly','BUSINESS'),
('Albus Dumbledore','FINANCE'),
('Lord Voldemort','BUSINESS'),
('Ginny Weasly','FINANCE'),
('Draco Malfoy','BUSINESS'),
('Rubeus Hagrid','FINANCE'),
('Neville Longbottom','BUSINESS')


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
('33 head street',1,1),
('Snell Centre',2,1),
('Curry Centre',3,1),
('Marino Centre',4,1),
('Wall Centre',5,1),
('Snell Centre',1,2),
('Prudential Centre',2,2),
('Dodge Hall',3,2),
('Vision Eye Centre',4,2),
('Park Centre',5,2)


INSERT INTO DOCTOR (Doctor_Code, DEPARTMENT_ID,OFFICE_ID,FIRST_NAME,LAST_NAME,SPECIALIST,PHONE,EMAIL) VALUES
('Doc1',1,1,'Harish','Gunda','Cardiologist','8578691532','gunda.sa@gmail.com'),
('Doc2',2,2,'Utkarsh','Dhande','Gastroenterologist','8578691533','dhande.ut@gmail.com'),
('Doc3',3,3,'Aditya','Dasani','Nephrologist','8578691534','dasani.ad@gmail.com'),
('Doc4',4,4,'Dev','Patel','Pulmonologist','8578691535','patel.de@gmail.com'),
('Doc5',5,5,'Tejas','Narayan','Otolaryngologist','8578691536','narayan.te@gmail.com'),
('Doc6',6,6,'Bharat','Vennupusa','Ophthalmologist','8578691537','vennupusa.bh@gmail.com'),
('Doc7',7,7,'Tapan','Katipelli','Dermatologist','8578691538','katipelli.ta@gmail.com'),
('Doc8',8,8,'Vipanchi','Kattula','Psychiatrist','8578691539','kattula.vi@gmail.com'),
('Doc9',9,9,'Lohit','Kilaru','Neurologist','8578691510','kilaru.lo@gmail.com'),
('Doc10',10,10,'Phani','Sesha','Radiologist','8578691511','sesha.ph@gmail.com')

INSERT INTO PATIENT (Patient_Code,FIRST_NAME,LAST_NAME,NATIONALITY,GENDER,[ADDRESS],DOB,PHONE,EMAIL) VALUES
('PA001','Jessi','Kams','Indian','M','33 Gay Head Street','01/01/1996','1','jessi@gmail.com'),
('PA002','Rev','Katha','Indian','M','33 Gay Head Street','02/02/1995','2','rev@gmail.com'),
('PA003','Matty','Rep','USA','M','54 Heath Street','03/03/2000','3','matty@gmail.com'),
('PA004','John','Doe','USA','M','75 Bluehill Street','04/04/1998','4','john@gmail.com'),
('PA005','Jane','Doe','USA','F','33 Nubian Street','05/05/1996','5','jane@gmail.com'),
('PA006','Rachel','Zane','Indian','F','33 Gay Head Street','06/06/1996','6','rachel@gmail.com'),
('PA007','Monica','Geller','Indian','F','33 Gay Head Street','07/07/1995','7','monica@gmail.com'),
('PA008','Phoebe','Buffay','USA','F','54 Heath Street','08/08/2000','8','phoebe@gmail.com'),
('PA009','Penny','Hemsworth','USA','F','75 Bluehill Street','08/09/1998','9','penny@gmail.com'),
('PA010','Bernadette','Doe','USA','F','33 Nubian Street','10/11/1996','10','bernadette@gmail.com')

INSERT INTO APPOINTMENT (PATIENT_ID,DOCTOR_ID,[TYPE],CREATED_DATE,APPOINTMENT_DATE,APPOINTMENT_TIME,APPOINTMENT_DESCRIPTION) VALUES
 (7,11,'Cardiologist',GETDATE(),'4/10/2022','10:00 AM','Patient experiencing severe heart burn'),
 (8,12,'Gastroenterologist',GETDATE(),'4/12/2022','12:00 AM','Patient experiencing severe stomach ache'),
 (9,13,'Nephrologist',GETDATE(),'03/07/2022','4:00 PM','Patient experiencing pain near kidney'),
 (10,14,'Pulmonologist',GETDATE(),'02/11/2022','6:00 PM','Patient unable to breathe'),
 (11,15,'Otolaryngologist',GETDATE(),'01/12/2022','01:00 PM','Patient experiencing severe heart burn'),
 (12,16,'Ophthalmologist',GETDATE(),'04/14/2022','10:00 AM','Patient experiencing itchy and dry skin'),
 (13,17,'Dermatologist',GETDATE(),'04/15/2022','12:00 AM','Patient experiencing severe anxiety'),
 (14,18,'Psychiatrist',GETDATE(),'03/06/2022','4:00 PM','Patient experiencing pain in nerves'),
 (15,19,'Neurologist',GETDATE(),'02/15/2022','6:00 PM','Patient need consultation with XRay'),
 (16,11,'Radiologist',GETDATE(),'01/19/2022','01:00 PM','Patient experiencing severe heart pain in the joints')

 INSERT INTO VISIT (PATIENT_ID,DOCTOR_ID,VISIT_DATE,DIAGNOSIS,REFERENCE) VALUES
 (7,11,'4/10/2022','This patient is suffering from cornary heart disease because of unhealthy and lazy lifestyle',''),
 (8,12,'4/12/2022','This patient is suffering from Gastritis.XRay shows inflammed and swollend lining',''),
 (9,13,'03/07/2022','This patient has kidney stones',''),
 (10,14,'02/11/2022','This patient is suffering from mild asthma',''),
 (11,15,'01/12/2022','This patient''s ears,nose and throat are all perfectly fine',''),
 (12,16,'04/14/2022','This patient has dermatitis eczema',''),
 (13,17,'04/15/2022','This patient''s illness is highly likely to be caused by PPD.',''),
 (14,18,'03/06/2022','This patient has Alzheimer''s disease',''),
 (15,19,'02/15/2022','This patient has stones in the kidney',''),
 (16,11,'01/19/2022','This patient''s illness is highyl likely caused by Arthritis','')
