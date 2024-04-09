CREATE TABLE tuser (
  login varchar(64) NOT NULL,
  password varchar(255) NOT NULL,
  rentedPlate varchar(64) DEFAULT NULL,
  role varchar(30) check (role in ('USER','ADMIN')) NOT NULL
) ;



INSERT INTO tuser (login, password, rentedPlate, role) VALUES('lukasz', '6a01d2ff826b812897ab3dec11e939779d3b06dc3625c3377bd4ae9639e8a9bd', 'Lu1234', 'ADMIN');
INSERT INTO tuser (login, password, rentedPlate, role) VALUES('student', 'ad454dc5db203e4280041fcd250c3de1188cf66613d03a8fc6f0eadc3d1bec97', NULL, 'USER');

CREATE TABLE tvehicle (
  plate varchar(64) NOT NULL,
  brand varchar(255) NOT NULL,
  model varchar(255) NOT NULL,
  year int NOT NULL,
  price decimal(6,2) NOT NULL,
  category varchar(64) DEFAULT NULL,
  rent smallint NOT NULL DEFAULT 0
) ;


INSERT INTO tvehicle (plate, brand, model, year, price, category, rent) VALUES('Lu1000', 'Honda', 'CBR1000RR-R Fireblade SP', 2023, 500.00, 'A', 0);
INSERT INTO tvehicle (plate, brand, model, year, price, category, rent) VALUES('Lu1234', 'Audi', 'A4', 2021, 400.00, NULL, 1);
INSERT INTO tvehicle (plate, brand, model, year, price, category, rent) VALUES('LU3000', 'BMW', 's3', 2019, 300.00, NULL, 0);


ALTER TABLE tuser
ADD CONSTRAINT tuser_pk
PRIMARY KEY (login);

ALTER TABLE tvehicle
ADD CONSTRAINT tvehicle_pk
  PRIMARY KEY (plate);

ALTER TABLE tuser
ADD CONSTRAINT user_vehicle_fk
  FOREIGN KEY (rentedPlate) REFERENCES tvehicle (plate);