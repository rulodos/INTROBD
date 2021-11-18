#LUIS RAÚL GUERRERO AGUILAR, TECMILENIO GUADALAJARA
#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.
USE tienda;
SHOW TABLES;
#¿Cuál es el promedio de salario de los puestos?
DESCRIBE puesto;
SELECT AVG(salario) FROM puesto;
#¿Cuántos artículos incluyen la palabra Pasta en su nombre?
SELECT nombre FROM articulo WHERE nombre LIKE "Pasta%";
#¿Cuál es el salario mínimo y máximo?
SELECT MIN(salario) FROM puesto;
SELECT MAX(salario) FROM puesto;
#¿Cuál es la suma del salario de los últimos cinco puestos agregados?
SELECT * from puesto;
SELECT salario FROM puesto ORDER BY id_puesto DESC LIMIT 5;
SELECT SUM(salario) FROM (SELECT salario FROM puesto ORDER BY id_puesto DESC LIMIT 5)