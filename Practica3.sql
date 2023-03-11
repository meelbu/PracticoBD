use laboratory;

select * from invoice;

select max(amount)
from invoice;

select min(amount)
from invoice;

select min(amount)
from invoice
where year(date) >=2000 and year(date) <=2008;

select * from invoice where year(date) = 2016;

select * from invoice where (id = '3');

select count(*) as recuento_invoice from invoice;

select count(*) as recuento from invoice where amount >= 35000 and amount <= 40000;

select year(date) as año, count(*) as recuento_año from invoice group by year(date);

select letter, count(*) as recuento_letter from invoice group by letter;
