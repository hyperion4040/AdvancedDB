CREATE OR REPLACE FUNCTION WyświetlOsobę
  (identyfikator in number) RETURN VARCHAR2
  IS
  dane_osoby VARCHAR2(200);
  BEGIN
    SELECT imie || ' ' || nazwisko
      into dane_osoby FROM OSOBA
      where id = identyfikator;
    RETURN dane_osoby;
  END;

SELECT WyświetlOsobę(3) FROM DUAL;

-- BEGIN
--   WyświetlOsobę(2);
-- END;