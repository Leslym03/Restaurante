
---Insert Test


INSERT INTO SUCURSAL 
VALUES('12345','Sucursal Central', 'Av. Mercaderes - Cercado','951277233',1000000.00, '12345');

----------------------------

INSERT INTO CARGO 
VALUES ('Administrador');
INSERT INTO CARGO 
VALUES ('Cajero');
INSERT INTO CARGO 
VALUES ('Recepcionista');
INSERT INTO CARGO 
VALUES ('Cocinero');
INSERT INTO CARGO 
VALUES ('Camarero');

------------


INSERT INTO EMPLEADO_CODIGO 
VALUES('72429555', '12345');

select * from EMPLEADO
select * from EMPLEADO_CODIGO
select * from CARGO

INSERT INTO EMPLEADO
VALUES ('72429555', 'Lesly Yaneth', 'Mita Yagua', 'Calle Piura 1405 - Mariano Melgar', '951277233', '2000-11-03', NULL, 1000.00, 1);




------------

INSERT INTO REGISTRO_JORNADA
VALUES ( CONVERT(DATETIME, SYSDATETIME()), NULL, '72429555' );


------------

INSERT INTO MESA
VALUES (0,10,'12345');


------------


INSERT INTO PROVEEDOR
VALUES ('Luis Fernandez', 'Abarrotes San Luis','988977966');

------------

INSERT INTO TIPO_INSUMO
VALUES ('Abarrotes');

------------

INSERT INTO INSUMO
VALUES ('Sal', 'Marina',1,1);



------------

INSERT INTO PEDIDO
VALUES ( CONVERT(DATETIME, SYSDATETIME()), 2, NULL, 10.00, 500, 'kg', '12345', 1);


------------

INSERT INTO SECCION
VALUES ('Entradas');

------------

INSERT INTO CATEGORIA
VALUES ('Ensaladas', 1);


------------

INSERT INTO PRODUCTO
VALUES ('Ensalada Caprese',5.00,'Queso mozzarella, tomates, albahaca',1);

------------

INSERT INTO TIPO_COMBO
VALUES ('Pizzas')
INSERT INTO TIPO_COMBO
VALUES ('Ensaladas')


------------

INSERT INTO COMBO
VALUES ('Promo Caprese',8.00,2);


------------

INSERT INTO PROD_COMBO
VALUES (1,1,2);

------------

INSERT INTO ORDEN_CODIGO
VALUES('12345');


---------------
---Se crea orden
INSERT INTO ORDEN_CODIGO
VALUES ('12345');


INSERT INTO ORDEN
VALUES (1, CONVERT(DATETIME, SYSDATETIME()), 1,'72429555','12345');

---Mesa se pasa a ocupada

UPDATE MESA SET ESTADO = 1
WHERE ID_MESA = 1;

---------------
---Inserta en orden

INSERT INTO ORD_PROD
VALUES (2, 1, '12345', 1);

INSERT INTO ORD_COMBO
VALUES (3, 1, '12345', 1);


-----------------
--Para reservacion tiene que tener un cliente 
-- o crear uno nuevo

INSERT INTO CLIENTE_CODIGO
VALUES ('72429777', '12345');

INSERT INTO CLIENTE
VALUES ('72429777','Maria','Ramirez Santos','123456789' ,'12345');

---

INSERT INTO RESERVACION
VALUES (CONVERT(DATETIME, SYSDATETIME()),0, '72429777',1,'12345');

-----------------------


----Vista de ordenes del dia
INSERT INTO FACTURA
VALUES (CONVERT(DATETIME, SYSDATETIME()), 34.00, 0.18, 'Efectivo', 1,'12345');


UPDATE MESA SET ESTADO = 0
WHERE ID_MESA = 1;

