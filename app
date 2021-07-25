CREATE DATABASE IF NOT EXISTS app;

USE app;

DROP TABLE IF EXISTS comments;
DROP TABLE IF EXISTS posts;
DROP TABLE IF EXISTS users;


CREATE TABLE users (
		user_id INT(30) AUTO_INCREMENT NOT NULL,
		user_name VARCHAR(15) NOT NULL,
		email VARCHAR(30) NOT NULL,
		first_name VARCHAR(15) NOT NULL,
		last_name VARCHAR(20) NOT NULL,
		password VARCHAR(30) NOT NULL,
		PRIMARY KEY (user_id)
);

CREATE TABLE posts (
		post_id INT(15) AUTO_INCREMENT NOT NULL,
		user_id INT(30) NOT NULL,
		post TEXT (1000) NOT NULL,
		post_time DATETIME DEFAULT CURRENT_TIMESTAMP,
		PRIMARY KEY (post_id),
		FOREIGN KEY (user_id)  REFERENCES users(user_id)
);

CREATE TABLE comments (
		comment_id INT(15) AUTO_INCREMENT NOT NULL,
		post_id INT(15) NOT NULL,
		comment TEXT (250) NOT NULL,
		comment_time DATETIME DEFAULT CURRENT_TIMESTAMP, 
		user_id INT(30) NOT NULL,
		primary key (comment_id),
		FOREIGN KEY (user_id)  REFERENCES users(user_id),
		FOREIGN KEY (post_id)  REFERENCES posts(post_id)
);

