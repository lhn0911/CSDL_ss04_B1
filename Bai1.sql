create database b1;
create table Engineroom(
Room_id int primary key auto_increment,
Room_name varchar(255) not null,
Manager_name varchar(255) not null
);
create table Computer(
Computer_id int primary key auto_increment,
Room_id int,
foreign key (Room_id) references Engineroom(Room_id),
CPU varchar(255) not null,
RAM int not null,
Storage int not null
);
create table Subject(
Subject_id int primary key auto_increment,
Subject_name varchar(255) not null,
Subject_time datetime not null 
);
create table Registration(
Room_id int,
Subject_id int,
Registration_date datetime not null,
foreign key (Room_id) references Engineroom(Room_id),
foreign key (Subject_id) references Subject(Subject_id)
);