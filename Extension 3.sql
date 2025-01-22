CREATE view directorNfilms1 AS
SELECT title, name from films_ext f 
INNER JOIN directors d
ON f.directorId = d.id
GROUP BY d.name, f.title;


SELECT * FROM directorNfilms1;
SELECT ARRAY[CONCAT(name, CAST(COUNT(name) AS CHAR))] FROM directorNfilms1;


