-- /!\ WARNING /!\
-- This file must be renamed once we know the exact source and target versions.
-- /!\ WARNING /!\
ALTER TABLE `index_data` ADD COLUMN `rrd_retention` INT(11) DEFAULT NULL AFTER `to_delete`;

CREATE TABLE `log_traps_args` (
  `fk_log_traps` int(11) NOT NULL,
  `arg_number` int(11) DEFAULT NULL,
  `arg_oid` varchar(255) DEFAULT NULL,
  `arg_value` varchar(255) DEFAULT NULL,
  `trap_time` int(11) DEFAULT NULL,
  KEY `fk_log_traps` (`fk_log_traps`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;

CREATE TABLE `log_traps` (
  `trap_id` int(11) NOT NULL AUTO_INCREMENT,
  `trap_time` int(11) DEFAULT NULL,
  `timeout` enum('0','1') DEFAULT '0' DEFAULT NULL,
  `host_name` varchar(255) DEFAULT NULL,
  `ip_address` varchar(255) DEFAULT NULL,
  `agent_host_name` varchar(255) DEFAULT NULL,
  `agent_ip_address` varchar(255) DEFAULT NULL,
  `trap_oid` varchar(512) DEFAULT NULL,
  `trap_name` varchar(255) DEFAULT NULL,
  `vendor` varchar(255) DEFAULT NULL,
  `severity` varchar(255) DEFAULT NULL,
  `output_message` varchar(1024) DEFAULT NULL,
  KEY `trap_id` (`trap_id`),
  KEY `trap_time` (`trap_time`)
) ENGINE=INNODB DEFAULT CHARSET=utf8;