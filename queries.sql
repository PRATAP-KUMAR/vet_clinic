/*Queries that provide answers to the questions from all projects.*/

SELECT NAME from animals WHERE name LIKE '%mon';
SELECT NAME from animals WHERE DATE_OF_BIRTH BETWEEN '2016-01-01' AND '2019-01-01';
SELECT NAME from animals WHERE NEUTERED = true AND ESCAPE_ATTEMPTS < 3;
SELECT DATE_OF_BIRTH from animals WHERE NAME IN ('Agumon', 'Pikachu');
SELECT (NAME, ESCAPE_ATTEMPTS) from animals WHERE WEIGHT_KG > 10.50;
SELECT NAME from animals WHERE NEUTERED = true;
SELECT NAME from animals WHERE NAME != 'Gabumon';
SELECT NAME from animals WHERE WEIGHT_KG >=10.4 AND WEIGHT_KG <= 17.3;

BEGIN;
UPDATE animals SET species='unspecified';
SELECT * FROM animals;
ROLLBACK;

BEGIN;
UPDATE animals SET species='digimon' WHERE NAME LIKE '%mon';
UPDATE animals SET species='pokemon' WHERE species = '';
COMMIT;

BEGIN;
DELETE FROM animals WHERE date_of_birth > '2022-01-01';
SAVEPOINT DELETE_ACTION;
UPDATE animals SET weight_kg = -1*(weight_kg);
ROLLBACK TO DELETE_ACTION;
UPDATE animals SET weight_kg = -1*(weight_kg) WHERE weight_kg < 0;
COMMIT;

SELECT COUNT(*) FROM animals;
SELECT COUNT(*) FROM animals WHERE escape_attempts = 0;
SELECT AVG(weight_kg) FROM animals;
SELECT NAME from animals GROUP BY NAME ORDER BY MAX(escape_attempts) DESC LIMIT 1;
SELECT species, MIN(weight_kg), MAX(weight_kg) from animals GROUP BY species;
SELECT species, AVG(escape_attempts) FROM animals WHERE date_of_birth BETWEEN '1990-01-01' AND '2000-12-31' GROUP BY species;

SELECT animals.name FROM animals JOIN owners ON animals.owner_id=owners.id WHERE full_name='Melody Pond';
SELECT animals.name FROM animals JOIN species ON animals.species_id=species.id WHERE species.name='Pokemon';
SELECT full_name, animals.name FROM owners LEFT JOIN animals ON animals.owner_id=owners.id;
SELECT count(animals) FROM animals where species_id=1;
SELECT count(animals) FROM animals where species_id=2;
SELECT animals.name FROM animals JOIN owners ON animals.owner_id=owners.id WHERE owners.full_name='Jennifer Orwell';
SELECT animals.name, animals.escape_attempts FROM animals INNER JOIN owners ON owners.id = animals.owner_id WHERE owners.full_name = 'Dean Winchester' AND animals.escape_attempts = 0;
SELECT owners.full_name , COUNT(animals.name) FROM owners JOIN animals ON animals.owner_id=owners.id GROUP BY owners.full_name ORDER BY total_animals DESC LIMIT 1;