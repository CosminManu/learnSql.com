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

select vin from car where production_year > 1999 and price < 7000;

--Select vin, brand, and model of all cars which were produced between 1995 and 2005
select vin, brand, model from car where production_year between 1995 and 2005

select vin, brand, model from car where production_year not between 1995 and 2005

--Select the vin of all cars which were produced before 1999 or after 2005 and whose price is lower than $4,000 or greater than $10,000
select vin from car
where (production_year < 1999 or production_year > 2005)
    and (price < 4000 or price > 10000)


select * from car where brand = 'Ford'		-- text always with single quotes ' ' // 'Smith' is not same as 'SMITH'

