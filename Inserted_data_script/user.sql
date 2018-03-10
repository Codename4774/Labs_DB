INSERT INTO `User`(`Login`, `Password`, `Email`, `Email_confirmed`, `Current_balance`, `Time_creation`, `User_role_ID`, `Last_visit_time`, `Phone_number`)
	VALUES
		('Codename4774', 'lolkeklol', 'codename4774@mail.ru', 0, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'User' LIMIT 1), DATE_ADD(NOW(), INTERVAL 5 HOUR), '+375292972134'),
		('Codename47', 'lolkeklolkek', 'codename47@mail.ru', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'User' LIMIT 1), DATE_ADD(NOW(), INTERVAL 5 HOUR), '+375292972133'),
		('AdminIvan', 'lol', 'adminIval@mail.ru', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'Administrator' LIMIT 1), DATE_ADD(NOW(), INTERVAL 4 HOUR), '+375291232134'),
		('SuperAdminSlava', 'superlolkeklol', 'superadminslava@mail.ru', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'Super administrator' LIMIT 1), DATE_ADD(NOW(), INTERVAL 1 HOUR), '+375292971234'),
		('SuperAdminVlad', 'superlolkeklolkek', 'superadminvlad@mail.ru', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'Super administrator' LIMIT 1), DATE_ADD(NOW(), INTERVAL 1 HOUR), '+375332971234'),
		('IAmAwesomeUser', 'awesomelolkeklol', 'awesomeemail@mail.ru', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'User' LIMIT 1), DATE_ADD(NOW(), INTERVAL 5 HOUR), '+375292971255'),
		('TopSecretAdmin', 'topsecretpass', 'topsecret@gmail.com', 0, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'Administrator' LIMIT 1), DATE_ADD(NOW(), INTERVAL 5 HOUR), '+375292971244'),
		('TopSecretUser', 'topsecretpass', 'topsecret@mail.ru', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'User' LIMIT 1), DATE_ADD(NOW(), INTERVAL 5 HOUR), '+375332971244'),
		('TopSecretSuperAdmin', 'topsecretpass', 'topsecretmail@gmail.com', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'Super administrator' LIMIT 1), DATE_ADD(NOW(), INTERVAL 5 HOUR), '+375252971244'),
		('JustUser', 'topsecretpass', 'justmail@gmail.com', 1, 0, NOW(), (SELECT Id FROM user_role WHERE `Name` = 'User' LIMIT 1), DATE_ADD(NOW(), INTERVAL 5 HOUR), '+375292971222')
		;