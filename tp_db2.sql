-- PARTIE 1,

-- Question 1

SELECT NOMPILOTE, ADRESSE
FROM pilote

-- Question 2

SELECT VILLEDEP
FROM vol

-- Question 3

SELECT NUMVOL, VILLEDEP, VILLEARR, HEUREDEP, HEUREARR
FROM vol
WHERE HEUREDEP BETWEEN '14:00' AND '16:00' AND VILLEDEP = 'Paris';

-- Question 4

SELECT *
FROM avion
WHERE NOMAVION LIKE '%Airbus%';

-- Question 5

SELECT NOMPILOTE
FROM pilote
WHERE NOMPILOTE LIKE '_i%';

-- Question 6

SELECT * 
FROM avion
WHERE CAPACITE BETWEEN "200" AND "300";

-- Question 7

SELECT NUMAVION, NOMAVION, CAPACITE, LOCALISATION
FROM avion
WHERE LOCALISATION <> "Nice" AND CAPACITE > '200'
ORDER BY NUMAVION DESC;

-- Question 8

SELECT NOMPILOTE 
FROM pilote 
WHERE NUMPILOTE IN (SELECT NUMPILOTE 
                FROM vol 
                WHERE VILLEDEP = "Paris")

-- Question 9

SELECT NOMPILOTE
FROM pilote
WHERE ADRESSE IN (SELECT LOCALISATION
				   FROM avion
				   WHERE NOMAVION LIKE "%Airbus%")

-- Question 10

SELECT NOMPILOTE
FROM pilote
WHERE NUMPILOTE IN (SELECT NUMAVION
                   FROM vol
                   WHERE NUMAVION = 2)

-- Question 11

SELECT NUMAVION, NOMAVION
FROM avion
WHERE CAPACITE BETWEEN '200' AND '300' 
AND NUMAVION IN (SELECT VILLEDEP
                 FROM vol
               	 WHERE VILLEDEP IN (SELECT VILLEDEP
                                    FROM vol
                                    WHERE NUMVOL = "USA050"))

-- Question 12

-- Question 15

-- Question 16

-- Question 17

