# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _cache
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_cache`;
CREATE TABLE `_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户Id',
  `content` longtext COMMENT '缓存数据',
  `recordStatus` varchar(255) DEFAULT 'active',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB COMMENT = '缓存表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_constant`;
CREATE TABLE `_constant` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `constantKey` varchar(255) DEFAULT NULL,
  `constantType` varchar(255) DEFAULT NULL COMMENT '常量类型; object, array',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `constantValue` text COMMENT '常量内容; object, array',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 57 COMMENT = '常量表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _constant
# ------------------------------------------------------------

INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'version','object','版本','{ \"version\": \"1.0.5\", \"title\": \"1.0.5版本发布\", \"note\": \"新版本特性\"  }','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'gender','select','性别','[{\"value\": \"male\", \"text\": \"男\"}, {\"value\": \"female\", \"text\": \"女\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'classId','select','班号','[{\"value\": \"2021-01级-01班\", \"text\": \"2021-01级-01班\"}, {\"value\": \"2021-01级-02班\", \"text\": \"2021-01级-02班\"},\n {\"value\": \"2021-02级-01班\", \"text\": \"2021-02级-01班\"}, {\"value\": \"2021-02级-02班\", \"text\": \"2021-02级-02班\"},\n {\"value\": \"2021-03级-01班\", \"text\": \"2021-03级-01班\"}, {\"value\": \"2021-03级-02班\", \"text\": \"2021-03级-02班\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'level','select','年级','[{\"value\": \"01\", \"text\": \"一年级\"}, {\"value\": \"02\", \"text\": \"二年级\"}, {\"value\": \"03\", \"text\": \"三年级\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'icType','select','证件类型','[{\"value\": \"身份证\", \"text\": \"身份证\"}, {\"value\": \"护照\", \"text\": \"护照\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'enrollmentType','select','入学方式','[{\"value\": \"正常升学\", \"text\": \"正常升学\"}, {\"value\": \"借读\", \"text\": \"借读\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (54,'studentStatus','select','学生状态','[{\"value\": \"正常\", \"text\": \"正常\"}, {\"value\": \"退学\", \"text\": \"退学\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'classStatus','select','班级状态','[{\"value\": \"正常\", \"text\": \"正常\"}, {\"value\": \"毕业班\", \"text\": \"毕业班\"}]','insert',NULL,NULL,NULL);
INSERT INTO `_constant` (`id`,`constantKey`,`constantType`,`desc`,`constantValue`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (56,'classType','select','班级类型','[{\"value\": \"特长班\", \"text\": \"特长班\"}, {\"value\": \"义务班\", \"text\": \"义务班\"}]','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _file
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_file`;
CREATE TABLE `_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fileId` varchar(255) DEFAULT NULL COMMENT 'fileId',
  `fileDirectory` varchar(255) DEFAULT NULL COMMENT '文件保存路径;',
  `filename` varchar(255) DEFAULT NULL COMMENT '文件名;',
  `filenameStorage` varchar(255) DEFAULT NULL COMMENT '文件保存名',
  `downloadPath` varchar(255) DEFAULT NULL COMMENT '文件下载路径',
  `fileType` varchar(255) DEFAULT NULL COMMENT '文件类型;(预留字段)',
  `fileDesc` varchar(255) DEFAULT NULL COMMENT '文件描述',
  `binarySize` varchar(255) DEFAULT NULL COMMENT '文件二进制大小',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `fileId_index` (`fileId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 COMMENT = '文件表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _file
# ------------------------------------------------------------

INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (25,'1645373829233_835477','testFile','江湖JS-logo.png','1645373829233_835477_江湖JS-logo.png','/testFile/1645373829233_835477_江湖JS-logo.png',NULL,'江湖JS，logo2','50.66KB','jhUpdate','admin','admin','2022-02-21T00:19:05+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (26,'1645447085919_540071','testFile','IMG_0145.jpeg','1645447085919_540071_IMG_0145.jpeg','/testFile/1645447085919_540071_IMG_0145.jpeg',NULL,NULL,'88.96KB','jhInsert','admin','admin','2022-02-21T20:38:05+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (27,'1645447112949_468001','testFile','IMG_0145.jpeg','1645447112949_468001_IMG_0145.jpeg','/testFile/1645447112949_468001_IMG_0145.jpeg',NULL,NULL,'88.96KB','jhInsert','admin','admin','2022-02-21T20:38:32+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (28,'1645527307407_212833','testFile','函数.png','1645527307407_212833_函数.png','/testFile/1645527307407_212833_函数.png',NULL,NULL,'4.40KB','jhInsert','admin','admin','2022-02-22T18:55:07+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (29,'1645527554603_435224','testFile','函数.png','1645527554603_435224_函数.png','/testFile/1645527554603_435224_函数.png',NULL,'test','4.40KB','jhInsert','admin','admin','2022-02-22T18:59:14+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,'1645527567681_637478','testFile','数据库.png','1645527567681_637478_数据库.png','/testFile/1645527567681_637478_数据库.png',NULL,'dddd','5.11KB','jhInsert','admin','admin','2022-02-22T18:59:27+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'1645529792994_300405','testFile','圣经.png','1645529792994_300405_圣经.png','/testFile/1645529792994_300405_圣经.png',NULL,'111105','4.05KB','jhUpdate','admin','admin','2022-04-28T14:09:54+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'1651300342370_442150','testFile','恒星5.0.11.apk','1651300342370_442150_恒星5.0.11.apk','/testFile/1651300342370_442150_恒星5.0.11.apk',NULL,'恒星','24.01MB','jhInsert','admin','adminName','2022-04-30T14:32:22+08:00');
INSERT INTO `_file` (`id`,`fileId`,`fileDirectory`,`filename`,`filenameStorage`,`downloadPath`,`fileType`,`fileDesc`,`binarySize`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'1651301910506_958132','testFile','2.mp4','1651301910506_958132_2.mp4','/testFile/1651301910506_958132_2.mp4',NULL,'111222111','3.40MB','jhUpdate','admin','adminName','2022-08-26T21:59:50+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _group
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_group`;
CREATE TABLE `_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` varchar(255) NOT NULL COMMENT 'groupId',
  `groupName` varchar(255) DEFAULT NULL COMMENT '群组名',
  `groupDesc` varchar(255) DEFAULT NULL COMMENT '群组描述',
  `groupAvatar` varchar(255) DEFAULT NULL COMMENT '群logo',
  `groupExtend` varchar(1024) DEFAULT '{}' COMMENT '拓展字段; { groupNotice: ''xx'' }',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 COMMENT = '群组表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _group
# ------------------------------------------------------------

INSERT INTO `_group` (`id`,`groupId`,`groupName`,`groupDesc`,`groupAvatar`,`groupExtend`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'adminGroup','管理组','管理组',NULL,'{}','jhUpdate','admin','admin','2022-02-18T20:45:25+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_page`;
CREATE TABLE `_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'pageId',
  `pageName` varchar(255) DEFAULT NULL COMMENT 'page name',
  `pageFile` varchar(255) DEFAULT NULL COMMENT 'page文件指定; 默认使用pageId.html',
  `pageType` varchar(255) DEFAULT NULL COMMENT '页面类型; showInMenu, dynamicInMenu',
  `sort` varchar(255) DEFAULT NULL,
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 37 COMMENT = '页面表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _page
# ------------------------------------------------------------

INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'help','帮助','helpV3','common',NULL,'jhUpdate','admin','adminName','2022-05-02T15:08:43+08:00');
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'login','登陆','loginV3','common',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (8,'fileManagement','文件管理',NULL,'showInMenu','2','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,'resourcePageManagement','页面、接口',NULL,'showInMenu','3','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'userManagement','用户管理',NULL,'showInMenu','6','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'userGroupRolePageOrResourceManagement','权限规则管理',NULL,'showInMenu','5','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'userGroupRoleManagement','用户、组织、角色',NULL,'showInMenu','4','insert',NULL,NULL,NULL);
INSERT INTO `_page` (`id`,`pageId`,`pageName`,`pageFile`,`pageType`,`sort`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (36,'recordHistoryManagement','数据历史',NULL,'showInMenu','1','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _record_history
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_record_history`;
CREATE TABLE `_record_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `table` varchar(255) DEFAULT NULL COMMENT '表',
  `recordId` int(11) DEFAULT NULL COMMENT '数据在table中的主键id; recordContent.id',
  `recordContent` text NOT NULL COMMENT '数据JSON',
  `packageContent` text NOT NULL COMMENT '当时请求的 package JSON',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `index_record_id` (`recordId`),
  KEY `index_table_action` (`table`, `operation`)
) ENGINE = InnoDB AUTO_INCREMENT = 40 COMMENT = '数据历史表';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource`;
CREATE TABLE `_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accessControlTable` varchar(255) DEFAULT NULL COMMENT '数据规则控制表',
  `resourceHook` text COMMENT '[ "before": {"service": "xx", "serviceFunction": "xxx"}, "after": [] }',
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `actionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `resourceType` varchar(255) DEFAULT NULL COMMENT 'resource 类型; E.g: auth service sql',
  `appDataSchema` json DEFAULT NULL COMMENT 'appData 参数校验',
  `resourceData` json DEFAULT NULL COMMENT 'resource 数据; { "service": "auth", "serviceFunction": "passwordLogin" } or  { "table": "${tableName}", "action": "select", "whereCondition": ".where(function() {this.whereNot( { recordStatus: \\"active\\" })})" }',
  `requestDemo` json DEFAULT NULL COMMENT '请求Demo',
  `responseDemo` json DEFAULT NULL COMMENT '响应Demo',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 467 COMMENT = '请求资源表; 软删除未启用; resourceId=`${appId}.${pageId}.${actionId}`';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _resource
# ------------------------------------------------------------

INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (101,NULL,NULL,'allPage','getChunkInfo','✅ 文件分片下载-获取分片信息','service','{}','{\"service\": \"file\", \"serviceFunction\": \"getChunkInfo\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"allPage\", \"actionId\": \"getChunkInfo\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"downloadPath\": \"/testFile/1651300342370_442150_Ã¦ÂÂÃ¦ÂÂ5.0.11.apk\"}}, \"packageId\": \"1651301467895_7807757\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"hash\": \"3cb636e0662ba1c9a63951f6ff8a2865\", \"appId\": \"demo_advanced\", \"total\": 9, \"pageId\": \"allPage\", \"actionId\": \"getChunkInfo\", \"fileSize\": 25181025, \"chunkSize\": 3145728, \"resultData\": {\"hash\": \"3cb636e0662ba1c9a63951f6ff8a2865\", \"total\": 9, \"fileSize\": 25181025, \"chunkSize\": 3145728}}, \"packageId\": \"1651301467895_7807757\", \"timestamp\": \"2022-04-30T14:51:09+08:00\", \"packageType\": \"httpResponse\"}','jhUpdate','admin','adminName','2022-05-03T12:46:39+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (102,NULL,NULL,'allPage','uploadFileDone','✅ 文件分片上传-所有分片上传完毕','service','{}','{\"service\": \"file\", \"serviceFunction\": \"uploadFileDone\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"allPage\", \"actionId\": \"uploadFileDone\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"hash\": \"de9e9d56efa5639f7f632715b011299d\", \"total\": 1, \"fileDesc\": \"111\", \"filename\": \"3ab30c785db2ba418377082e51c1a326.jpeg\", \"chunkSize\": 3145728, \"fileDirectory\": \"testFile\"}}, \"packageId\": \"1661522370376_7294432\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"fileId\": \"1661522371729_122862\", \"pageId\": \"allPage\", \"actionId\": \"uploadFileDone\", \"fileDesc\": \"111\", \"fileType\": \"image/jpeg\", \"filename\": \"3ab30c785db2ba418377082e51c1a326.jpeg\", \"binarySize\": \"198.72\", \"resultData\": {\"fileId\": \"1661522371729_122862\", \"fileDesc\": \"111\", \"fileType\": \"image/jpeg\", \"filename\": \"3ab30c785db2ba418377082e51c1a326.jpeg\", \"binarySize\": \"198.72\", \"downloadTip\": \"https://xxx.xxx.xxx/${downloadBasePath}${downloadPath}\", \"downloadPath\": \"/testFile/1661522371729_122862_3ab30c785db2ba418377082e51c1a326.jpeg\", \"fileDirectory\": \"testFile\", \"filenameStorage\": \"1661522371729_122862_3ab30c785db2ba418377082e51c1a326.jpeg\", \"downloadBasePath\": \"/jianghujs-advanced/upload\"}, \"downloadTip\": \"https://xxx.xxx.xxx/${downloadBasePath}${downloadPath}\", \"downloadPath\": \"/testFile/1661522371729_122862_3ab30c785db2ba418377082e51c1a326.jpeg\", \"fileDirectory\": \"testFile\", \"filenameStorage\": \"1661522371729_122862_3ab30c785db2ba418377082e51c1a326.jpeg\", \"downloadBasePath\": \"/jianghujs-advanced/upload\"}, \"packageId\": \"1661522370376_7294432\", \"timestamp\": \"2022-08-26T21:59:32+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T21:59:32+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (105,NULL,NULL,'allPage','httpUploadByStream','✅ 文件分片上传-http文件流','service','{}','{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"allPage\", \"actionId\": \"httpUploadByStream\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"hash\": \"de9e9d56efa5639f7f632715b011299d\", \"total\": 1, \"chunFile\": {}, \"filename\": \"3ab30c785db2ba418377082e51c1a326.jpeg\", \"chunkSize\": 3145728, \"indexString\": \"0000\"}}, \"packageId\": \"1661522368990_5555446\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"allPage\", \"actionId\": \"httpUploadByStream\"}, \"packageId\": \"1661522368990_5555446\", \"timestamp\": \"2022-08-26T21:59:30+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T21:59:30+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (106,NULL,NULL,'allPage','httpUploadByBase64','✅ 文件分片上传-http base64','service','{}','{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"allPage\", \"actionId\": \"httpUploadByBase64\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"hash\": \"93a29a14e4b922cc102811b8daa4793b\", \"total\": 1, \"chunFile\": {}, \"filename\": \"answer-time-right-toast.png\", \"chunkSize\": 3145728, \"fileBase64\": null, \"indexString\": \"0000\"}}, \"packageId\": \"1651128190181_2258419\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"allPage\", \"actionId\": \"httpUploadByBase64\"}, \"packageId\": \"1651128190181_2258419\", \"timestamp\": \"2022-04-28T14:43:10+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-28T14:43:10+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (112,NULL,NULL,'allPage','httpDownloadByBase64','✅ 文件分片下载-http base64','service','{}','{\"service\": \"file\", \"serviceFunction\": \"downloadFileChunkByBase64\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"allPage\", \"actionId\": \"httpDownloadByBase64\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"hash\": \"3cb636e0662ba1c9a63951f6ff8a2865\", \"index\": 8, \"total\": 9, \"chunkSize\": 3145728, \"downloadPath\": \"/testFile/1651300342370_442150_Ã¦ÂÂÃ¦ÂÂ5.0.11.apk\"}}, \"packageId\": \"1651301556570_8673061\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651301556570_8673061\", \"timestamp\": \"2022-04-30T14:52:37+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-30T14:52:38+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (231,NULL,NULL,'login','passwordLogin','✅登陆','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"passwordLogin\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"login\", \"actionId\": \"passwordLogin\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"userId\": \"admin\", \"deviceId\": \"127.0.0.1:7003_Mac.10.15.7_4fcd20cd_chrome\", \"password\": \"123456\"}}, \"packageId\": \"1661740482240_8336780\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"login\", \"userId\": \"admin\", \"actionId\": \"passwordLogin\", \"deviceId\": \"127.0.0.1:7003_Mac.10.15.7_4fcd20cd_chrome\", \"authToken\": \"uwfztxzm3oKvJ_FHIPkceZAHxP1yQ_cEveZ5\", \"resultData\": {\"userId\": \"admin\", \"deviceId\": \"127.0.0.1:7003_Mac.10.15.7_4fcd20cd_chrome\", \"authToken\": \"uwfztxzm3oKvJ_FHIPkceZAHxP1yQ_cEveZ5\"}}, \"packageId\": \"1661740482240_8336780\", \"timestamp\": \"2022-08-29T10:34:43+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T10:34:43+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (251,NULL,NULL,'allPage','logout','✅登出','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"logout\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"allPage\", \"actionId\": \"logout\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661508392215_8115072\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"allPage\", \"actionId\": \"logout\", \"resultData\": {}}, \"packageId\": \"1661508392215_8115072\", \"timestamp\": \"2022-08-26T18:06:33+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T18:06:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (252,NULL,NULL,'allPage','refreshToken','✅刷新authToken','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"refreshToken\"}','{}','{}','insert',NULL,NULL,NULL);
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (253,NULL,NULL,'allPage','userInfo','✅获取用户信息','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"userInfo\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"allPage\", \"actionId\": \"userInfo\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661742644396_7809240\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661742644396_7809240\", \"timestamp\": \"2022-08-29T11:10:45+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T11:10:46+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (254,NULL,NULL,'resetUserPassword','resetPassword','✅重置密码','service',NULL,'{\"service\": \"user\", \"serviceFunction\": \"resetPassword\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"allPage\", \"actionId\": \"resetPassword\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"newPassword\": \"123456\", \"oldPassword\": \"123456789\"}}, \"packageId\": \"1650871871621_9868670\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"allPage\", \"actionId\": \"resetPassword\", \"resultData\": {}}, \"packageId\": \"1650871871621_9868670\", \"timestamp\": \"2022-04-25T15:31:12+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-25T15:31:12+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (256,NULL,NULL,'allPage','uploadByStream','✅文件上传(文件流)','service',NULL,'{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByStream\"}','{}','{}','update',NULL,NULL,'2022-02-22T19:36:33+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (257,NULL,NULL,'allPage','uploadByBase64','✅文件上传(base64)','service',NULL,'{\"service\": \"file\", \"serviceFunction\": \"uploadFileChunkByBase64\"}','{}','{}','update',NULL,NULL,'2022-02-22T18:59:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (273,NULL,NULL,'fileManagement','selectItemList','✅文件管理-查询列表','sql',NULL,'{\"table\": \"_file\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"fileManagement\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661524247273_3569524\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661524247273_3569524\", \"timestamp\": \"2022-08-26T22:30:48+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T22:30:49+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (275,NULL,NULL,'fileManagement','updateItem','✅文件管理-更新成员','sql',NULL,'{\"table\": \"_file\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 35}, \"pageId\": \"fileManagement\", \"actionId\": \"updateItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"fileDesc\": \"111222111\"}}, \"packageId\": \"1661522389589_7921303\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"fileManagement\", \"actionId\": \"updateItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661522389589_7921303\", \"timestamp\": \"2022-08-26T21:59:51+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T21:59:51+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (276,NULL,NULL,'fileManagement','deleteItem','✅文件管理-删除信息','sql',NULL,'{\"table\": \"_file\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"fileId\": \"1661522371729_122862\"}, \"pageId\": \"fileManagement\", \"actionId\": \"deleteItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661522380541_9992328\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"fileManagement\", \"actionId\": \"deleteItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661522380541_9992328\", \"timestamp\": \"2022-08-26T21:59:42+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T21:59:42+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (280,NULL,NULL,'resourcePageManagement','selectItemListOfResource','✅resource管理-查询成员','sql',NULL,'{\"table\": \"_resource\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"selectItemListOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661522776999_2871090\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661522776999_2871090\", \"timestamp\": \"2022-08-26T22:06:18+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T22:06:18+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (281,NULL,NULL,'resourcePageManagement','insertItemOfResource','✅resource管理-新增成员','sql',NULL,'{\"table\": \"_resource\", \"operation\": \"jhInsert\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"insertItemOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"pageId\": \"test\"}}, \"packageId\": \"1661320940624_1812901\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [467], \"appId\": \"jianghujs-advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"insertItemOfResource\", \"resultData\": {\"rows\": [467]}}, \"packageId\": \"1661320940624_1812901\", \"timestamp\": \"2022-08-24T14:02:22+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T14:02:22+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (282,NULL,NULL,'resourcePageManagement','deleteItemOfResource','✅resource管理-删除成员','sql',NULL,'{\"table\": \"_resource\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 467}, \"pageId\": \"resourcePageManagement\", \"actionId\": \"deleteItemOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661320973555_6580310\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"deleteItemOfResource\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661320973555_6580310\", \"timestamp\": \"2022-08-24T14:02:55+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T14:02:55+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (283,NULL,NULL,'resourcePageManagement','updateItemOfResource','✅resource管理-更新成员','sql',NULL,'{\"table\": \"_resource\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 467}, \"pageId\": \"resourcePageManagement\", \"actionId\": \"updateItemOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"desc\": null, \"pageId\": \"test\", \"actionId\": null, \"operation\": \"jhInsert\", \"operationAt\": \"2022-08-24T14:02:22+08:00\", \"requestDemo\": null, \"resourceData\": null, \"resourceHook\": null, \"resourceType\": null, \"responseDemo\": null, \"appDataSchema\": null, \"operationByUser\": \"adminName\", \"operationByUserId\": \"admin\", \"accessControlTable\": null}}, \"packageId\": \"1661320966223_6713552\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"updateItemOfResource\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661320966223_6713552\", \"timestamp\": \"2022-08-24T14:02:47+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T14:02:47+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (322,NULL,NULL,'resourcePageManagement','selectItemListOfPage','✅page管理-查询成员','sql',NULL,'{\"table\": \"_page\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"selectItemListOfPage\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661522783845_2639415\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661522783845_2639415\", \"timestamp\": \"2022-08-26T22:06:25+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T22:06:25+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (323,NULL,NULL,'resourcePageManagement','insertItemOfPage','✅page管理-新增成员','sql',NULL,'{\"table\": \"_page\", \"operation\": \"jhInsert\"}','{}','{}','update',NULL,NULL,'2022-02-18T21:03:15+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (324,NULL,NULL,'resourcePageManagement','deleteItemOfPage','✅page管理-删除成员','sql',NULL,'{\"table\": \"_page\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"where\": {\"id\": 38}, \"pageId\": \"resourcePageManagement\", \"actionId\": \"deleteItemOfPage\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651147479074_1117245\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"demo_advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"deleteItemOfPage\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651147479074_1117245\", \"timestamp\": \"2022-04-28T20:04:40+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-28T20:04:40+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (325,NULL,NULL,'resourcePageManagement','updateItemOfPage','✅page管理-更新成员','sql',NULL,'{\"table\": \"_page\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"where\": {\"id\": 2}, \"pageId\": \"resourcePageManagement\", \"actionId\": \"updateItemOfPage\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {\"sort\": null, \"pageId\": \"help\", \"pageName\": \"Ã¥Â¸Â®Ã¥ÂÂ©\", \"pageType\": \"common\", \"operation\": \"jhUpdate\", \"operationAt\": \"2022-05-02T15:08:37+08:00\", \"operationByUser\": \"adminName\", \"operationByUserId\": \"admin\"}}, \"packageId\": \"1651475322870_1623926\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"demo_advanced\", \"pageId\": \"resourcePageManagement\", \"actionId\": \"updateItemOfPage\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1651475322870_1623926\", \"timestamp\": \"2022-05-02T15:08:43+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-05-02T15:08:43+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (335,NULL,NULL,'userGroupRolePageOrResourceManagement','insertItemOfResource','✅权限规则-协议管理-插入信息','sql',NULL,'{\"table\": \"_user_group_role_resource\", \"operation\": \"jhInsert\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"insertItemOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"desc\": \"test\", \"role\": \"*\", \"user\": \"*\", \"group\": \"*\", \"resource\": \"*\", \"allowOrDeny\": \"allow\"}}, \"packageId\": \"1661327594814_8655190\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [75], \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"insertItemOfResource\", \"resultData\": {\"rows\": [75]}}, \"packageId\": \"1661327594814_8655190\", \"timestamp\": \"2022-08-24T15:53:16+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:53:16+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (336,NULL,NULL,'userGroupRolePageOrResourceManagement','selectItemListOfResource','✅权限规则-协议管理-查询数据列表','sql',NULL,'{\"table\": \"_user_group_role_resource\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectItemListOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661524243385_1417800\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661524243385_1417800\", \"timestamp\": \"2022-08-26T22:30:44+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T22:30:44+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (337,NULL,NULL,'userGroupRolePageOrResourceManagement','updateItemOfResource','✅权限规则-协议管理-更新数据','sql',NULL,'{\"table\": \"_user_group_role_resource\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 75}, \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"updateItemOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"desc\": \"testtt\", \"role\": \"*\", \"user\": \"*\", \"group\": \"*\", \"resource\": \"*\", \"operation\": \"jhInsert\", \"allowOrDeny\": \"allow\", \"operationAt\": \"2022-08-24T15:53:16+08:00\", \"operationByUser\": \"adminName\", \"operationByUserId\": \"admin\"}}, \"packageId\": \"1661327613171_6210902\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"updateItemOfResource\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661327613171_6210902\", \"timestamp\": \"2022-08-24T15:53:34+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:53:34+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (338,NULL,NULL,'userGroupRolePageOrResourceManagement','deleteItemOfResource','✅权限规则-协议管理-删除数据','sql',NULL,'{\"table\": \"_user_group_role_resource\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 75}, \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"deleteItemOfResource\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661327619575_4206028\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"deleteItemOfResource\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661327619575_4206028\", \"timestamp\": \"2022-08-24T15:53:40+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:53:40+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (339,NULL,NULL,'userGroupRolePageOrResourceManagement','insertItemOfPage','✅权限规则-页面管理-插入信息','sql',NULL,'{\"table\": \"_user_group_role_page\", \"operation\": \"jhInsert\"}','{}','{}','update',NULL,NULL,'2022-02-18T20:42:26+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (340,NULL,NULL,'userGroupRolePageOrResourceManagement','selectItemListOfPage','✅权限规则-页面管理-查询数据列表','sql',NULL,'{\"table\": \"_user_group_role_page\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectItemListOfPage\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661524021036_6584246\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661524021036_6584246\", \"timestamp\": \"2022-08-26T22:27:02+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T22:27:02+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (341,NULL,NULL,'userGroupRolePageOrResourceManagement','updateItemOfPage','✅权限规则-页面管理-更新数据','sql',NULL,'{\"table\": \"_user_group_role_page\", \"operation\": \"jhUpdate\"}','{}','{}','update',NULL,NULL,'2022-02-18T20:42:44+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (342,NULL,NULL,'userGroupRolePageOrResourceManagement','deleteItemOfPage','✅权限规则-页面管理-删除数据','sql',NULL,'{\"table\": \"_user_group_role_page\", \"operation\": \"jhDelete\"}','{}','{}','update',NULL,NULL,'2022-02-18T20:42:49+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (343,NULL,NULL,'userManagement','resetUserPassword','✅用户管理-修改密码','service',NULL,'{\"service\": \"userManagement\", \"serviceFunction\": \"resetUserPassword\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"resetUserPassword\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"userId\": \"111\", \"clearTextPassword\": \"123456\"}}, \"packageId\": \"1661522329676_4854607\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"resetUserPassword\", \"resultData\": {}}, \"packageId\": \"1661522329676_4854607\", \"timestamp\": \"2022-08-26T21:58:51+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T21:58:51+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (344,NULL,NULL,'userManagement','updateItem','✅用户管理-更新用户','sql',NULL,'{\"table\": \"_user\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"userId\": \"222\"}, \"pageId\": \"userManagement\", \"actionId\": \"updateItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"userStatus\": \"active\"}}, \"packageId\": \"1661328779027_2866381\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"updateItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661328779027_2866381\", \"timestamp\": \"2022-08-24T16:13:00+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T16:13:00+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (346,NULL,'','recordHistoryManagement','selectOnUseItemListByTable','✅获取指定表的使用中的数据列表','service',NULL,'{\"service\": \"recordHistory\", \"serviceFunction\": \"selectOnUseItemListByTable\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"recordHistoryManagement\", \"actionId\": \"selectOnUseItemListByTable\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"table\": \"_file\"}}, \"packageId\": \"1661522403275_8746845\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661522403275_8746845\", \"timestamp\": \"2022-08-26T22:00:04+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T22:00:05+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (347,NULL,NULL,'recordHistoryManagement','selectDeletedItemListByTable','✅获取指定表的已删除的数据列表','service',NULL,'{\"service\": \"recordHistory\", \"serviceFunction\": \"selectDeletedItemListByTable\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"recordHistoryManagement\", \"actionId\": \"selectDeletedItemListByTable\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"table\": \"_user\"}}, \"packageId\": \"1661313986967_6096055\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [], \"appId\": \"jianghujs-advanced\", \"count\": 0, \"pageId\": \"recordHistoryManagement\", \"actionId\": \"selectDeletedItemListByTable\", \"resultData\": {\"rows\": [], \"count\": 0}}, \"packageId\": \"1661313986967_6096055\", \"timestamp\": \"2022-08-24T12:06:28+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T12:06:28+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (348,NULL,NULL,'recordHistoryManagement','selectItemList','✅获取数据历史表','sql',NULL,'{\"table\": \"_record_history\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"table\": \"_file\", \"recordId\": 35}, \"pageId\": \"recordHistoryManagement\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"id\"}], \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661522407278_7928481\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661522407278_7928481\", \"timestamp\": \"2022-08-26T22:00:09+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T22:00:09+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (351,NULL,NULL,'recordHistoryManagement','restoreRecordByRecordHistory','✅还原数据','service',NULL,'{\"service\": \"recordHistory\", \"serviceFunction\": \"restoreRecordByRecordHistory\"}','{}','{}','update',NULL,NULL,'2022-02-21T00:47:08+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (352,NULL,NULL,'userGroupRolePageOrResourceManagement','selectGroup','✅权限规则管理-查询群组','sql',NULL,'{\"table\": \"_group\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectGroup\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651132653218_7193722\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [{\"id\": 1, \"groupId\": \"adminGroup\", \"groupDesc\": \"Ã§Â®Â¡Ã§ÂÂÃ§Â»Â\", \"groupName\": \"Ã§Â®Â¡Ã§ÂÂÃ§Â»Â\", \"operation\": \"jhUpdate\", \"groupAvatar\": null, \"groupExtend\": \"{}\", \"operationAt\": \"2022-02-18T20:45:25+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}], \"appId\": \"demo_advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectGroup\", \"resultData\": {\"rows\": [{\"id\": 1, \"groupId\": \"adminGroup\", \"groupDesc\": \"Ã§Â®Â¡Ã§ÂÂÃ§Â»Â\", \"groupName\": \"Ã§Â®Â¡Ã§ÂÂÃ§Â»Â\", \"operation\": \"jhUpdate\", \"groupAvatar\": null, \"groupExtend\": \"{}\", \"operationAt\": \"2022-02-18T20:45:25+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}]}}, \"packageId\": \"1651132653218_7193722\", \"timestamp\": \"2022-04-28T15:57:34+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-28T15:57:34+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (353,NULL,NULL,'userGroupRolePageOrResourceManagement','selectRole','✅权限规则管理-查询角色','sql',NULL,'{\"table\": \"_role\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectRole\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651132653218_5843860\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [{\"id\": 1, \"roleId\": \"appAdmin\", \"roleDesc\": null, \"roleName\": \"Ã§Â³Â»Ã§Â»ÂÃ§Â®Â¡Ã§ÂÂÃ¥ÂÂ\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 2, \"roleId\": \"teacher\", \"roleDesc\": null, \"roleName\": \"Ã¨ÂÂÃ¥Â¸Â\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 3, \"roleId\": \"student\", \"roleDesc\": null, \"roleName\": \"Ã¥Â­Â¦Ã§ÂÂ\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}], \"appId\": \"demo_advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectRole\", \"resultData\": {\"rows\": [{\"id\": 1, \"roleId\": \"appAdmin\", \"roleDesc\": null, \"roleName\": \"Ã§Â³Â»Ã§Â»ÂÃ§Â®Â¡Ã§ÂÂÃ¥ÂÂ\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 2, \"roleId\": \"teacher\", \"roleDesc\": null, \"roleName\": \"Ã¨ÂÂÃ¥Â¸Â\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 3, \"roleId\": \"student\", \"roleDesc\": null, \"roleName\": \"Ã¥Â­Â¦Ã§ÂÂ\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}]}}, \"packageId\": \"1651132653218_5843860\", \"timestamp\": \"2022-04-28T15:57:34+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-28T15:57:34+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (354,NULL,NULL,'userManagement','selectItemList','✅用户管理-查询信息','sql',NULL,'{\"table\": \"_user\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {}, \"pageId\": \"userManagement\", \"orderBy\": [{\"order\": \"desc\", \"column\": \"operationAt\"}], \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661740485519_9032670\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661740485519_9032670\", \"timestamp\": \"2022-08-29T10:34:47+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T10:34:47+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (355,NULL,NULL,'userManagement','insertItem','✅用户管理-查询信息','service',NULL,'{\"service\": \"userManagement\", \"serviceFunction\": \"addUser\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"insertItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"userId\": \"222\", \"userType\": \"common\", \"username\": \"test111\", \"userStatus\": \"active\", \"clearTextPassword\": \"123456\"}}, \"packageId\": \"1661328707480_7020592\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"insertItem\", \"resultData\": {}}, \"packageId\": \"1661328707480_7020592\", \"timestamp\": \"2022-08-24T16:11:50+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T16:11:50+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (356,NULL,NULL,'userManagement','resetUserPassword','✅用户管理-修改密码','service',NULL,'{\"service\": \"userManagement\", \"serviceFunction\": \"resetUserPassword\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"resetUserPassword\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"userId\": \"111\", \"clearTextPassword\": \"123456\"}}, \"packageId\": \"1661522329676_4854607\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"resetUserPassword\", \"resultData\": {}}, \"packageId\": \"1661522329676_4854607\", \"timestamp\": \"2022-08-26T21:58:51+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-26T21:58:51+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (357,NULL,NULL,'userManagement','updateItem','✅用户管理-更新用户','sql',NULL,'{\"table\": \"_user\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"userId\": \"222\"}, \"pageId\": \"userManagement\", \"actionId\": \"updateItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"userStatus\": \"active\"}}, \"packageId\": \"1661328779027_2866381\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userManagement\", \"actionId\": \"updateItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661328779027_2866381\", \"timestamp\": \"2022-08-24T16:13:00+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T16:13:00+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (367,NULL,NULL,'userGroupRolePageOrResourceManagement','selectResourceList','✅权限规则-查询协议列表','sql',NULL,'{\"table\": \"_resource\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectResourceList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651132653218_4465402\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651132653218_4465402\", \"timestamp\": \"2022-04-28T15:57:34+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-28T15:57:34+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (368,NULL,NULL,'userGroupRolePageOrResourceManagement','selectPageList','✅权限规则-查询页面列表','sql',NULL,'{\"table\": \"_page\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"demo_advanced\", \"pageId\": \"userGroupRolePageOrResourceManagement\", \"actionId\": \"selectPageList\", \"userAgent\": \"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/100.0.4896.127 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1651132653218_4381466\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1651132653218_4381466\", \"timestamp\": \"2022-04-28T15:57:34+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-04-28T15:57:34+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (451,NULL,NULL,'userGroupRoleManagement','selectItemList','✅权限管理页-查询已配置权限列表','sql',NULL,'{\"table\": \"_user_group_role\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"userId\": \"001\"}, \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"selectItemList\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661742667484_3906327\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [{\"id\": 597, \"roleId\": \"teacher\", \"userId\": \"001\", \"groupId\": \"adminGroup\", \"operation\": \"jhInsert\", \"operationAt\": \"2022-02-21T00:41:54+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}, {\"id\": 598, \"roleId\": \"appAdmin\", \"userId\": \"001\", \"groupId\": \"adminGroup\", \"operation\": \"jhInsert\", \"operationAt\": \"2022-04-25T14:39:44+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}], \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"selectItemList\", \"resultData\": {\"rows\": [{\"id\": 597, \"roleId\": \"teacher\", \"userId\": \"001\", \"groupId\": \"adminGroup\", \"operation\": \"jhInsert\", \"operationAt\": \"2022-02-21T00:41:54+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}, {\"id\": 598, \"roleId\": \"appAdmin\", \"userId\": \"001\", \"groupId\": \"adminGroup\", \"operation\": \"jhInsert\", \"operationAt\": \"2022-04-25T14:39:44+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}]}}, \"packageId\": \"1661742667484_3906327\", \"timestamp\": \"2022-08-29T11:11:09+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T11:11:09+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (452,NULL,NULL,'userGroupRoleManagement','selectUser','✅权限管理页-查询用户','sql',NULL,'{\"table\": \"_user\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"selectUser\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661742675064_8115829\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"packageId\": \"1661742675064_8115829\", \"timestamp\": \"2022-08-29T11:11:16+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T11:11:16+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (453,NULL,NULL,'userGroupRoleManagement','selectGroup','✅权限管理页-查询群组','sql',NULL,'{\"table\": \"_group\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"selectGroup\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661742648232_2622680\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [{\"id\": 1, \"groupId\": \"adminGroup\", \"groupDesc\": \"ç®¡çç»\", \"groupName\": \"ç®¡çç»\", \"operation\": \"jhUpdate\", \"groupAvatar\": null, \"groupExtend\": \"{}\", \"operationAt\": \"2022-02-18T20:45:25+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}], \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"selectGroup\", \"resultData\": {\"rows\": [{\"id\": 1, \"groupId\": \"adminGroup\", \"groupDesc\": \"ç®¡çç»\", \"groupName\": \"ç®¡çç»\", \"operation\": \"jhUpdate\", \"groupAvatar\": null, \"groupExtend\": \"{}\", \"operationAt\": \"2022-02-18T20:45:25+08:00\", \"operationByUser\": \"admin\", \"operationByUserId\": \"admin\"}]}}, \"packageId\": \"1661742648232_2622680\", \"timestamp\": \"2022-08-29T11:10:49+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T11:10:49+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (454,NULL,NULL,'userGroupRoleManagement','insertItem','✅权限管理页-创建权限配置','sql',NULL,'{\"table\": \"_user_group_role\", \"operation\": \"jhInsert\", \"whereCondition\": \"\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"insertItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"roleId\": \"teacher\", \"userId\": \"111\", \"groupId\": \"adminGroup\"}}, \"packageId\": \"1661325618225_7068377\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [599], \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"insertItem\", \"resultData\": {\"rows\": [599]}}, \"packageId\": \"1661325618225_7068377\", \"timestamp\": \"2022-08-24T15:20:19+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:20:19+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (455,NULL,NULL,'userGroupRoleManagement','updateItem','✅权限管理页-更新权限配置','sql',NULL,'{\"table\": \"_user_group_role\", \"operation\": \"jhUpdate\", \"whereParamsCondition\": \".where(function() {this.where(whereParams)})\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 568}, \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"updateItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"roleId\": \"appAdmin\", \"userId\": \"admin\", \"groupId\": \"adminGroup\"}}, \"packageId\": \"1661325639534_3678068\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"updateItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661325639534_3678068\", \"timestamp\": \"2022-08-24T15:20:41+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:20:41+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (456,NULL,NULL,'userGroupRoleManagement','deleteItem','✅权限管理页-删除权限配置','sql',NULL,'{\"table\": \"_user_group_role\", \"operation\": \"jhDelete\", \"whereParamsCondition\": \".where(function() {this.where(whereParams)})\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 599}, \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"deleteItem\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661326624539_2644034\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"deleteItem\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661326624539_2644034\", \"timestamp\": \"2022-08-24T15:37:05+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:37:05+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (457,NULL,NULL,'userGroupRoleManagement','selectRole','✅权限管理页-查询角色','sql',NULL,'{\"table\": \"_role\", \"operation\": \"select\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"selectRole\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661742648232_9794976\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": [{\"id\": 1, \"roleId\": \"appAdmin\", \"roleDesc\": null, \"roleName\": \"ç³»ç»ç®¡çå\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 2, \"roleId\": \"teacher\", \"roleDesc\": null, \"roleName\": \"èå¸\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 3, \"roleId\": \"student\", \"roleDesc\": null, \"roleName\": \"å­¦ç\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}], \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"selectRole\", \"resultData\": {\"rows\": [{\"id\": 1, \"roleId\": \"appAdmin\", \"roleDesc\": null, \"roleName\": \"ç³»ç»ç®¡çå\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 2, \"roleId\": \"teacher\", \"roleDesc\": null, \"roleName\": \"èå¸\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}, {\"id\": 3, \"roleId\": \"student\", \"roleDesc\": null, \"roleName\": \"å­¦ç\", \"operation\": null, \"operationAt\": null, \"operationByUser\": null, \"operationByUserId\": null}]}}, \"packageId\": \"1661742648232_9794976\", \"timestamp\": \"2022-08-29T11:10:49+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T11:10:49+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (458,NULL,NULL,'userGroupRoleManagement','insertUser','✅权限管理页-添加用户','service',NULL,'{\"service\": \"userManagement\", \"serviceFunction\": \"addUser\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"insertUser\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {\"userId\": \"222\", \"username\": \"testbb\", \"clearTextPassword\": \"123456\"}}, \"packageId\": \"1661326692219_3469521\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"insertUser\", \"resultData\": {}}, \"packageId\": \"1661326692219_3469521\", \"timestamp\": \"2022-08-24T15:38:15+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:38:15+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (459,NULL,NULL,'userGroupRoleManagement','insertGroup','✅权限管理页-添加群组','sql',NULL,'{\"table\": \"_group\", \"operation\": \"jhInsert\"}','{}','{}','update',NULL,NULL,'2022-02-18T19:55:57+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (460,NULL,NULL,'userGroupRoleManagement','insertRole','✅权限管理页-添加角色','sql',NULL,'{\"table\": \"_role\", \"operation\": \"jhInsert\"}','{}','{}','update',NULL,NULL,'2022-02-18T20:00:37+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (461,NULL,'{ \"before\": [], \"after\": [{ \"service\": \"userGroupRoleManagement\", \"serviceFunction\": \"deleteUserGroupRole\" }] }','userGroupRoleManagement','deleteUser','✅权限管理页-删除用户','sql',NULL,'{\"table\": \"_user\", \"operation\": \"jhDelete\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"userId\": \"333\"}, \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"deleteUser\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/103.0.0.0 Safari/537.36\", \"actionData\": {}}, \"packageId\": \"1661326775004_8776430\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"deleteUser\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661326775004_8776430\", \"timestamp\": \"2022-08-24T15:39:36+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-24T15:39:36+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (462,NULL,'{ \"before\": [], \"after\": [{ \"service\": \"userGroupRoleManagement\", \"serviceFunction\": \"deleteUserGroupRole\" }] }','userGroupRoleManagement','deleteGroup','✅权限管理页-删除群组','sql',NULL,'{\"table\": \"_group\", \"operation\": \"jhDelete\"}','{}','{}','update',NULL,NULL,'2022-02-18T19:56:11+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (463,NULL,'{ \"before\": [], \"after\": [{ \"service\": \"userGroupRoleManagement\", \"serviceFunction\": \"deleteUserGroupRole\" }] }','userGroupRoleManagement','deleteRole','✅权限管理页-删除角色','sql',NULL,'{\"table\": \"_role\", \"operation\": \"jhDelete\"}','{}','{}','update',NULL,NULL,'2022-02-18T20:04:23+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (464,NULL,NULL,'userGroupRoleManagement','updateUser','✅权限管理页-更新用户','sql',NULL,'{\"table\": \"_user\", \"operation\": \"jhUpdate\"}','{\"appData\": {\"appId\": \"jianghujs-advanced\", \"where\": {\"id\": 68}, \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"updateUser\", \"userAgent\": \"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/104.0.0.0 Safari/537.36\", \"actionData\": {\"config\": null, \"md5Salt\": \"ZsPkQcHpYZQT\", \"password\": \"b9e96d6ebc84dd51f2bd1fb56a79d8cb\", \"userType\": \"common\", \"username\": \"å°å\", \"operation\": \"jhUpdate\", \"idSequence\": \"26260000\", \"userStatus\": \"active\", \"operationAt\": \"2022-08-29T11:03:34+08:00\", \"initPassword\": null, \"operationByUser\": \"adminName\", \"clearTextPassword\": \"1234567\", \"operationByUserId\": \"admin\"}}, \"packageId\": \"1661742672716_9671318\", \"packageType\": \"httpRequest\"}','{\"status\": \"success\", \"appData\": {\"rows\": 1, \"appId\": \"jianghujs-advanced\", \"pageId\": \"userGroupRoleManagement\", \"actionId\": \"updateUser\", \"resultData\": {\"rows\": 1}}, \"packageId\": \"1661742672716_9671318\", \"timestamp\": \"2022-08-29T11:11:14+08:00\", \"packageType\": \"httpResponse\"}','update',NULL,NULL,'2022-08-29T11:11:14+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (465,NULL,NULL,'userGroupRoleManagement','updateGroup','✅权限管理页-更新群组','sql',NULL,'{\"table\": \"_group\", \"operation\": \"jhUpdate\"}','{}','{}','update',NULL,NULL,'2022-02-18T20:45:26+08:00');
INSERT INTO `_resource` (`id`,`accessControlTable`,`resourceHook`,`pageId`,`actionId`,`desc`,`resourceType`,`appDataSchema`,`resourceData`,`requestDemo`,`responseDemo`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (466,NULL,NULL,'userGroupRoleManagement','updateRole','✅权限管理页-更新角色','sql',NULL,'{\"table\": \"_role\", \"operation\": \"jhUpdate\"}','{}','{}','update',NULL,NULL,'2022-02-18T19:56:37+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _resource_request_log
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_resource_request_log`;
CREATE TABLE `_resource_request_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resourceId` varchar(255) DEFAULT NULL COMMENT 'resource id;',
  `packageId` varchar(255) DEFAULT NULL COMMENT 'resource package id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip;',
  `userAgent` varchar(255) DEFAULT NULL COMMENT '设备信息',
  `userId` varchar(255) DEFAULT NULL COMMENT '用户ID',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `executeSql` varchar(255) DEFAULT NULL COMMENT '执行的sql',
  `requestBody` mediumtext COMMENT '请求body',
  `responseBody` mediumtext COMMENT '响应body',
  `responseStatus` varchar(255) DEFAULT NULL COMMENT '执行的结果;  success, fail',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `resourceId_index` (`resourceId`),
  KEY `packageId_index` (`packageId`)
) ENGINE = InnoDB AUTO_INCREMENT = 462 COMMENT = '文件表; 软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_role`;
CREATE TABLE `_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `roleId` varchar(255) DEFAULT NULL COMMENT 'roleId',
  `roleName` varchar(255) DEFAULT NULL COMMENT 'role name',
  `roleDesc` varchar(255) DEFAULT NULL COMMENT 'role desc',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 COMMENT = '角色表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _role
# ------------------------------------------------------------

INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'appAdmin','系统管理员',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'teacher','老师',NULL,NULL,NULL,NULL,NULL);
INSERT INTO `_role` (`id`,`roleId`,`roleName`,`roleDesc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'student','学生',NULL,NULL,NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_test_case`;
CREATE TABLE `_test_case` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT '页面Id',
  `testId` varchar(255) DEFAULT NULL COMMENT '测试用例Id; 10000 ++',
  `testName` varchar(255) DEFAULT NULL COMMENT '测试用例名',
  `uiActionIdList` varchar(255) DEFAULT NULL COMMENT 'uiAction列表; 一个测试用例对应多个uiActionId',
  `testOpeartion` text COMMENT '测试用例步骤;',
  `operation` varchar(255) DEFAULT NULL COMMENT '操作; jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId; recordContent.operationByUserId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名; recordContent.operationByUser',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; recordContent.operationAt; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 33 COMMENT = '测试用例表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _test_case
# ------------------------------------------------------------




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_ui`;
CREATE TABLE `_ui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pageId` varchar(255) DEFAULT NULL COMMENT 'page id; E.g: index',
  `uiActionType` varchar(255) DEFAULT NULL COMMENT 'ui 动作类型，如：fetchData, postData, changeUi',
  `uiActionId` varchar(255) DEFAULT NULL COMMENT 'action id; E.g: selectXXXByXXX',
  `desc` varchar(255) DEFAULT NULL COMMENT '描述',
  `uiActionConfig` text COMMENT 'ui 动作数据',
  `appDataSchema` json DEFAULT NULL COMMENT 'ui 校验数据',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 COMMENT = 'ui 施工方案';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _ui
# ------------------------------------------------------------

INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'recordHistoryManagement','ui','refreshTableData','✅获取表格数据','{\"before\": [{\"function\": \"openTableLoading\"}], \"main\": [{\"function\": \"refreshTableData\"}, {\"function\": \"computeHeader\"}], \"after\": [{\"function\": \"closeTableLoading\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (2,'recordHistoryManagement','ui','viewRecordHistory','✅版本历史列表','{\"main\": [{\"function\": \"doViewRecordHistory\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (3,'recordHistoryManagement','ui','restoreRecordByRecordHistory','✅数据还原','{\"main\": [{\"function\": \"doRestoreRecordByRecordHistory\"}, {\"function\": \"doViewRecordHistory\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (10,'fileManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (12,'fileManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (13,'fileManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (14,'fileManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (15,'fileManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (16,'fileManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'fileManagement','ui','downloadFileByBase64','✅下载文件','{\"main\": [{\"function\": \"downloadFileByBase64\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'fileManagement','ui','downloadFileByStream','✅下载文件','{\"main\": [{\"function\": \"downloadFileByStream\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'resourcePageManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'resourcePageManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'resourcePageManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (23,'resourcePageManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (24,'resourcePageManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (25,'resourcePageManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (30,'userGroupRolePageOrResourceManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'userGroupRolePageOrResourceManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'userGroupRolePageOrResourceManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'userGroupRolePageOrResourceManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'userGroupRolePageOrResourceManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'userGroupRolePageOrResourceManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (40,'userManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (41,'userManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (42,'userManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (43,'userManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (44,'userManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"prepareValidate\"}, {\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (45,'userManagement','ui','activeUserStatus','✅激活用户','{\"before\": [{\"function\": \"confirmActiveUserStatusDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doActiveUserStatus\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (46,'userManagement','ui','startResetPassword','✅打开重置密码抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openResetPasswordDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (47,'userManagement','ui','resetPassword','✅更新数据','{\"before\": [{\"function\": \"confirmResetPasswordDialog\"}], \"main\": [{\"function\": \"doResetUserPassword\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (48,'userManagement','ui','bannedUserStatus','✅禁用用户','{\"before\": [{\"function\": \"confirmBannedUserStatusDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doBannedUserStatus\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (50,'userGroupRoleManagement','ui','refreshTableData','✅获取表格数据','{\"main\": [{\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'userGroupRoleManagement','ui','startCreateItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"clearItemData\"}, {\"function\": \"openCreateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'userGroupRoleManagement','ui','createItem','✅创建数据','{\"before\": [{\"function\": \"confirmCreateItemDialog\"}], \"main\": [{\"function\": \"doCreateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (53,'userGroupRoleManagement','ui','startUpdateItem','✅打开更新数据抽屉','{\"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"openUpdateItemDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (54,'userGroupRoleManagement','ui','updateItem','✅更新数据','{\"before\": [{\"function\": \"confirmUpdateItemDialog\"}], \"main\": [{\"function\": \"doUpdateItem\"}, {\"function\": \"refreshTableData\"}], \"after\": [{\"function\": \"closeDrawerShow\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (55,'userGroupRoleManagement','ui','deleteItem','✅删除数据','{\"before\": [{\"function\": \"confirmDeleteItemDialog\"}], \"main\": [{\"function\": \"prepareItemData\"}, {\"function\": \"doDeleteItem\"}, {\"function\": \"refreshTableData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (57,'userGroupRoleManagement','ui','startCreateLeftItem','✅打开创建数据抽屉','{\"main\": [{\"function\": \"openFormDialog\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (58,'userGroupRoleManagement','ui','createLeftItem','✅创建数据','{\"main\": [{\"function\": \"addNewItem\"}, {\"function\": \"reGetLeftData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (60,'userGroupRoleManagement','ui','updateLeftItem','✅更新数据','{\"main\": [{\"function\": \"updateLeftItem\"}, {\"function\": \"reGetLeftData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (61,'userGroupRoleManagement','ui','deleteLeftItem','✅删除数据','{\"main\": [{\"function\": \"deleteLeftItem\"}, {\"function\": \"reGetLeftData\"}]}',NULL,'insert',NULL,NULL,NULL);
INSERT INTO `_ui` (`id`,`pageId`,`uiActionType`,`uiActionId`,`desc`,`uiActionConfig`,`appDataSchema`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (62,'userGroupRoleManagement','ui','initOptions','✅获取表格数据','{\"main\": [{\"function\": \"selectUser\"}, {\"function\": \"refreshTableData\"}, {\"function\": \"initOptions\"}]}',NULL,'insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user`;
CREATE TABLE `_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idSequence` varchar(255) DEFAULT NULL COMMENT '自增id; 用于生成userId',
  `userId` varchar(255) DEFAULT NULL COMMENT '主键id',
  `username` varchar(255) DEFAULT NULL COMMENT '用户名(登陆)',
  `clearTextPassword` varchar(255) DEFAULT NULL COMMENT '明文密码',
  `password` varchar(255) DEFAULT NULL COMMENT '密码',
  `md5Salt` varchar(255) DEFAULT NULL COMMENT 'md5Salt',
  `userStatus` varchar(255) DEFAULT 'active' COMMENT '用户账号状态：活跃或关闭',
  `userType` varchar(255) DEFAULT NULL COMMENT '用户类型; staff, student.',
  `config` mediumtext COMMENT '配置信息',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  `initPassword` varchar(255) DEFAULT NULL COMMENT '测试用',
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId_index` (`userId`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 74 COMMENT = '用户表';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user
# ------------------------------------------------------------

INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (1,NULL,'admin','adminName','123456','f0cc7a42ef0c399737c024202b1aaa3f','9PMF7J7VPsUy','active','common',NULL,'jhUpdate','admin','adminName','2022-08-29T11:11:06+08:00',NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (68,'26260000','001','小华','1234567','b9e96d6ebc84dd51f2bd1fb56a79d8cb','ZsPkQcHpYZQT','active','common',NULL,'jhUpdate','admin','adminName','2022-08-29T11:11:14+08:00',NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (69,'26260001','002','003','12345678','f12cff5acea8bdf49c8962660661afce','CS2wAxdaNap8','active',NULL,NULL,'jhUpdate','admin','adminName','2022-04-29T16:33:27+08:00',NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (70,'26260002','111','test','123456','e1f46f41711a8f24ed83a83cdb0e1d00','jYkdEdN5SKy8','active',NULL,NULL,'update','admin','adminName','2022-08-26T21:58:51+08:00',NULL);
INSERT INTO `_user` (`id`,`idSequence`,`userId`,`username`,`clearTextPassword`,`password`,`md5Salt`,`userStatus`,`userType`,`config`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`,`initPassword`) VALUES (73,'26260003','222','test111','123456','46a0a707408e9b92057276284d929a80','Pfbi3sRGM5Ww','active','common',NULL,'update','admin','adminName','2022-08-24T16:13:10+08:00',NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role`;
CREATE TABLE `_user_group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) NOT NULL COMMENT '用户id',
  `groupId` varchar(255) NOT NULL COMMENT '群组Id',
  `roleId` varchar(255) DEFAULT NULL COMMENT '角色Id',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `groupId_index` (`groupId`),
  KEY `userId_index` (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 599 COMMENT = '用户群组角色关联表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role
# ------------------------------------------------------------

INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (568,'admin','adminGroup','appAdmin','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (597,'001','adminGroup','teacher','jhInsert','admin','admin','2022-02-21T00:41:54+08:00');
INSERT INTO `_user_group_role` (`id`,`userId`,`groupId`,`roleId`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (598,'001','adminGroup','appAdmin','jhInsert','admin','admin','2022-04-25T14:39:44+08:00');



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_page`;
CREATE TABLE `_user_group_role_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `page` varchar(255) DEFAULT NULL COMMENT 'pageId id',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 23 COMMENT = '用户群组角色 - 页面 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_page
# ------------------------------------------------------------

INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (17,'*','public','*','login','allow','登陆页; 开放给所有用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (18,'*','login','*','operationManual','allow','操作手册页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (19,'*','login','*','help','allow','帮助页; 开放给登陆用户;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (20,'*','adminGroup','appAdmin','userGroupRole','allow','权限管理页; 开放给应用管理者;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (21,'*','adminGroup','appAdmin','*','allow','所有页面; 开放给应用管理者;','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_page` (`id`,`user`,`group`,`role`,`page`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (22,'*','adminGroup','appAdmin','userManagement','allow','用户管理页面; 开放给应用管理者;','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_group_role_resource`;
CREATE TABLE `_user_group_role_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user` varchar(255) DEFAULT NULL COMMENT 'userId 或者 通配符; 通配符: *',
  `group` varchar(255) DEFAULT NULL COMMENT 'groupId 或者 通配符; 通配符: *',
  `role` varchar(255) DEFAULT NULL COMMENT 'roleId 或者 通配符; 通配符: *',
  `resource` varchar(255) DEFAULT NULL COMMENT 'resourceId 或者 通配符; 通配符: *, !resourceId',
  `allowOrDeny` varchar(255) DEFAULT NULL COMMENT '用户群组角色 匹配后 执行动作; allow、deny',
  `desc` varchar(255) DEFAULT NULL COMMENT '映射描述',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`)
) ENGINE = InnoDB AUTO_INCREMENT = 75 COMMENT = '用户群组角色 - 请求资源 映射表; 软删除未启用;';


# ------------------------------------------------------------
# DATA DUMP FOR TABLE: _user_group_role_resource
# ------------------------------------------------------------

INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (1,'*','public','*','login.passwordLogin','allow','登陆resource, 开放给所有用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (11,'*','public','*','allPage.getConstantList','allow','查询常量resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (31,'*','login','*','allPage.logout','allow','登出resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (32,'*','login','*','allPage.refreshToken','allow','刷新authToken resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (33,'*','login','*','allPage.userInfo','allow','用户个人信息resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (34,'*','login','*','allPage.uploadByBase64','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (35,'*','login','*','allPage.uploadByStream','allow','上传文件resource, 开放给所有登陆成功的用户','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (51,'*','adminGroup','appAdmin','*','allow','应用管理者, 赋予所有resource权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (52,'*','adminGroup','appAdmin','userGroupRole.*','allow','应用管理者, 赋予所有resource权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (71,'*','adminGroup','teacher','newStudent.*','allow','老师, 赋予所有newStudent页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (72,'*','adminGroup','teacher','studentBill.*','allow','老师, 赋予所有studentBill页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (73,'*','adminGroup','teacher','studentBillPayment.*','allow','老师, 赋予所有studentBillPayment页面resource的权限','insert',NULL,NULL,NULL);
INSERT INTO `_user_group_role_resource` (`id`,`user`,`group`,`role`,`resource`,`allowOrDeny`,`desc`,`operation`,`operationByUserId`,`operationByUser`,`operationAt`) VALUES (74,'*','adminGroup','teacher','studentPayment.*','allow','老师, 赋予所有studentPayment页面resource的权限','insert',NULL,NULL,NULL);



# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _user_session
# ------------------------------------------------------------

DROP TABLE IF EXISTS `_user_session`;
CREATE TABLE `_user_session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` varchar(255) DEFAULT NULL COMMENT '用户id',
  `userIp` varchar(255) DEFAULT NULL COMMENT '用户ip',
  `userIpRegion` varchar(255) DEFAULT NULL COMMENT '用户Ip区域',
  `userAgent` text COMMENT '请求的 agent',
  `deviceId` varchar(255) DEFAULT NULL COMMENT '设备id',
  `deviceType` varchar(255) DEFAULT 'web' COMMENT '设备类型; flutter, web, bot_databot, bot_chatbot, bot_xiaochengxu',
  `socketStatus` varchar(255) DEFAULT 'offline' COMMENT 'socket状态',
  `authToken` varchar(2048) DEFAULT NULL COMMENT 'auth token',
  `refreshToken` varchar(2048) DEFAULT NULL COMMENT 'refresh token',
  `operation` varchar(255) DEFAULT 'insert' COMMENT '操作; insert, update, jhInsert, jhUpdate, jhDelete jhRestore',
  `operationByUserId` varchar(255) DEFAULT NULL COMMENT '操作者userId',
  `operationByUser` varchar(255) DEFAULT NULL COMMENT '操作者用户名',
  `operationAt` varchar(255) DEFAULT NULL COMMENT '操作时间; E.g: 2021-05-28T10:24:54+08:00 ',
  PRIMARY KEY (`id`),
  KEY `userId_index` (`userId`)
) ENGINE = InnoDB AUTO_INCREMENT = 4 COMMENT = '用户session表; deviceId 维度;软删除未启用;';




# ------------------------------------------------------------
# SCHEMA DUMP FOR TABLE: _view01_user
# ------------------------------------------------------------

CREATE OR REPLACE VIEW `_view01_user` AS
select
  `_user`.`id` AS `id`,
  `_user`.`idSequence` AS `idSequence`,
  `_user`.`userId` AS `userId`,
  `_user`.`username` AS `username`,
  `_user`.`clearTextPassword` AS `clearTextPassword`,
  `_user`.`password` AS `password`,
  `_user`.`md5Salt` AS `md5Salt`,
  `_user`.`userStatus` AS `userStatus`,
  `_user`.`userType` AS `userType`,
  `_user`.`config` AS `config`,
  `_user`.`operation` AS `operation`,
  `_user`.`operationByUserId` AS `operationByUserId`,
  `_user`.`operationByUser` AS `operationByUser`,
  `_user`.`operationAt` AS `operationAt`,
  `_user`.`initPassword` AS `initPassword`
from
  `_user`;





