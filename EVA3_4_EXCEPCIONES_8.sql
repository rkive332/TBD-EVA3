DELIMITER $$
CREATE PROCEDURE insertar_prueba(Clave INT)
BEGIN
	DECLARE EXIT HANDLER FOR SQLSTATE '23000'
    BEGIN
		SELECT "Error: clave duplicada" AS mensaje_error;
    END;
    
	INSERT INTO Prueba VALUE(Clave);
    SELECT "Clave insertada correctamente" AS mensaje;
END$$
DELIMITER ;