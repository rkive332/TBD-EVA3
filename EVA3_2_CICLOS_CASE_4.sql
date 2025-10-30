DELIMITER $$
CREATE FUNCTION sumatoria_while(valor INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE sumatoria INT DEFAULT 0;
    DECLARE contador INT DEFAULT 1;
    
	WHILE contador <= valor DO
		SET sumatoria = sumatoria + contador;
		SET contador = contador + 1;
    END WHILE;
    RETURN sumatoria;
END$$
DELIMITER ;