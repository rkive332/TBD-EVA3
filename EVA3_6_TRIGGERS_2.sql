CREATE DEFINER=`root`@`localhost` TRIGGER `personas_AFTER_INSERT` AFTER INSERT ON `personas` FOR EACH ROW BEGIN
	SET @mensaje = 'Persona agregada con exito';
END