drop database if exists don_asso ;
create database don_asso; 
use don_asso; 

create table don (
	iddon int (3) not null auto_increment, 
	Nom varchar (50),
	prenom varchar (50),
	Adresse varchar (50),
	Email varchar (50),
	designation varchar(50), 
	montant float,
	telephone int (10),
	categorie varchar (50), 
	primary key (iddon)
	
); 

insert into don values (null, "Rayan", "doudou" , "rue Albert durer", "a@gmail.com", "argent",20, 126675777, "argent");
insert into don values (null, "Vidal", "Christophe" , "rue Albert durer", "u@gmail.com","pantalon", 10,998653, "vetement");


create table user (
	iduser int(3) not null auto_increment, 
	nom varchar(50), 
	prenom varchar(50),
	email varchar(50), 
	mdp varchar(50), 
	role enum("admin", "user"),
	primary key(iduser)
);

insert into user values (null, "Oumou", "Saidou", "o@gmail.com", "123", "admin"); 
insert into user values (null, "inport", "export", "excxsd@gmail.com", "adv123", "admin");
insert into user values (null, "kiry", "Carson", "k@gmail.com", "456", "user");















