set serveroutput on

declare 
 message VARCHAR2(20) := 'hello oracle';
 begin
 DBMS_OUTPUT.PUT_LINE(message);
 END; 