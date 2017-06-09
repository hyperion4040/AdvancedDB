--deklaracja zmiennych prostych

DECLARE
  imie VARCHAR2(30);
  wiek NUMBER(3);
  student BOOLEAN NOT NULL DEFAULT TRUE ;
  miasto VARCHAR2(50) := 'Gdynia';
BEGIN
  DBMS_OUTPUT.PUT_LINE(imie);
  DBMS_OUTPUT.put_line(miasto);

END;
