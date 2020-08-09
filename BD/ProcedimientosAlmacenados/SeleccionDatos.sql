EXEC Select_Cargo;

EXEC Select_Empleados;

EXEC Select_Registro_Jornada;
EXEC Select_Registro_Jornada_Empleado '72429555';


EXEC Select_Mesa;
EXEC Select_Mesa_Ocupadas;
EXEC Select_Mesa_Desocupadas;


EXEC Select_Proveedor;
EXEC Select_Proveedor_BEmpresa 'Abarrotes';


EXEC Select_TipoInsumo;
EXEC Select_Insumo;


EXEC Select_Pedido;




EXEC Select_TipoProd;
EXEC Select_Productos;

EXEC Select_Productos_Tipo 'Entradas';
EXEC Select_Productos_Tipo 'Pastas';
EXEC Select_Productos_Tipo 'Lasagnas';
EXEC Select_Productos_Tipo 'Postres';
EXEC Select_Productos_Tipo 'Bebidas';


EXEC Select_Productos_BTipo 'Ent';

EXEC Select_Productos_BNombre 'Pan';

EXEC Select_Empleados_BDNI '7242';




EXEC Select_TipoComb;

EXEC Select_Combos;

EXEC Select_Combos_Prod 3;


EXEC Select_Combos_Tipo '2X1';
EXEC Select_Combos_Tipo 'Con bebida';
EXEC Select_Combos_Tipo 'Con postre';


EXEC Select_Combos_BTipo '2';


EXEC Select_Combos_BNombre 'Promo';


EXEC Select_Ordenes_Activas;


EXEC Select_Cliente;

EXEC Select_Cliente_BDNI '7242';

EXEC Select_Cliente_BApe 'Jime';


EXEC Select_Reservaciones;

EXEC Select_Reservaciones_BCli '7242';


EXEC Select_Facturas_Tarjeta;

EXEC Select_Facturas_Efectivo;