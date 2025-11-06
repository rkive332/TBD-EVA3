DELIMITER $$
CREATE PROCEDURE calcular_cuadrado(IN num INT, OUT resu INT)
BEGIN
	SET resu = num * num;
END$$
DELIMITER ;