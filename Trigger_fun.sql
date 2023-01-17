create or replace trigger t1
after
insert on sailors
for each row
begin
dbms_output.put_line('sname: '|| :new.sname);
end;
/

-- Insert a value to test
insert into sailors values(23,'Insert_name',8,48.0);

-- Check if trigger worked
select * from sailors;



-- PL/SQL code for creation of trigger to update data into a table
create or replace trigger t2
after update of sid on sailors
for each row
begin
dbms_output.put_line('sname: '|| :new.sname);
dbms_output.put_line('old sname: '|| :old.sname);
dbms_output.put_line('old id: '|| :old.sid);
if(:new.sid < 80) then
raise_application_error(-20017, 'Can''t update');
end if;
end;
/

-- Update value to test
update sailors set sid=12 where rating=1;
update sailors set sid=82, sname='new_name' where rating=1;

-- Check if trigger worked
select * from sailors;