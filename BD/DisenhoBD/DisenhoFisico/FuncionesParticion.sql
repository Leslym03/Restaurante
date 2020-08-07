
--Partcion horizontal de las siguientes tablas

---Usar BD
USE RESTAURANTE_BD;

------EMPLEADO

CREATE PARTITION FUNCTION FP_EMPLEADO(VARCHAR(45))
AS RANGE RIGHT
FOR VALUES('G','N');

CREATE PARTITION SCHEME EP_EMPLEADO
AS PARTITION FP_EMPLEADO TO
(empleado_1, empleado_2, empleado_3);


-----CLIENTE

CREATE PARTITION FUNCTION FP_CLIENTE(VARCHAR(45))
AS RANGE RIGHT
FOR VALUES('G','N');

CREATE PARTITION SCHEME EP_CLIENTE
AS PARTITION FP_CLIENTE TO
(cliente_1, cliente_2, cliente_3);


----PEDIDO


CREATE PARTITION FUNCTION FP_PEDIDO(DATETIME)
AS RANGE LEFT
FOR VALUES(N'2019-12-31T00:00:00',N'2020-12-31T00:00:00');

CREATE PARTITION SCHEME EP_PEDIDO
AS PARTITION FP_PEDIDO TO
(pedido_1, pedido_2, pedido_3);



-----ORDEN


CREATE PARTITION FUNCTION FP_ORDEN(DATETIME)
AS RANGE LEFT
FOR VALUES(N'2019-12-31T00:00:00',N'2020-12-31T00:00:00');

CREATE PARTITION SCHEME EP_ORDEN
AS PARTITION FP_ORDEN TO
(orden_1, orden_2, orden_3);



------RESERVACION

CREATE PARTITION FUNCTION FP_RESERVACION(DATETIME)
AS RANGE LEFT
FOR VALUES(N'2019-12-31T00:00:00',N'2020-12-31T00:00:00');

CREATE PARTITION SCHEME EP_RESERVACION
AS PARTITION FP_RESERVACION TO
(reservacion_1, reservacion_2, reservacion_3);




------FACTURA

CREATE PARTITION FUNCTION FP_FACTURA(DATETIME)
AS RANGE LEFT
FOR VALUES(N'2019-12-31T00:00:00',N'2020-12-31T00:00:00');

CREATE PARTITION SCHEME EP_FACTURA
AS PARTITION FP_FACTURA TO
(factura_1, factura_2, factura_3);