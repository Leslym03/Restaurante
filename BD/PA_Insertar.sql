
--CARGO

CREATE PROCEDURE Insertar_Cargo(
@nCargo VARCHAR(45))
AS
BEGIN
	INSERT INTO CARGO
	VALUES(@nCargo)
END



--EMPLEADO

CREATE PROCEDURE Insertar_Empleado(
@idEmple VARCHAR(8),
@idSucur VARCHAR(5),

@nom VARCHAR(45),
@ape VARCHAR(45),
@dire VARCHAR(100),
@telf VARCHAR(9),
@nac DATE,
@correo VARCHAR(45),
@salario NUMERIC(6,2),
@idCargo INT
)
AS
BEGIN

	INSERT INTO EMPLEADO_CODIGO 
	VALUES(@idEmple, @idSucur);

	INSERT INTO EMPLEADO
	VALUES (@idEmple, @nom, @ape, @dire, @telf, @nac, @correo,@salario, @idCargo);

END


---REGISTRO JORNADA

CREATE PROCEDURE Marcar_HoraEntrada(
@idEmple VARCHAR(8)
)
AS
BEGIN
	INSERT INTO REGISTRO_JORNADA
	VALUES(CONVERT(DATETIME, SYSDATETIME()), NULL, @idEmple)
END


CREATE PROCEDURE Marcar_HoraSalida(
@idEmple VARCHAR(8)
)
AS
BEGIN
	DECLARE @HorSal DATETIME = CONVERT(DATETIME, SYSDATETIME());

	UPDATE REGISTRO_JORNADA SET HORA_SALIDA= @HorSal
	WHERE  ID_EMPLEADO = @idEmple AND
	CAST(HORA_ENTRADA AS DATE) = CAST(@HorSal AS DATE)
END


----	MESA

CREATE PROCEDURE Insertar_Mesa(
@cap INT,
@idsuc VARCHAR(5)
)
AS
BEGIN
	INSERT INTO MESA
	VALUES(0,@cap,@idsuc )
END


---PROVEEDOR
CREATE PROCEDURE Insertar_Proveedor(
@nomProv VARCHAR(45),
@nomEmmp VARCHAR(45),
@tefl VARCHAR(9)
)
AS
BEGIN
	INSERT INTO PROVEEDOR
	VALUES(@nomProv, @nomEmmp, @tefl)
END


---TIPO INSUMO
CREATE PROCEDURE Insertar_TipoInsumo(
@nom VARCHAR(45)
)
AS
BEGIN
	INSERT INTO TIPO_INSUMO
	VALUES(@nom)
END


---INSUMO
CREATE PROCEDURE Insertar_Insumo(
@nom VARCHAR(45),
@marca VARCHAR(45),
@idprov INT,
@idtipo INT
)
AS
BEGIN
	INSERT INTO INSUMO
	VALUES(@nom, @marca, @idprov, @idtipo)
END


---PEDIDO

CREATE PROCEDURE Insertar_Pedido(
@cantPedido INT,
@obvs VARCHAR(100),
@precioInsum NUMERIC(6,2),
@cantInsum INT,
@medida VARCHAR(5),
@idsuc VARCHAR(5),
@idInsum INT 
)
AS
BEGIN
	INSERT INTO PEDIDO
	VALUES(CONVERT(DATETIME, SYSDATETIME()), @cantPedido, @obvs, @precioInsum, @cantInsum, @medida, @idsuc, @idInsum);

	UPDATE SUCURSAL SET SALDO = SALDO - (@precioInsum * @cantInsum)
	WHERE ID_SUCURSAL = @idsuc;
END

-------------------------------------------
----PRODUCTO

---SECCION PRODUCTO

CREATE PROCEDURE Insertar_SeccionP(
@nom VARCHAR(45)
)
AS
BEGIN
	INSERT INTO SECCION
	VALUES(@nom)
END


---CATEGORIA PRODUCTO

CREATE PROCEDURE Insertar_CategoriaP(
@nom  VARCHAR(45),
@idsec INT
)
AS
BEGIN
	INSERT INTO CATEGORIA
	VALUES(@nom, @idsec)
END


-- PRODUCTO

CREATE PROCEDURE Insertar_Prooducto(
@nom VARCHAR(45),
@prec NUMERIC(5,2),
@descr VARCHAR(200),
@idCat INT
)
AS
BEGIN
	INSERT INTO PRODUCTO
	VALUES(@nom, @prec, @descr, @idCat)
END

-------------------------------------------




-------------------------------------------
--------COMBO

--TIPOCOMBO

CREATE PROCEDURE Insertar_TipoComb(
@nom VARCHAR(45)
)
AS
BEGIN
	INSERT INTO TIPO_COMBO
	VALUES(@nom)
END


---COMBO

CREATE PROCEDURE Insertar_Combo(
@nom VARCHAR(45),
@precio NUMERIC(6,2),
@idTipo INT
)
AS
BEGIN
	INSERT INTO COMBO
	VALUES(@nom, @precio, @idTipo)
END


---PRODUCTOS DEL COMBO

CREATE PROCEDURE Insertar_Combo_Prod(
@idCombo INT,
@idProd INT,
@cant INT
)
AS
BEGIN
	INSERT INTO PROD_COMBO
	VALUES(@idCombo, @idProd, @cant)
END

-------------------------------------------




---ORDENES
---CONCURRENCIA OTRO ARCHIVO




----CLIENTE

CREATE PROCEDURE Insertar_Cliente(
@idclie VARCHAR(8),
@idsucur VARCHAR(5),

@nom VARCHAR(45),
@ape VARCHAR(45),
@telf VARCHAR(9)
)
AS
BEGIN
	INSERT INTO CLIENTE_CODIGO
	VALUES(@idclie, @idsucur);

	INSERT INTO CLIENTE
	VALUES(@idclie, @nom, @ape, @telf, @idsucur);
END


---RESERVACION

CREATE PROCEDURE Insertar_Reservacion(
@idCli VARCHAR(8),
@idMesa INT,
@idSucur VARCHAR(5)
)
AS
BEGIN
	INSERT INTO RESERVACION
	VALUES(CONVERT(DATETIME, SYSDATETIME()),0, @idCli, @idMesa, @idSucur)
END

