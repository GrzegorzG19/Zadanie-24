CREATE TABLE pracownicy (
imie VARCHAR(50) PRIMARY KEY,
nazwisko VARCHAR(50),
wyplata INT(100),
urodzenie DATE,
stanowisko VARCHAR(50)
);
INSERT INTO pracownicy(imie, nazwisko, wyplata, urodzenie, stanowisko) VALUES 
('Przemek', 'Nosalski', 10432, '1990-11-11', 'Sprzatacz'),
('Jagoda', 'Nowalski', 1000, '2002-12-21', 'Kucharz'),
('Hagrid', 'Potter', 10023, '1991-1-14', 'Czarodziej'),
('Harry', 'Portier', 9123, '1950-11-11', 'Magik'),
('Michał', 'Straus', 10012, '1924-9-11', 'Policjant');

SELECT * FROM pracownicy ORDER BY imie ASC;

SELECT * FROM pracownicy WHERE stanowisko='prezes';

SELECT * FROM pracownicy WHERE urodzenie BETWEEN '1900-10-10' AND '1989-07-26';

UPDATE pracownicy 
SET wyplata= wyplata + 10% wyplata
WHERE stanowisko = 'prezes';

DELETE FROM pracownicy WHERE urodzenie = ( SELECT urodzenie FROM ( (SELECT max(urodzenie) FROM pracownicy)) AS c);
DROP TABLE pracownicy;
