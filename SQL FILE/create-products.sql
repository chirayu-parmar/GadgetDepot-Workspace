-- -----------------------------------------------------
-- Schema GadgetDepot
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS GadgetDepot;

CREATE SCHEMA GadgetDepot;
USE GadgetDepot ;

-- -----------------------------------------------------
-- Table `GadgetDepot`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS GadgetDepot.product_category (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  category_name VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (id))
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `GadgetDepot`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS GadgetDepot.product (
  id BIGINT(20) NOT NULL AUTO_INCREMENT,
  name VARCHAR(255) DEFAULT NULL,
  category_id BIGINT(20) NOT NULL,
  description VARCHAR(255) DEFAULT NULL,
  sku VARCHAR(255) DEFAULT NULL,
  unit_price DECIMAL(13,2) DEFAULT NULL,
  discount_id BIGINT(20) NOT NULL,
  image_url VARCHAR(255) DEFAULT NULL,
  active BIT DEFAULT 1,
  units_in_stock INT(11) DEFAULT NULL,
  date_created DATETIME(6) DEFAULT NULL,
  last_updated DATETIME(6) DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (category_id) REFERENCES product_category(id)
  
) 
AUTO_INCREMENT = 1;

--CREATE TABLE "product" (
  




  "discount_id" bigint,
  "category_id" bigint
);

-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
-- INSERT INTO product_category(category_name) 
-- VALUES 
-- ('TV'),
-- ('Phone');

-- INSERT INTO product (sku, name, description, unit_price, image_url, active, units_in_stock, date_created, last_updated, category_id)
-- VALUES 
-- ('SONY-TV', 'X77L Series', '43" mini LED 4K Ultra HD', 549.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('SONY-TV', 'Z9K Series', '75" mini LED 8K Ultra HD', 7499.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('SONY-TV', 'A95L Series', '55" OLED 8K Ultra HD', 3499.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('SONY-TV', 'X95L Series', '85" mini LED 8K Ultra HD', 5299.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Samsung-TV', 'CU7000', '58" Crystal UHD 4K Smart TV', 699.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1), 
-- ('Samsung-TV', 'CU8000', '50" Crystal UHD 4K Smart TV', 599.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Samsung-TV', 'TU690T', '65” Crystal UHD 4K Smart TV Powered by Tizen™', 24.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Apple-iPhone', 'iPhone15 Pro', 'The ultimate iPhone', 1449.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Apple-iPhone', 'iPhone15', 'A total powerhouse', 1129.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Apple-iPhone', 'iPhone14', 'A total powerhouse', 99.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Apple-iPhone', 'iPhoneSE', 'Serious power. Serious value', 579.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Samsung-Phone', 'Galaxy S24 Ultra', 'Galaxy AI is here', 1799.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Samsung-Phone', 'iPhoneSE', 'Serious power. Serious value', 579.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1),
-- ('Samsung-Phone', 'iPhoneSE', 'Serious power. Serious value', 579.99, 'assets/images/products/placeholder.png', 1, 100, NOW(), NOW(), 1);