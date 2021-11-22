#Luis Raúl Guerrero Aguilar
#Sesión 5 Reto 3
CREATE DATABASE IF NOT EXISTS COVID;
USE COVID;


CREATE TABLE covi(
Dates varchar(30) PRIMARY KEY,
Province varchar(100) ,
Region varchar(100) ,
Last_Update varchar(100),
Confirmed INT,
Deaths INT,
Recovered INT,
Lat DOUBLE,
Longi DOUBLE
);
SELECT * FROM covi;
#¿Cuál es país con mayor número de casos?
SELECT region,sum(confirmed) as casos_total FROM covi GROUP BY (Region) ORDER BY casos_total DESC LIMIT 1;
#¿Cuál es el país con mayor número de muertes?
SELECT region,sum(deaths) as muertes_total FROM covi GROUP BY (Region) ORDER BY muertes_total DESC LIMIT 1;
#Usando las coordenadas, encuentra el epicentro del virus.
SELECT AVG(Longit) as epicentro_Longitud, AVG(Lati) as epicentro_latitud FROM covi;
#Usando el epicentro, encuentra las 5 regiones más cercanas a dicho epicentro.
SELECT region, sqrt(power(Longit - (29.72),2) + power(Lati - (31.70),2)) AS distancia
FROM covi
GROUP BY (region)
ORDER BY distancia LIMIT 5;
