-- Question 3
/* List the customer name and customer zipcode of all customers who did not 
   buy any items from store S2. */

-- 3A: Write this query using a nested query.
SELECT	DISTINCT c1.cname, c1.czip
FROM	customer AS c1
WHERE   c1.cid NOT IN	(SELECT c2.cid
						FROM	salestrans AS st1, customer AS c2
						WHERE   c2.cid = st1.custid AND 
								st1.storeid = 'S2');

-- 3B: Write this query using the EXCEPT operation (Oracle uses minus).
SELECT	DISTINCT c1.cname, c1.czip
FROM	customer AS c1, salestrans AS st1
WHERE	c1.cid = st1.custid

EXCEPT

SELECT	c2.cname, c2.czip
FROM	customer AS c2, salestrans AS st2
WHERE	c2.cid = st2.custid
		AND st2.storeid = 'S2';
