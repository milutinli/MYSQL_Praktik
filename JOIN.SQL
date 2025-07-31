-- Kreiramo tabelu 'Porudzbine' koja će biti povezana sa tabelom 'Korisnici'.
-- 'ID_Korisnika' je strani ključ (FOREIGN KEY) koji referencira kolonu 'ID' u tabeli 'Korisnici'.
CREATE TABLE Porudzbine (
    ID_Porudzbine INT PRIMARY KEY,
    ID_Korisnika INT,
    Proizvod VARCHAR(100),
    Cena DECIMAL(10, 2),
    DatumPorudzbine DATE,
    FOREIGN KEY (ID_Korisnika) REFERENCES Korisnici(ID)
);

-- Unosimo nekoliko porudžbina za korisnike koje smo prethodno kreirali.
-- Imajte na umu da je korisnik sa ID-jem 3 obrisan u prethodnim primerima.
INSERT INTO Porudzbine (ID_Porudzbine, ID_Korisnika, Proizvod, Cena, DatumPorudzbine) VALUES (101, 1, 'Laptop', 1200.00, '2025-08-10');
INSERT INTO Porudzbine (ID_Porudzbine, ID_Korisnika, Proizvod, Cena, DatumPorudzbine) VALUES (102, 2, 'Miš', 25.50, '2025-08-11');
INSERT INTO Porudzbine (ID_Porudzbine, ID_Korisnika, Proizvod, Cena, DatumPorudzbine) VALUES (103, 1, 'Tastatura', 75.00, '2025-08-12');

-- INNER JOIN: Prikazujemo imena korisnika i proizvode koje su naručili.
-- Prikazaće se samo korisnici koji imaju bar jednu porudžbinu.
SELECT
    K.Ime,
    P.Proizvod,
    P.Cena
FROM
    Korisnici AS K
INNER JOIN
    Porudzbine AS P ON K.ID = P.ID_Korisnika;

-- LEFT JOIN: Prikazujemo sve korisnike i njihove porudžbine, ako postoje.
-- Ako korisnik nema porudžbinu, polja za porudžbinu će biti NULL.
SELECT
    K.Ime,
    P.Proizvod
FROM
    Korisnici AS K
LEFT JOIN
    Porudzbine AS P ON K.ID = P.ID_Korisnika;
