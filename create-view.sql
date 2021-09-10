-1
create view rock as
select * from track 
where genre_id in (
    select genre_id from genre where name = 'Rock'
);

-2
create view classical_count as
select count(*)
from track t
join playlist_track pt on t.track_id = pt.track_id
join playlist p on pt.playlist_id = p.playlist_id
where p.name = 'Classical';
