#LUIS RAÚL GUERRERO AGUILAR, TECMILENIO GUADALAJARA
#Usando la base de datos tienda, escribe una consulta que permita obtener el top 5 de puestos por salarios.
USE tienda;
SHOW TABLES;
DESCRIBE puesto;
SELECT nombre FROM puesto ORDER BY salario ASC LIMIT 5;