--Question 6
/*Retrieve the TID and total number of products 
sold for each transaction that has more than 1 product.*/

SELECT tid, SUM(numitems) AS soldpertid
FROM soldvia, salestrans
WHERE transid = tid
GROUP BY tid
HAVING SUM(numitems) > 1;

--SELECT tid
--FROM salestrans;

--INNER JOIN 
 
--(SELECT SUM(numitems)-- AS soldpertransid 
--FROM  soldvia
--GROUP BY transid
--HAVING SUM(numitems) > 1);