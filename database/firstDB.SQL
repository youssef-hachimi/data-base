CREATE DATABASE Gestion_inscription;
CREATE TABLE Etudiants(
CodeApogee INT,
Nom CHAR(10),
Prenom CHAR,
DateNaiss DATE
);
CREATE TABLE Matiers(
CodeM VARCHAR,
intitule CHAR,
CodeFiliere CHAR
);
CREATE TABLE Filieres(
CodeFil CHAR,
NomFil CHAR

);
CREATE TABLE Inscriptions(
	CodeEtudiant INT NOT NULL,
    CodeModule VARCHAR(10) NOT NULL,
    Annee INT NOT NULL,
    FOREIGN KEY(CodeEtudiant) REFERENCES Etudiants(CodeApogee),
    FOREIGN KEY(CodeModule) REFERENCES Matiers(CodeM),
    PRIMARY KEY(CodeEtudiant,CodeModule,Annee)
);
ALTER TABLE MATIERS
