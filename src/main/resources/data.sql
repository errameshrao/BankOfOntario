


INSERT INTO canada_trust_user (user_id, create_date, email, first_name, issuperuser, last_name, password, user_type, version, account_id, address_id) VALUES
('101', '2018-11-30 00:00:00', 'rao9536@gmail.com', 'Ramesh', '1', 'Rao', 'rao9536', 'Admin', 0, NULL, NULL);
ON DUPLICATE KEY UPDATE user_id = VALUES(user_id);


