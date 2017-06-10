CREATE PACKAGE Studenci AS
  PROCEDURE dodajStudenta(imie in VARCHAR2,nazwisko in VARCHAR2);
  FUNCTION pobierzDaneStudenta(nrIndeksu in NUMBER) RETURN VARCHAR2;
  END Studenci;