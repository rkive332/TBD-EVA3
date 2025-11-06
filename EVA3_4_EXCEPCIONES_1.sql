DELIMITER $$
CREATE FUNCTION obtener_letras(o_Nombre VARCHAR(50), ap_Paterno VARCHAR(50), ap_Materno VARCHAR(50))
RETURNS VARCHAR(4)
DETERMINISTIC
BEGIN
    DECLARE Paterno VARCHAR(2);
    DECLARE Materno CHAR(1);
    DECLARE Nombre CHAR(1);

    SET Paterno = SUBSTRING(ap_Paterno, 1, 2);

    IF ap_Materno IS NULL OR ap_Materno = '' THEN
        SET Materno = 'X';
    ELSE
        SET Materno = SUBSTRING(ap_Materno, 1, 1);
    END IF;
    SET Nombre = SUBSTRING(o_nombre, 1, 1);
    RETURN UPPER(CONCAT(Paterno, Materno, Nombre));
END$$
DELIMITER ;