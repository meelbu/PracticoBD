use laboratory;

insert into client
values
('6','Fernando','Gimenez','27-30458254-3','Mexico 23',null),
('7','Julia','Dominguez','22-28256345-2','Ayolas 2545',null),
('8','Mariano','Santos','27-36254986-7','Av Saenz 2569',null),
('9','Nicolas','Santos','27-36598452-2','Murguiondo 45',null),
('10','Maria','Blasco','20-38652968-5','Figueredo 356',null);

set SQL_SAFE_UPDATES = 0;

update `laboratory`.`client` set `name` = 'Jose' where (`id` = '1');

update `laboratory`.`client` set `name` = 'Pablo',
 last_name = 'Fuentes',
 cuit= '20-21053119-0'
 where (id = '3');
 
 update `laboratory`.`client` set `comments` = ' ' where comments = null;

delete from client where last_name = 'Perez';

delete from client where cuit like '%0';

select price, price * 0.2  as aumento, price+(price*0.2) as total from article where price <= 50;

select price, price * 0.15 as aumento, price+(price*0.15) as total from article where price >50;

select price, price * 0.05 as descuento, price-(price*0.05) as total from article where price > 200;

delete from article where stock = 0;
