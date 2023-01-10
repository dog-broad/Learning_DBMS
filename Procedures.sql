-- ##              ##
-- ##  Procedures  ##
-- ##              ##

-- SQL code for creation of procedure to view some specified columns from a table

create or replace procedure p_sail(sid1 in number)
is
v_sname varchar(10);
v_age number(10);
begin
select sname, age into v_sname, v_age from sailors where sid = sid1;
dbms_output.put_line ('sname: '|| v_sname);
dbms_output.put_line ('age: '|| v_age);
end;
/