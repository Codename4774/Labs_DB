INSERT INTO `speed_limit_threshold`(`Ordinal_number`, `Speed_limit_threshold_value`, `Tariff_plane_Id`)
	VALUES
		(1, 10, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Empty' LIMIT 1)),
		(1, 20, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit basic' LIMIT 1)),
		(2, 1, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit basic' LIMIT 1)),
		(1, 30, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit extend' LIMIT 1)),
		(2, 10, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit extend' LIMIT 1)),
		(1, 60, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit super' LIMIT 1)),
		(2, 15, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Limit super' LIMIT 1)),
		(1, 10, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit basic' LIMIT 1)),
		(2, 10, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit basic' LIMIT 1)),
		(1, 25, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit extend' LIMIT 1)),
		(2, 10, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit extend' LIMIT 1)),
		(1, 50, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit super' LIMIT 1)),
		(2, 10, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Unlimit super' LIMIT 1)),
		(1, 10, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Econom limit' LIMIT 1)),
		(1, 8, (SELECT Id FROM `tariff_plane` WHERE `Name` = 'Econom unlimit' LIMIT 1))
		;