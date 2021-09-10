-1
alter table racers
add column location varchar(50);

-2
insert into animals (name, type, age, location)
values ('name1', 'type1', 5, 'place1'), 
('name2', 'type2', 5, 'place2'), 
('name3', 'type3', 5, 'place3');

-3
alter table animals
RENAME COLUMN type
to "species";

-4
alter table animals
alter spicies
set data type varchar(100);