INSERT INTO roles VALUES (1,'ROLE_USER');
INSERT INTO roles VALUES (2,'ROLE_MANAGER');
INSERT INTO roles VALUES (3,'ROLE_ADMIN');

INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('imad','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','imad','chaichaa','imadchai2@gmail.com',1,3);
INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('rachid','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','rachid','el aissaoui','rachid@gmail.com',1,2);
INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('hajarE','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','hajar','el ansary','hajarE@gmail.com',1,2);
INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('hajarS','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','hajar','saadani','hajarS@gmail.com',1,2);
INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('iliass','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','mohamed iliass','boutahar','iliass@gmail.com',1,2);
INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('user1','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','user1','user_lastname','user_email@gmail.com',1,1);
INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('user2','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','user2','user_lastname','user_email@gmail.com',1,1);
INSERT INTO users (username,password,first_name,last_name,email,enabled,id_role) VALUES ('user3','$2a$12$oZEDTV31MEz/J1FyE9LRZel.S5mR6sd9wntQ7J5ZOfqc8Wz.TYJva','user3','user_lastname','user_email@gmail.com',1,1);

INSERT INTO clubs (name,description,user_id) VALUES ('RachidClub','DESCRIPTION RACHID CLUB',2);
INSERT INTO clubs (name,description,user_id) VALUES ('HajarEClub','DESCRIPTION HAJAR EL ANSARY CLUB',3);
INSERT INTO clubs (name,description,user_id) VALUES ('HajarSClub','DESCRIPTION HAJAR SAADANI CLUB',4);
INSERT INTO clubs (name,description,user_id) VALUES ('IliassClub','DESCRIPTION ILIASS CLUB',5);

INSERT INTO events (date,name,description,club_id) VALUES ('2021-11-08','Club Meeting','A meeting to know each others !',1);
INSERT INTO events (date,name,description,club_id) VALUES ('2021-11-08','Movie Partie','Lets watch a movie all together !',1);
INSERT INTO events (date,name,description,club_id) VALUES ('2021-11-08','Let s Code','Coding Party !',1);
INSERT INTO events (date,name,description,club_id) VALUES ('2021-11-08','Integration','A day to know new people !',1);

INSERT INTO reviews (user_id,event_id,description,rating) VALUES (6,1,'Great',4);
INSERT INTO reviews (user_id,event_id,description,rating) VALUES (6,1,'Bad',1);
INSERT INTO reviews (user_id,event_id,description,rating) VALUES (7,1,'NIIICE MEETING',5);
INSERT INTO reviews (user_id,event_id,description,rating) VALUES (8,1,'YAAAAHOUUUW',5);
INSERT INTO reviews (user_id,event_id,description,rating) VALUES (8,1,'???',2);
