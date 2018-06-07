-- Question 2

/* List the customer name and store zipcode of all female customers who 
made a sales transaction at a store in the region named 'Chicagoland'. */

SELECT	c.cname, s.szip
FROM	customer AS c, salestrans AS st, region AS r, store AS s
WHERE	c.cid = st.custid AND st.storeid = s.sid
		AND s.rid = r.rid AND r.rname = 'Chicagoland' 
		AND c.gender = 'F';