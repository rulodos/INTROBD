#LUIS RAÚL GUERRERO AGUILAR, TECMILENIO GUADALAJARA
#Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.
USE tienda;
SHOW TABLES;
#¿Qué artículos incluyen la palabra Pasta en su nombre?
DESCRIBE articulo;
SELECT nombre FROM articulo WHERE nombre LIKE "Pasta%";
#¿Qué artículos incluyen la palabra Cannelloni en su nombre?
SELECT nombre FROM articulo WHERE nombre LIKE "%Cannelloni%";
#¿Qué nombres están separados por un guión (-) por ejemplo Puree - Kiwi?
SELECT nombre FROM articulo WHERE nombre LIKE "% - %";