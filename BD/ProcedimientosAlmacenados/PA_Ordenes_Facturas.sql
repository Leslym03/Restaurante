---TOTAL A PAGAR

CREATE PROCEDURE Total_Pagar_Orden(
@idMesa INT)
AS
BEGIN
	SELECT (SUM(ord_prod.TOTAL) + SUM(ord_comb.TOTAL))
	FROM ORDEN ord
	JOIN MESA mesa ON ord.ID_MESA = mesa.ID_MESA
	JOIN ORD_PROD ord_prod ON ord.ID_ORDEN = ord_prod.ID_ORDEN
	JOIN ORD_COMBO ord_comb ON ord.ID_ORDEN = ord_comb.ID_ORDEN
	WHERE ord.ID_MESA = @idMesa AND MESA.ESTADO = 1;
END


----INSERTAR FACTURA

CREATE PROCEDURE Insertar_Factura(
@total NUMERIC(10,2),
@igv INT,
@forpag VARCHAR(45),
@idMesa INT,
@idSuc VARCHAR(5)
)
AS
BEGIN
	INSERT INTO FACTURA
	VALUES(CONVERT(DATETIME, SYSDATETIME()), @total, @igv, @forpag, @idMesa,@idSuc);
	
	UPDATE MESA SET ESTADO = 0
	WHERE ID_MESA = @idMesa;
END


--Test 
EXEC Insertar_Factura 52.00, 18,'Efectivo', 1, '12345';

