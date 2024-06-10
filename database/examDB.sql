CREATE DATABASE gestion_films;

-- 6) :
CREATE TABLE Films(
    FilmID INT PRIMARY KEY,
    Titre VARCHAR(30),
    Annee INT,
    Duree INT,
    RealisateurID INT
    FOREIGN KEY(RealisateurID) REFERENCES Realisateurs(RealisateurID)
); 
CREATE TABLE Roles(
    FilmID INT,
    ActeurID INT,
    Salaire DECIMAL(4,2),
    PRIMARY KEY(FilmID,ActeurID),
    FOREIGN FOREIGN KEY (FilmID) REFERENCES Films(FilmID),
    FOREIGN FOREIGN KEY (ActeurID) REFERENCES Acteurs(ActeurID)
);
-- 7) :
ALTER TABLE Films
ADD COLUMN Genre VARCHAR(30)
BEFORE Annee;

-- 8) :
ALTER TABLE Films
ADD CONSTRAINT duree CHECK (Duree BETWEEN 60 AND 150);
-- 9) :
INSERT INTO Acteurs
VALUES  (105,"Rachid","ELOUALI"),
        (106,"Amine","ENNAJI") ;
-- 10) :
SELECT * FROM Films
WHERE Genre = "Action"
ORDER BY Annee;
-- 11) : !!!!!!
SELECT Titre 
FROM Films, Realisateurs
WHERE Films.RealisateurID = Realisateurs.RealisateurID
AND (Realisateurs.Nom = "ROUKHE" AND Realisateurs.Prenom = "Driss")
AND Films.Duree > 2019;
-- 12) :
SELECT Titre
FROM Films, Roles
WHERE Films.FilmID = Roles.FilmID
AND (Acteurs.Nom = "ELOUALI" AND Acteurs.Prenom = "Rachid");
-- 13) :
SELECT ActeurID,Nom,Prenom
FROM Acteurs,Roles
WHERE Acteurs.ActeurID = Roles.ActeurID
COUNT(Films.FilmID) AS NumFilms;
-- 14) :
SELECT RealisateurID,Nom,Prenom
FROM Realisateurs,Films
WHERE Realisateurs.RealisateurID = Films.RealisateurID
AVG(Films.Duree) AS moyFilms;
-- 15) :
SELECT Salaire
FROM Roles,Films
WHERE Roles.FilmID = Films.FilmID
AND Films.Titre = "Road to Kabul";
MAX(Roles.Salaire) AS salaireMax;
-- 16) :
DELETE FROM TABLE 
-- 17) :
DROP TABLE Acteurs;
DROP TABLE Realisateurs;
DROP TABLE Films;
DROP TABLE Rols;