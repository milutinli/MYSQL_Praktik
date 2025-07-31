-- Kreiranje tabele 'Korisnici' koja će sadržati informacije o korisnicima.
CREATE TABLE Korisnici (
    ID INT PRIMARY KEY,
    Ime VARCHAR(50),
    Email VARCHAR(100),
    DatumRegistracije DATE
);
