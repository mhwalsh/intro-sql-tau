CREATE TABLE users (
	id SERIAL PRIMARY KEY NOT NULL,
	username VARCHAR(30) UNIQUE,
	active BOOLEAN,
	created TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- CREATE - INSERT --

INSERT INTO users (username, active) VALUES ('millie11', TRUE);
INSERT INTO users (username, active) VALUES ('koolaide', TRUE);
INSERT INTO users (username, active) VALUES ('meatfarmer', TRUE);
INSERT INTO users (username, active) VALUES ('carpediem', FALSE);


-- READ - SELECT --
SELECT * FROM users;
SELECT * FROM users WHERE active=TRUE;
SELECT * FROM users WHERE username='meatfarmer';
SELECT username FROM users;
SELECT * FROM users ORDER BY username DESC;
SELECT * FROM users LIMIT 2;
SELECT * FROM users WHERE username LIKE '%m%';


SELECT COUNT(*) FROM users;
SELECT MAX(id) FROM users;


-- UPDATE
UPDATE users SET active=FALSE WHERE username='carpediem';
UPDATE users SET username='millie11' WHERE id=1;

-- DELETE
DELETE FROM users WHERE active=TRUE;
