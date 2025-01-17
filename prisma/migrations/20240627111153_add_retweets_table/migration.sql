-- CreateTable
CREATE TABLE `retweets` (
    `user_id` INTEGER NOT NULL,
    `retweet_id` INTEGER NOT NULL,
    `retweeted_at` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),

    PRIMARY KEY (`user_id`, `retweet_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `retweets` ADD CONSTRAINT `retweets_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `retweets` ADD CONSTRAINT `retweets_retweet_id_fkey` FOREIGN KEY (`retweet_id`) REFERENCES `posts`(`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;
