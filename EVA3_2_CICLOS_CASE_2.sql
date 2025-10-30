DELIMITER $$
CREATE FUNCTION calificacion(nume INT)
RETURNS VARCHAR(2) DETERMINISTIC
BEGIN
	DECLARE resu VARCHAR(2);
    CASE 
		WHEN nume >=90 THEN SET resu= "A";
        WHEN nume >=80 THEN SET resu= "B";
        WHEN nume >=70 THEN SET resu= "C";
        WHEN nume >=60 THEN SET resu= "D";
        ELSE SET resu = "F";
    END CASE;
    RETURN resu;
END$$
DELIMITER ;