/* 
/* USE Biblioteka; */

CREATE TABLE IF NOT EXISTS Kniga (
  Nazva VARCHAR(15) NOT NULL,
  id_Kniga INT NOT NULL,
  PRIMARY KEY (id_Kniga))
ENGINE = InnoDB;

CREATE TABLE IF NOT EXISTS Avtor (
  id_Avtor INT NOT NULL,
  Name_avtora VARCHAR(15) NOT NULL,
  PRIMARY KEY (id_Avtor))
ENGINE = InnoDB;

REPLACE INTO Biblioteka.Kniga (Nazva, id_Kniga) VALUES ('Физика', 1);
REPLACE INTO Biblioteka.Kniga (Nazva, id_Kniga) VALUES ('Математика', 2);
REPLACE INTO Biblioteka.Kniga (Nazva, id_Kniga) VALUES ('Алгебра', 3);
REPLACE INTO Biblioteka.Kniga (Nazva, id_Kniga) VALUES ('Биология', 4);
REPLACE INTO Biblioteka.Kniga (Nazva, id_Kniga) VALUES ('Геометрия', 5);
REPLACE INTO Biblioteka.Kniga (Nazva, id_Kniga) VALUES ('Литература', 6);
REPLACE INTO Biblioteka.Avtor (id_Avtor, Name_avtora) VALUES (1, 'Гончаренко');
REPLACE INTO Biblioteka.Avtor (id_Avtor, Name_avtora) VALUES (2, 'Бевз');
REPLACE INTO Biblioteka.Avtor (id_Avtor, Name_avtora) VALUES (3, 'Мерзляк');
REPLACE INTO Biblioteka.Avtor (id_Avtor, Name_avtora) VALUES (4, 'Иванов');
REPLACE INTO Biblioteka.Avtor (id_Avtor, Name_avtora) VALUES (5, 'Бевз');
REPLACE INTO Biblioteka.Avtor (id_Avtor, Name_avtora) VALUES (6, 'Петрова');

GRANT INSERT, UPDATE, DELETE ON Kniga TO 'aaa'@'%' IDENTIFIED BY 'Kniga';
FLUSH PRIVILEGES;
GRANT INSERT, UPDATE, DELETE ON Avtor TO 'aaa'@'%' IDENTIFIED BY 'Avtor';
FLUSH PRIVILEGES;

SELECT * FROM Kniga INNER JOIN Avtor ON Kniga.id = Avtor.id;
 
