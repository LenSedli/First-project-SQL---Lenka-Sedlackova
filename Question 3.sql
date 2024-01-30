WITH product_value_growth AS(
SELECT
	ls.price_name,
	ls.price_year,
	ls2.year_prev + 1 AS year_prev,
	ROUND ((ls.avg_value - ls2.avg_value2) / avg_value2 * 100) AS value_growth
FROM
	(
	SELECT
		price_name,
		price_year,
		avg(price_value) AS avg_value
	FROM
		t_Lenka_Sedlackova_project_SQL_primary_final
	GROUP BY
		price_name,
		price_year) ls
JOIN (
	SELECT
		price_name,
		price_year + 1 AS year_prev,
		avg(price_value) AS avg_value2
	FROM
		t_Lenka_Sedlackova_project_SQL_primary_final ls2
	GROUP BY
		price_name,
		price_year + 1) ls2
ON
	ls.price_name = ls2.price_name
	AND ls.price_year = ls2.year_prev + 1)
SELECT
	price_name,
	ROUND(avg(value_growth)) AS value_growth
FROM
	product_value_growth
GROUP BY
	price_name
ORDER BY 
	value_growth 
;
