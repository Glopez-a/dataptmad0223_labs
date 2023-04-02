-- CHALLENGE 1

SELECT au.au_id AS "AUTHOR ID",
au.au_lname AS "LAST NAME",
au.au_fname AS "FIRST_NAME",
ti.title AS TITLE,
pu.pub_name AS PUBLISHER
FROM authors AS au
INNER JOIN titleauthor AS tau ON au.au_id = tau.au_id 
INNER JOIN titles AS ti ON ti.title_id = tau.title_id 
INNER JOIN publishers AS pu ON pu.pub_id  = ti.pub_id 


-- CHALLENGE 2

SELECT au.au_id AS "AUTHOR ID",
au.au_lname AS "LAST NAME",
au.au_fname AS "FIRST_NAME",
pu.pub_name AS PUBLISHER,
COUNT(*) AS "TITLE COUNT"
FROM authors AS au
INNER JOIN titleauthor AS tau ON au.au_id = tau.au_id 
INNER JOIN titles AS ti ON ti.title_id = tau.title_id 
INNER JOIN publishers AS pu ON pu.pub_id  = ti.pub_id 
GROUP BY au.au_id, pu.pub_name 


-- CHALLENGE 3

SELECT au.au_id AS "AUTHOR ID",
au.au_lname AS "LAST NAME",
au.au_fname AS "FIRST_NAME",
SUM(sa.qty) AS TOTAL
FROM authors AS au
INNER JOIN titleauthor AS tau ON au.au_id = tau.au_id 
INNER JOIN titles AS ti ON ti.title_id = tau.title_id 
INNER JOIN sales AS sa ON sa.title_id  = ti.title_id 
GROUP BY au.au_id
ORDER BY TOTAL DESC
LIMIT 3

-- CHALLENGE 4

SELECT au.au_id AS "AUTHOR ID",
au.au_lname AS "LAST NAME",
au.au_fname AS "FIRST_NAME",
COUNT(*) AS "TOTAL"
FROM authors AS au
INNER JOIN titleauthor AS tau ON au.au_id = tau.au_id 
INNER JOIN titles AS ti ON ti.title_id = tau.title_id 
LEFT JOIN sales AS sa ON sa.title_id  = ti.title_id 
GROUP BY au.au_id
ORDER BY TOTAL DESC
