drop table album;
drop table album_old;
drop table song;
------------------------------------------------------------------------------------------------
alter table album rename to album_old;
alter table album_songs_relation rename to album_songs_relation_old;
alter table artists_singers_relation rename to artists_singers_relation_old;

------------------------------------------------------------------------------------------------
create table album_singer
(
  Id integer primary key autoincrement ,
  albumId integer ,
  singerId integer ,
  foreign key (singerId) references singer(id) ,
  foreign key (albumId) references album(id)
);

create table song_singer
(
  Id integer primary key autoincrement ,
  songId integer ,
  singerId integer ,
  foreign key (singerId) references singer(id) ,
  foreign key (songId) references song(id)
);

create table album
(
  id integer primary key autoincrement ,
  name text not null ,
  issue_date text ,
  path text
);

create table song
(
  id integer primary key autoincrement ,
  name text not null ,
  albumId integer not null ,
  songIdinAlbum integer ,
  path text ,
  foreign key (albumId) references album(id)
);
------------------------------------------------------------------------------------------------
insert into album (name, issue_date, path) values ('崩坏3-Impact- Original Soundtrack', '2018-01-19', '');

insert into song(name, albumId, songIdinAlbum, path) VALUES ('Startover', '1', '01', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('崩壊世界の歌姫 - (崩坏世界的歌姬)', '1', '02', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Cometh', '1', '03', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Ark', '1', '04', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Another', '1', '05', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Lighting', '1', '06', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Karame', '1', '07', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Pas', '1', '08', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Rage', '1', '09', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('ACE', '1', '10', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Pre-Pro', '1', '11', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Warning', '1', '12', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Nitro', '1', '13', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Cross', '1', '14', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Echo', '1', '15', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('SAVA', '1', '16', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Y', '1', '17', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('MallX', '1', '18', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Grow', '1', '19', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Lift', '1', '20', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('EVO', '1', '21', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Flyby', '1', '22', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Destiny', '1', '23', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('MACH', '1', '24', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Gion', '1', '25', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Rebirth', '1', '26', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Girl Inside', '1', '27', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Rebrun', '1', '28', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('千年之羽（符华印象曲）', '1', '29', '');
insert into song(name, albumId, songIdinAlbum, path) VALUES ('Befall（崩坏3印象曲）', '1', '30', '');

insert into album_singer(albumId, singerId) VALUES (1, 4);
insert into album_singer(albumId, singerId) VALUES (1, 5);

insert into song_singer(songId, singerId) VALUES (1, 4);
insert into song_singer(songId, singerId) VALUES (1, 5);
insert into song_singer(songId, singerId) VALUES (2, 2);
insert into song_singer(songId, singerId) VALUES (3, 4);
insert into song_singer(songId, singerId) VALUES (3, 5);
insert into song_singer(songId, singerId) VALUES (4, 4);
insert into song_singer(songId, singerId) VALUES (4, 5);
insert into song_singer(songId, singerId) VALUES (5, 4);
insert into song_singer(songId, singerId) VALUES (5, 5);
insert into song_singer(songId, singerId) VALUES (6, 4);
insert into song_singer(songId, singerId) VALUES (6, 5);
insert into song_singer(songId, singerId) VALUES (7, 4);
insert into song_singer(songId, singerId) VALUES (7, 5);
insert into song_singer(songId, singerId) VALUES (8, 4);
insert into song_singer(songId, singerId) VALUES (8, 5);
insert into song_singer(songId, singerId) VALUES (9, 4);
insert into song_singer(songId, singerId) VALUES (9, 5);
insert into song_singer(songId, singerId) VALUES (10, 4);
insert into song_singer(songId, singerId) VALUES (10, 5);
insert into song_singer(songId, singerId) VALUES (11, 4);
insert into song_singer(songId, singerId) VALUES (11, 5);
insert into song_singer(songId, singerId) VALUES (12, 4);
insert into song_singer(songId, singerId) VALUES (12, 5);
insert into song_singer(songId, singerId) VALUES (13, 4);
insert into song_singer(songId, singerId) VALUES (13, 5);
insert into song_singer(songId, singerId) VALUES (14, 4);
insert into song_singer(songId, singerId) VALUES (14, 5);
insert into song_singer(songId, singerId) VALUES (15, 4);
insert into song_singer(songId, singerId) VALUES (15, 5);
insert into song_singer(songId, singerId) VALUES (16, 4);
insert into song_singer(songId, singerId) VALUES (16, 5);
insert into song_singer(songId, singerId) VALUES (17, 4);
insert into song_singer(songId, singerId) VALUES (17, 5);
insert into song_singer(songId, singerId) VALUES (18, 4);
insert into song_singer(songId, singerId) VALUES (18, 5);
insert into song_singer(songId, singerId) VALUES (19, 4);
insert into song_singer(songId, singerId) VALUES (19, 5);
insert into song_singer(songId, singerId) VALUES (20, 4);
insert into song_singer(songId, singerId) VALUES (20, 5);
insert into song_singer(songId, singerId) VALUES (21, 4);
insert into song_singer(songId, singerId) VALUES (21, 5);
insert into song_singer(songId, singerId) VALUES (22, 4);
insert into song_singer(songId, singerId) VALUES (22, 5);
insert into song_singer(songId, singerId) VALUES (23, 4);
insert into song_singer(songId, singerId) VALUES (23, 5);
insert into song_singer(songId, singerId) VALUES (24, 4);
insert into song_singer(songId, singerId) VALUES (24, 5);
insert into song_singer(songId, singerId) VALUES (25, 4);
insert into song_singer(songId, singerId) VALUES (25, 5);
insert into song_singer(songId, singerId) VALUES (26, 4);
insert into song_singer(songId, singerId) VALUES (26, 5);
insert into song_singer(songId, singerId) VALUES (27, 2);
insert into song_singer(songId, singerId) VALUES (28, 3);
insert into song_singer(songId, singerId) VALUES (29, 2);
insert into song_singer(songId, singerId) VALUES (30, 1);