INSERT INTO user_role (`Name`, `Access_indentificator`, `Description`)
	VALUES
		('Guest', 0, 'This is guest. He has access to the news portal only'),
		('User', 1, 'This is user. He has access to his account, + access rights of Guest'),
		('Adiminitrator', 2, 'This is admin. He has access to the user\'s accounts, to the admin interface. He cannot create other admins. + access rights of Guest'),
		('Super administrator', 3, 'This is super admin. He can create other admin + access rights of Admin ');
		