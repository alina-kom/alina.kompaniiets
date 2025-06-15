use Hillel;

create table car_brands (
	id int auto_increment primary key,
    title varchar(100) not null
);

create table car_models (
	id int auto_increment primary key,
    carBrandId int not null,
    title varchar(100) not null,
    foreign key (carBrandId) references car_brands(id)
);

create table users (
	id int auto_increment primary key,
    firstName varchar(100),
    lastName varchar(100),
    email varchar(100) unique,
    password varchar(100)
);

create table cars (
	id int auto_increment primary key,
    userId int not null,
    carBrandId int not null,
    carModelId int not null,
    mileage int default 0,
    initialMileage int default 0,
    foreign key (userId) references users(id),
    foreign key (carBrandId) references car_brands(id),
    foreign key (carModelId) references car_models(id)
);

insert into car_brands (title) values ("Toyota"), ("BMW"), ("Tesla");

insert into car_models (carBrandId, title) values
(1, "Corolla"),
(1, "Camry"),
(2, "X5"),
(2, "3 Series"),
(3, "Model S"),
(3, "Model 3");

insert into users (firstName, lastName, email, password) values
("Alina", "Kompaniiets", "alina.konpaniiets.19@gmail.com", "qwerty");

insert into cars (userId, carBrandId, carModelId, mileage, initialMileage) values
(1, 1, 1, 150000, 50000), 
(1, 2, 3, 80000, 10000),   
(1, 3, 5, 30000, 0);       
