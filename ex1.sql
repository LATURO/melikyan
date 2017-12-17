create table post(
INN numeric(10) NOT NULL primary key,
typedost CHAR(10),
uslugi CHAR(10)
);
insert into post
values (1,'train', 'sort');
insert into post
values (2,'plane', 'cut');
insert into post
values (3,'car', 'coloring');
insert into post
values (4,'horses', 'weight');
insert into post
values (5,'golyubi', 'eating');
select * from post
create table sklad(
ID numeric(10) NOT NULL primary key,
smeta CHAR(10),
size numeric(10) 
);
insert into sklad
values (123,'eda : ....', 1000);
create table tovar(
Code CHAR(10) NOT NULL primary key,
prise numeric(10),
size CHAR(10),
Sklad_ID numeric(10),
foreign key Sklad_ID references sklad(ID) 
);
