-- Создадим триггер, запрещающий добавлять нового абонента без указания тарифов
CREATE DEFINER=`root`@`localhost` TRIGGER `customer_BEFORE_INSERT` BEFORE INSERT ON `customer` FOR EACH ROW BEGIN
 IF NEW.tariff_inet IS NULL AND NEW.tariff_phone IS NULL AND NEW.tariff_tv IS NULL THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Для абонента не указан ни один тариф';
    END IF;
END