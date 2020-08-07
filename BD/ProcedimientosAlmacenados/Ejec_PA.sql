EXEC Insertar_Cargo 'Seguridad';

EXEC Insertar_Empleado '72429111','12345','Salome Maria', 'Martinez Sanchez','Av Lima 123 - Mariano Melgar', '123456789', '2000-11-03','smartinez@gmail.com', 950.00, 2;


EXEC Marcar_HoraEntrada '72429555';
EXEC Marcar_HoraSalida '72429555';


EXEC Insertar_Mesa 4,'12345';


EXEC Insertar_Proveedor 'Fernando Lopez','Vegetales San Lopez','977988966';



EXEC Insertar_TipoInsumo 'Vegetales';
EXEC Insertar_TipoInsumo 'Carnes';
EXEC Insertar_TipoInsumo 'Bebidas';


EXEC Insertar_Insumo 'Aceite','Sonata',1,1;


EXEC Insertar_Pedido 1,'Ninguna', 10.00, 12, 'kg', '12345', 1;


EXEC Insertar_SeccionP 'Pastas y carnes';
EXEC Insertar_SeccionP 'Pizzas';
EXEC Insertar_SeccionP 'Postres y bebidas';



EXEC Insertar_CategoriaP 'Ensaladas',1;
EXEC Insertar_CategoriaP 'Panes',1;
EXEC Insertar_CategoriaP 'Pastas',2;


EXEC Insertar_Prooducto 'Ensalada Fresca',7.00,'Lechuga, tomate, pimiento, champignones, choclo, albahaca, aceituna y huevo duro',1;




EXEC Insertar_TipoComb 'Postres';



EXEC Insertar_Combo 'Promo Fresca',12.00, 2;


EXEC Insertar_Combo_Prod 2,2,2;


EXEC Insertar_Cliente '72429333','12345','Maria Ana', 'Jimenez Perez', '';


EXEC Insertar_Reservacion '72429333',1,'12345'

EXEC Total_Pagar_Orden 1;


EXEC Insertar_Factura 52.00, 18,'Efectivo', 1, '12345';