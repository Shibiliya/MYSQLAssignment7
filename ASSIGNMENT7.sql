USE entri_d42;
SELECT *FROM Country2;
SELECT*FROM Persons2;
ALTER TABLE Persons2 ADD DOB DATE;
UPDATE Persons2 SET DOB='1985-05-12' WHERE Id=1;
UPDATE Persons2 SET DOB='1990-08-25' WHERE Id=2;
UPDATE Persons2 SET DOB='1978-12-14' WHERE Id=3;
UPDATE Persons2 SET DOB='1995-03-09' WHERE Id=4;
UPDATE Persons2 SET DOB='1987-06-19' WHERE Id=5;
UPDATE Persons2 SET DOB='1982-10-10' WHERE Id=6;
UPDATE Persons2 SET DOB='1993-01-04' WHERE Id=7;
UPDATE Persons2 SET DOB='1989-11-28' WHERE Id=8;
UPDATE Persons2 SET DOB='1980-07-15' WHERE Id=9;
UPDATE Persons2 SET DOB='1992-02-22' WHERE Id=10;


DELIMITER $$
CREATE FUNCTION Calculate_age(dob DATE)
RETURNS INT
DETERMINISTIC
BEGIN
    RETURN TIMESTAMPDIFF(YEAR,dob,CURDATE());
 END $$ 
 DELIMITER ;
 
 SELECT Id,Fname,Lname,Calculate_age(DOB) AS Age FROM Persons2;
 
 SELECT Id,Country_name,CHAR_LENGTH(Country_name) AS Name_length FROM Country2;
 
 SELECT Id,Country_name,LEFT(Country_name,3) AS First_three_chars FROM Country2;
 
 SELECT Id,Country_name,UPPER(Country_name) AS Upper_case_name,LOWER(Country_name) AS Lower_case_name FROM Country2;
 
 
 
 
 