
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


