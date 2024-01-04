-- Primero combinamos las distintas tablas de descripciones.

CREATE TABLE appleStore_description_combined AS
SELECT * FROM appleStore_description1
UNION ALL
SELECT * FROM appleStore_description2
UNION ALL
SELECT * FROM appleStore_description3
UNION ALL
SELECT * FROM appleStore_description4

-- Ahora que tenemos la data lista para trabajar, debemos identificar
-- nuestros stakeholders para así ver que insights debemos entregar. 
-- En este caso usaremos un supuesto desarrollador de apps moviles.

**EXPLORATORY DATA ANALYSIS**

-- Chequeamos que coincidan los valores unicos en ambas tablas.

SELECT COUNT (DISTINCT id) AS UniqueAppIDs
FROM AppleStore
--Resultado = 7197

SELECT COUNT (DISTINCT id) AS UniqueAppIDs
FROM appleStore_description_combined
--Resultado = 7197

--Chequeamos que no falten valores en columnas claves.AppleStore

SELECT COUNT(*) AS MissingValues
FROM AppleStore
WHERE track_name IS NULL OR user_rating IS NULL OR prime_genre is NULL
--Resultado = 0

SELECT COUNT(*) AS MissingValues
FROM appleStore_description_combined
WHERE app_desc IS NULL
--Resultado = 0

-- Revisamos el numero de aplicaciones por genero.

SELECT prime_genre, COUNT(*) AS NumApps
FROM AppleStore
GROUP BY prime_genre
ORDER BY NumApps DESC
-- Resultado: Los juegos dominan el mercado, seguido por las app de entretenimiento
-- y luego por las de educación.

--Revisamos los detalles de las valoraciones de los usuarios.

SELECT min(user_rating) as MinRating,
       max(user_rating) as MaxRating,
       Avg(user_rating) as AvgRating
FROM AppleStore
--Resultados: El rating minimo es de 0, el maximo de 5
-- y el promedio es de 3.53.

**DATA ANALYSIS**

--Determinaremos si las apps de pago tienen mejor valoracion por los usuarios que las gratis.

SELECT CASE
			WHEN price > 0 THEN 'Pagadas'
            ELSE 'Gratis'
		END AS App_Type,
        avg(user_rating) AS AvgRating
FROM AppleStore
GROUP BY App_Type
--Resultados: El rating promedio de las Apps gratis es de 3.4
--por otro lado, el de las Apps de pago es de 3.7.

--Chequeamos si las Apps con mas variales de idiomas tienen mejores ratings.

SELECT CASE
	WHEN lang_num < 10 THEN 'Menos de 10 Idiomas'
    WHEN lang_num BETWEEN 10 AND 30 THEN 'Entre 10 y 30 idiomas'
    ELSE 'Más de 30 Idiomas'
END AS Cantidad_idiomas,
	avg(user_rating) AS Avg_Rating
FROM AppleStore
GROUP BY Cantidad_idiomas
ORDER by Avg_Rating DESC
--Resultados: Las apps con entre 10 y 30 idiomas tienen una mejor valoración.

--Generos con peores valoraciones (Buscamos oportunidades de mercado).

SELECT prime_genre,
	avg(user_rating) AS Avg_Rating
FROM AppleStore
GROUP BY prime_genre
ORDER BY Avg_Rating
LIMIT 10

--Buscamos si hay correlacion entre el largo de la descripcion de una app
--y la valoración otrogada por el usuario.

SELECT CASE
	WHEN length(b.app_desc) <500 THEN 'Corta'
    WHEN length(b.app_desc) BETWEEN 500 and 1000 THEN 'Mediana'
    ELSE 'Larga'
END as largo_descripcion,
avg(a.user_rating) AS avg_rating

FROM
	AppleStore AS a
JOIN
	appleStore_description_combined as b
ON
	a.id = b.id

GROUP by largo_descripcion
ORDER BY avg_rating DESC
--Resultados: Mientras la descripcion se mas larga mayor nota es otorgada por los usuarios.


