# c:\xampp\mysql\bin\mysql - uroot --default_character_set=utf8 < c:\users\mzdel\documents\github\mizdelar\domacezadace\ljetovanje.sql

drop database if exists kamp;
create database kamp;
use kamp;

create table apartman(
    sifra int not null primary key auto_increment,
    kategorija varchar(50),
    velicina decimal (18,2) not null,
    cijena decimal (18,2) not null,
    naziv varchar(50),
    djelatnik int not null,
    plaza int not null
    
    

);

create table turist(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar (50),
    oib char(11),
    zemljaporijekla varchar(50),
    prijevoznosredstvo varchar(50)
    
    

);

create table djelatnik(
    sifra int not null primary key auto_increment,
    ime varchar(50),
    prezime varchar (50),
    oib char(11),
    visinaplace decimal (18,2) not null,
    godineradnogstaza decimal (18,2),
    strucnasprema varchar(50)
);

create table plaza(
    sifra int not null primary key auto_increment,
    kategorija varchar(50),
    velicina decimal (18,2) not null,
    vrsta varchar (50),
    placanje boolean
);

create table termin(
    sifra int not null primary key auto_increment,
    datumdolaska datetime,
    datumodlaska datetime,
    cijena decimal (18,2) not null,
    apartman int,
    turist int
);




alter table apartman add foreign key (djelatnik) references djelatnik(sifra);
alter table termin add foreign key (apartman) references apartman(sifra);
alter table apartman add foreign key (plaza) references plaza(sifra);
alter table termin add foreign key (turist) references turist(sifra);


insert into djelatnik (sifra,ime,prezime,oib,visinaplace,godineradnogstaza,strucnasprema)
values (null,'Darko','Kovačević',11111111111,3999.99,12,'SSS');

insert into djelatnik (sifra,ime,prezime,oib,visinaplace,godineradnogstaza,strucnasprema)
values (null,'Marko','Markić',2222222222,4999.99,10,'SSS');

insert into djelatnik (sifra,ime,prezime,OIB,visinaplace,godineradnogstaza,strucnasprema)
values (null,'Žarko','Žarkić',33333333333,5999.99,5,'SSS');

insert into plaza (sifra,kategorija,velicina,vrsta,placanje)
values (null,'Prva',200,'Pješčana',true);

insert into plaza (sifra,kategorija,velicina,vrsta,placanje)
values (null,'Druga',300,'Šljunčana',false);

insert into plaza (sifra,kategorija,velicina,vrsta,placanje)
values (null,'Treća',400,'Stjenovita',false);

insert into apartman (sifra,kategorija,velicina,cijena,naziv,djelatnik,plaza)
values (null,'A',70,7000,'Sunce',1,1);

insert into apartman (sifra,kategorija,velicina,cijena,naziv,djelatnik,plaza)
values (null,'B',50,5000,'Suncobran',2,2);

insert into apartman (sifra,kategorija,velicina,cijena,naziv,djelatnik,plaza)
values (null,'C',30,3000,'Peraje',3,3);

insert into turist (sifra,ime,prezime,oib,zemljaporijekla,prijevoznosredstvo)
values (null,'Janez','Kovač',1111111111,'Slovenija','Automobil');

insert into turist (sifra,ime,prezime,oib,zemljaporijekla,prijevoznosredstvo)
values (null,'Joseph','Neumann',222222222,'Njemačka','Avion');

insert into turist (sifra,ime,prezime,oib,zemljaporijekla,prijevoznosredstvo)
values (null,'Klaus','Petelka',3333333333,'Češka','Autobus');

insert into termin (sifra,datumdolaska,datumodlaska,cijena,apartman,turist)
values (null,'2022-06-06','2022-06-13',4000,1,1);

insert into termin (sifra,datumdolaska,datumodlaska,cijena,apartman,turist)
values (null,'2022-06-13','2022-06-20',5000,2,2);

insert into termin (sifra,datumdolaska,datumodlaska,cijena,apartman,turist)
values (null,'2022-06-20','2022-06-27',6000,3,3);






