CREATE TABLE `viewers` (
  `id` integer PRIMARY KEY,
  `name` varchar(255),
  `lastname` varchar(255),
  `age` integer
);

CREATE TABLE `tickets` (
  `id` integer PRIMARY KEY,
  `user_id` integer,
  `schedule_id` integer,
  `price` integer
);

CREATE TABLE `movie` (
  `id` integer PRIMARY KEY,
  `title` varchar(255),
  `age_restriction` integer
);

CREATE TABLE `schedule` (
  `id` integer PRIMARY KEY,
  `movie_id` integer,
  `time` time
);

ALTER TABLE `tickets` ADD FOREIGN KEY (`user_id`) REFERENCES `viewers` (`id`);

ALTER TABLE `schedule` ADD FOREIGN KEY (`id`) REFERENCES `tickets` (`schedule_id`);

ALTER TABLE `movie` ADD FOREIGN KEY (`id`) REFERENCES `schedule` (`movie_id`);

ALTER TABLE `movie` ADD FOREIGN KEY (`age_restriction`) REFERENCES `viewers` (`age`);
