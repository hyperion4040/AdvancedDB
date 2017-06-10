CREATE or REPLACE TRIGGER informacjaPracownik
  AFTER INSERT ON PRACOWNIK
  BEGIN
    DBMS_OUTPUT.PUT_LINE('Dodano kolejny wiersz do tablicy Pracownik');

  END;

INSERT INTO PRACOWNIK(imie, NAZWISKO)
    VALUES ('Adi','Dcode');