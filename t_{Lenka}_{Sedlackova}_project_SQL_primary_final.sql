CREATE TABLE t_Lenka_Sedlackova_project_SQL_primary_final AS 
SELECT 
	cpib.name AS industry_branch,
	cpay.payroll_year,
	cpay.payroll_value,
	cpc2.name AS price_name,
	cp.price_year,
	cp.price_value,
	cpc2.price_unit AS price_unit,
	e.country,
	e.`year` AS GDP_year,
	e.GDP
FROM
	czechia_payroll_industry_branch AS cpib
LEFT JOIN 
	(
	SELECT
		payroll_year,
		ROUND (SUM (value)) AS payroll_value,
		industry_branch_code
	FROM
		czechia_payroll
	GROUP BY
		payroll_year,
		industry_branch_code
	ORDER BY
		industry_branch_code,
		payroll_year
	) AS cpay
	ON
	cpib.code = cpay.industry_branch_code
LEFT JOIN 
	(
	SELECT
		category_code,
		YEAR(date_to) AS price_year,
		ROUND(AVG(value)) AS price_value
	FROM
		czechia_price
	GROUP BY
		category_code,
		price_year
	) AS cp
	ON
	cpay.payroll_year = price_year
LEFT JOIN czechia_price_category AS cpc2 
	ON
	cp.category_code = cpc2.code
LEFT JOIN
	(
	SELECT
		country,
		`year`,
		GDP
	FROM
		economies
	WHERE
		country = 'Czech republic'
		AND `year` >= 2007
	) AS e
ON
	cp.price_year = e.`year`
;
