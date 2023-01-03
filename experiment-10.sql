-- ##            ##
-- ##  TRIGGERS  ##
-- ##            ##

-- Use "set serverOutput on" before hand to work on triggers

-- PL/SQL code for creation of trigger to insert data into a table 

create or replace trigger t1
before
insert on sailors
for each row
begin
:new.sname := upper(:new.sname);
end;
/

-- Insert a value to test
insert into sailors values(23,'Dustin',8,48.0);

-- Check if trigger worked
select * from sailors;


-- PL/SQL code for creation of trigger to update data into a table
create or replace trigger t2
after update of sid on sailors
for each row
begin
if(:new.sid < 80) then
raise_application_error(-20017, 'Cant update');
end if;
end;
/

-- Update value to test
update sailors set sid=12 where rating=1;
update sailors set sid=82 where rating=1;

-- Check if trigger worked
select * from sailors;


-- PL/SQL code for creation of trigger to delete data from a table
create or replace trigger t3
after
delete on sailors
for each row
begin
if :old.sid = 22 then
raise_application_error(-20019, 'you can not delete this row');
end if;
end;
/

-- Delete value to test
Delete from sailors where sname='Dustin';