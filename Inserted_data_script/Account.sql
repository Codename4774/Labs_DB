INSERT INTO `Account`(`Login_connect`, `Password_connect`, `Current_day_traffic_count`, `Current_nigth_traffic_count`, `Time_creation`, `User_Id`, `Contract_Id`, `Tariff_plane_Id`)
	VALUES
		('Codename4774', 'lolkeklol', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'Codename4774' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5638 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Empty' LIMIT 1)),
		('Codename47', 'lolkeklolkek', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'Codename47' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5639 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit basic' LIMIT 1)),
		('AdminIvan', 'lol', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'AdminIvan' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5640 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit basic' LIMIT 1)),
		('SuperAdminSlava', 'superlolkeklol', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'SuperAdminSlava' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5641 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit extend' LIMIT 1)),
		('SuperAdminVlad', 'superlolkeklolkek', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'SuperAdminVlad' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5642 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit extend' LIMIT 1)),
		('IAmAwesomeUser', 'awesomelolkeklol', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'IAmAwesomeUser' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5644 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit basic' LIMIT 1)),
		('TopSecretAdmin', 'topsecretpass', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'TopSecretAdmin' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5645 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit basic' LIMIT 1)),
		('TopSecretUser', 'topsecretpass', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'TopSecretUser' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5646 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit basic' LIMIT 1)),
		('TopSecretSuperAdmin', 'topsecretpass', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'TopSecretSuperAdmin' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5647 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit super' LIMIT 1)),
		('JustUser1', 'topsecretpass', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'JustUser' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5648 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit super' LIMIT 1)),
		('JustUser2', 'topsecretpass', 100, 100, NOW(), (SELECT Id FROM `User` WHERE `Login` = 'JustUser' LIMIT 1), (SELECT Id FROM `Contract` WHERE `Contract_number` = 5649 LIMIT 1), (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Econom limit' LIMIT 1))
		;