-- __Working on oracle aggregate operators__ SAILORS, RESERVES & BOATS

host cls

/*
* 
*       SID SNAME                              RATING        AGE
* --------- ------------------------------ ---------- ----------
*        22 Dustin                                  7         45
*        29 Brutus                                  1         33
*        31 Lubber                                  8       55.5
*        58 Rusty                                  10         35
*        64 Horatio                                 7         35
*        71 Zorba                                  10         16
*        85 Art                                     3       25.5
*        95 Bob                                     3       63.5
* 
* 
*       SID        BID DAY
* --------- ---------- ---------
*        22        101 10-OCT-98
*        22        102 10-OCT-98
*        22        103 10-AUG-98
*        22        104 10-JUL-98
*        31        102 11-OCT-98
*        31        103 11-JUN-98
*        31        104 11-DEC-98
*        64        101 09-MAY-98
*        64        102 09-AUG-98
* 
* 
*       BID BNAME                          COLOR
* --------- ------------------------------ --------------------
*       101 Interlake                      Blue
*       102 Interlake                      Red
*       103 Clipper                        Green
*       104 Marine                         Red
* 
*/

prompt ## --Find the average age of sailors with a rating of 10
select avg(s.age) from sailors s where s.rating = 10;

prompt ## --Find the name and age of the oldest of the sailors
select s.sname, s.age from sailors s where s.age = (select max(age) from sailors);

prompt ## Count the number of different sailor names
select count(distinct s.sname) from sailors s;

prompt ## --Find the age of the youngest sailor for each rating level
select s.rating, min(s.age) from sailors s group by s.rating;

prompt ## --Find the sum of ages of sailors whose rating > 10
select sum(age) from sailors where rating > 10;

prompt ## --Find average age of sailors for each rating level that has at least 2 sailors
select s.rating, avg(s.age) as average 
from sailors s 
group by s.rating 
having count(*)>=1;