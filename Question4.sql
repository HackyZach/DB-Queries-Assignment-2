-- Question 4
/* Display the total number of products that cost less than $100. */
SELECT	COUNT(*) AS amountlessthan100
FROM	product
WHERE	price < 100;
