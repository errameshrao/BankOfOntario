


INSERT INTO BANK_OF_ONTARIO_USER (user_id, create_date, email, first_name, issuperuser, last_name, password, user_type, version, account_id, address_id) VALUES
('101', '2018-11-30 00:00:00', 'bootest@gmail.com', 'Ramesh', '1', 'Rao', 'bootest', 'Admin', 0, NULL, NULL)
ON DUPLICATE KEY UPDATE user_id = VALUES(user_id);


