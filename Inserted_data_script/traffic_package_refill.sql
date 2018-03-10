INSERT INTO `traffic_package_refill`(`Date`, `Count_traffic_day`, `Count_traffic_night`, `Trafic_package_debit_Id`, `Traffic_package_Id`, `Account_Id`)
	VALUES
		( NOW(), 500, 0, 11, 1, 1),
		( NOW(), 0, 500, 12, 2, 2),
		( NOW(), 500, 500, 13, 3, 3),
		( NOW(), 1500, 0, 14, 4, 4),
		( NOW(), 0, 1500, 15, 5, 5),
		( NOW(), 1500, 1500, 16, 6, 6),
		( NOW(), 4500, 0, 17, 7, 7),
		( NOW(), 0, 4500, 18, 8, 8),
		( NOW(), 4500, 4500, 19, 9, 9),
		( NOW(), 250, 100, 20, 10, 10)
		;