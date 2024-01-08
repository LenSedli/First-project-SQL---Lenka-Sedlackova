WITH tab AS (
SELECT
	ls.price_year,
	ls.payroll_year,
	(avg_price_value - avg_price_value2) / avg_price_value2 * 100 AS price_value_growth,
	(avg_payroll_value - avg_payroll_value2) / avg_payroll_value2 * 100 AS payroll_value_growth
FROM
	(
	SELECT
		price_name,
		price_year,
		ROUND(avg(price_value)) AS avg_price_value,
		payroll_year,
		ROUND(avg(payroll_value)) AS avg_payroll_value
	FROM
		t_Lenka_Sedlackova_project_SQL_primary_final
	WHERE
		price_year IS NOT NULL
		AND price_value IS NOT NULL
	GROUP BY
		price_year,
		payroll_year) AS ls
LEFT JOIN (
	SELECT
		price_name,
		price_year + 1 AS price_year_prev,
		ROUND(avg(price_value)) AS avg_price_value2,
		payroll_year + 1 AS payroll_year_prev,
		ROUND(avg(payroll_value)) AS avg_payroll_value2
	FROM
		t_Lenka_Sedlackova_project_SQL_primary_final
	WHERE
		price_year IS NOT NULL
		AND price_value IS NOT NULL
	GROUP BY
		price_year + 1,
		payroll_year + 1)ls2
	ON
		ls.price_name = ls2.price_name
	AND ls.price_year = ls2.price_year_prev
	AND ls.payroll_year = ls2.payroll_year_prev
		)
SELECT
	price_year,
	price_value_growth,
	payroll_year,
	payroll_value_growth,
	price_value_growth-payroll_value_growth AS comparison
FROM
	(
	SELECT
		price_year,
		ROUND(avg(price_value_growth)) AS price_value_growth,
		payroll_year,
		ROUND(avg(payroll_value_growth)) AS payroll_value_growth
	FROM
		tab
	WHERE
		price_value_growth IS NOT NULL
		AND payroll_value_growth IS NOT NULL
	GROUP BY
		price_year,
		payroll_year) tab1	
;
