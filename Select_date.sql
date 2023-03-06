/*Написать SELECT-запросы, которые выведут информацию согласно инструкциям ниже.

Внимание: результаты запросов не должны быть пустыми, учтите это при заполнении таблиц. */

-- Название и год выхода альбомов, вышедших в 2018 году.
select 
	a.name_album, 
	a.year_release 
from album a
where a.year_release = 2018;

-- Название и продолжительность самого длительного трека.
select 
	t.name_track, 
	t.duration_track 
from track t
order by t.duration_track desc
limit 1;

-- Название треков, продолжительность которых не менее 3,5 минут.
select 
	t.name_track	
from track t 
where t.duration_track > '00:03:30'
order by t.duration_track;

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
select 
	c.name_collection  
from collection c
where c.year_release between 2018 and 2020
order by year_release;

-- Исполнители, чьё имя состоит из одного слова.
select e.nickname_executor from executor e 
where e.nickname_executor not like ('% %');

-- Название треков, которые содержат слово «мой» или «my».
select t.name_track
from track t
where t.name_track ilike ('%my%') or t.name_track ilike ('%мой%');
