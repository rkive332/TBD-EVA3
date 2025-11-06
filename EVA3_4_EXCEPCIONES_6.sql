DELIMITER $$
CREATE PROCEDURE agregar_personas(IN Nombre VARCHAR(50), IN ap_Paterno VARCHAR(50), IN ap_Materno VARCHAR(50), IN fecha_Nac DATE)

BEGIN
    DECLARE RFC_calculado VARCHAR(10);
    SET RFC_calculado = generar_RFC(Nombre, ap_Paterno, ap_Materno, fecha_Nac);
    INSERT INTO Personas (RFC, Nombre, Ap_Paterno, Ap_Materno, Fecha_Nac)
    VALUES (RFC_calculado, Nombre, ap_Paterno, ap_Materno, fecha_Nac);
END$$
DELIMITER ;