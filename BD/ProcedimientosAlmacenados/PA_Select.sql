---CARGO

CREATE PROCEDURE Select_Cargo
AS
BEGIN
	SELECT * FROM CARGO;
END


--------- EMPLEADO

CREATE PROCEDURE Select_Empleados
AS
BEGIN
	SELECT ID_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, DIRECCION,
	TELEFONO_EMPLEADO , CONVERT(VARCHAR(11) , NACIMIENTO) ,CORREO,SALARIO,NOMBRE_CARGO
	FROM EMPLEADO,CARGO 
	WHERE EMPLEADO.ID_CARGO=CARGO.ID_CARGO;
END


CREATE PROCEDURE Select_Empleados_BAp(
@apeEmpl VARCHAR(45)
)
AS
BEGIN
	SELECT ID_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, DIRECCION,
	TELEFONO_EMPLEADO , CONVERT(VARCHAR(11) , NACIMIENTO) ,CORREO,SALARIO,NOMBRE_CARGO
	FROM EMPLEADO,CARGO 
	WHERE EMPLEADO.ID_CARGO=CARGO.ID_CARGO
	AND EMPLEADO.APELLIDOS_EMPLEADO LIKE '%' + @apeEmpl + '%';
END


CREATE PROCEDURE Select_Empleados_BDNI(
@dni VARCHAR(8)
)
AS
BEGIN
	SELECT ID_EMPLEADO, NOMBRES_EMPLEADO, APELLIDOS_EMPLEADO, DIRECCION,
	TELEFONO_EMPLEADO , CONVERT(VARCHAR(11) , NACIMIENTO) ,CORREO,SALARIO,NOMBRE_CARGO
	FROM EMPLEADO,CARGO 
	WHERE EMPLEADO.ID_CARGO=CARGO.ID_CARGO
	AND EMPLEADO.ID_EMPLEADO LIKE '%' + @dni + '%';
END


CREATE PROCEDURE Select_Empleados_Nombres
AS
BEGIN
	SELECT ID_EMPLEADO, APELLIDOS_EMPLEADO
	FROM EMPLEADO
END


-----REGISTRO JORNADA

CREATE PROCEDURE Select_Registro_Jornada
AS
BEGIN
	SELECT CONVERT(VARCHAR, HORA_ENTRADA) AS ENTRADA, 
	CONVERT(VARCHAR, HORA_SALIDA) AS SALIDA, ID_EMPLEADO 
	FROM REGISTRO_JORNADA;
END



CREATE PROCEDURE Select_Registro_Jornada_Empleado(
@idemp VARCHAR(8)
)
AS
BEGIN
	SELECT CONVERT(VARCHAR, HORA_ENTRADA) AS ENTRADA, 
	CONVERT(VARCHAR,HORA_SALIDA) AS SALIDA
	FROM REGISTRO_JORNADA 
	WHERE ID_EMPLEADO = @idemp
END

----MESA

CREATE PROCEDURE Select_Mesa
AS
BEGIN
	SELECT ID_MESA, CAPACIDAD, ESTADO
	FROM MESA
END


CREATE PROCEDURE Select_Mesa_Ocupadas
AS
BEGIN
	SELECT ID_MESA, CAPACIDAD
	FROM MESA
	WHERE ESTADO = 1
END


CREATE PROCEDURE Select_Mesa_Desocupadas
AS
BEGIN
	SELECT ID_MESA, CAPACIDAD
	FROM MESA
	WHERE ESTADO = 0
END



---PROVEEDOR

CREATE PROCEDURE Select_Proveedor
AS
BEGIN
	SELECT NOMBRE_PROVEEDOR, NOMBRE_EMPRESA, TELEFONO_PROVEEDOR
	FROM PROVEEDOR
END

CREATE PROCEDURE Select_Proveedor_BEmpresa(
@nomEmpr VARCHAR(45)
)
AS
BEGIN
	SELECT NOMBRE_PROVEEDOR, NOMBRE_EMPRESA, TELEFONO_PROVEEDOR
	FROM PROVEEDOR
	WHERE NOMBRE_EMPRESA LIKE '%' + @nomEmpr + '%'
END



---TIPO INSUMO

CREATE PROCEDURE Select_TipoInsumo
AS
BEGIN
	SELECT * FROM TIPO_INSUMO
END


---INSUMO

CREATE PROCEDURE Select_Insumo
AS
BEGIN
	SELECT ins.NOMBRE_INSUMO, ins.MARCA, ti.NOMBRE_TIPO_INSUMO, pro.NOMBRE_EMPRESA
	FROM INSUMO ins
	JOIN PROVEEDOR pro ON ins.ID_PROVEEDOR = pro.ID_PROVEEDOR
	JOIN TIPO_INSUMO ti ON ins.ID_TIPO_INSUMO=ti.ID_TIPO_INSUMO
END


---PEDIDO

CREATE PROCEDURE Select_Pedido
AS
BEGIN
	SELECT CONVERT (VARCHAR (12),FECHA_PEDIDO), 
	ped.CANTIDAD_PEDIDO, ped.PRECIO_INSUMO, 
	(ped.CANTIDAD_PEDIDO * ped.PRECIO_INSUMO) AS Total, 
	ins.NOMBRE_INSUMO,
	ins.MARCA, ped.CANTIDAD_INSUMO, ped.MEDIDA_INSUMO
	FROM PEDIDO ped
	JOIN INSUMO ins ON ped.ID_INSUMO = ins.ID_INSUMO
	JOIN PROVEEDOR pro ON ins.ID_PROVEEDOR=pro.ID_PROVEEDOR
	ORDER BY FECHA_PEDIDO DESC
END

CREATE PROCEDURE Select_Pedido_box
AS
BEGIN
	SELECT CONVERT(VARCHAR,FECHA_PEDIDO), CONVERT(VARCHAR,FECHA_PEDIDO), CONVERT(VARCHAR,RIGHT( CONVERT(DATETIME, FECHA_PEDIDO, 108),8)) FROM PEDIDO
END


--------------------------

--- TIPO PRODUCTO

CREATE PROCEDURE Select_TipoProd
AS
BEGIN
	SELECT * FROM TIPO_PRODUCTO
END

----PRODUCTO

CREATE PROCEDURE Select_Productos
AS
BEGIN
	SELECT NOMBRE_PRODUCTO, PRECIO_PRODUCTO, DESCRIPCION, NOMBRE_TIPO_PRODUCTO
	FROM PRODUCTO, TIPO_PRODUCTO
	WHERE PRODUCTO.ID_TIPO_PRODUCTO = TIPO_PRODUCTO.ID_TIPO_PRODUCTO
END



CREATE PROCEDURE Select_Productos_Tipo(
@idnom VARCHAR(45)
)
AS
BEGIN
	SELECT NOMBRE_PRODUCTO, PRECIO_PRODUCTO, DESCRIPCION
	FROM PRODUCTO, TIPO_PRODUCTO
	WHERE PRODUCTO.ID_TIPO_PRODUCTO = TIPO_PRODUCTO.ID_TIPO_PRODUCTO
	AND TIPO_PRODUCTO.NOMBRE_TIPO_PRODUCTO = @idnom
END


CREATE PROCEDURE Select_Productos_BTipo(
@idnom VARCHAR(45)
)
AS
BEGIN
	SELECT NOMBRE_PRODUCTO, PRECIO_PRODUCTO, DESCRIPCION
	FROM PRODUCTO, TIPO_PRODUCTO
	WHERE PRODUCTO.ID_TIPO_PRODUCTO = TIPO_PRODUCTO.ID_TIPO_PRODUCTO
	AND TIPO_PRODUCTO.NOMBRE_TIPO_PRODUCTO LIKE '%' + @idnom + '%'
END


CREATE PROCEDURE Select_Productos_BNombre(
@idnom VARCHAR(45)
)
AS
BEGIN
	SELECT NOMBRE_PRODUCTO, PRECIO_PRODUCTO, DESCRIPCION, NOMBRE_TIPO_PRODUCTO
	FROM PRODUCTO, TIPO_PRODUCTO
	WHERE PRODUCTO.ID_TIPO_PRODUCTO = TIPO_PRODUCTO.ID_TIPO_PRODUCTO
	AND PRODUCTO.NOMBRE_PRODUCTO LIKE '%' + @idnom + '%'
END


----------------------------------------------------------------------------------

---TIPO COMBO

CREATE PROCEDURE Select_TipoComb
AS
BEGIN
	SELECT * FROM TIPO_COMBO
END


---COMBO

CREATE PROCEDURE Select_Combos
AS
BEGIN
	SELECT NOMBRE_COMBO, PRECIO_COMBO, NOMBRE_TIPO_COMBO
	FROM COMBO,TIPO_COMBO
	WHERE COMBO.ID_TIPO_COMBO = TIPO_COMBO.ID_TIPO_COMBO;
END


CREATE PROCEDURE Select_Combos_Prod(
@idcomb INT 
)
AS
BEGIN
	SELECT ID_COMBO, CANTIDAD, NOMBRE_PRODUCTO
	FROM PROD_COMBO, PRODUCTO
	WHERE PROD_COMBO.ID_PRODUCTO = PRODUCTO.ID_PRODUCTO
	AND PROD_COMBO.ID_COMBO = @idcomb;
END



CREATE PROCEDURE Select_Combos_Tipo(
@idnom VARCHAR(45)
)
AS
BEGIN
	SELECT NOMBRE_COMBO, PRECIO_COMBO, NOMBRE_TIPO_COMBO
	FROM COMBO,TIPO_COMBO
	WHERE COMBO.ID_TIPO_COMBO = TIPO_COMBO.ID_TIPO_COMBO
	AND TIPO_COMBO.NOMBRE_TIPO_COMBO = @idnom
END


CREATE PROCEDURE Select_Combos_BTipo(
@idnom VARCHAR(45)
)
AS
BEGIN
	SELECT NOMBRE_COMBO, PRECIO_COMBO, NOMBRE_TIPO_COMBO
	FROM COMBO,TIPO_COMBO
	WHERE COMBO.ID_TIPO_COMBO = TIPO_COMBO.ID_TIPO_COMBO
	AND TIPO_COMBO.NOMBRE_TIPO_COMBO LIKE '%' + @idnom + '%'
END


CREATE PROCEDURE Select_Combos_BNombre(
@idnom VARCHAR(45)
)
AS
BEGIN
	SELECT NOMBRE_COMBO, PRECIO_COMBO, NOMBRE_TIPO_COMBO
	FROM COMBO,TIPO_COMBO
	WHERE COMBO.ID_TIPO_COMBO = TIPO_COMBO.ID_TIPO_COMBO
	AND COMBO.NOMBRE_COMBO LIKE '%' + @idnom + '%'
END


----------------------------------------------------------------------------------


---ORDENES



CREATE PROCEDURE Select_Ordenes
AS
BEGIN
	SELECT CONVERT (VARCHAR (12),FECHA_ORDEN), 
	mesa.ID_MESA, mesa.ESTADO, emp.APELLIDOS_EMPLEADO
	FROM ORDEN ord
	JOIN MESA mesa ON ord.ID_MESA = mesa.ID_MESA
	JOIN EMPLEADO emp ON ord.ID_EMPLEADO = emp.ID_EMPLEADO
	ORDER BY FECHA_ORDEN DESC
END



CREATE PROCEDURE Select_Ordenes_Activas
AS
BEGIN
	SELECT CONVERT (VARCHAR,FECHA_ORDEN) AS [hh:mm:ss], 
	mesa.ID_MESA, emp.APELLIDOS_EMPLEADO
	FROM ORDEN ord
	JOIN MESA mesa ON ord.ID_MESA = mesa.ID_MESA
	JOIN EMPLEADO emp ON ord.ID_EMPLEADO = emp.ID_EMPLEADO
	WHERE mesa.ESTADO =1
	ORDER BY FECHA_ORDEN DESC
END



---CLIENTE

CREATE PROCEDURE Select_Cliente
AS
BEGIN
	SELECT ID_CLIENTE, NOMBRES_CLIENTE, APELLIDOS_CLIENTE, TELEFONO_CLIENTE
	FROM CLIENTE
END



CREATE PROCEDURE Select_Cliente_BDNI(
@dni VARCHAR(8)
)
AS
BEGIN
	SELECT ID_CLIENTE, NOMBRES_CLIENTE, APELLIDOS_CLIENTE,
	TELEFONO_CLIENTE
	FROM CLIENTE
	WHERE ID_CLIENTE LIKE '%' + @dni + '%'
END


CREATE PROCEDURE Select_Cliente_BApe(
@ape VARCHAR(45)
)
AS
BEGIN
	SELECT ID_CLIENTE, NOMBRES_CLIENTE, APELLIDOS_CLIENTE,
	TELEFONO_CLIENTE
	FROM CLIENTE
	WHERE APELLIDOS_CLIENTE LIKE '%' + @ape + '%'
END



---RESERVACION

CREATE PROCEDURE Select_Reservaciones
AS
BEGIN
	SELECT CONVERT (VARCHAR,FECHA_RESERVACION) AS [hh:mm:ss], 
	CONFIRMACION, ID_MESA,NOMBRES_CLIENTE, APELLIDOS_CLIENTE
	FROM RESERVACION, CLIENTE
	WHERE RESERVACION.ID_CLIENTE = CLIENTE.ID_CLIENTE
	AND DATEPART(YEAR , RESERVACION.FECHA_RESERVACION)= DATEPART(YEAR ,SYSDATETIME())
END



CREATE PROCEDURE Select_Reservaciones_BCli(
@idCli VARCHAR(8)
)
AS
BEGIN
	SELECT CONVERT (VARCHAR,FECHA_RESERVACION) AS [hh:mm:ss], 
	CONFIRMACION, ID_MESA,NOMBRES_CLIENTE, APELLIDOS_CLIENTE
	FROM RESERVACION, CLIENTE
	WHERE RESERVACION.ID_CLIENTE = CLIENTE.ID_CLIENTE
	AND DATEPART(YEAR , RESERVACION.FECHA_RESERVACION)= DATEPART(YEAR ,SYSDATETIME())
	AND CLIENTE.ID_CLIENTE  LIKE '%' + @idCli + '%'
END


---FACTURA

CREATE PROCEDURE Select_Facturas_Efectivo
AS
BEGIN
	SELECT CONVERT (VARCHAR,FECHA_FACTURA) AS [hh:mm:ss], 
	TOTAL
	FROM FACTURA
	WHERE FORMA_PAGO = 'Efectivo'
	AND DATEPART(YEAR , FACTURA.FECHA_FACTURA)= DATEPART(YEAR ,SYSDATETIME())
END


CREATE PROCEDURE Select_Facturas_Tarjeta
AS
BEGIN
	SELECT CONVERT (VARCHAR,FECHA_FACTURA) AS [hh:mm:ss], 
	TOTAL
	FROM FACTURA
	WHERE FORMA_PAGO = 'Tarjeta'
	AND DATEPART(YEAR , FACTURA.FECHA_FACTURA)= DATEPART(YEAR ,SYSDATETIME())
END

