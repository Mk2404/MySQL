CREATE DATABASE pasmine;
USE pasmine;
CREATE TABLE drzava (id_drzava INT AUTO_INCREMENT PRIMARY KEY, naziv VARCHAR (100) NOT NULL);
CREATE TABLE pasmina ( id_pasmina INT AUTO_INCREMENT PRIMARY KEY, naziv VARCHAR(100) NOT NULL,
id_drzava INT,
foreign key (id_drzava) REFERENCES drzava(id_drzava));

INSERT into drzava (naziv) VALUES
('Njemačka'),
('Japan'),
('Velika Britanija'),
('Francuska'),
('SAD');

INSERT INTO pasmina (naziv, id_drzava) VALUES
('Njemački ovčar', 1),
('Akita', 2),
('Shiba Inu', 2),
('Bulldog', 3),
('Buldog francuski', 4),
('Beagle', 3),
('Labrador', 5),
('Golden retriever', 5),
('Boston terijer', 5);


SELECT p.naziv AS pasmina, d.naziv AS drzava
FROM pasmina p
JOIN drzava d ON p.id_drzava = d.id_drzava;
