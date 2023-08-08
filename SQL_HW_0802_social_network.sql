CREATE TABLE `users` (
  `user_id` int,
  `user_name` varchar(255),
  `user_surname` varchar(255),
  `login` varchar(255),
  `password` varchar(255),
  `age` int,
  `post_id` int,
  `reaction_id` int,
  `friend_id` int,
  `comment_id` int,
  `message_id` int,
  `chat_id` int
);

CREATE TABLE `posts` (
  `post_id` int,
  `author_id` int,
  `reaction_id` int
);

CREATE TABLE `friends` (
  `friend_id` int,
  `name` varchar(255),
  `surname` varchar(255)
);

CREATE TABLE `reactions` (
  `reaction_id` int,
  `reactions` char
);

CREATE TABLE `comments` (
  `comment_id` int,
  `comments` varchar(255),
  `reaction_id` int
);

CREATE TABLE `messages` (
  `message_id` int,
  `messages` varchar(255),
  `reaction_id` int
);

CREATE TABLE `chats` (
  `chat_id` int,
  `chat` varchar(255),
  `reaction_id` int
);

ALTER TABLE `posts` ADD FOREIGN KEY (`author_id`) REFERENCES `users` (`user_id`);
