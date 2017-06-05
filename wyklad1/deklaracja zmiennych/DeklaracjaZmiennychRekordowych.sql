DECLARE
  TYPE Osoba is RECORD (
    imie VARCHAR2(20),
    nazwisko VARCHAR2(40)
  );
  student Osoba;
  imie student.imie%TYPE;
BEGIN
    student.imie := 'Adrian';
    student.nazwisko := 'Koziol';
    student.imie := 'Adi';
   student.nazwisko := 'Kozlowski';
    DBMS_OUTPUT.PUT_LINE(student.imie);
END;
