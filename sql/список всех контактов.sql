SELECT
	contacts.ID,
	CONCAT_WS(
		' ',
		contacts.lastname,
		contacts.`name`,
		contacts.patronymic
	) AS fio
FROM
	contacts