create table if not exists Genre(
Genre_id Serial primary key,
Name varchar(60)
);

create table if not exists Executor(
Executor_id Serial primary key,
Name varchar(60),
Nickname varchar(60)
);

create table if not exists Executor_genre(
Executor_id integer references Executor(Executor_id),
Genre_id integer references Genre(Genre_id),
constraint pg primary key (Genre_id,Executor_id)
);

create table if not exists Album(
Album_id serial primary key,
Name varchar(60),
Year_of_release varchar(20)
);

create table if not exists Executor_album(
Executor_id integer references Executor(Executor_id),
Album_id integer references Album(Album_id),
constraint ID primary key(Executor_id,Album_id)
);

create table if not exists Track(
Track_id serial primary key,
name varchar(60),
Duration varchar(20),
Album_id integer references Album(Album_id)
);

create table if not exists Collection(
Collection_id Serial primary key,
name varchar(60),
Year_of_release varchar(20)
);

create table if not exists Trackcollection(
Collection_id integer references Collection(Collection_id),
Track_id integer references Track(Track_id),
constraint IID primary key(Track_id,Collection_id)
);
