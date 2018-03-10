INSERT INTO `Contract`(`Passport_number`, `Surname`, `Name`, `Patronymic`, `Contract_number`, `Signing_date`, `Expiration_term`)
	VALUES
		('ВМ21345678', 'Жизневский', 'Владислав', 'Станиславович', 5638, NOW(), DATE_ADD(NOW(), INTERVAL 2 YEAR)),
		('МС33245673', 'Чернушевич', 'Владислав', 'Владимирович', 5639, NOW(), DATE_ADD(NOW(), INTERVAL 1 YEAR)),
		('МС33245673', 'Чернушевич', 'Владислав', 'Владимирович', 5640, NOW(), DATE_ADD(NOW(), INTERVAL 3 YEAR)),
		('ВМ21345678', 'Жизневский', 'Владислав', 'Станиславович', 5641, NOW(), DATE_ADD(NOW(), INTERVAL 2 YEAR)),
		('МС23678921', 'Кутас', 'Дмитрий', 'Сергеевич', 5642, NOW(), DATE_ADD(NOW(), INTERVAL 1 YEAR)),
		('МС23678921', 'Кутас', 'Дмитрий', 'Сергеевич', 5644, NOW(), DATE_ADD(NOW(), INTERVAL 1 YEAR)),
		('МС98097658', 'Новичук', 'Константин', 'Сергеевич', 5645, NOW(), DATE_ADD(NOW(), INTERVAL 2 YEAR)),
		('МС23676543', 'Иванова', 'Зинаида', 'Ивановна', 5646, NOW(), DATE_ADD(NOW(), INTERVAL 3 YEAR)),
		('МС23568908', 'Фёдоров', 'Мирон', 'Янович', 5647, NOW(), DATE_ADD(NOW(), INTERVAL 1 YEAR)),
		('МС76535790', 'Белогай', 'Антон', 'Сергеевич', 5648, NOW(), DATE_ADD(NOW(), INTERVAL 2 YEAR)),
		('ВМ12346764', 'Усепов', 'Антон', 'Иванович', 5649, NOW(), DATE_ADD(NOW(), INTERVAL 3 YEAR))
		;