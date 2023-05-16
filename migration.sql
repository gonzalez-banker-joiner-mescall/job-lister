DROP database IF EXISTS joblister_db;

CREATE database IF NOT EXISTS joblister_db;

USE joblister_db;

DROP TABLE IF EXISTS `ad_cat`;
DROP TABLE IF EXISTS `ads`;
DROP TABLE IF EXISTS `categories`;
DROP TABLE IF EXISTS `users`;

CREATE TABLE `categories`
(
    `id`   BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255)    NOT NULL
);
ALTER TABLE
    `categories`
    ADD UNIQUE `categories_name_unique` (`name`);
CREATE TABLE `ad_cat`
(
    `ad_id`  BIGINT UNSIGNED NOT NULL,
    `cat_id` BIGINT UNSIGNED NOT NULL
);
CREATE TABLE `users`
(

    `id`         BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `username`   VARCHAR(255)    NOT NULL,
    `password`   VARCHAR(255)    NOT NULL,
    `villain`    BOOLEAN         NOT NULL,
    `bio`        TEXT            NULL,
    `profilePic` TEXT            NULL,
    `img`      LONGBLOB        NULL);
);

ALTER TABLE
    `users`
    ADD UNIQUE `users_username_unique` (`username`);
CREATE TABLE `ads`
(
    `id`          BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `title`       TEXT            NOT NULL,
    `description` TEXT            NOT NULL,
    `created`     DATE            NOT NULL,
    `user_id`     BIGINT UNSIGNED NOT NULL
);

CREATE TABLE `saved_ads`
(
    `user_id` BIGINT UNSIGNED NOT NULL,
    `ad_id`   BIGINT UNSIGNED NOT NULL
);

ALTER TABLE
    `saved_ads`
    ADD CONSTRAINT `saved_ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
        ON DELETE CASCADE;
ALTER TABLE
    `saved_ads`
    ADD CONSTRAINT `saved_ads_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`)
        ON DELETE CASCADE;

ALTER TABLE
    `ad_cat`
    ADD CONSTRAINT `ad_cat_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `categories` (`id`);
ALTER TABLE
    `ad_cat`
    ADD CONSTRAINT `ad_cat_ad_id_foreign` FOREIGN KEY (`ad_id`) REFERENCES `ads` (`id`)
        ON DELETE CASCADE;
ALTER TABLE
    `ads`
    ADD CONSTRAINT `ads_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
        ON DELETE CASCADE;