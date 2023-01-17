create or replace trigger triggy
before update of balance on accounts
for each row
begin
insert into transactions values(ac_seq.nextval, :new.acc_no, sysdate, (:new.balance - :old.balance), :old.balance, :new.balance);
end;
/