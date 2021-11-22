#Luis Raul Guerrero Aguilar
#Sesión 5 Reto 2
CREATE DATABASE IF NOT EXISTS h1n1;
USE h1n1;

CREATE TABLE h1(
Country varchar(20) PRIMARY KEY,
Cases INT,
Deaths INT,
Update_Time varchar(100)
);

SELECT * FROM h1;

#¿Cuál fue el país con mayor número de muertes?
SELECT country,sum(deaths) FROM h1 GROUP BY (country) ORDER BY deaths DESC LIMIT 1 offset 1; 
#¿Cuál fue el país con menor número de muertes?
SELECT country,sum(deaths) FROM h1 GROUP BY (country) ORDER BY deaths ASC LIMIT 1 offset 1; 
#¿Cuál fue el país con el mayor número de casos?
SELECT country,sum(cases) FROM h1 GROUP BY (country) ORDER BY cases DESC LIMIT 1 offset 1; 
#¿Cuál fue el país con el menor número de casos?
SELECT country,sum(cases) FROM h1 GROUP BY (country) ORDER BY cases ASC LIMIT 1 offset 1; 
#¿Cuál fue el número de muertes promedio?
SELECT AVG(deaths) from h1 AS promedio_muertes;
#¿Cuál fue el número de casos promedio?
SELECT AVG(cases) AS promedio_muertes from h1;
#Top 5 de países con más muertes
SELECT country,sum(deaths) as muertes_total from h1 GROUP BY (country) ORDER BY muertes_total DESC LIMIT 5 offset 1; 
#Top 5 de países con menos muertes
SELECT country,sum(deaths) as muertes_total from h1 GROUP BY (country) ORDER BY muertes_total ASC LIMIT 5 offset 1; 