DELIMITER $$
CREATE PROCEDURE generar_rfc_actor()
BEGIN
    SELECT 
        first_name AS Nombre,
        last_name AS Apellido,
        generar_rfc(
            first_name,    
            last_name,      
            NULL,           
            DATE(last_update) 
        ) AS rfc_calculado
    FROM actor;
END$$
DELIMITER ;