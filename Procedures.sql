-- ##              ##
-- ##  Procedures  ##
-- ##              ##

-- SQL code for creation of procedure to view some specified columns from a table

create or replace procedure p_sail(sid1 in number)
is
v_sname char(30);
v_age float;
begin
select sname, age into v_sname, v_age from sailors where sid = sid1;
dbms_output.put_line('sname: '|| v_sname);
dbms_output.put_line('age: '|| v_age);
end;
/

set serverOutput on;

-- execute procedure
execute p_sail(22);

-- SQL code for modification of a procedure on specified columns from a table

create or replace procedure p_sailors(
    v_sid in sailors.sid%type,
    v_sname in sailors.sname%type,
    v_age in sailors.age%type
)is
begin
update sailors set sname = v_sname, age = v_age where sid = v_sid;
commit;
end;
/

-- execute procedure
execute p_sailors(29, 'Ajit', '19');