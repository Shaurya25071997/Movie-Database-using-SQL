create database movie;

use movie;

create table movies (mov_id int, mov_title char(100), mov_year int, mov_time int, mov_lang char(20), mov_dt_rel date, mov_rel_country char(4))

insert into movies values(901, 'Vertigo', 1958, 128, 'English', '1958-08-24', 'UK')
insert into movies values(902, 'The innocents', 1961, 121, 'Hindi', '1938-03-24', 'US')
insert into movies values(903, 'Lawrence of Arabia', 1951, 122, 'Spanish', '1920-08-24', 'UN')
insert into movies values(904, 'The deer Hunter', 1950, 123, 'Russian', '1921-08-24', 'UK')
insert into movies values(905, 'Amadeus', 1962, 124, 'Hindi', '1958-07-21', 'US')
insert into movies values(906, 'Blade Runner', 1963, 125, 'English', '1958-02-21', 'UN')
insert into movies values(907, 'Eyes Wide Shut', 1970, 126, 'English', '1958-08-22', 'IND')
insert into movies values(908, 'The usual Suspects', 1972, 127, 'Russian', '1934-08-20', 'US')
insert into movies values(909, 'China Town', 1980, 128, 'Spanish', '1958-08-27', 'UK')
insert into movies values(910, 'Boogie nights', 1983, 129, 'English', '1920-08-24', 'UK')
insert into movies values(911, 'Annie hall', 1999, 121, 'English', '1958-08-24', 'US')
insert into movies values(912, 'Princess Mononoke', 2000, 120, 'Arabic', '1911-08-24', 'UN')
insert into movies values(913, 'The shawshank Redemption', 2001, 119, 'Arabic', '1958-11-24', 'UK')
insert into movies values(914, 'American Beauty', 2004, 111, 'English', '1909-08-24', 'US')
insert into movies values(915, 'Titanic', 2006, 101, 'Spanish', '1911-12-24', 'UK')
insert into movies values(916, 'Good Will Hunting', 2007, 111, 'English', '1911-08-24', 'UK')
insert into movies values(917, 'Deliverance', 2009, 112, 'English', '1958-01-24', 'UN')
insert into movies values(918, 'Trainspotting', 2010, 190, 'Marathi', '1958-02-24', 'US')
insert into movies values(919, 'The Prestige', 2011, 118, 'Telugu', '1953-04-24', 'US')
insert into movies values(920, 'Donnie Darko', 2021, 128, 'Kannada', '1952-06-24', 'US')
insert into movies values(921, 'Slumdog Millionaire', 2019, 128, 'English', '1958-08-24', 'US')
insert into movies values(922, 'Aliens', 2000, 122, 'Hindi', '1958-08-24', 'UK')
insert into movies values(923, 'Beyond the sea', 2029, 100, 'English', '1951-08-24', 'UK')
insert into movies values(924, 'Avatar', 2030, 111, 'Jewish', '1950-05-24', 'US')
insert into movies values(925, 'Seven Samurai', 2031, 112, 'English', '1958-04-24', 'UK')

create table reviewer(rev_id int, rev_name char(20))

insert into reviewer values(9001, 'Righty Sock')
insert into reviewer values(9002, 'Jack malveran')
insert into reviewer values(9003, 'Flagrant Baronessa')
insert into reviewer values(9004, 'Alec Shaw')
insert into reviewer values(9005, ' ')
insert into reviewer values(9006, 'Victor Woeltjen')
insert into reviewer values(9007, 'Simon Wright')
insert into reviewer values(9008, 'Neal Wruck')
insert into reviewer values(9009, 'Paul monks')
insert into reviewer values(9010, 'Hike Salvati')
insert into reviewer values(9011, ' ')
insert into reviewer values(9012, 'wesley S walker')
insert into reviewer values(9013, 'Sasha Goldshtien')
insert into reviewer values(9014, 'Josh Cates')
insert into reviewer values(9015, 'Krug Stillo')
insert into reviewer values(9016, 'Scott leburn')
insert into reviewer values(9017, 'Hannah Steele')
insert into reviewer values(9018, 'Vincent Cadena')
insert into reviewer values(9019, 'Barndt Sponseller')
insert into reviewer values(9020, 'Richard Adams')


create table rating(mov_id int, rev_id int, rev_stars float, num_o_ratings int)

insert into rating values(901,9001, 8.40,263571)
insert into rating values(902,9002, 3.40,263571)
insert into rating values(903,9003, 4.40,263570)
insert into rating values(904,9004, 6.40,263575)
insert into rating values(905,9005, 1.40,263572)
insert into rating values(906,9006, 1.34, 263575)
insert into rating values(907,9007, 8.40,263579)
insert into rating values(908,9008, 8.40,263578)
insert into rating values(909,9009, 8.40,263577)
insert into rating values(910,9010, 8.40,263576)
insert into rating values(911,9011, 8.40,263575)
insert into rating values(912,9012, 8.40,263574)
insert into rating values(913,9013, 8.40,263573)
insert into rating values(914,9014, 8.40,263572)
insert into rating values(915,9015, 8.40,263571)


select * from movies
select * from rating
select * from reviewer

use movie

select mov_title, mov_year from movies;

select mov_year from movies where mov_title = 'American Beauty';

select mov_title from movies where mov_year = 1999;

select mov_title from movies where mov_year < 1998;

select rev_name from reviewer 
union 
(select mov_title from movies)


select rev_name  from reviewer a join rating b on a.rev_id = b.rev_id and rev_stars >= 7 and rev_name  is not null;

select mov_title from movies where mov_id not in (select mov_id from rating);

select mov_title from movies where mov_id in(905, 907, 917)

select mov_id, mov_title, mov_year from movies where mov_title =  'Boogie Nights' order by mov_year;

create table actor(act_id int, act_fname char(20), act_lname char(20), act_gender char(5))

insert into actor values(101,'James', 'Stewart', 'M')
insert into actor values(102,'Karl', 'Marx', 'M')
insert into actor values(103,'Shaurya', 'Tiwari', 'M')
insert into actor values(104,'James', 'Bond', 'F')
insert into actor values(105,'krishna', 'Tiwari', 'F')
insert into actor values(106,'Vedansh', 'Tiwari', 'F')
insert into actor values(107,'Anushka', 'Tiwari', 'F')
insert into actor values(108,'Tanya', 'Tiwari', 'M')
insert into actor values(109,'Marcus', 'Staninis', 'M')
insert into actor values(110,'Phill', 'Heath', 'M')
insert into actor values(111,'Rambo', 'Collins', 'F')
insert into actor values(112,'sherlock', 'Homes', 'F')
insert into actor values(113,'Bambos', 'Luana', 'M')

select act_id from actor where act_fname = 'Anushka' and act_lname = 'Tiwari';

create table movie_cast(act_id int, mov_id  int, role char(257));

insert into movie_cast values(101,901,'Stewart James')
insert into movie_cast values(102,902,'Karl Marx')
insert into movie_cast values(103,903,'Tanya Tiwari')
insert into movie_cast values(104,904,'Shaurya Tiwari')
insert into movie_cast values(105,905,'Rogger Binny')
insert into movie_cast values(106,906,'Maxi cose')
insert into movie_cast values(107,907,'Random pierry')
insert into movie_cast values(108,908,'James watt')
insert into movie_cast values(109,909,'Galileo')
insert into movie_cast values(110,910,'Mustang Vitoro')

select mov_title from movies;
	
select * from actor where act_id in(select act_id from movie_cast where mov_id in(select mov_id from movies where mov_title = 'Blade Runner'));

create table director(dir_id int, dir_fname char(56), dir_lname char(56))

insert into director values(201, 'Alfred', 'Hitchcock')
insert into director values(202, 'Ashi', 'Tiwari')
insert into director values(203, 'Ashneer', 'Gupta')
insert into director values(204, 'Mama', 'Earth')
insert into director values(205, 'piyush', 'bansal')
insert into director values(206, 'Aman', 'Gupta')
insert into director values(207, 'Rahul', 'Dravid')
insert into director values(208, 'Salman', 'Khan')
insert into director values(209, 'Akshay', 'Kumar')
insert into director values(210, 'Anand', 'Singh')

create table movie_direction (dir_id int, mov_id int)

insert into movie_direction values(201, 901)
insert into movie_direction values(202, 902)
insert into movie_direction values(203, 903)
insert into movie_direction values(204, 904)
insert into movie_direction values(205, 905)
insert into movie_direction values(206, 906)
insert into movie_direction values(207, 907)
insert into movie_direction values(208, 908)
insert into movie_direction values(209, 909)
insert into movie_direction values(210, 910)


select dir_fname, dir_lname from director where dir_id IN(select dir_id from movie_direction where mov_id IN(
select mov_id from movie_cast where role = any(select role from movie_cast where mov_id in
(select mov_id from movies where mov_title = 'Eyes Wide Shut'))));

select * from movies;

select mov_title, mov_year, mov_year, mov_dt_rel, mov_rel_country from movies where mov_rel_country not in ('UK')

select mov_title, mov_year, mov_dt_rel, dir_fname, dir_lname, 
act_fname, act_lname from movies a ,movie_direction b, director c, rating d, reviewer e, actor f, movie_cast g 
where a.mov_id = b.mov_id
AND  b.dir_id=c.dir_id 
 AND a.mov_id=d.mov_id 
  AND  d.rev_id=e.rev_id 
   AND  a.mov_id=g.mov_id 
    AND g.act_id=f.act_id 
	AND e.rev_name is not null;

	select * from director
	
select mov_title from movies where mov_id in (select mov_id from movie_direction where dir_id in 
(select dir_id from director where dir_fname = 'Ashneer' and dir_lname = 'Gupta'));

select distinct mov_year from movies where mov_id in (select mov_id from rating where rev_stars > 3) order by mov_year;

select distinct mov_title from movies where mov_id not in (select mov_id from rating);

select distinct rev_name from reviewer where rev_id in (select rev_id from rating where rev_stars is null)

select rev_name, mov_title, rev_stars from reviewer a, rating b, movies c where a.rev_id = b.rev_id and b.mov_id = c.mov_id 
and a.rev_name is not null and b.rev_stars is not null order by rev_name, mov_title, rev_stars

SELECT rev_name, mov_title FROM reviewer, movies, rating WHERE rating.mov_id=movies.mov_id AND reviewer.rev_id=rating.rev_ID  
GROUP BY rev_name, mov_title HAVING count(*) > 1;

select mov_title, max(rev_stars) as max from movies, rating where movies.mov_id = rating.mov_id and rating.rev_stars is not null 
group by mov_title order by  mov_title asc;

SELECT DISTINCT reviewer.rev_name FROM reviewer, rating, movies WHERE reviewer.rev_id = rating.rev_id AND movies.mov_id = rating.mov_id 
AND movies.mov_title = 'American Beauty';

select movies.mov_title from movies where mov_id in (select mov_id from rating where rev_id not in (select rev_id from reviewer where rev_name = 'Ashneer Gupta'))

SELECT reviewer.rev_name, movies.mov_title, rating.rev_stars FROM reviewer, movies, rating WHERE rating.rev_stars = (
SELECT MIN(rating.rev_stars)
FROM rating
)
AND rating.rev_id = reviewer.rev_id
AND rating.mov_id = movies.mov_id;


SELECT mov_title FROM movies WHERE mov_id IN (SELECT mov_id  FROM movie_direction WHERE dir_id IN (SELECT dir_id FROM director WHERE dir_fname = 'Ashneer' AND dir_lname='Gupta'
));

SELECT mov_title FROM movies WHERE mov_id IN (SELECT mov_id FROM movie_cast WHERE act_id IN (SELECT act_id FROM actor WHERE act_id IN (SELECT act_id FROM movie_cast GROUP BY act_id 
HAVING COUNT(act_id)>1)));

select rev_name from reviewer a join rating b on a.rev_id = b.rev_id where rev_stars is not null

select act_fname, act_lname , role from actor a join movie_cast b on
a.act_id = b.act_id join movies c on
c.mov_id = b.mov_id and c.mov_title = 'Vertigo'


Select dir_fname, dir_lname, mov_title
from  director a join movie_direction b on a.dir_id = b.dir_id Join movie_cast c 
on c.mov_id = b.mov_id join movies d on d.mov_id = c.mov_id and mov_title = 'Eyes Wide Shut';

Select dir_fname, dir_lname, mov_title
from  director a join movie_direction b on a.dir_id = b.dir_id Join movie_cast c 
on c.mov_id = b.mov_id join movies d on d.mov_id = c.mov_id and role = 'Maxi cose';

Select act_fname, act_lname, mov_title, mov_year
from actor
JOIN movie_cast 
ON actor.act_id=movie_cast.act_id
JOIN movies 
ON movie_cast.mov_id=movies.mov_id
WHERE mov_year NOT BETWEEN 1990 and 2000;


-----------THE END--------