select * from car;

select brand from car;

select model, price from car;

select * from car where production_year = 1999;

select * from car where price > 10000;

select * from car where production_year <> 1999; -- same as != 1999

select brand, model, production_year from car
where price <= 11300;


--Select vins of all cars which were produced before 2005 or whose price is below $10,000
select vin from car where production_year < 2005 or price < 10000;

