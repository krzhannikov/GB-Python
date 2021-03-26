CREATE TEMPORARY TABLE `tmp_dates` (
	`created_at` DATE
    );
INSERT `tmp_dates` (created_at) SELECT created_at FROM `dates` ORDER BY created_at DESC LIMIT 5;
DELETE FROM `dates` WHERE created_at NOT IN (SELECT created_at FROM `tmp_dates`);