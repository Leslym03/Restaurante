
---SUCURSAL

INSERT INTO SUCURSAL 
VALUES('12345','Sucursal Central', 'Av. Mercaderes - Cercado','951277233',1000000.00, '12345');


---CARGO

EXEC Insertar_Cargo 'Administrador';
EXEC Insertar_Cargo 'Cajero';
EXEC Insertar_Cargo 'Recepcionista';
EXEC Insertar_Cargo 'Cocinero';
EXEC Insertar_Cargo 'Camarero';


--EMPLEADO

EXEC Insertar_Empleado '72429555','12345','Lesly Yaneth', 'Mita Yagua','Calle Piura 1405 - Mariano Melgar', '951277233','2000-11-03', 'lmita@gmail.com', 1000.00, 1;
EXEC Insertar_Empleado '72429111','12345','Salome Maria', 'Martinez Sanchez','Av Lima 123 - Mariano Melgar', '123456789', '2000-11-03','smartinez@gmail.com', 950.00, 2;


---REGISTRO JORNADA

EXEC Marcar_HoraEntrada '72429555';
EXEC Marcar_HoraSalida '72429555';


---MESA

EXEC Insertar_Mesa 4,'12345';
EXEC Insertar_Mesa 4,'12345';
EXEC Insertar_Mesa 4,'12345';
EXEC Insertar_Mesa 4,'12345';
EXEC Insertar_Mesa 6,'12345';
EXEC Insertar_Mesa 6,'12345';
EXEC Insertar_Mesa 8,'12345';
EXEC Insertar_Mesa 8,'12345';


---PROVEEDOR

EXEC Insertar_Proveedor 'Luis Garcia','Abarrotes San Luis','988977966';
EXEC Insertar_Proveedor 'Fernando Lopez','Vegetales San Lopez','977988966';
EXEC Insertar_Proveedor 'Piero Suarez','Embutidos y Carnes','955903977';
EXEC Insertar_Proveedor 'Daniela Ruiz','Bebidas Ruiz','988944933';


---TIPO_INSUMO

EXEC Insertar_TipoInsumo 'Abarrotes';
EXEC Insertar_TipoInsumo 'Vegetales';
EXEC Insertar_TipoInsumo 'Carnes';
EXEC Insertar_TipoInsumo 'Bebidas';


---INSUMO

EXEC Insertar_Insumo 'Aceite','Sonata',1,1;
EXEC Insertar_Insumo 'Sal','Marina',1,1;
EXEC Insertar_Insumo 'Tomates',NULL,2,2;
EXEC Insertar_Insumo 'Cebollas',NULL,2,2;
EXEC Insertar_Insumo 'Ajo',NULL,2,2;
EXEC Insertar_Insumo 'Queso',NULL,2,2;
EXEC Insertar_Insumo 'Carne Molida', NULL, 3,3;
EXEC Insertar_Insumo 'Gaseosa Personal','Inca Kola',4,4;
EXEC Insertar_Insumo 'Gaseosa Personal','Coca Cola',4,4;



---PEDIDO

EXEC Insertar_Pedido 1,'Ninguna', 10.00, 12, 'kg', '12345', 1;


---TIPO_PRODUCTO

EXEC Insertar_TipoProd 'Entradas';
EXEC Insertar_TipoProd 'Pastas';
EXEC Insertar_TipoProd 'Lasagnas';
EXEC Insertar_TipoProd 'Postres';
EXEC Insertar_TipoProd 'Bebidas';


---PRODUCTO


EXEC Insertar_Producto 'Pan al ajo',6.00 , 'Pan al ajo', 1;
EXEC Insertar_Producto 'Pan al aje especial', 7.50, 'Con queso derretido', 1;
EXEC Insertar_Producto 'Grisines', 4.00, '12 palitos de orégano o rocoto con salsa de ajo', 1;

EXEC Insertar_Producto 'Macarrones',17.00 , 'Deliciosos coditos bañados en salsa de queso', 2;
EXEC Insertar_Producto 'Ravioles', 17.00, 'En salsa bolognesa, alfredo o al ajo', 2;
EXEC Insertar_Producto 'Spaghetti', 15.00, 'En salsa bolognesa, alfredo o al ajo', 2;
EXEC Insertar_Producto 'Canelones', 19.00, 'Rellenos de acelga, paté y espinaca, salsa de carne, queso mozzarella, queso parmesano', 2;

EXEC Insertar_Producto 'Lasagna exquisita',19.50 , 'Con salsa bolognesa, salsa blanca, queso mozzarella, jamón y champignones', 3;
EXEC Insertar_Producto 'Lasagna tradicional',17.50 , 'Con salsa bolognesa y queso parmesano', 3;

EXEC Insertar_Producto 'Pie de limon',5.50 , 'Postre de leche fría con su toque de limón',4 ;
EXEC Insertar_Producto 'Tocino del cielo', 5.50, 'Delicioso postre bañado en caramelo', 4;
EXEC Insertar_Producto 'Cheesecake de fresa', 5.50, 'Suave queso crema y dulces fresas', 4;
EXEC Insertar_Producto 'Torta chocolate',5.50 , 'La clasica, bañada en delicioso fudge', 4;

EXEC Insertar_Producto 'Gaseosa personal',4.50 , 'Botella de 500ml', 5;
EXEC Insertar_Producto 'Gaseosa grande', 8.50, 'Botella de 1.5 litros', 5;
EXEC Insertar_Producto 'Chicha morada vaso', 2.50, 'Contiene 296 ml', 5;
EXEC Insertar_Producto 'Chicha morada jarra',9.00 , 'Botella de 1 litro', 5;



---TIPO_COMBO

EXEC Insertar_TipoComb '2X1';
EXEC Insertar_TipoComb 'Con bebida';
EXEC Insertar_TipoComb 'Con postre';



---COMBO

EXEC Insertar_Combo 'Pan al aje especial',7.50, 1;
EXEC Insertar_Combo 'Chicha morada jarra',9.00 , 1;

EXEC Insertar_Combo 'Macarrones + Gaseosa Personal', 20.00, 2;
EXEC Insertar_Combo 'Ravioles + Gaseosa Personal', 20.00, 2;
EXEC Insertar_Combo 'Lasagna tradicional + Gaseosa Personal',20.50 , 2;

EXEC Insertar_Combo 'Macarrones + Pie de limon', 21.00, 3;
EXEC Insertar_Combo 'Ravioles + Pie de limon', 21.00, 3;




---PROD_COMBO

EXEC Insertar_Combo_Prod 1,2,2;
EXEC Insertar_Combo_Prod 2,17,2;
EXEC Insertar_Combo_Prod 3,4,1;
EXEC Insertar_Combo_Prod 3,14,1;
EXEC Insertar_Combo_Prod 4,5,1;
EXEC Insertar_Combo_Prod 4,14,1;
EXEC Insertar_Combo_Prod 5,9,1;
EXEC Insertar_Combo_Prod 5,14,1;
EXEC Insertar_Combo_Prod 6,4,1;
EXEC Insertar_Combo_Prod 6,10,1;
EXEC Insertar_Combo_Prod 7,5,1;
EXEC Insertar_Combo_Prod 7,10,1;


---CLIENTE

EXEC Insertar_Cliente '72429333','12345','Maria Ana', 'Jimenez Perez', '';


---RESERVACION

EXEC Insertar_Reservacion '72429333',1,'12345';






















