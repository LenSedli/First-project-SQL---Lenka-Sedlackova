WITH tabulka AS (
SELECT
	ls.price_year,
	(ls.avg_price_value - ls2.avg_price_value2) / ls2.avg_price_value2 * 100 AS price_value_growth,
	ls.payroll_year,
	(avg_payroll_value - avg_payroll_value2) / avg_payroll_value2 * 100 AS payroll_value_growth,
	ls.GDP_year,
	ROUND((ls.GDP - ls2.GDP)/ ls2.GDP * 100) AS GDP_growth
FROM
	(
	SELECT
		price_year,
		ROUND (AVG(price_value)) AS avg_price_value,
		payroll_year,
		ROUND(AVG(payroll_value)) AS avg_payroll_value,
		country, 
		GDP,
		GDP_year
	FROM
		t_Lenka_Sedlackova_project_SQL_primary_final
	WHERE
		price_year IS NOT NULL
		AND GDP IS NOT NULL
	GROUP BY
		price_year,
		payroll_year,
		country,
		GDP,
		GDP_year
		) ls
LEFT JOIN (
	SELECT
		price_year + 1 AS price_year_prev,
		ROUND (AVG(price_value)) AS avg_price_value2,
		payroll_year + 1 AS payroll_year_prev,
		ROUND(avg(payroll_value)) AS avg_payroll_value2,
		country, 
		GDP,
		GDP_year
	FROM
		t_Lenka_Sedlackova_project_SQL_primary_final
	WHERE
		price_year IS NOT NULL
		AND GDP IS NOT NULL
	GROUP BY
		price_year_prev,
		payroll_year_prev,
		country,
		GDP,
		GDP_year		
		)ls2
	ON
	ls.price_year = ls2.price_year_prev
	AND ls.payroll_year = ls2.payroll_year_prev)
SELECT
	price_year,
	AVG(price_value_growth) AS price_value_growth,
	AVG(payroll_value_growth)AS payroll_value_growth,
	GDP_growth
FROM
	tabulka
WHERE
	price_value_growth IS NOT NULL
GROUP BY
		price_year,
		GDP_growth
;
