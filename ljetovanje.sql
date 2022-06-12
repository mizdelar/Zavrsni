# c:\xampp\mysql\bin\mysql - uroot < c:\users\mzdel\documents\github\mizdelar\domacezadace\ljetovanje.sql

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
    godineradnogstaza varchar(50),
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







