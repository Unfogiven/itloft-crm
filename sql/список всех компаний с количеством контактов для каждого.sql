SELECT
	companies.ID,
	companies.title,
	COUNT(
		companycontactpost.company_id
	) AS count_contact
FROM
	companies
LEFT JOIN companycontactpost ON companies.ID = companycontactpost.company_id
GROUP BY
	companies.ID