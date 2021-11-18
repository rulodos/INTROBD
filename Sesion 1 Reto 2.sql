#LUIS RAÚL GUERRERO AGUILAR, TECMILENIO GUADALAJARA
#Usando la tabla empleado, escribe consultas que permitan responder las siguientes preguntas.
SHOW TABLES;
#¿Cuál es el nombre de los empleados con el puesto 4?
DESCRIBE empleado;
SELECT nombre FROM empleado WHERE id_puesto=4;
#¿Qué puestos tienen un salario mayor a $10,000?
DESCRIBE puesto;
SELECT nombre FROM puesto WHERE salario>10000;
#¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?
DESCRIBE articulo;
SELECT nombre FROM articulo WHERE precio>1000 AND iva>100;
#¿Qué ventas incluyen los artículos 135 o 963 y fueron hechas por los empleados 835 o 369?
DESCRIBE venta;
SELECT id_venta FROM venta WHERE (id_articulo IN(135,963)) AND (id_empleado IN(835,369)); 