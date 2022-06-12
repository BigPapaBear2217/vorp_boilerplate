DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
	`id` INT(11) NOT NULL AUTO_INCREMENT,
	`identifier` VARCHAR(50) NOT NULL,
	`name` VARCHAR(50) NULL DEFAULT NULL,
	PRIMARY KEY (`id`),
	INDEX `identifier` (`identifier`)
)
COLLATE='utf8mb4_general_ci'
ENGINE=InnoDB
AUTO_INCREMENT=2;

-- The following updates tables that were not included in the original table (Support for those who already have the tables above)
ALTER TABLE `test` ALTER COLUMN  `lastname` VARCHAR(50) NULL DEFAULT NULL; --Adding a new column
ALTER TABLE `test` ADD `name` VARCHAR(50) NULL DEFAULT NULL; -- Updating an existing column