1-
CREATE DATABASE store_management COLLATE 'utf8mb4_unicode_ci'

2-
CREATE TABLE product(
  id integer 	UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(150) not null ,
  code varchar(255) not null UNIQUE,
  price decimal(10,2) UNSIGNED not null,
   descrption text ,
    PRIMARY KEY (id)


3-
CREATE TABLE suppliers(
  id integer 	UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(150) not null ,
  email varchar(255) not null UNIQUE,
  phone int(11) not null,
   brief_data text ,
    product_id integer 	UNSIGNED NOT NULL ,
    PRIMARY KEY (id),
    FOREIGN KEY(product_id) REFERENCES product(id)
);

4-
CREATE TABLE stores(
  id integer 	UNSIGNED NOT NULL AUTO_INCREMENT,
  name varchar(150) not null ,
  address text not null,
  prod_id integer 	UNSIGNED NOT NULL ,
  PRIMARY KEY (id),
  FOREIGN KEY(prod_id) REFERENCES product(id)
);