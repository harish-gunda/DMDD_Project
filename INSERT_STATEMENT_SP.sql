INSERT INTO ADMIN (ADMIN_NAME,ADMIN_POST) VALUES 
('Harry Potter','BUSINESS'),
('Severus Snape','FINANCE');

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
('Park Centre',5,2),
('Wall Centre',1,3),
('Snell Centre',2,3),
('Park Centre',3,3),
('Dodge Hall',4,3),
('Park Centre',5,3),
('Marino Centre',1,4),
('Park Centre',2,4),
('Vision Eye Centre',3,4),
('Park Centre',4,4),
('Curry Centre',5,4);

INSERT INTO DEPARTMENT (ADMIN_ID,DEPARTMENT_NAME,DEPARTMENT_MANAGER) VALUES 
(1,'Cardiologist',1),
(1,'Gastroenterologist',1),
(1,'Nephrologist',1),
(1,'Neurologist',1),
(1,'Radiologist',4),
(1,'Pulmonologist',4),
(1,'Otolaryngologist',4),
(1,'Ophthalmologist',4),
(1,'Dermatologist',4),
(1,'Psychiatrist',1);

INSERT INTO MEDICINE (MEDICINE_NAME,MEDICINE_TYPE,MEDICINE_DESC,MEDICINE_PRICE) VALUES
('Statins','Heart','To lower cholestrol',10),
('Pepto Bismal','Stomach','To reduce stomach problems',20),
('Renal Gen','Kidney','Dietary Supplement',30),
('GUT Lung Therapy','Lungs','Aids in lung recovery',25),
('Astepro','ENT','Clears ear blocks',18),
('Zyrtec','Skin','Rejuvanates skin',14),
('Xanax','Mental','Reduces anxiety and stress',23),
('Qualia Mind','Nerves','Brain growth and recovery',23),
('XRay Dol','XRay','Triple action tablets',25),
('AlgaeCal Plus','Bone','Increases bone strength',10),
('Zyrtec','Skin','Rejuvanates skin',14),
('AlgaeCal Plus','Bone','Increases bone strength',10),
('GUT Lung Therapy','Lungs','Aids in lung recovery',25),
('Xanax','Mental','Reduces anxiety and stress',23),
('AlgaeCal Plus','Bone','Increases bone strength',10),
('Renal Gen','Kidney','Dietary Supplement',30),
('Statins','Heart','To lower cholestrol',10),
('AlgaeCal Plus','Bone','Increases bone strength',10),
('Renal Gen','Kidney','Dietary Supplement',30),
('Pepto Bismal','Stomach','To reduce stomach problems',20);

INSERT INTO CODES(TABLE_NAME,TABLE_ID,VALUE)VALUES
('PATIENT','PA',0),
('DOCTOR','DR',0);




-- DOCTOR REGISTRATION


DECLARE @STATUS_MSG VARCHAR(200)
EXEC SET_DOCTOR_REGISTRATION 'SANEEL','TARE','cardiologist','1234567878','ST@gmail.com',1,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Sunit','Bail','cardiologist','1233567878','sunit@gmail.com',2,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Swaroop','Gupta','Gastroenterologist','1234567878','swaroop.com',3,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Raghu','Singh','Nephrologist','1222567878','raghu.com',4,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Aman','Gandhi','Pulmonologist','1277567878','aman.com',5,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Chinmay','ghodke','Ophthalmologist','1244567878','chinmay.com',6,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Aditya','Dasani','Dermatologist','1288567878','aditya.com',7,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Sakshi','Shah','Psychiatrist','2488567878','sakshi.com',8,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Utkarsh','Dhande','Neurologist','3688567878','utkarsh.com',9,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Megha','Godse','Radiologist','3688569999','megha.com',10,@STATUS_MSG out

EXEC SET_DOCTOR_REGISTRATION 'Isha','Rai','Orthopedics','3688569889','isha.com',11,@STATUS_MSG out




-- PATIENT REGISTRATION


EXEC SET_PATIENT_REGISTRATION 'UTKARSH','DHANDE','INDIAN','M','8 PARKEWR HILL','06-14-1996','9782238942','AVDC@GMAIL.COM',
'1234456788','01/01/2019','12/30/2024','AABC','ABC0087957','5000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'SHANTANU','ZODEY','INDIAN','M','8 PARKEWR HILL','06-14-1996','9792238942','AVDC@GMAIL.COM',
'1234456788','01/01/2020','12/30/2024','AABC','ABC0087957','5000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Aditya','Dasani','INDIAN','M','48 Sheridan Street','02-27-1998','9782238882','adi@GMAIL.COM',
'1235556788','01/01/2020','12/30/2022','BCCD','ABC0087956','4000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Sakshi','Shah','INDIAN','F','39 Tremont Street','03-21-1998','9781138882','sakshi@GMAIL.COM',
'1239956788','01/01/2020','12/30/2024','BCDD','ABC0087955','9000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Isha','Shah','INDIAN','F','4 Boylston Street','03-28-1998','9789938882','isha@GMAIL.COM',
'1238856788','01/01/2019','12/30/2023','BCEE','ABC0088854','8000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Aman','Gandhi','INDIAN','M','31 Parker Street','05-16-1998','9781137782','aman@GMAIL.COM',
'1240956788','01/01/2019','12/30/2024','AABC','ABC0087953','7000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Tejas','Raut','INDIAN','M','43 Washington Street','05-21-1998','9782237782','tejas@GMAIL.COM',
'1240856788','01/01/2020','12/30/2024','BCCD','ABC0087923','7000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Chinmay','Chavan','INDIAN','M','22 Mission Street','05-24-1998','9782237782','chinmay@GMAIL.COM',
'1239856788','01/01/2019','12/30/2024','BCEE','ABC0088023','4000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Sujay','Ghodke','INDIAN','M','322 Parker Street','07-24-1998','9782237782','sujay@GMAIL.COM',
'1239856798','01/01/2020','12/30/2025','BCCD','ABC0077023','8000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Manan','Shah','INDIAN','M','498 Sheridan Street','10-24-1998','9782237782','manan@GMAIL.COM',
'1239856698','01/01/2019','12/30/2023','BCEE','ABC0066023','8000',@STATUS_MSG OUT


EXEC SET_PATIENT_REGISTRATION 'Heer','Thakker','INDIAN','M','48 Chestnut Street','10-24-1998','9782237782','manan@GMAIL.COM',
'1239856698','01/01/2019','12/30/2023','BCEE','ABC0066023','8000',@STATUS_MSG OUT



-- SET APPOINTMENT




EXEC SET_PATIENT_APPOINTMENT 'PA_1','DR_1','CARDIOLOGISTS','04/21/2022','8:30 PM','heart prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_2','DR_3','Gastroenterologist','05/09/2022','9:30 PM','liver prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_3','DR_5','Pulmonologist','06/18/2022','6:30 PM','kidney prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_4','DR_7','Dermatologist','07/14/2022','2:30 PM','lungs prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_1','DR_9','Neurologist','06/12/2022','4:30 PM','head prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_3','DR_1','CARDIOLOGISTS','05/20/2022','2:30 PM','heart prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_5','DR_11','Orthopedics','02/15/2022','7:30 PM','kidney prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_7','DR_10','Radiologist','03/12/2022','2:30 PM','liver prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_8','DR_1','CARDIOLOGISTS','04/22/2022','5:30 PM','head prob',@STATUS_MSG OUT
EXEC SET_PATIENT_APPOINTMENT 'PA_9','DR_3','Gastroenterologist','05/27/2022','6:30 PM','lungs prob',@STATUS_MSG OUT




-- SET PATIENT_REPORT 

EXEC [SET_PATIENT_REPORT] 'PA_1','Heart problem','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',200,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_2','ABCD','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',100,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_3','Lung problem','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',400,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_4','ABCD','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',50,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_1','Spine problem','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',250,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_3','heart problem','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',200,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_5','xyz','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',280,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_7','ABCD','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',320,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_8','Heart problem','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',210,@STATUS_MSG OUT
EXEC [SET_PATIENT_REPORT] 'PA_9','ABCD','NA','STATINS,PEPTO BISMAL,ZYRTEC,XANAX','1-0-0',5,'300 MG',140,@STATUS_MSG OUT


