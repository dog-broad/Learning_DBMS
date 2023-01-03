
/*
*        ID NAME                                  AGE ADDRESS                            SALARY
* --------- ------------------------------ ---------- ------------------------------ ----------
*         1 Ramesh                                 32 Ahmedabad                            2000
*         2 Khilan                                 25 Delhi                                1500
*         3 Kaushik                                23 Kota                                 2000
*         4 Chaitali                               25 Mumbai                               6500
*         5 Hardik                                 27 Bhopal                               8500
*         6 Komal                                  22 MP                                   4500
*         7 Muffy                                  24 Indore                              10000
* 
* 
* 
*       OID DAY       CUSTOMER_ID     AMOUNT
* --------- --------- ----------- ----------
*       102 08-OCT-09           3       3000
*       100 08-OCT-09           3       1500
*       101 20-NOV-09           2       1560
*       103 08-MAY-08           4       2060
*/

prompt #############################
prompt -- Using INNER JOIN method 
prompt #############################

select name, address, id, oid, day, amount from customer inner join order1 on customer.id = order1.customer_id;

prompt #############################
prompt -- Using LEFT JOIN method 
prompt #############################

select name, address, id, oid, day, amount from customer left outer join order1 on customer.id = order1.customer_id;

prompt #############################
prompt -- Using RIGHT JOIN method 
prompt #############################

select name, address, id, oid, day, amount from customer right outer join order1 on customer.id = order1.customer_id;

prompt #############################
prompt -- Using FULL JOIN method 
prompt #############################

select name, address, id, oid, day, amount from customer full join order1 on customer.id = order1.customer_id;
