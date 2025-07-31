-- Ažuriranje email adrese za korisnika sa ID-jem 1.
UPDATE Korisnici
SET Email = 'novi.email@example.com'
WHERE ID = 1;
-- Dodavanje nove kolone 'BrojTelefona' u tabelu 'Korisnici'.
ALTER TABLE Korisnici
ADD BrojTelefona VARCHAR(20);
