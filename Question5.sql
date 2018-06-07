-- Question 5
/* For each vendor, display the vendor name and the cost of the product with the lowest cost in category CP. */

--SELECT rname, s.sid, szip
--FROM (region AS r LEFT OUTER JOIN store AS s ON r.rid = s.sid);

SELECT	r.rname AS Region_Name, s.sid AS Store_ID, s.szip AS Store_Zip
FROM	region AS r LEFT OUTER JOIN store AS s 
		ON r.rid = s.rid;

--SELECT vname, price
--FROM vendor, product
--WHERE price IN (SELECT MIN(price)
--			    FROM product
--				WHERE product.vid = 'PG' AND product.vid = vendor.vid AND categoryid = 'CP')
--				OR
--				price IN
--				(SELECT MIN(price)
--				 FROM product
--				 WHERE product.vid = 'MK' AND product.vid = vendor.vid AND categoryid = 'CP')
