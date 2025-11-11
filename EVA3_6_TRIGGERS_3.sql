CREATE DEFINER=`root`@`localhost` TRIGGER `personas_BEFORE_INSERT` BEFORE INSERT ON `personas` FOR EACH ROW BEGIN
	DECLARE calc_rfc VARCHAR(10);
    SET calc_rfc = generar_RFC(NEW.Nombre, NEW.Ap_Paterno, NEW.Ap_Materno, NEW.Fecha_Nac);
    SET NEW.rfc = calc_rfc;
END