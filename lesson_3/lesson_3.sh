#!/bin/bash
cat lesson_3.sql fulldb23-07-2020_21-18.sql > lesson_3_db.sql
mysql -e 'SOURCE lesson_3_db.sql'
mysql -e 'SELECT "Part 1 of homework is done"'
mysql -e 'SHOW DATABASES; USE vk; SHOW TABLES'
mysqldump vk > vk_backup.sql
mysql -e 'DROP DATABASE IF EXISTS vk_lesson_3; CREATE DATABASE IF NOT EXISTS vk_lesson_3'
mysql vk_lesson_3 < vk_backup.sql
mysql -e 'SHOW DATABASES; USE vk_lesson_3; SHOW TABLES'
mysql -e 'SELECT "Homework is done"'
