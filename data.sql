/* Populate database with sample data. */
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (1, 'Agumon', '2020-02-03', 0, TRUE, 10.23);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (2, 'Gabumon', '2018-11-15', 2, TRUE, 8.00);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (3, 'Pikachu', '2021-01-07', 1, FALSE, 15.04);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (4, 'Devimon', '2017-05-12', 5, TRUE, 11.00);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (5, 'Charmander', '2020-02-08', 0, FALSE, -11.00);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (6, 'Plantmon', '2021-11-15', 2, TRUE, -5.70);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (7, 'Squirtle', '1993-04-02', 3, FALSE, -12.13);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (8, 'Angemon', '2005-06-12', 1, TRUE, -45.00);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (9, 'Boarmon', '2005-06-07', 7, TRUE, 20.40);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (10, 'Blossom', '1998-10-13', 3, TRUE, 17.00);
INSERT INTO animals (
        ID,
        NAME,
        DATE_OF_BIRTH,
        ESCAPE_ATTEMPTS,
        NEUTERED,
        WEIGHT_KG
    )
VALUES (11, 'Ditto', '2022-05-14', 4, TRUE, 22.00);
INSERT INTO owners (FULL_NAME, AGE)
VALUES ('Sam Smith', 34);
INSERT INTO owners (FULL_NAME, AGE)
VALUES ('Jennifer Orwell', 19);
INSERT INTO owners (FULL_NAME, AGE)
VALUES ('Bob', 45);
INSERT INTO owners (FULL_NAME, AGE)
VALUES ('Melody Pond', 77);
INSERT INTO owners (FULL_NAME, AGE)
VALUES ('Dean Winchester', 14);
INSERT INTO owners (FULL_NAME, AGE)
VALUES ('Jodie Whittaker', 38);
INSERT INTO species (NAME)
VALUES ('Pokemon');
INSERT INTO species (NAME)
VALUES ('Digimon');

UPDATE animals SET species_id=1;
UPDATE animals SET species_id=2 WHERE name LIKE '%mon';

UPDATE animals SET owner_id=1 WHERE name = 'Agumon';
UPDATE animals SET owner_id=2 WHERE name IN ('Pikachu', 'Gabumon');
UPDATE animals SET owner_id=3 WHERE name IN ('Devimon', 'Plantmon');
UPDATE animals SET owner_id=4 WHERE name IN ('Charmander', 'Squirtle', 'Blossom');
UPDATE animals SET owner_id=5 WHERE name IN ('Angemon', 'Boarmon');

INSERT INTO vets(
    ID,
    NAME,
    AGE,
    DATA_OF_GRADUATION
)
VALUES(1, 'William Tatcher', 45, '2000-04-23');

INSERT INTO vets(
    ID,
    NAME,
    AGE,
    DATA_OF_GRADUATION
)
VALUES(2, 'Maisy Smith', 26, '2019-01-17');

INSERT INTO vets(
    ID,
    NAME,
    AGE,
    DATA_OF_GRADUATION
)
VALUES(3, 'Stephanie Mendez', 64, '1981-05-04');

INSERT INTO vets(
    ID,
    NAME,
    AGE,
    DATA_OF_GRADUATION
)
VALUES(4, 'Jack Harkness', 38, '2008-06-08');

INSERT INTO specializations(
    VETS_ID, SPECIES_ID
)
VALUES(1, 1);

INSERT INTO specializations(
    VETS_ID, SPECIES_ID
)
VALUES(3, 2);

INSERT INTO specializations(
    VETS_ID, SPECIES_ID
)
VALUES(3, 1);

INSERT INTO specializations(
    VETS_ID, SPECIES_ID
)
VALUES(4, 2);

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(1, 1, '2020-05-24');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(1, 3, '2020-07-22');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(2, 4, '2021-02-02');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(7, 2, '2020-01-05');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(7, 2, '2020-03-08');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(7, 2, '2020-05-14');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(3, 3, '2021-05-04');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(8, 4, '2021-02-24');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(4, 2, '2019-12-21');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(4, 1, '2020-08-10');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(4, 2, '2021-04-07');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(9, 3, '2019-09-29');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(5, 4, '2020-10-03');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(5, 4, '2020-11-04');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(6, 2, '2019-01-24');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(6, 2, '2019-05-15');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(6, 2, '2020-02-27');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(6, 2, '2020-08-03');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(6, 3, '2020-05-24');

INSERT INTO visits(
    ANIMALS_ID, VETS_ID, DATE
)
VALUES(6, 1, '2021-01-11');
