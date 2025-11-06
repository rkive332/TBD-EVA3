DELIMITER $$
CREATE FUNCTION generar_RFC(Nombre VARCHAR(50), ap_Paterno VARCHAR(50), ap_Materno VARCHAR(50), fecha_Nac DATE)
RETURNS VARCHAR(10)
DETERMINISTIC
BEGIN
    DECLARE letras VARCHAR(4);
    DECLARE ano CHAR(2);
    DECLARE mes CHAR(2);
    DECLARE dia CHAR(2);

    SET letras = obtener_letras(Nombre, ap_Paterno, ap_Materno);
    SET ano = obtener_ano(fecha_Nac);
    SET mes = obtener_mes(fecha_Nac);
    SET dia = obtener_dia(fecha_Nac);
    
    RETURN CONCAT(letras, ano, mes, dia);
END$$
DELIMITER ;