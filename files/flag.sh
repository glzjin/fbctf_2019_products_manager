#!/bin/bash

# 修改数据库中的 FLAG
# CREATE TABLE IF NOT EXISTS products (name char(64),secret char(64),description varchar(250));
mysql -e "CREATE DATABASE IF NOT EXISTS facebook;USE facebook; CREATE TABLE IF NOT EXISTS products (name char(64),secret char(64),description varchar(250));INSERT INTO products VALUES('facebook', sha2('wkjhduiefgheruifertyf7834tr349ft7dgweif', 256), '$FLAG');" -uroot -proot

export FLAG=not_flag
FLAG=not_flag

rm -f /flag.sh
