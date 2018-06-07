--Question 7

/*List the region name, store id and store zip for all regions. Include all regions,
 even those regions without any stores. */

SELECT	r.rname AS Region_Name, s.sid AS Store_ID, s.szip AS Store_Zip
FROM	(region AS r LEFT OUTER JOIN store AS s
		ON r.rid = s.rid);
