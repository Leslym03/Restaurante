--Haga una copia de seguridad completa única de la base de datos de pagos

USE [master];
GO
BACKUP DATABASE RESTAURANTE_BD
    TO DISK = N'C:\RESTAURANTE\BACKUP\S1_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO

---Realice una copia de seguridad completa de fillgroups

BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'cliente_1'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_cliente_1_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'cliente_2'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_cliente_2_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'cliente_3'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_cliente_3_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'combo'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_combo_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'empleado_1'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_empleado_1_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'empleado_2'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_empleado_2_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'empleado_3'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_empleado_3_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO

BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'factura_1'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_factura_1_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'factura_2'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_factura_2_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO



BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'factura_3'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_factura_3_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'insumo'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_insumo_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'mesa'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_mesa_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'orden_1'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_orden_1_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'orden_2'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_orden_2_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO



BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'orden_3'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_orden_3_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'orden_combo'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_orden_combo_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'orden_producto'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_orden_producto_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'pedido_1'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_pedido_1_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'pedido_2'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_pedido_2_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'pedido_3'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_pedido_3_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO

BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'producto'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_producto_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO

BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'proveedor'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_proveedor_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO

BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'registro'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_registro_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO



BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'reservacion_1'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_reservacion_1_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'reservacion_2'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_reservacion_2_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO



BACKUP DATABASE RESTAURANTE_BD
    FILEGROUP = 'reservacion_3'
    TO DISK = 'C:\RESTAURANTE\BACKUP\S1_reservacion_3_2020_full.bak' 
    WITH COMPRESSION, Stats=5
;
GO


--Realice una copia de seguridad diferencial para cada fillgroups


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'cliente_1'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_cliente_1_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'cliente_2'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_cliente_2_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'cliente_3'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_cliente_3_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'combo'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_combo_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'empleado_1'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_empleado_1_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'empleado_2'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_empleado_2_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'empleado_3'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_empleado_3_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'factura_1'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_factura_1_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'factura_2'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_factura_2_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'factura_3'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_factura_3_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'insumo'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_insumo_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'mesa'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_mesa_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'orden_1'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_orden_1_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO

BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'orden_2'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_orden_2_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'orden_3'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_orden_3_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'orden_combo'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_orden_combo_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'orden_producto'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_orden_producto_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'pedido_1'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_pedido_1_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'pedido_2'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_pedido_2_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'pedido_3'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_pedido_3_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'producto'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_producto_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO



BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'proveedor'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_proveedor_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'registro'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_registro_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'pedido_1'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_pedido_1_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'pedido_2'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_pedido_2_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO



BACKUP DATABASE RESTAURANTE_BD
   FILEGROUP = N'pedido_3'
   TO DISK = N'C:\RESTAURANTE\BACKUP\S1_pedido_3_2020_diff.bak'
   WITH DIFFERENTIAL, COMPRESSION, Stats=5
 ;
GO


---Realice una copia de seguridad del registro de transacciones de la base de datos


BACKUP LOG RESTAURANTE_BD
TO DISK = 'C:\RESTAURANTE\BACKUP\S1_2020_log.trn';
GO
