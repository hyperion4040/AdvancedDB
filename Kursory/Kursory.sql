
CREATE  TABLE Pracownik (
  imie VARCHAR2(20),
  nazwisko VARCHAR2(40)
);

CREATE OR REPLACE PROCEDURE
dodajPracownika(name in VARCHAR2, surname in VARCHAR2)
  IS
  BEGIN
    INSERT INTO PRACOWNIK
      VALUES (name, surname);
  END;



DECLARE
  dane VARCHAR2(100);
  informacje PRACOWNIK%ROWTYPE;
  imie Pracownik.imie%TYPE ;
  nazwisko Pracownik.nazwisko%TYPE ;
  CURSOR kursorPracownicy IS
    SELECT * FROM Pracownik;
  CURSOR kursorPracownicy2(imiePracownika VARCHAR2 ) IS
    SELECT imie, nazwisko FROM Pracownik
  WHERE Pracownik.imie = imiePracownika;
CURSOR kursorPracownicy2
  RETURN PRACOWNIK%ROWTYPE;
  BEGIN
  dodajPracownika('Adrian','Kozlowski');
  dodajPracownika('Adam','Kozioe');
  OPEN kursorPracownicy;
  OPEN kursorPracownicy2('Adrian');
  OPEN kursorPracownicy2;
  FETCH kursorPracownicy2 INTO dane;
  FETCH kursorPracownicy INTO informacje;
  FETCH kursorPracownicy2 INTO imie, nazwisko;
  DBMS_OUTPUT.PUT_LINE('Lista ' || imie || '' || nazwisko);
  DBMS_OUTPUT.PUT_LINE('Informacje ' || informacje);
  DBMS_OUTPUT.PUT_LINE('Dane ' || dane);
  CLOSE kursorPracownicy2;
  CLOSE kursorPracownicy2;
  CLOSE kursorPracownicy;

END;





