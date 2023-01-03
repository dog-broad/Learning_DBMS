-- Working on oracle.sql __ SAILORS, RESERVES & BOATS

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

-- Find the names of sailors who ave reservedred boat (Nested Query)
select s.sname from sailors s where s.sid in(
    select r.sid from reserves r where r.bid in(
        select b.bid from boats b where b.color = 'Red'
    )
);

-- Find the names of sailors who have reserved boat number 103 (Corelated Nested Quesry)
select s.sname from sailors s where exists(
    select * from reserves r where r.bid=103 and r.sid = s.sid
);