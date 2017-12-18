create table post(
INN int NOT NULL primary key,
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
ID int NOT NULL primary key,
smeta CHAR(10),
size numeric(10) 
);
insert into sklad
values (10,'test1', 100);
insert into sklad
values (11,'test2', 100);
insert into sklad
values (12,'test3',100);
insert into sklad
values (13,'test4', 100);
insert into sklad
values (14,'test5', 100);
create table tovar(
Code CHAR(10) NOT NULL primary key,
prise int,
size CHAR(10),
Sklad_ID int foreign key references sklad(ID) 
);
select * from tovar;
insert into tovar
values (473687463,100,'2x3x5', 13);
insert into tovar
values (978623878,150,'6x4x2', 14);
insert into tovar
values (456543633,1232,'20x30x53',10);
insert into tovar
values (123141241,4234,'11x12x22', 11);
insert into tovar
values (513245,2323,'21x22x34', 10);
create table shop1(
INN int not null,
ADDRES char(10) not null,
TYP char(10) not null,
CONSTRAINT shopik PRIMARY KEY CLUSTERED (ADDRES ASC, TYP ASC)
);
insert into shop1
values (102,'myasnitsky', 'sport');
insert into shop1
values (103,'elninskya', 'games');
insert into shop1
values (104,'lubankya','cards');
insert into shop1
values (105,'9-rota', 'food');
insert into shop1
values (106,'kreml','sport');
create table person(
ID int not null,
names CHAR(10) not null,
CONSTRAINT personal PRIMARY KEY CLUSTERED (names ASC, ID ASC)
);
insert into person
values (112,'ivanov',102);
insert into person
values (113,'petrov',103);
insert into person
values (114,'smirnov',104);
insert into person
values (115,'kekov',105);
insert into person
values (116,'django',106);
drop table post
update person
set names = 'jora'
where ID = 112
select * from person
select * from postavka
select count(*)
from postavka where Shop_ID >100;
GO
SELECT Code, COUNT(Code) AS Qty_model, 
   AVG(prise) AS Avg_price
FROM tovar
GROUP BY Code
HAVING AVG(prise) < 800;
drop table post
create table postavka(
Shop_ID int foreign key references post(INN),
Sklad_ID int foreign key references sklad(ID)
);
insert into postavka
values (1,10);
insert into postavka
values (2,11);
insert into postavka
values (3,12);
insert into postavka
values (4,13);
insert into postavka
values (5,14);
