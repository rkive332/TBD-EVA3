DELIMITER $$
CREATE FUNCTION sumatoria_repeat(valor INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE sumatoria INT DEFAULT 0;
    DECLARE contador INT DEFAULT 1;
    
	REPEAT 
		SET sumatoria = sumatoria + contador;
		SET contador = contador + 1;
	UNTIL contador > valor END REPEAT;
    RETURN sumatoria;
END$$
DELIMITER ;