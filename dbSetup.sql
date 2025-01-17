CREATE TABLE IF NOT EXISTS accounts(
  id VARCHAR(255) NOT NULL primary key COMMENT 'primary key',
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Update',
  name varchar(255) COMMENT 'User Name',
  email varchar(255) COMMENT 'User Email',
  picture varchar(255) COMMENT 'User Picture'
) default charset utf8 COMMENT '';



-- SECTION Penguins
-- CREATE TABLE penguins(
--   id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
--   name TEXT NOT NULL,
--   age INT DEFAULT 1,
--   species TEXT,
--   wearingTuxedo BOOLEAN DEFAULT true
-- );
CREATE TABLE penguins(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  age INT DEFAULT 1,
  species VARCHAR(5000),
  wearingTuxedo BOOLEAN DEFAULT true
);


INSERT INTO penguins
(name, age, species)
VALUES
("Penny", 2, "Macaroni");

INSERT INTO penguins
(name, species)
VALUES
("Rocky", "Southern Rock Hopper");
INSERT INTO penguins
(name)
VALUES
("Stinky");
INSERT INTO penguins
(name, wearingTuxedo)
VALUES
("Sloopy", false);


SELECT * FROM penguins LIMIT 1;

SELECT name, species FROM penguins WHERE id =1;
SELECT id, name, species, wearingTuxedo FROM penguins WHERE wearingTuxedo = true;
SELECT id, name, species, wearingTuxedo FROM penguins WHERE id > 2 AND id < 4;

SELECT name FROM penguins WHERE name LIKE "%y%";

UPDATE penguins SET
`wearingTuxedo` = false
WHERE id = 4
;
DELETE FROM penguins WHERE id = 7;


-- SECTION Cars

CREATE TABLE cars(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  make VARCHAR(100) NOT NULL,
  model VARCHAR(100) NOT NULL,
  year INT NOT NULL DEFAULT 1990,
  price DOUBLE NOT NULL DEFAULT 1.00,
  color VARCHAR(100) NOT NULL,
  description VARCHAR(500),

  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
)  default charset utf8 COMMENT '';

INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Fast", "Chevy", 2023, 20000, "Pearly", "Kinda looks like a knock-off cyber truck, which actually says a lot.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Mazda", "Miata", 2023, 34, "White", "1/57 scale model car. Assembled by the most handsome instructor.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Mazda", "RX7", 2022, 120, "Black", "1/57 scale model car. New in Packaging. You will need your own tools to assemble.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Dodge", "Baha", 1993, 7200, "Red", "Great shape, drives fast, and good on sand. Just needs wheels.");
INSERT INTO cars
(make, model, year, price, color, description)
VALUES
("Toyota", "Scorpion", 2000, 9000, "Black", "For all your FAST and FAMILY needs.");

SELECT * FROM cars WHERE id = LAST_INSERT_ID();

SELECT * FROM cars ORDER BY `createdAt` DESC;
SELECT * FROM cars WHERE price < 8000 ORDER BY price DESC;
SELECT * FROM cars WHERE description LIKE "%1/57%" ORDER BY price ASC;
SELECT * FROM cars WHERE description LIKE "%1/57%" ORDER BY price ASC LIMIT 1, 100;

SELECT * FROM cars WHERE id = 100;



CREATE TABLE cars(
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  make VARCHAR(255) NOT NULL DEFAULT "No Make",
  model VARCHAR(255) NOT NULL DEFAULT "No Model",
  year INT NOT NULL DEFAULT 1990,
  imgUrl VARCHAR(255) NOT NULL DEFAULT "https://orbis-alliance.com/wp-content/themes/consultix/images/no-image-found-360x260.png",
  description VARCHAR(3000) NOT NULL DEFAULT "No Description",
  price DOUBLE NOT NULL DEFAULT 100.00,
  createdAt DATETIME DEFAULT CURRENT_TIMESTAMP COMMENT 'Time Created',
  updatedAt DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP 
)  default charset utf8 COMMENT '';

INSERT INTO cars
(make, model, year, price, description)
VALUES
("Boulder", "Rock", 2000, 500.50, "Its not a just a rock, its a Boulder!");

INSERT INTO cars
(make, model, year, price, description)
VALUES
("Ford", "Bronco", 2020, 3499.99, "I think this is a truck.");

SELECT * FROM cars;
