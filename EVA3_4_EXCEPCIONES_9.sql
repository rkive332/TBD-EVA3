DELIMITER $$
CREATE PROCEDURE division(IN val1 INT, IN val2 INT)
BEGIN
	DECLARE resu DECIMAL(10,2);
    SET resu = val1/val2;
    SELECT resu AS resu_final;
END$$
DELIMITER ;