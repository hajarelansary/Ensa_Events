/*
SCRIPT 2
*/
DROP DATABASE  IF EXISTS `ensa_events`;

CREATE DATABASE  IF NOT EXISTS `ensa_events`;
USE `ensa_events`;

CREATE TABLE `roles` (
                        `id` INT NOT NULL AUTO_INCREMENT,
                        `name` varchar(50) DEFAULT NULL,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

CREATE TABLE `users` (
                         `id` int NOT NULL AUTO_INCREMENT,
                         `username` varchar(50) NOT NULL,
                         `password` char(68) NOT NULL,
                         `first_name` char(50) NOT NULL,
                         `last_name` char(50) NOT NULL,
                         `email` char(50) NOT NULL,
                         `avatar` varchar(50) NOT NULL DEFAULT 'default.png',
                         `enabled` int NOT NULL DEFAULT 1,
                         `id_role` INT NOT NULL,
                         PRIMARY KEY (`id`),
                         FOREIGN KEY (id_role) references roles (id)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `clubs` (
                        `id` INT  NOT NULL AUTO_INCREMENT,
                        `name` char(50) NOT NULL,
                        `description` char(50),
                        `logo` char(50) NOT NULL DEFAULT 'default.png',
                        `cover_photo` char(50) NOT NULL DEFAULT 'default.png',
                        `user_id` INT NOT NULL,
                        FOREIGN KEY (user_id) references users (id) on delete cascade,
                        PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `events` (
                         `id` INT  NOT NULL AUTO_INCREMENT,
                         `date` DATE NOT NULL,
                         `name` char(68) NOT NULL,
                         `description` varchar(100) NOT NULL,
                         `cover_photo` varchar(50) NOT NULL DEFAULT 'default.png',
                         `club_id` INT NOT NULL,
                         FOREIGN KEY (club_id) references clubs (id) on delete cascade,
                         PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `reviews` (
                       id	INT NOT NULL auto_increment,
                       user_id INT NOT NULL,
                       event_id INT NOT NULL,
                       description varchar(50),
                       date datetime DEFAULT now(),
                       rating INT,
                       PRIMARY KEY (id),
                       FOREIGN KEY (user_id) references users (id) on delete cascade,
                       FOREIGN KEY (event_id)  references events  (id) on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `participants` (
                       user_id INT NOT NULL,
                       event_id INT NOT NULL,
                       PRIMARY KEY (user_id,event_id),
                       FOREIGN KEY (user_id) references users (id) on delete cascade,
                       FOREIGN KEY (event_id)  references events  (id) on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `members` (
                       user_id INT NOT NULL,
                       club_id INT NOT NULL,
                       PRIMARY KEY (user_id,club_id),
                       FOREIGN KEY (user_id) references users (id) on delete cascade,
                       FOREIGN KEY (club_id)  references clubs  (id) on delete cascade
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 1;

