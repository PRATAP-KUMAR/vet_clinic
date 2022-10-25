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
SELECT owners.full_name , COUNT(animals.name) FROM owners JOIN animals ON animals.owner_id=owners.id GROUP BY owners.full_name ORDER BY COUNT DESC LIMIT 1;

SELECT visits.date, animals.name as last_animal_visited_by_William_Tatcher FROM visits JOIN animals ON visits.animals_id=animals.id JOIN vets ON visits.vets_id=vets.id WHERE vets.name='William Tatcher' ORDER BY date DESC LIMIT 1;
SELECT COUNT(animals.name) FROM visits JOIN animals ON visits.animals_id=animals.id JOIN vets ON visits.vets_id=vets.id WHERE vets.name='Stephanie Mendez';
SELECT vets.name, species.name FROM specializations JOIN species ON specializations.species_id=species.id FULL JOIN vets ON specializations.vets_id=vets.id;
SELECT visits.date, animals.name, vets.name as vet_doc FROM visits JOIN animals ON visits.animals_id=animals.id JOIN vets ON visits.vets_id=vets.id WHERE vets.name='Stephanie Mendez' AND visits.date BETWEEN '2020-04-01' AND '2020-08-30';
SELECT COUNT(animals.name), animals.name FROM animals JOIN visits ON animals.id=visits.animals_id JOIN vets ON visits.vets_id=vets.id GROUP BY animals.name ORDER BY COUNT(animals.name) DESC LIMIT 1;
SELECT visits.date, animals.name, vets.name FROM visits JOIN animals ON visits.animals_id=animals.id JOIN vets ON visits.vets_id=vets.id WHERE vets.name='Maisy Smith' ORDER BY visits.date LIMIT 1;
SELECT animals.*, vets.*, visits.date as date_visited FROM visits JOIN animals ON visits.animals_id=animals.id JOIN vets ON visits.vets_id=vets.id ORDER BY visits.date DESC LIMIT 1;
SELECT COUNT(*) FROM vets LEFT JOIN visits ON vets.id = visits.animals_id LEFT JOIN specializations ON specializations.species_id = vets.id LEFT JOIN species ON species.id = specializations.species_id WHERE species.id IS NULL;
SELECT COUNT(animals.id), animals.name, animals.species_id FROM animals JOIN visits ON animals.id=visits.animals_id JOIN vets ON visits.vets_id=vets.id WHERE vets.name = 'Maisy Smith' GROUP BY animals.id ORDER BY COUNT(animals.id) DESC LIMIT 1;

EXPLAIN ANALYZE SELECT COUNT(*) FROM visits where animal_id = 4;
EXPLAIN ANALYZE SELECT * FROM visits where vet_id = 2;
EXPLAIN ANALYZE SELECT * FROM owners where email = 'owner_18327@mail.com';