-1
select *
from invoice i
join invoice_line il on il.invoice_id = i.invoice_id
where il.unit_price > 0.99;

-2
select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c on i.customer_id = c.customer_id;

-3/4
select c.first_name, c.last_name, e.first_name, e.last_name
from customer c
join employee e on c.support_rep_id = e.employee_id;

-5
select alb.title, art.name
from album alb
join artist art on alb.artist_id = art.artist_id;

-6
select pt.track_id
from playlist_track pt
join playlist p on p.playlist_id = pt.playlist_id
where p.name = 'Music';

-7
select tr.name track_name, pl.name playlist_name
from track tr
join playlist_track p on p.track_id = tr.track_id
join playlist pl on pl.playlist_id = p.playlist_id;

-8
select tr.name track_name, al.title album_title
from track tr
join genre g on tr.genre_id = g.genre_id
join album al on tr.album_id = al.album_id
where g.genre_id in(
    select genre_id
    from genre
    where genre.name in ('Alternative', 'Punk')
);

-9
select tr.name track_name, al.title album_title
from track tr
join genre g on tr.genre_id = g.genre_id
join album al on tr.album_id = al.album.id
where g.genre_id in (
  select genre_id
  from genre
  where genre.name in ('Alternative', 'Punk')
);
