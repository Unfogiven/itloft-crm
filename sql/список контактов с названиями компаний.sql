SELECT
	contacts.ID,
	CONCAT_WS(
		' ',
		contacts.lastname,
		contacts.`name`,
		contacts.patronymic
	) AS fio,
	companies.title AS company,
	posts.title AS post
FROM
	contacts,
	companies,
	companycontactpost,
	posts
WHERE
	contacts.ID = companycontactpost.contact_id
AND companies.ID = companycontactpost.company_id
AND posts.ID = companycontactpost.post_id