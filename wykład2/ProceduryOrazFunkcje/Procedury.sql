CREATE TABLE Osoba(id int,
imie VARCHAR2(20),
  nazwisko VARCHAR2(30)
);

CREATE or REPLACE PROCEDURE
dodajOsobę (numer in int, name in varchar2 , surname in varchar2 ) IS
  BEGIN
    INSERT INTO Osoba
      VALUES (numer,name,surname);
  END;

BEGIN
  dodajOsobę(1, 'Adrina','Kozlowski');
  dodajOsobę(2,'Adam','Kozioł');
END;


SELECT *FROM Osoba



