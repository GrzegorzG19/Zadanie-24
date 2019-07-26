CREATE TABLE pracownik (
 id INT auto_increment PRIMARY KEY,
 imie VARCHAR(50),
 nazwisko VARCHAR(50),
 );
CREATE TABLE adres (
 id INT auto_increment PRIMARY KEY,
 ulica VARCHAR(50),
 kod_pocztowy VARCHAR(50),
 miejscowosc VARCHAR(50)
 );
CREATE TABLE stanowisko (
id INT auto_increment PRIMARY KEY,
 nazwa VARCHAR(50),
 opis VARCHAR(50),
 wyplata INT(100)
 );
 
 INSERT INTO adres (ulica, kod_pocztowy, miejscowosc) VALUES
('Falskiego39D', '44-211', 'Wroclaw'),
('Poludniowa24D','22-111', 'Wroclaw'),
('Cukrowa21F','11-222','Szczecin');

INSERT INTO Pracownik (imie, nazwisko) 
VALUES ('Grzegorz', 'Golan'), 
('Przemek','Mosiewicz'), 
('Magda','Nalon');

INSERT INTO stanowisko (nazwa, opis, wyplata) VALUES
('programista','pisze programy', 10000),
('sprzedawca' ,'sprzedaje', 2000),
('sprzataczka','sprzata',2010);

SELECT distinct * FROM pracownik p JOIN adres d ON p.id = d.id 
JOIN stanowisko a ON p.id = a.id;

SELECT sum(wyplata) FROM pracownik p JOIN adres d ON p.id = d.id 
JOIN stanowisko a ON p.id = a.id;

SELECT * FROM pracownik p JOIN adres d ON p.id = d.id 
JOIN stanowisko a ON p.id = a.id WHERE kod_pocztowy = '44-211';