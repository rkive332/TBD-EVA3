DELIMITER $$
CREATE PROCEDURE contar_actor(OUT cont INT)
BEGIN
    DECLARE id INT;
    DECLARE nombre VARCHAR(50);
    DECLARE apellido VARCHAR(50);
    DECLARE terminar INT DEFAULT FALSE;
    DECLARE contar_actores CURSOR FOR
        SELECT actor_id, first_name, last_name
        FROM actor;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET terminar = TRUE;
    OPEN contar_actores;
    SET cont = 0;
    mi_cursor: LOOP
        FETCH contar_actores INTO id, nombre, apellido;
        IF terminar THEN
            LEAVE mi_cursor;
        END IF;        
        SET cont = cont + 1;
    END LOOP;
    CLOSE contar_actores;
END$$
DELIMITER ;