create database HW_0626;
use HW_0626;
-- 1. Создать коллекцию users и заполнить документами со следующими свойствами:
-- id, firstname, lastname, age, gender. Используйте следующие данные:

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    name VARCHAR(20),
    lastname VARCHAR(20),
	age integer,
    gender char(1) check(gender in ('f', 'm'))
);
-- заполнить документами, используйтя следующие данные:
-- 1 Анатолий Ушанов 28 m
-- 2 Светлана Демидова 25 f
-- 3 Никита Иванов 33 m
-- 4 Ольга Петрова 22 f

INSERT INTO users (name, lastname, age, gender) VALUES ('Анатолий', 'Ушанов', 28, 'm');
INSERT INTO users (name, lastname, age, gender) VALUES ('Светлана', 'Демидова', 25, 'f');
INSERT INTO users (name, lastname, age, gender) VALUES ('Никита', 'Иванов', 33, 'm');
INSERT INTO users (name, lastname, age, gender) VALUES ('Ольга', 'Петрова', 22, 'f');
select * from users;
-- Создать коллекцию workers и заполнить документами со следующими свойствами:
--  id, firstname, lastname, position, salary. 
CREATE TABLE workers (
    id INT PRIMARY KEY AUTO_INCREMENT, 
    firstname VARCHAR(20),
    lastname VARCHAR(20),
	position VARCHAR(20),
	salary integer
);
-- Используйте следующие данные:
-- 1 Петр Сергеев CEO 7000
-- 2 Виктор Семенов Web-developer 5000
-- 3 Никита Петров Assistant 3500
-- 4 Инна Орлова Accountant 4500

INSERT INTO workers (firstname, lastname, position, salary) VALUES ('Петр', 'Сергеев', 'CEO', 7000);
INSERT INTO workers (firstname, lastname, position, salary) VALUES ('Виктор', 'Семенов', 'Web-developer', 5000);
INSERT INTO workers (firstname, lastname, position, salary) VALUES ('Никита', 'Петров', 'Assistant', 3500);
INSERT INTO workers (firstname, lastname, position, salary) VALUES ('Инна', 'Орлова', 'Accountant', 4500);
select * from workers;
