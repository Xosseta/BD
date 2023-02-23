insert into genre
values(1,'фолк-метал'),
(2,'альтернативный метал'),
(3,'русский рэп'),
(4,'индастриал'),
(5,'альтернатива'),
(6,'иностранный рок');

insert into executor 
values(1,'Сергей Карамушкин и Артём Хорев','Anacondaz'),
(2,'Дэвид Дрейман','Disturbed'),
(3,'Брайан Хью Уорнер','Marilyn Manson'),
(4,'Чед Крюгер','Nickelback'),
(5,'Сагат Сагатов','Sagath'),
(6,'Тревор МакНивен','Thousand Foot Krutch'),
(7,'Хери Йонсен','Týr'),
(8,'Энтони Кидис и Джон Фрушанте','Red Hot Chili Peppers');

insert into executor_genre
values(1,3),(2,2),(3,4),(4,6),(4,5),(5,3),(6,2),(7,1),(8,6);

insert into album 
values(1,'Californication',1999),
(2,'By the Way',2002),
(3,'Перезвони мне +79995771202',2022),
(4,'Ten Thousand Fists',2005),
(5,'The Golden Age Of Grotesque',2003),
(6,'Holy Wood',2000),
(7,'Silver Side Up',2001),
(8,'Necrotica 2',2020),
(9,'Phenomenon',2003),
(10,'The End Is Where We Begin',2012),
(11,'Valkyrja',2013);

insert into executor_album 
values(1,3),(2,4),(3,5),(3,6),(4,7),(5,8),(6,9),(7,10),(7,11),(8,1),(8,2);

insert into track 
values(1,'Californication','5.29',1),
(2,'Can`t Stop','4.28',2),
(3,'Два вопроса','4.02',3),
(4,'Сядь мне на лицо','3.48',3),
(5,'Stricken','4.05',4),
(6,'Decadence','3.24',4),
(7,'Tainted Love','3.20',5),
(8,'The Nobodies','3.35',6),
(9,'How You Remind Me','3.44',7),
(10,'Too Bad','3.52',7),
(11,'Затащите меня в ад','2.55',8),
(12,'Мёртвая принцесса','4.36',8),
(13,'Phenomenon','2.59',9),
(14,'Courtesy Call','3.56',10),
(15,'Blood of Heroes','3.41',11),
(16,'Another Fallen Brother','4.04',11)
(17,'Blood','3.50',11);

insert into collection 
values(1,'The Studio Album Collection 1991-2011',2014),
(2,'Популярные треки Anacondaz',2020),
(3,'The Studio Album Collection',2011),
(4,'Lest We Forget: The Best Of',2004),
(5,'The Best of Nickelback',2013),
(6,'Популярные треки Sagath',2019),
(7,'Thousand Foot Krutch Collection',2021);

insert into trackcollection 
values(1,1),(1,2),(2,3),(2,4),(3,5),(3,6),(4,7),(4,8),(5,9),(5,10),(6,11),(6,12),(7,13),(7,14);

