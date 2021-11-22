#Luis Raul Guerrero Aguilar
#Sesión 5 Reto 1
CREATE DATABASE IF NOT EXISTS starbucks;
USE STARBUCKS;
CREATE TABLE sbucks(
Brand varchar(15),
Store_Number varchar(20) PRIMARY KEY,
Store_Name varchar(20),
Ownership_Type varchar(15),
Street_Address varchar(20),
City varchar(20),
State varchar(20),
Province varchar(20),
Country varchar(20),
Postcode varchar(20),
Phone_Number varchar(20),
Timezone varchar(12),
Longitude double,
Latitude double
);
describe sbucks;
#Usando la latitud y longitud de tu posición actual, encuenta el Starbucks más cercano a tu posición. Para conocer tu posición actual puedes usar Google Maps para, sólo debes copiar los datos de la URL.
SELECT store_name, sqrt(power(Longitude - (20.62),2) + power(Latitude - (-103.40),2)) AS distancia
FROM sbucks
ORDER BY distancia;










