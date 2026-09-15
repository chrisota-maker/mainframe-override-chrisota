mainframe_override=# SELECT * FROM forum_accounts
mainframe_override-# ;
ERROR:  relation "forum_accounts" does not exist
LINE 1: SELECT * FROM forum_accounts
                      ^
mainframe_override=# SELECT * FROM forum_accounts;
ERROR:  relation "forum_accounts" does not exist
LINE 1: SELECT * FROM forum_accounts;
                      ^
mainframe_override=# \dt
Did not find any relations.
mainframe_override=# SET search_path TO public;
SET
mainframe_override=# SELECT * FROM public.forum_accounts;
              username              | first_name  |      last_name                                                                    
------------------------------------+-------------+----------------------
 strident-fisherman-42              | Deshawn     | Moen
 snoopy-completion-71               | Marisol     | Haag
 fine-napkin-44                     | Sadie       | Beahan
 damp-wheel-55                      | Adolphus    | Sauer
 cool-sand-37                       | David       | Muller
 windy-minister-34                  | Harry       | Willms
 hospitable-steak-85                | Art         | Quitzon
 hairy-casement-14                  | Viola       | Keeling-Mertz
 oblong-tail-33                     | Harold      | McClure
 gorgeous-doing-67                  | Imani       | Prohaska
 super-privilege-75                 | Brenda      | Monahan
 trivial-giggle-32                  | Lionel      | Bartell
 ecstatic-restaurant-37             | Mervin      | Bartell
 lively-ravioli-56                  | Reuben      | Abernathy
 glaring-pendant-70                 | Shawna      | Hettinger
 decisive-awareness-32              | Haley       | Schumm
 strict-interior-44                 | Amy         | Stamm
 made-up-resource-74                | Leanna      | Daniel
 angelic-coal-91                    | Freddie     | Kuphal
mainframe_override=# SELECT * FROM forum_posts WHERE content ILIKE '%My dad works there and he''s got some serious inside intel.%';   
  id   |     title     |                                                                                              content                                                                                               |        date         |     author     
-------+---------------+----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------+---------------------+----------------
 nbZY_ | Get rich fast | You should all invest in EmptyStack Solutions soon or you'll regret it. My dad works there and he's got some serious inside intel. Their self-driving taxis are the future and the future is here. | 2048-04-08 00:00:00 | smart-money-44
(1 row)


mainframe_override=# SELECT * FROM emptystack_accounts WHERE username = 'smart-money-44 ';
 username | password | first_name | last_name                                                                                                
----------+----------+------------+-----------
(0 rows)


mainframe_override=# SELECT * FROM forum_accounts WHERE username = 'smart-money-44';
    username    | first_name | last_name                                                                                                     
----------------+------------+-----------
 smart-money-44 | Brad       | Steele
(1 row)


mainframe_override=# SELECT * FROM emptystack_accounts WHERE last_name='Steele';
    username    |  password   | first_name | last_name                                                                                       
----------------+-------------+------------+-----------
 triple-cart-38 | password456 | Andrew     | Steele
 lance-main-11  | password789 | Lance      | Steele
(2 rows)


mainframe_override=# SELECT * FROM forum_accounts WHERE last_name ='Steele';
    username     | first_name | last_name                                                                                                    
-----------------+------------+-----------
 sharp-engine-57 | Andrew     | Steele
 stinky-tofu-98  | Kevin      | Steele
 smart-money-44  | Brad       | Steele
(3 rows)


mainframe_override=# SELECT * FROM emptystack_messages WHERE body ILIKE '%self-driving taxis%'; 
 id | from | to | subject | body                                                                                                             
----+------+----+---------+------
(0 rows)


mainframe_override=# SELECT * FROM emptystack_messages WHERE body ILIKE '%self-driving%';      
 id | from | to | subject | body                                                                                                             
----+------+----+---------+------
(0 rows)


mainframe_override=# SELECT * FROM emptystack_messages          
mainframe_override-# ;



mainframe_override=# SELECT * FROM emptystack_messages WHERE subject ILIKE 'self-driving';
(0 rows)

mainframe_override=# SELECT * FROM emptystack_messages WHERE body ILIKE 'self-driving';   
(0 rows)

mainframe_override=# SELECT * FROM emptystack_messages WHERE body ILIKE '%self-driving%';
(0 rows)

mainframe_override=# SELECT COUNT(*) FROM emptystack_messages;
-[ RECORD 1 ]                                                                                                                                             
count | 100


mainframe_override=# SELECT * FROM emptystack_messages WHERE body ILIKE '%taxi%';
-[ RECORD 1 ]-------------------------------------------------------                                                                                      
id      | LidWj
from    | your-boss-99
to      | triple-cart-38
subject | Project TAXI
body    | Deploy Project TAXI by end of week. We need this out ASAP.


mainframe_override=# SELECT * FROM emptystack_accounts WHERE username = 'your-boss-99';
-[ RECORD 1 ]--------------                                                                                                                               
username   | your-boss-99
password   | notagaincarter
first_name | Skylar
last_name  | Singer


mainframe_override=# SELECT * FROM emptystack_projects WHERE code = 'TAXI';
-[ RECORD 1 ]--                                                                                                                                           
id   | DczE0v2b
code | TAXI