ALTER TABLE `chatgpt_users` ADD `nickname` VARCHAR(30) NOT NULL COMMENT '昵称' AFTER `mobile`;
ALTER TABLE `chatgpt_rewards` ADD `exchange` VARCHAR(255) NOT NULL COMMENT '兑换详情（json）' AFTER `status`;
ALTER TABLE `chatgpt_api_keys` ADD `api_url` VARCHAR(255) NULL COMMENT 'API 地址' AFTER `last_used_at`, ADD `enabled` TINYINT(1) NULL COMMENT '是否启用' AFTER `api_url`;
ALTER TABLE `chatgpt_api_keys` DROP INDEX `value`;
ALTER TABLE `chatgpt_mj_jobs` ADD UNIQUE(`task_id`);
ALTER TABLE `chatgpt_api_keys` ADD `use_proxy` TINYINT(1) NULL COMMENT '是否使用代理访问' AFTER `enabled`;