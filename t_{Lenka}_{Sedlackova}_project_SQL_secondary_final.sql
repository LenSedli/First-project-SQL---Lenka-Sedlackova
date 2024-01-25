CREATE TABLE t_{Lenka}_{Sedlackova}_project_SQL_secondary_final AS 
SELECT
	country,
	`year`, 
	population,
	ROUND(AVG(GDP)) AS AVG_GDP,
	gini
FROM
	economies
WHERE
	country IN ('Albania', 'Andorra', 'Armenia', 'Azerbaijan',
	'Belgium', 'Belarus', 'Bosnia and Herzegovina', 'Bulgaria',
	'Montenegro', 'Denmark', 'Estonia', 'Finland', 'France', 'Georgia',
	'Croatia', 'Ireland', 'Iceland', 'Italy', 'Kazakhstan', 'Cyprus',
	'Liechtenstein', 'Lithuania', 'Latvia', 'Luxembourg', 'Hungary',
	'Malta', 'Moldova', 'Monaco', 'Germany', 'Netherlands', 'Norway',
	'Poland', 'Portugal', 'Austria', 'Romania', 'Russian Federation',
	'Greece', 'San Marino', 'North Macedonia', 'Slovakia', 'Slovenia',
	'British Virgin Islands', 'Serbia', 'Spain', 'Sweden', 'Switzerland',
	'Turkey', 'Ukraine', 'European Union')
	AND `year` >= 2007
GROUP BY
	country,
	`year`,
	population,
	gini
;

