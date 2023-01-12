CREATE TABLE Patient
(
PatientId VARCHAR(6) PRIMARY KEY,
DateOfBirth DATETIME,
Sex CHAR(1),
HospitalId VARCHAR(6),
Postcode VARCHAR(8) NULL,
AdmitDate DATETIME NULL,
DischargeDate DATETIME NULL
)

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0001' , '1965-07-13' , 'F' , 'H0001' , 'DH1 XYZ' , '2005-07-12' , '2005-07-15'  )

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0002' , '1998-02-28' , 'M' , 'H0001' , 'DH1 5XY' , '2007-03-12' , '2007-04-12'  )

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0003' , '2000-01-01' , 'M' , 'H0005' , 'DH1 ABC' , '2007-03-12' , '2007-04-12'  )

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0004' , '1935-09-19' , 'M' , 'H0005' , NULL , '2006-01-06' , '2006-10-01'  )

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0005' , '1994-06-16' , 'F' , 'H0001' , '' , '2006-12-09' , '2006-12-09'  )

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0006' , '1988-05-03' , 'M' , 'H1000' , '' , '2007-09-11' , '2007-09-13'  )

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0007' , '2007-08-03' , 'M' , 'H0003' , '' , null , NULL  )

INSERT dbo.Patient ( PatientId,DateOfBirth,Sex,HospitalId,Postcode ,AdmitDate ,DischargeDate)
VALUES  ( 'P0008' , '2007-08-03' , 'M' , 'H0003' , '' , GETDATE() , NULL  )

CREATE TABLE Hospital
(
HospitalId VARCHAR(6) PRIMARY KEY,
HospitalName VARCHAR(150) ,
Postcode VARCHAR(8),
Area VARCHAR(50)
)

INSERT dbo.Hospital ( HospitalId , HospitalName , Postcode , Area ) VALUES  ( 'H0001' , 'Freeman Hospital' , 'NE7 7DN' , 'Newcastle' )
INSERT dbo.Hospital ( HospitalId , HospitalName , Postcode , Area ) VALUES  ( 'H0002' , 'University Hospital Durham' , 'DH1 5TW' , 'Durham' )
INSERT dbo.Hospital ( HospitalId , HospitalName , Postcode , Area ) VALUES  ( 'H0003' , 'Royal Victoria Infirmary' , 'NE1 4LP' , 'Newcastle' )
INSERT dbo.Hospital ( HospitalId , HospitalName , Postcode , Area ) VALUES  ( 'H0005' , 'Newcastle General Hospital' , 'NE4 6BE' , 'Newcastle' )
INSERT dbo.Hospital ( HospitalId , HospitalName , Postcode , Area ) VALUES  ( 'H0006' , 'University Hospital of Hartlepool' , 'TS19 8PE' , 'Durham' )
INSERT dbo.Hospital ( HospitalId , HospitalName , Postcode , Area ) VALUES  ( 'H0007' , 'North Tyneside General Hospital' , 'NE29 8NH' , 'North Shields' )
