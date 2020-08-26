DROP DATABASE IF EXISTS booking;
CREATE DATABASE booking;

USE booking;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(150) NOT NULL COMMENT "имя пользователя",
last_name VARCHAR(150) NOT NULL COMMENT "фамилия пользователя",
email VARCHAR(150) NOT NULL UNIQUE COMMENT "электронная почта",
phone INT COMMENT "номер телефона",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Пользователь";

DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) COMMENT "Название страны",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Страна";

DROP TABLE IF EXISTS cities;
CREATE TABLE cities (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
countries_id INT UNSIGNED NOT NULL COMMENT "идентификатор страны",
name VARCHAR(100) COMMENT "Название города",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT cities_countries_fk
FOREIGN KEY (countries_id) REFERENCES countries(id) ON DELETE CASCADE
) COMMENT "Город";

DROP TABLE IF EXISTS property_types;
CREATE TABLE property_types (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Тип размещения";

DROP TABLE IF EXISTS facilities;
CREATE TABLE facilities (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
private_parking BOOLEAN COMMENT "парковка",
swimming_pool BOOLEAN COMMENT "бассейн",
free_WI_FI BOOLEAN COMMENT "бесплатный WI-FI",
pet_friendly BOOLEAN COMMENT "можно с питомцами",
non_smoking_rooms BOOLEAN COMMENT "номера для некурящих",
restaurant BOOLEAN COMMENT "ресторан",
spa BOOLEAN COMMENT "спа-центр",
fitness BOOLEAN COMMENT "фитнес-центр",
for_disabled_guests BOOLEAN COMMENT "удобства для инвалидов",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Удобства";

DROP TABLE IF EXISTS stars;
CREATE TABLE stars (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
name TINYINT(10)
) COMMENT "Количество звёзд";

DROP TABLE IF EXISTS objects;
CREATE TABLE objects (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
cities_id INT UNSIGNED NOT NULL COMMENT "город нахождения объекта",
property_types_id INT UNSIGNED COMMENT "тип размещения",
name VARCHAR(200) COMMENT "название объекта",
description TEXT COMMENT "описание объекта",
stars_id INT UNSIGNED COMMENT "количество звёзд у объекта",
address VARCHAR(255) COMMENT "адрес объекта",
facilities_id INT UNSIGNED COMMENT "удобства на территории объекта",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT objects_cities_fk
FOREIGN KEY (cities_id) REFERENCES cities(id) ON DELETE CASCADE,
CONSTRAINT objects_property_types_fk
FOREIGN KEY (property_types_id) REFERENCES property_types(id) ON DELETE SET NULL,
CONSTRAINT objects_stars_fk
FOREIGN KEY (stars_id) REFERENCES stars(id) ON DELETE SET NULL,
CONSTRAINT objects_facilities_fk
FOREIGN KEY (facilities_id) REFERENCES facilities(id) ON DELETE SET NULL
) COMMENT "Объект, в котором осуществляется размещение";

DROP TABLE IF EXISTS room_facilities;
CREATE TABLE room_facilities (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
kitchen BOOLEAN COMMENT "кухня",
bathtub_or_shower BOOLEAN COMMENT "ванная комната",
sofa BOOLEAN COMMENT "кровать",
towels BOOLEAN COMMENT "полотенца",
cleaning_products BOOLEAN COMMENT "чистящие средства",
TV BOOLEAN COMMENT "телевизор",
refrigerator BOOLEAN COMMENT "холодильник",
telephone BOOLEAN COMMENT "телефон",
microwave BOOLEAN COMMENT "микроволновая печь",
hairdryer BOOLEAN COMMENT "фен",
safe BOOLEAN COMMENT "сейф",
wake_up_service BOOLEAN COMMENT "звонок-будильник",
toilet_paper BOOLEAN COMMENT "туалетная бумага",
desk BOOLEAN COMMENT "рабочий стол",
dining_table BOOLEAN COMMENT "обеденный стол",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) COMMENT "Удобства в номере";

DROP TABLE IF EXISTS rooms;
CREATE TABLE rooms (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
objects_id INT UNSIGNED NOT NULL COMMENT "идентификатор объекта размещения",
sleeps TINYINT(20) COMMENT "вмещает человек",
room_facilities_id INT UNSIGNED COMMENT "идентификатор удобств в номере",
price DECIMAL(11,2) COMMENT "цена номера",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT rooms_objects_fk
FOREIGN KEY (objects_id) REFERENCES objects(id) ON DELETE CASCADE,
CONSTRAINT rooms_room_facilities_fk
FOREIGN KEY (room_facilities_id) REFERENCES room_facilities(id) ON DELETE SET NULL
) COMMENT "Номер";

DROP TABLE IF EXISTS periods;
CREATE TABLE periods (
id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
rooms_id INT UNSIGNED NOT NULL COMMENT "идентификатор номера",
check_in DATE NOT NULL COMMENT "регистрация",
check_out DATE NOT NULL COMMENT "время выезда",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updeted_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
CONSTRAINT periods_rooms_fk
FOREIGN KEY (rooms_id) REFERENCES rooms(id) ON DELETE CASCADE
) COMMENT "даты брони комнаты";

DROP TABLE IF EXISTS orders;
CREATE TABLE orders (
user_id INT UNSIGNED NOT NULL COMMENT "идентификатор пользователя",
room_id INT UNSIGNED NOT NULL COMMENT "идентификатор номера",
period_id INT UNSIGNED NOT NULL COMMENT "идентификатор временного периода",
created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
PRIMARY KEY (room_id, period_id),
CONSTRAINT orders_users_fk
FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
CONSTRAINT orders_rooms_fk
FOREIGN KEY (room_id) REFERENCES rooms(id),
CONSTRAINT orders_periods_fk
FOREIGN KEY (period_id) REFERENCES periods(id)
) COMMENT "Заказ";

-- periods AND orders содержат room_id 