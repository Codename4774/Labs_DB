INSERT INTO traffic_package(`Name`, `Description`, `Traffic_amount_day`, `Traffic_amount_night`, `Cost`)
	VALUES
		('Basic day', 'This is basic day traffic package. Traffic day: 500', 500, 0, 2),
		('Basic night', 'This is basic night traffic package. Traffic night: 500', 0, 500, 1.5),
		('Basic', 'This is basic traffic package. Traffic day: 500. Traffic night: 500', 500, 500, 4),
		('Extend day', 'This is extend day traffic package. Traffic day: 1500', 1500, 0, 4.5),
		('Extend night', 'This is extend night traffic package. Traffic night: 1500', 0, 1500, 3.5),
		('Extend', 'This is extend traffic package. Traffic day: 1500. Traffic night: 1500', 1500, 1500, 9),
		('Super day', 'This is super day traffic package. Traffic day: 4500', 4500, 0, 10),
		('Super night', 'This is super night traffic package. Traffic night: 4500', 0, 4500, 8.5),
		('Super', 'This is super traffic package. Traffic day: 4500. Traffic night: 4500', 1500, 1500, 16.5),
		('Econom', 'This is econom traffic package. Traffic day: 250. Traffic night: 100', 250, 100, 1.3)
		;