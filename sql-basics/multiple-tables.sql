
select * from movie, director
/*  movie: 5 rows
 director: 7 rows
 movie, director: 5 x 7 = 35 rows (produs cartezian)
 SQL takes every single movie and joins it with every possible director
*/


select * from movie, director
where movie.director_id = director.id


select * from movie
join director
on movie.director_id = director.id


select director.name, movie.title
from movie
join director on movie.director_id = director.id


select * from movie
join director on movie.director_id = director.id
where movie.production_year > 2000


select * from movie
join director on movie.director_id = director.id
where director.name = 'Steven Spielberg'

select movie.title, movie.production_year, director.name, director.birth_year as born_in
from movie
join director on movie.director_id = director.id
where (movie.production_year - director.birth_year) < 40

/*
Select the id, title, and production_year columns from the movie table, and the name and birth_year columns from the director table in such a way that a movie is shown together with its director. Show the column birth_year as born_in and the column production_year as produced_in. Select only those movies:
- whose title contains a letter 'a' and which were filmed after 2000,
or
- whose director was born between 1945 and 1995.
*/
select movie.id, movie.title, movie.production_year as produced_in, director.name, director.birth_year as born_in
from movie
join director on movie.director_id = director.id
where (movie.title like '%a%' and movie.production_year > 2000) or (director.birth_year BETWEEN 1945 and 1995)

