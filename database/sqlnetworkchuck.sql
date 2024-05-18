# on linux :
/*
sudo apt install mysql-server -y
sudo systemctl status mysql
sudo mysql
*/
SHOW DATABASES;
CREATE DATABASE nc_coffee;
SHOW TABLES;
CREATE TABLE coffee_table(
	id INT ,
    namee VARCHAR(255),
    region VARCHAR(255),
    roast VARCHAR(255)
);
DESCRIBE coffee_table;
INSERT INTO coffee_table VALUES(1,"default route","ethiopia","light");
SELECT * FROM coffee_table;
INSERT INTO coffee_table  VALUES(2,"docker run","mexico","medium"),
								(3,"helpdesk","handuras","medium"),
								(4,"on-call","peru","dark"),
			 					(5,"ipconfig","tanzania","blonde"),
								(6,"traceroute","bali","med-dark");
SELECT * FROM coffee_table;
SELECT namee FROM coffee_table;
# craete cutomers table and name this table "Avengers"
CREATE TABLE Avengers(
	id INT,
	First_name VARCHAR(255),
	Last_name VARCHAR(255),
	Origin VARCHAR(255),
	Age INT,
	Alias VARCHAR(255)
);
INSERT INTO Avengers VALUES
		(1,"thor","odinson","asgard",1500,"strongest avenger"),
        (2,"clint","barton","earth",35,"hawkeye"),
        (3,"tony","stark","earth",52,"iron man"),
		(4,"peter","parker","earth",17,"spiderman"),
		(5,"groot","grout","planetx",18,"tree")
;
SELECT * FROM Avengers;
SELECT * FROM Avengers WHERE Origin = "earth";
SELECT * FROM Avengers WHERE Origin = "earth" OR Origin = "asgard";
SELECT * FROM Avengers WHERE Age < 25;
SELECT * FROM Avengers WHERE NOT Origin = "earth";
DELETE FROM Avengers WHERE First_name = "groot";
UPDATE Avengers SET Last_name = NULL WHERE First_name = "odinson";
# order by Age youngest to oldest
SELECT * FROM Avengers ORDER BY Age ASC;
SELECT * FROM Avengers ORDER BY Age DESC;
ALTER TABLE Avengers ADD beard BOOLEAN;

