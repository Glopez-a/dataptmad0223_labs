--Solution Challenge 1 - Most Profiting Authors


SELECT au_id, au_lname, au_fname, SUM(totals * royalty / 100 + advance)  as total
 FROM (
	SELECT  authors.au_id, authors.au_lname , authors.au_fname, titles.royalty, titles.advance  ,sum(qty) as totals FROM sales
	INNER JOIN  titles ON sales.title_id = titles.title_id
	INNER JOIN  titleauthor ON titleauthor.title_id = titles.title_id
	INNER JOIN authors ON authors.au_id = titleauthor.au_id
	GROUP BY sales.title_id )
 GROUP BY au_id
