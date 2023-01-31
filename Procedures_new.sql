-- ##             ##
-- ##   Cursors   ##
-- ##             ##

set serveroutput on;

-- SQL code for creation of a cursor to view customer names

declare
c_id customer.id%type;
c_name customer.name%type;
cursor c1 is
select id, name from customer;
begin
open c1;
loop
fetch c1 into c_id, c_name; EXIT WHEN C1%NOTFOUND;
dbms_output.put_line(c_id||' '||c_name);
end loop;
close c1;
end;
/

declare
v_sname sailors.sname%type;
v_age sailors.age%type;
cursor c2 is
select sname,age from sailors;
begin
open c2;
loop
fetch c2 into v_sname,v_age;
exit when c2%rowcount>3;
dbms_output.put_line(v_sname||' '||v_age);
end loop;
close c2;
end;
/