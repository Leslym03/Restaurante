
CREATE PROCEDURE SP_InsertarCargo(
@nidCargo VARCHAR(3),
@nCargo VARCHAR(45))
AS
BEGIN
	INSERT INTO CARGO(ID_CARGO, NOMBRE_CARGO) 
	VALUES(@nidCargo, @nCargo)
END


EXEC SP_insertarCargo 'ADM','Administrador' 