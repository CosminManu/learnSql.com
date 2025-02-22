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

--22.02
--Select vin, brand, and model of all cars whose brand begins with an F.
select vin, brand, model from car
where brand like 'F%';

select vin from car where model like '%s';

select * from car 
where brand like 'Volk_wagen';

--NULL values = uknown, missing values
select * from car
  where price is not null;

select * from car where price is null

-- NULL is not 0
-- NULL = NULL false

--Select all columns for cars with a tax amount over $2000. The tax amount for all cars is 20% of their price. Multiply the price by 0.2 to get the tax amount.
select * from car
where (price * 0.2) > 2000

select * from car
where production_year between 1999 and 2005 
  and brand <> 'Volkswagen' 
  and (model like 'P%' or model like 'F%') 
  and price is not null

--price <> null incorrect
--price is not null correct
