-- Preuzimanje svih kolona za sve korisnike iz tabele 'Korisnici'.
SELECT * FROM Korisnici;

-- Preuzimanje samo imena i email adresa svih korisnika.
SELECT Ime, Email FROM Korisnici;

-- Preuzimanje korisnika koji su se registrovali nakon određenog datuma.
SELECT * FROM Korisnici WHERE DatumRegistracije > '2025-07-30';
