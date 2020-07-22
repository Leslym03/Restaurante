
EXEC SP_insertarCargo 'ADM','Administrador';
EXEC SP_insertarCargo 'CAJ','Cajero';
EXEC SP_insertarCargo 'REC','Recepcionista';
EXEC SP_insertarCargo 'COC','Cocinero';
EXEC SP_insertarCargo 'CAM','Camarero';


-------------


EXEC SP_InsertarSucursal 'S01','Cercado','Calle Mercaderes 200', 951233277,20000.00,'S01';
EXEC SP_InsertarSucursal 'S02','Yanahuara','Av. Ejercito 200', 951333777,10000.00,'S01';
EXEC SP_InsertarSucursal 'S03','Jose Luis Bustamante y Rivero','Av. Estados Unidos 200', 951999777,10000.00,'S01';
EXEC SP_InsertarSucursal 'S04','Paucarpata','Av. Jesus 200', 951333888,10000.00,'S01';

SELECT * FROM SUCURSAL;


-------------

EXEC SP_InsertarEmpleado '72429555','David Sebastian', 'Martinez Surco','Av Lima 123 Mariano Melgar', 999222333, '1990-04-02', 'dmartinez@gmail.com', 1200.00,'S01','ADM';


-----------------

EXEC SP_Registro_HoraEntrada '72429555';

EXEC SP_Registro_HoraSalida '72429555';

-------------

EXEC SP_InsertarMesa 'A01',5,'S01'

---------------

EXEC SP_InsertarProveedor 'P01','Luis Garcia','Abarrotes San Luis',988977966;

------

EXEC SP_InsertarTipoInsumo 'I01','Abarrotes';
EXEC SP_InsertarTipoInsumo 'I02','Vegetales';
EXEC SP_InsertarTipoInsumo 'I03','Carnes';
EXEC SP_InsertarTipoInsumo 'I04','Bebidas';


-----------
EXEC SP_InsertarInsumo 'SAL','Sal','Marina','P01','I01';
EXEC SP_InsertarInsumo 'ACE','Aceite','Sonata','P01','I01';
EXEC SP_InsertarInsumo 'HAR','Harina','Sonata','P01','I01';
EXEC SP_InsertarInsumo 'LEV','Levadura','Royal','P01','I01';



---------

EXEC SP_InsertarPedido 1,NULL,50.00,12,'kg','S01','HAR';


------------

EXEC SP_InsertarSeccion 'Entradas';
EXEC SP_InsertarSeccion 'Pastas y carnes';
EXEC SP_InsertarSeccion 'Pizzas';
EXEC SP_InsertarSeccion 'Postres y bebidas';


-----------


