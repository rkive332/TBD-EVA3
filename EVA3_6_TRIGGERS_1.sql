CREATE DEFINER=`root`@`localhost` TRIGGER `personas_AFTER_DELETE_1` AFTER DELETE ON `personas` FOR EACH ROW BEGIN
	INSERT INTO bitacora(descripcion) VALUE(CONCAT("Borrado: ", OLD.RFC));
END