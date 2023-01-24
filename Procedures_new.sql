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