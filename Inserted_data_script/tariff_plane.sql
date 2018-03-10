INSERT INTO tariff_plane(`Name`, `Debit_period`, `Limit`, `Day_traffic_count`, `Night_traffic_count`, `Traffic_unit_cost`, `Description`, `Count_debit_per_period`)
	VALUES
		('Empty', 0, 1, 0, 0, 0.01, 'This is basic tariff. Enabled when account is created or old tariff was deactivated', 0),
		('Limit basic', 30, 1, 3000, 1000, 0.005, 'This is basic limit tariff.', 12),
		('Limit extend', 30, 1, 6000, 2000, 0.005, 'This is extend limit tariff.', 20),
		('Limit super', 30, 1, 10000, 5000, 0.005, 'This is super limit tariff.', 35),
		('Unlimit basic', 1, 1, 0, 0, 0.005, 'This is basic unlimit tariff. Speed: 5 MBit/sec', 12 / 30),
		('Unlimit extend', 1, 1, 0, 0, 0.005, 'This is extend unlimit tariff. Speed: 15 MBit/sec', 20 / 30),
		('Unlimit super', 1, 0, 10000, 5000, 0.05, 'This is super unlimit tariff. Speed: 30 MBit/sec', 75 / 30),
		('Econom limit', 30, 1, 1000, 500, 0.0001, 'This is ecomon limit tariff. Traffic unit cost after expiration is reduced.', 8),
		('Econom unlimit', 1, 1, 0, 0, 0.0001, 'This is ecomon unlimit tariff. Traffic unit cost after expiration is reduced. Speed: 2 MBit/sec', 8 / 30)
		;