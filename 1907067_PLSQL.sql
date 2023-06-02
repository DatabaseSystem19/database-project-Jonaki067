

set serveroutput on
declare 
hospital_id hospital.hospital_id%type;
hospital_name hospital.hospital_name%type;
region varchar(20);
begin
select hospital_id,hospital_name,region into hospital_id,hospital_name,region from hospital where hospital_id=7;
dbms_output.put_line('HOSPITAL_id: '||hospital_id|| ' HOSPITAL_name: '||hospital_name || ' region: '||region);
end;
/

set serveroutput on
declare 
hospital_id hospital.hospital_id%type:='12';
hospital_name hospital.hospital_name%type:='Square';
contact_no hospital.contact_no%type:='912345678';
e_mail hospital.e_mail%type:='square001@gmail.com';
region hospital.region%type:='Dhaka';
begin
insert into hospital values(hospital_id,hospital_name,contact_no,e_mail,region);
end;
/


set serveroutput on
declare 
hospital_row hospital%rowtype;
begin
select hospital_id,hospital_name,contact_no,e_mail,region into hospital_row.hospital_id,hospital_row.hospital_name,hospital_row.contact_no,hospital_row.e_mail,hospital_row.region from hospital where hospital_id=12;
end;
/


set serveroutput on
declare 
cursor hospital_cursor is select * from hospital;
hospital_row hospital%rowtype;
begin
open hospital_cursor;
fetch hospital_cursor into hospital_row.hospital_id,hospital_row.hospital_name,hospital_row.contact_no,hospital_row.e_mail,hospital_row.region;
while hospital_cursor%found loop
dbms_output.put_line('hospital_id: '||hospital_row.hospital_id|| ' hospital_name: '||hospital_row.hospital_name || ' contact_no: ' ||hospital_row.contact_no|| ' e_mail: '||hospital_row.e_mail || 'region: '|| hospital_row.region);
dbms_output.put_line('Row count: '|| hospital_cursor%rowcount);
fetch hospital_cursor into hospital_row.hospital_id,hospital_row.hospital_name,hospital_row.contact_no,hospital_row.e_mail,hospital_row.region;
end loop;
close hospital_cursor;
end;
/

set serveroutput on
declare 
  counter number;
  hospital_name2 hospital.hospital_name%type;
  TYPE NAMEARRAY IS VARRAY(20) OF hospital.hospital_name%type; 
  A_NAME NAMEARRAY:=NAMEARRAY();
begin
  counter:=1;
  for x in 3..10  
  loop
    select hospital_name into hospital_name2 from hospital where hospital_id=x;
    A_NAME.EXTEND();
    A_NAME(counter):=hospital_name2;
    counter:=counter+1;
  end loop;
  counter:=1;
  WHILE counter<=A_NAME.COUNT 
    LOOP 
    DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
    counter:=counter+1;
  END LOOP;
end;
/
set serveroutput on
DECLARE 
   counter NUMBER := 1;
   hospital_name2 hospital.hospital_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(20) OF hospital.hospital_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('hospital 1', 'hospital 2', 'hospital 3', 'hospital 4', 'hospital 5'); 
   -- VARRAY with a fixed size of 5 elements and initialized with hospital names
BEGIN
   counter := 1;
   FOR x IN 3..7  
   LOOP
      SELECT hospital_name INTO hospital_name2 FROM hospital WHERE hospital_id=x;
      A_NAME(counter) := hospital_name2;
      counter := counter + 1;
   END LOOP;
   counter := 1;
   WHILE counter <= A_NAME.COUNT 
   LOOP 
      DBMS_OUTPUT.PUT_LINE(A_NAME(counter)); 
      counter := counter + 1;
   END LOOP;
END;
/
set serveroutput on
DECLARE 
   counter NUMBER := 1;
   hospital_name2 hospital.hospital_name%TYPE;
   TYPE NAMEARRAY IS VARRAY(5) OF hospital.hospital_name%TYPE;
   A_NAME NAMEARRAY:=NAMEARRAY('hospital 1', 'hospital 2', 'hospital 3', 'hospital 4', 'hospital 5'); 
   -- VARRAY with a fixed size of 5 elements and initialized with hospital names
BEGIN
   counter := 1;
   FOR x IN 3..8  
   LOOP
      SELECT hospital_name INTO hospital_name2 FROM hospital WHERE hospital_id=x;
      if hospital_name2='Rainbow' 
        then
        dbms_output.put_line(hospital_name2||' is in '||'Mymensingh');
      elsif hospital_name2='CityMedical'  
        then
        dbms_output.put_line(hospital_name2||' is in '||'Khulna');
      else 
        dbms_output.put_line(hospital_name2||' is in '||'other region');
        end if;
   END LOOP;
END;
/


CREATE OR REPLACE PROCEDURE h_proc(hpl_id IN varchar, regi OUT varchar) IS
BEGIN
select region into regi from hospital where hospital_id=hpl_id;
END;
/
set serveroutput on
DECLARE
hospi_id hospital.hospital_id%TYPE;
reg hospital.region%TYPE;
BEGIN
select hospital_id into hospi_id from hospital where hospital_id=1;
h_proc(hospi_id,reg);
dbms_output.put_line(reg);
END;
/

CREATE OR REPLACE FUNCTION function_h_proc(hpl_id IN varchar)
RETURN varchar
IS
regi hospital.region%TYPE;
BEGIN
select region into regi from hospital where hospital_id=hpl_id;
return regi;
END;
/
set serveroutput on
DECLARE
hospi_id hospital.hospital_id%TYPE;
reg hospital.region%TYPE;
BEGIN
select hospital_id into hospi_id from hospital where hospital_id=1;
reg:=function_h_proc(hospi_id);
dbms_output.put_line(reg);
END;
/
drop procedure h_proc;
drop function function_h_proc;

































































..