/*Queries that provide answers to the questions from all projects.*/

SELECT NAME from animals WHERE name LIKE '%mon';
SELECT NAME from animals WHERE DATE_OF_BIRTH BETWEEN '2016-01-01' AND '2019-01-01';
SELECT NAME from animals WHERE NEUTERED = true AND ESCAPE_ATTEMPTS < 3;
SELECT DATE_OF_BIRTH from animals WHERE NAME IN ('Agumon', 'Pikachu');
SELECT (NAME, ESCAPE_ATTEMPTS) from animals WHERE WEIGHT_KG > 10.50;
SELECT NAME from animals WHERE NEUTERED = true;
SELECT NAME from animals WHERE NAME != 'Gabumon';
SELECT NAME from animals WHERE WEIGHT_KG >=10.4 AND WEIGHT_KG <= 17.3;

DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT DELETE_ACTION;
UPDATE animals SET weight_kg = -1*(weight_kg);
ROLLBACK DELETE_ACTION;
UPDATE animals SET weight_kg = -1*(weight_kg) WHERE weight_kg < 0;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT NAME from animals GROUP BY NAME ORDER BY MAX(escape_attempts) DESC LIMIT 1;
SELECT species, MIN(weight_kg), MAX(weight_kg) from animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-01-01' GROUP BY species;