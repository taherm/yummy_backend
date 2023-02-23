-- CreateTable
CREATE TABLE `Heading` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `title` VARCHAR(191) NOT NULL,
    `subtitle` VARCHAR(191) NOT NULL,

    UNIQUE INDEX `Heading_title_key`(`title`),
    UNIQUE INDEX `Heading_subtitle_key`(`subtitle`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
