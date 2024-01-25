WITH price_value AS (
SELECT
	price_name,
	price_year,
	ROUND (payroll_value / price_value) AS value
FROM
	t_lenka_sedlackova_project_sql_primary_final tlspspf
WHERE
	price_name IN ('Mléko polotučné pasterované', 'Chléb konzumní kmínový')
	AND price_year IN (2007, 2018))
SELECT price_name, price_year, sum (value)
FROM price_value
GROUP BY price_name, price_year
;
