SELECT
	industry_branch,
	payroll_year,
	payroll_value
FROM
	t_Lenka_Sedlackova_project_SQL_primary_final
WHERE
	payroll_year BETWEEN 2016 AND 2021
GROUP BY
		industry_branch,
		payroll_year
;
