ALTER TABLE `blog` CHANGE `authorID` `author_id` smallint(5) NOT NULL DEFAULT '1';
/* 09:50:41 PHPCMS */ ALTER TABLE `comment` CHANGE `parentID` `parent_id` int(9) NOT NULL;
/* 09:51:05 PHPCMS */ ALTER TABLE `comment` CHANGE `parentCat` `parent_category` char(1) NOT NULL DEFAULT 'b';
/* 09:53:14 PHPCMS */ ALTER TABLE `comment` CHANGE `authorID` `author_id` smallint(5) NOT NULL;
/* 09:53:34 PHPCMS */ ALTER TABLE `content` CHANGE `authorID` `author_id` smallint(5) NOT NULL DEFAULT '1';
/* 09:54:01 PHPCMS */ ALTER TABLE `gallery_album` CHANGE `authorID` `author_id` smallint(5) NOT NULL;
/* 09:54:23 PHPCMS */ ALTER TABLE `gallery_file` CHANGE `authorID` `author_id` smallint(5) NOT NULL;
/* 09:54:35 PHPCMS */ ALTER TABLE `gallery_file` CHANGE `aid` `album_id` smallint(5) NOT NULL;
/* 09:55:00 PHPCMS */ ALTER TABLE `user` CHANGE `regdate` `date` int(11) NULL DEFAULT NULL;
/* 09:55:12 PHPCMS */ ALTER TABLE `user` CHANGE `userright` `user_right` tinyint(1) NOT NULL DEFAULT '1';
/* 09:55:29 PHPCMS */ ALTER TABLE `user` CHANGE `newsletter_default` `receive_newsletter` tinyint(1) NOT NULL DEFAULT '1';