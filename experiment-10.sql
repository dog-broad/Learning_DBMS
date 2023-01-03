-- ##            ##
-- ##  TRIGGERS  ##
-- ##            ##

-- Use "set serverOutput on" before hand to work on triggers

-- PL/SQL  code for creation of trigger to insert data into a table 

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