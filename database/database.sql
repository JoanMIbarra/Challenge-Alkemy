CREATE DATABASE database_ch;

USE database_ch;

CREATE TABLE users(
    id INT(11) NOT NULL PRIMARY KEY,
    username VARCHAR(25) NOT NULL,
    password VARCHAR(25) NOT NULL,
    name VARCHAR(50) NOT NULL
);

ALTER TABLE users
    Modify id INT(11) AUTO_INCREMENT, AUTO_INCREMENT = 1;

DESCRIBE users;

CREATE TABLE operations(
    op_id INT(11) NOT NULL PRIMARY KEY,
    op_title VARCHAR(150) NOT NULL,
    op_amount DECIMAL(10,2) NOT NULL,
    op_date DATE NOT NULL,
    op_type BOOLEAN NOT NULL,
    user_id INT(11),
    CONSTRAINT fk_user FOREIGN KEY (user_id) REFERENCES users(id)

);

ALTER TABLE operations
    MODIFY op_id INT(11)  NOT NULL AUTO_INCREMENT, AUTO_INCREMENT = 1;