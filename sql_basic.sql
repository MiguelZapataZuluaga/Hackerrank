Consulta una lista de nombres de CIUDAD de ESTACIÓN para ciudades que tienen un número de identificación par. 
Imprima los resultados en cualquier orden, pero excluya los duplicados de la respuesta.

select distinct city /* distinct-nombres repetidos los excluye*/
from station
where ID%2=0; /*filas pares*/

________________________________________________________________________________________________________

/*
Enter your query here.
count cuenta la cantidad de datos segun la fila, en este caso se manda la fila
city, se calcula la resta entre la cantidad de nombres de la fila CITY y 
la cantidad de nombres distintos de la fila CITY
*/
SELECT 
    /*COUNT(CITY) AS total_entries,
    COUNT(DISTINCT CITY) AS distinct_entries*/
    COUNT(CITY) - COUNT(DISTINCT CITY) AS result
FROM STATION


/*el número de caracteres en el nombre de la ciudad. Si hay más de una ciudad más corta o más larga,
debemos elegir aquella que esté primero en orden alfabético.

JOIN : para combinar la tabla STATION con las subconsultas 
(una subconsulta para ver la ciudad con nombre mas largo y ciudad con nombre mas corto).*/

SELECT S.CITY, LENGTH(S.CITY) AS name_length
FROM STATION S

JOIN (
     /*subconsulta para ver la ciudad con nombre mas largo */
    SELECT CITY, LENGTH(CITY) AS name_length
    FROM STATION
    ORDER BY name_length ASC, CITY
    LIMIT 1
) Short ON S.CITY = Short.CITY

UNION

SELECT S.CITY, LENGTH(S.CITY) AS name_length
FROM STATION S

JOIN (
	/*subconsulta para ver la ciudad con nombre mas largo */
    SELECT CITY, LENGTH(CITY) AS name_length
    FROM STATION
    ORDER BY name_length DESC, CITY
    LIMIT 1
) Longer ON S.CITY = Longer.CITY;



