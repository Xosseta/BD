select  genre_id, COUNT(executor_id) from executor_genre eg 
group by genre_id;

select count(track_id) from track
where album_id in(select album_id from album
					where year_of_release between '2019' and '2020');

select album_id, avg(cast(duration as float)) from track
group by album_id;

select distinct nickname from executor
where nickname != (select distinct a.nickname from executor as a
					left join executor_album as ea on a.executor_id = ea.executor_id 
					left join album as am on ea.album_id = am.album_id 
					where year_of_release = '2020');		

select distinct c.name from collection as c
left join executor as a on c.collection_id = a.executor_id 
where a.executor_id = 1;

select distinct a.name from album as a
left join executor_album as ea on a.album_id = ea.album_id 
left join executor_genre as eg on ea.executor_id = eg.executor_id 
group by a.name
having count(eg.executor_id) > 1;

select t.name from track as t
left join trackcollection as tr on t.track_id = tr.track_id 
where tr.track_id is null;

select e.name from executor as e
join executor_album as ea on e.executor_id = ea.executor_id 
join album as a on ea.album_id = a.album_id 
join track as t on t.album_id = a.album_id 
where t.duration = (select min(duration) from track);

select distinct a.name from album as a
join track as t on a.album_id = t.album_id
group by a.name
having count(t.track_id) in (select count(t.track_id) from album as a
								join track as t on a.album_id = t.album_id
								group by a.name
								order by count(t.track_id)
								limit 1);