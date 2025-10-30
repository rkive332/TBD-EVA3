DELIMITER $$
CREATE FUNCTION sumatoria_loop(valor INT)
RETURNS INT DETERMINISTIC
BEGIN
	DECLARE sumatoria INT DEFAULT 0;
    DECLARE contador INT DEFAULT 1;
    
	myloop: LOOP
		SET sumatoria = sumatoria + contador;
		SET contador = contador + 1;
        IF contador > valor THEN 
			LEAVE myloop;
		END IF;
    END LOOP myloop;
    RETURN sumatoria;
END$$
DELIMITER ;