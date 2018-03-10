INSERT INTO `tariff_plane_traffic_refill`(`Date`, `Count_traffic_day`, `Count_traffic_night`, `Tariff_plane_debit_Id`, `Tariff_plane_Id`, `Account_Id`)
	VALUES
		( NOW(), 3000, 1000, 1, 11, 3),
		( NOW(), 3000, 1000, 2, 11, 3),
		( NOW(), 0, 0, 3, 15, 4),
		( NOW(), 0, 0, 4, 15, 4),
		( NOW(), 0, 0, 5, 15, 5),
		( NOW(), 0, 0, 6, 15, 5),
		( NOW(), 0, 0, 7, 14, 6),
		( NOW(), 0, 0, 8, 14, 7),
		( NOW(), 0, 0, 9, 14, 7),
		( NOW(), 0, 0, 10, 14, 8),
		( NOW(), 0, 0, 11, 14, 8),
		( NOW(), 10000, 5000, 12, 16, 9),
		( NOW(), 10000, 5000, 13, 16, 9),
		( NOW(), 10000, 5000, 14, 16, 10),
		( NOW(), 10000, 5000, 15, 16, 10),
		( NOW(), 1000, 500, 16, 17, 11),
		( NOW(), 1000, 500, 17, 17, 11)
		;