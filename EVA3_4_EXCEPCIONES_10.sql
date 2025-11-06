DELIMITER $$
CREATE PROCEDURE division2(IN val1 INT, IN val2 INT)
BEGIN
	DECLARE resu DECIMAL(10,2);
	DECLARE CONTINUE HANDLER FOR SQLSTATE '22012'
    BEGIN
		SELECT "Error: División entre  cero no permitida" AS mensaje;
        SET resu = NULL;
    END;
    SET resu = val1/val2;
    SELECT resu AS resu_final;
END$$
DELIMITER ;