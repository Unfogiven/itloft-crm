SELECT
	CONCAT_WS(
		' ',
		contacts.`name`,
		contacts.lastname,
		contacts.patronymic
	) AS fio,
	contactmeta.label,
	contactmetavalue.`value`
FROM
	contacts,
	contactmeta,
	contactmetavalue
WHERE
	contacts.ID = contactmetavalue.contact_id
AND contactmeta.ID = contactmetavalue.metainfo_label
AND contacts.ID = 1