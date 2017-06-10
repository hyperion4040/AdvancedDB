CREATE PACKAGE BODY Studenci AS
  PROCEDURE dodajStudenta(imie in VARCHAR2,nazwisko in VARCHAR2)
  IS
    BEGIN
      INSERT INTO STUDENCIKI
        VALUES (imie,nazwisko);
    END dodajStudenta;

  FUNCTION pobierzDaneStudenta(nrIndeksu in NUMBER) RETURN VARCHAR2
  IS
    BEGIN
      SELECT IMIE || '' || NAZWISKO
        into daneOsoby from STUDENCIKI
        WHERE NUMER = nrIndeksu;
      RETURN daneOsoby;
    END pobierzDaneStudenta;
  END Studenci;
