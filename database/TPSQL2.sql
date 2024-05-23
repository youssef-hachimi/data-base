CREATE DATABASE Gestion_Fournisseurs;
CREATE TABLE Fournisseurs(
	NumF VARCHAR(10) NOT NULL PRIMARY KEY,
    Nomf VARCHAR(35),
    Statut INT,
    Ville VARCHAR(15)
);
CREATE TABLE Produits{
	NumP VARCHAR(5) NOT NULL PRIMARY KEY
    NomP VARCHAR(15),
    Color VARCHAR(20),
    Poids INT,
    Ville VARCHAR(10)
);
CREATE TABLE Detail(
	NumProd VARCHAR(5) NOT NULL,
    NumFrs VARCHAR(5) NOT NULL,
    FOREIGN KEY (NumProd) REFERENCES Produits(NumP),
    FOREIGN KEY (NumFrs) REFERENCES Fournisseurs(NumF),
    PRIMARY KEY (NumProd) 
);
INSERT INTO Fournisseurs 
VALUES  ('F1','Ali',20,'Agradir'),
		('F2','Amine',10,'Rabat'),
		('F3','Ahmed',30,'Rabat'),
		('F4','Yazid',20,'Agradir'),
		('F5','Imad',30,'Marrakech');
INSERT INTO Produits 
VALUES ('P1','Chaise','Rouge',12,'Agadir'),
		('P2','Table','vert',17,'Rabat'),
        ('P3','Tele','Blue',17,'Tanger'),
        ('P4','Chaise','Rouge',14,'Agadir'),
        ('P5','Verre','Blue',12,'Rabat'),
        ('P6','Porte','Rouge',19,'Agadir');
INSERT INTO Detail
VALUES ('F1','P1',300),
		('F1','P2',300),
        ('F1','P3',300),
        ('F1','P4',300),
        ('F1','P5',300),
        ('F1','P6',300),
        ('F2','P1',300),
        ('F2','P2',300),
        ('F3','P2',300),
        ('F4','P2',300),
        ('F4','P4',300),
        ('F4','P5',300);
	
        SELECT * FROM Fourniseurs;
        SELECT NomF,Stu