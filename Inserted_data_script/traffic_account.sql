INSERT INTO `traffic_account`(`Date`, `Count_traffic_day_in`, `Count_traffic_night_in`, `Count_traffic_day_out`, `Count_traffic_night_out`, `Account_Id`)
	VALUES
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 1),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 2),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 3),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 4),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 5),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 6),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 7),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 8),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 9),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 10),
		( DATE_ADD(NOW(), INTERVAL 1 DAY), 10, 20, 15, 5, 11)
		;