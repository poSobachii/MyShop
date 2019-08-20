create database if not exists smartdogshop;

use smartdogshop;

drop table if exists shirts;
drop table if exists shirtsTwo;
drop table if exists cups;
drop table if exists BALLOONS;

create table shirts (id varchar(50), primary key(id), wareType varchar(50), price float, qty int, info text);
insert into shirts values (1, 'red shirt', 11.99, 10, 'some text added super mega ulta long text with some wwww.facebook.com links and etc
so everyone will be shocked when they will read this shit- ok nice ?');
insert into shirts values (2, 'blue shirt', 13.99, 10, 'some text added super mega ulta long text with some wwww.facebook.com links and etc
so everyone will be shocked when they will read this shit- ok nice ?');
insert into shirts values (3, 'white shirt', 15.99, 10, 'some text added super mega ulta long text with some wwww.facebook.com links and etc
so everyone will be shocked when they will read this shit- ok nice ?');
insert into shirts values (4, 'green shirt', 14.99, 10, 'some text added super mega ulta long text with some wwww.facebook.com links and etc
so everyone will be shocked when they will read this shit- ok nice ?');
insert into shirts values (5, 'yellow shirt', 13.99, 10, 'some text added super mega ulta long text with some wwww.facebook.com links and etc
so everyone will be shocked when they will read this shit- ok nice ?');
insert into shirts values (6, 'black shirt', 15.99, 10, 'some text added super mega ulta long text with some wwww.facebook.com links and etc
so everyone will be shocked when they will read this shit- ok nice ?');
insert into shirts values (7, 'brownee shirt', 15.99, 10, 'some text added super mega ulta long text with some wwww.facebook.com links and etc
so everyone will be shocked when they will read this shit- ok nice ?');

create table shirtsTwo (id varchar(50), primary key(id) , wareType varchar(50), price float, qty int, info text);
insert into shirtsTwo values (100, 'ADIDAS shirt', 11.99, 10, 'some extra info');
insert into shirtsTwo values (200, 'DOG shirt', 13.99, 10, 'some extra info');
insert into shirtsTwo values (300, 'ESPORTS shirt', 15.99, 10, 'some extra info');
insert into shirtsTwo values (400, 'NIKE shirt', 14.99, 10, 'some extra info');
insert into shirtsTwo values (500, 'HUAWEI shirt', 13.99, 10, 'some extra info');
insert into shirtsTwo values (600, 'PUMA shirt', 15.99, 10, 'some extra info');

create table cups (id varchar(50), primary key(id) , wareType varchar(50), price float, qty int, info text);
insert into cups values (501, 'CHICKEN cup', 11.70, 10, 'some extra info');
insert into cups values (502, 'DOG cup', 11.70, 10, 'some extra info');
insert into cups values (503, 'CAT cup', 11.70, 10, 'some extra info');
insert into cups values (504, 'HORSE cup', 11.70, 10, 'some extra info');
insert into cups values (505, 'BIRD cup', 11.70, 10, 'some extra info');

create table BALLOONS (id varchar(50), primary key(id) , WARETYPE varchar(50), PRICE float, QTY int, INFO text);
insert into BALLOONS values (1501, 'RED ballon', 11.70, 10, 'some extra info');
insert into BALLOONS values (1502, 'BLUE ballon', 11.70, 10, 'some extra info');
insert into BALLOONS values (1503, 'GREEN ballon', 11.70, 10, 'some extra info');
insert into BALLOONS values (1504, 'ORANGE ballon', 11.70, 10, 'some extra info');
insert into BALLOONS values (1505, 'LIME ballon', 11.70, 10, 'some extra info');