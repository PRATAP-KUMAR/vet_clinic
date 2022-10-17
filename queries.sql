/*Queries that provide answers to the questions from all projects.*/

SELECT * from animals WHERE name = 'Luna';

SELECT NAME from animals WHERE name LIKE '%mon%';
SELECT NAME from animals WHERE DATE_OF_BIRTH BETWEEN '2016-01-01' AND '2019-01-01';
SELECT NAME from animals WHERE NEUTERED = true AND ESCAPE_ATTEMPTS < 3;
SELECT DATE_OF_BIRTH from animals WHERE NAME IN ('Agumon', 'Pikachu');
SELECT (NAME, ESCAPE_ATTEMPTS) from animals WHERE WEIGHT_KG > 10.50;
SELECT NAME from animals WHERE NEUTERED = true;
SELECT NAME from animals WHERE NAME != 'Gabumon';
SELECT NAME from animals WHERE WEIGHT_KG >=10.4 AND WEIGHT_KG <= 17.3;