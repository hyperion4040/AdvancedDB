-- set serveroutput on;-- This is essential ig using SQl Developer, DataGrip can work without this line

declare
 message VARCHAR2(20) := 'hello oracle';
 name VARCHAR2(10) := 'Adrian';
 begin
 DBMS_OUTPUT.PUT_LINE(message);
 DBMS_OUTPUT.put_line(name);
 DBMS_OUTPUT.PUT_LINE('My name is ' || name || ' and my message is ' || message);
 END;
