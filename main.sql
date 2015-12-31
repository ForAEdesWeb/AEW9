-- 2015-07-06T07:05:15+00:00 - mysql:dbname=zongknife;host=127.0.0.1

-- Table structure for table `mp75b_assets`

DROP TABLE IF EXISTS `mp75b_assets`;
CREATE TABLE `mp75b_assets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set parent.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `level` int(10) unsigned NOT NULL COMMENT 'The cached level in the nested tree.',
  `name` varchar(50) NOT NULL COMMENT 'The unique name for the asset.\n',
  `title` varchar(100) NOT NULL COMMENT 'The descriptive title for the asset.',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_asset_name` (`name`),
  KEY `idx_lft_rgt` (`lft`,`rgt`),
  KEY `idx_parent_id` (`parent_id`)
) ENGINE=InnoDB AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_assets`

LOCK TABLES `mp75b_assets` WRITE;
INSERT INTO `mp75b_assets` VALUES (1,0,0,277,0,'root.1','Root Asset','{\"core.login.site\":{\"6\":1,\"2\":1},\"core.login.admin\":{\"6\":1},\"core.login.offline\":{\"6\":1},\"core.admin\":{\"8\":1},\"core.manage\":{\"7\":1},\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `mp75b_assets` VALUES (2,1,1,2,1,'com_admin','com_admin','{}');
INSERT INTO `mp75b_assets` VALUES (3,1,3,6,1,'com_banners','com_banners','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (4,1,7,8,1,'com_cache','com_cache','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mp75b_assets` VALUES (5,1,9,10,1,'com_checkin','com_checkin','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mp75b_assets` VALUES (6,1,11,12,1,'com_config','com_config','{}');
INSERT INTO `mp75b_assets` VALUES (7,1,13,16,1,'com_contact','com_contact','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (8,1,17,42,1,'com_content','com_content','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (9,1,43,44,1,'com_cpanel','com_cpanel','{}');
INSERT INTO `mp75b_assets` VALUES (10,1,45,46,1,'com_installer','com_installer','{\"core.admin\":[],\"core.manage\":{\"7\":0},\"core.delete\":{\"7\":0},\"core.edit.state\":{\"7\":0}}');
INSERT INTO `mp75b_assets` VALUES (11,1,47,48,1,'com_languages','com_languages','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (12,1,49,50,1,'com_login','com_login','{}');
INSERT INTO `mp75b_assets` VALUES (13,1,51,52,1,'com_mailto','com_mailto','{}');
INSERT INTO `mp75b_assets` VALUES (14,1,53,54,1,'com_massmail','com_massmail','{}');
INSERT INTO `mp75b_assets` VALUES (15,1,55,56,1,'com_media','com_media','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":{\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (16,1,57,58,1,'com_menus','com_menus','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (17,1,59,60,1,'com_messages','com_messages','{\"core.admin\":{\"7\":1},\"core.manage\":{\"7\":1}}');
INSERT INTO `mp75b_assets` VALUES (18,1,61,184,1,'com_modules','com_modules','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (19,1,185,188,1,'com_newsfeeds','com_newsfeeds','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (20,1,189,190,1,'com_plugins','com_plugins','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (21,1,191,192,1,'com_redirect','com_redirect','{\"core.admin\":{\"7\":1},\"core.manage\":[]}');
INSERT INTO `mp75b_assets` VALUES (22,1,193,194,1,'com_search','com_search','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `mp75b_assets` VALUES (23,1,195,196,1,'com_templates','com_templates','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (24,1,197,200,1,'com_users','com_users','{\"core.admin\":{\"7\":1},\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (25,1,201,204,1,'com_weblinks','com_weblinks','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1},\"core.create\":{\"3\":1},\"core.delete\":[],\"core.edit\":{\"4\":1},\"core.edit.state\":{\"5\":1},\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (26,1,205,206,1,'com_wrapper','com_wrapper','{}');
INSERT INTO `mp75b_assets` VALUES (27,8,18,19,2,'com_content.category.2','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (28,3,4,5,2,'com_banners.category.3','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (29,7,14,15,2,'com_contact.category.4','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (30,19,186,187,2,'com_newsfeeds.category.5','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (31,25,202,203,2,'com_weblinks.category.6','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (32,24,198,199,1,'com_users.category.7','Uncategorised','{\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (33,1,207,208,1,'com_finder','com_finder','{\"core.admin\":{\"7\":1},\"core.manage\":{\"6\":1}}');
INSERT INTO `mp75b_assets` VALUES (34,1,209,210,1,'com_joomlaupdate','com_joomlaupdate','{\"core.admin\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (35,1,211,212,1,'com_tags','com_tags','{\"core.admin\":[],\"core.manage\":[],\"core.manage\":[],\"core.delete\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (36,1,213,214,1,'com_contenthistory','com_contenthistory','{}');
INSERT INTO `mp75b_assets` VALUES (37,1,215,216,1,'com_ajax','com_ajax','{}');
INSERT INTO `mp75b_assets` VALUES (38,1,217,218,1,'com_postinstall','com_postinstall','{}');
INSERT INTO `mp75b_assets` VALUES (39,18,62,63,2,'com_modules.module.1','Main Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (40,18,64,65,2,'com_modules.module.2','Login','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (41,18,66,67,2,'com_modules.module.3','Popular Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (42,18,68,69,2,'com_modules.module.4','Recently Added Articles','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (43,18,70,71,2,'com_modules.module.8','Toolbar','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (44,18,72,73,2,'com_modules.module.9','Quick Icons','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (45,18,74,75,2,'com_modules.module.10','Logged-in Users','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (46,18,76,77,2,'com_modules.module.12','Admin Menu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (47,18,78,79,2,'com_modules.module.13','Admin Submenu','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (48,18,80,81,2,'com_modules.module.14','User Status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (49,18,82,83,2,'com_modules.module.15','Title','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (50,18,84,85,2,'com_modules.module.16','Login Form','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (51,18,86,87,2,'com_modules.module.17','Breadcrumbs','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (52,18,88,89,2,'com_modules.module.79','Multilanguage status','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (53,18,90,91,2,'com_modules.module.86','Joomla Version','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (54,1,219,220,1,'com_djcatalog2','com_djcatalog2','{\"djcatalog2.filedownload\":[],\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.delete.own\":[],\"core.edit\":[],\"core.edit.own\":[],\"core.edit.state\":[],\"core.edit.state.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (55,18,92,93,2,'com_modules.module.87','DJ-Catalog2 Categories','');
INSERT INTO `mp75b_assets` VALUES (56,18,94,95,2,'com_modules.module.88','DJ-Catalog2 Frontpage','');
INSERT INTO `mp75b_assets` VALUES (57,18,96,97,2,'com_modules.module.89','DJ-Catalog2 Items','');
INSERT INTO `mp75b_assets` VALUES (58,18,98,99,2,'com_modules.module.90','DJ-Catalog2 Related Items','');
INSERT INTO `mp75b_assets` VALUES (59,18,100,101,2,'com_modules.module.91','DJ-Catalog2 Filters Module','');
INSERT INTO `mp75b_assets` VALUES (60,18,102,103,2,'com_modules.module.92','DJ-Catalog2 Producers','');
INSERT INTO `mp75b_assets` VALUES (61,18,104,105,2,'com_modules.module.93','DJ-Catalog2 Search Module','');
INSERT INTO `mp75b_assets` VALUES (62,1,221,222,1,'com_rsform','rsform','{}');
INSERT INTO `mp75b_assets` VALUES (63,1,223,224,1,'com_jaextmanager','com_jaextmanager','{}');
INSERT INTO `mp75b_assets` VALUES (64,1,225,226,1,'com_remoteimage','com_remoteimage','{\"core.admin\":[],\"core.manage\":[],\"core.create\":[],\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[],\"core.edit.own\":[]}');
INSERT INTO `mp75b_assets` VALUES (65,1,227,228,1,'com_echo','com_echo','{}');
INSERT INTO `mp75b_assets` VALUES (66,1,229,230,1,'com_m2c','com_m2c','{}');
INSERT INTO `mp75b_assets` VALUES (67,18,106,107,2,'com_modules.module.94','IndexHtml','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (68,18,108,109,2,'com_modules.module.95','header','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (69,18,110,111,2,'com_modules.module.96','advantage','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (70,18,112,113,2,'com_modules.module.97','project','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (71,1,231,234,1,'com_webgallery','com_webgallery','{}');
INSERT INTO `mp75b_assets` VALUES (72,71,232,233,2,'com_webgallery.category.8','一頁風格','');
INSERT INTO `mp75b_assets` VALUES (73,18,114,115,2,'com_modules.module.98','projectSetup1','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (74,1,235,236,1,'com_modulesmanagerck','com_modulesmanagerck','{}');
INSERT INTO `mp75b_assets` VALUES (75,18,116,117,2,'com_modules.module.99','NEW MODULE','');
INSERT INTO `mp75b_assets` VALUES (76,18,118,119,2,'com_modules.module.100','projectSetup2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (77,18,120,121,2,'com_modules.module.101','projectSetup3','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (79,18,122,123,2,'com_modules.module.103','projectSetup4','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (80,18,124,125,2,'com_modules.module.104','projectSetupTitle','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (81,18,126,127,2,'com_modules.module.105','DJ-Catalog2 Cart Module','');
INSERT INTO `mp75b_assets` VALUES (82,18,128,129,2,'com_modules.module.106','關於中刀','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (83,18,130,131,2,'com_modules.module.107','創業加盟專區','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (84,18,132,133,2,'com_modules.module.108','咖啡原料與設備','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (85,18,134,135,2,'com_modules.module.109','法式蔬食咖啡館','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (86,18,136,137,2,'com_modules.module.110','userProject4','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (87,18,138,139,2,'com_modules.module.111','userProject5','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (88,18,140,141,2,'com_modules.module.112','userProject6','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (89,18,142,143,2,'com_modules.module.113','price','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (90,18,144,145,2,'com_modules.module.114','setup','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (91,18,146,147,2,'com_modules.module.115','contact','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (92,18,148,149,2,'com_modules.module.116','contact (2)','');
INSERT INTO `mp75b_assets` VALUES (93,18,150,151,2,'com_modules.module.117','Custom CSS','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (94,18,152,153,2,'com_modules.module.118','advantagePage','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (95,1,237,242,1,'com_userxtd','com_userxtd','{}');
INSERT INTO `mp75b_assets` VALUES (96,95,238,239,2,'com_userxtd.category.9','Basic Info','');
INSERT INTO `mp75b_assets` VALUES (97,95,240,241,2,'com_userxtd.category.10','Living','');
INSERT INTO `mp75b_assets` VALUES (98,1,243,244,1,'#__userxtd_fields.1','#__userxtd_fields.1','');
INSERT INTO `mp75b_assets` VALUES (99,1,245,246,1,'#__userxtd_fields.2','#__userxtd_fields.2','');
INSERT INTO `mp75b_assets` VALUES (100,1,247,248,1,'#__userxtd_fields.3','#__userxtd_fields.3','');
INSERT INTO `mp75b_assets` VALUES (101,1,249,250,1,'#__userxtd_fields.4','#__userxtd_fields.4','');
INSERT INTO `mp75b_assets` VALUES (102,1,251,252,1,'#__userxtd_fields.5','#__userxtd_fields.5','');
INSERT INTO `mp75b_assets` VALUES (103,1,253,254,1,'#__userxtd_fields.6','#__userxtd_fields.6','');
INSERT INTO `mp75b_assets` VALUES (104,1,255,256,1,'#__userxtd_fields.7','#__userxtd_fields.7','');
INSERT INTO `mp75b_assets` VALUES (105,1,257,258,1,'#__userxtd_fields.8','#__userxtd_fields.8','');
INSERT INTO `mp75b_assets` VALUES (106,1,259,260,1,'#__userxtd_fields.9','#__userxtd_fields.9','');
INSERT INTO `mp75b_assets` VALUES (107,1,261,262,1,'#__userxtd_fields.10','#__userxtd_fields.10','');
INSERT INTO `mp75b_assets` VALUES (108,1,263,264,1,'#__userxtd_fields.11','#__userxtd_fields.11','');
INSERT INTO `mp75b_assets` VALUES (109,1,265,266,1,'#__userxtd_fields.12','#__userxtd_fields.12','');
INSERT INTO `mp75b_assets` VALUES (110,18,154,155,2,'com_modules.module.119','Image Show GK4','');
INSERT INTO `mp75b_assets` VALUES (111,18,156,157,2,'com_modules.module.120','knife image slide show','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (112,18,158,159,2,'com_modules.module.121','刀具產品總覽','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (113,18,160,161,2,'com_modules.module.122','法式蔬食','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (114,1,267,268,1,'com_quickcontent','com_quickcontent','{}');
INSERT INTO `mp75b_assets` VALUES (120,18,162,163,2,'com_modules.module.123','vegan menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (121,18,164,165,2,'com_modules.module.124','home image slide show','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (122,18,166,167,2,'com_modules.module.125','coffee image slide show','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (125,18,168,169,2,'com_modules.module.128','發展沿革','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (126,8,20,31,2,'com_content.category.11','法式蔬食','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `mp75b_assets` VALUES (127,8,32,41,2,'com_content.category.12','創業加盟輔導','{\"core.create\":{\"6\":1,\"3\":1},\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1},\"core.edit.own\":{\"6\":1,\"3\":1}}');
INSERT INTO `mp75b_assets` VALUES (128,127,33,34,3,'com_content.article.6','形象特色','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (129,127,35,36,3,'com_content.article.7','教學課程','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (130,127,37,38,3,'com_content.article.8','師資團隊','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (131,127,39,40,3,'com_content.article.9','加盟規劃培訓','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (146,126,29,30,3,'com_content.article.19','形象特色','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (147,126,27,28,3,'com_content.article.20','環境介紹','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (148,126,25,26,3,'com_content.article.21','餐點管理','');
INSERT INTO `mp75b_assets` VALUES (149,126,23,24,3,'com_content.article.22','營業據點','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (150,126,21,22,3,'com_content.article.23','促銷活動','{\"core.delete\":[],\"core.edit\":[],\"core.edit.state\":[]}');
INSERT INTO `mp75b_assets` VALUES (151,1,269,270,1,'com_content.article.24','形象特色','');
INSERT INTO `mp75b_assets` VALUES (152,1,271,272,1,'com_content.article.25','教學課程','');
INSERT INTO `mp75b_assets` VALUES (153,1,273,274,1,'com_content.article.26','師資團隊','');
INSERT INTO `mp75b_assets` VALUES (154,1,275,276,1,'com_content.article.27','加盟規劃培訓','');
INSERT INTO `mp75b_assets` VALUES (158,18,170,171,2,'com_modules.module.133','vegan menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (159,18,172,173,2,'com_modules.module.134','pioneer menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (160,18,174,175,2,'com_modules.module.135','pioneer image slide show','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (161,18,176,177,2,'com_modules.module.136','home vegan menu','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (162,18,178,179,2,'com_modules.module.137','footer','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (163,18,180,181,2,'com_modules.module.138','關於中刀2','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
INSERT INTO `mp75b_assets` VALUES (164,18,182,183,2,'com_modules.module.139','菜刀王四大鋼材材質介紹','{\"core.delete\":{\"6\":1},\"core.edit\":{\"6\":1,\"4\":1},\"core.edit.state\":{\"6\":1,\"5\":1}}');
UNLOCK TABLES;

-- Table structure for table `mp75b_associations`

DROP TABLE IF EXISTS `mp75b_associations`;
CREATE TABLE `mp75b_associations` (
  `id` int(11) NOT NULL COMMENT 'A reference to the associated item.',
  `context` varchar(50) NOT NULL COMMENT 'The context of the associated item.',
  `key` char(32) NOT NULL COMMENT 'The key for the association computed from an md5 on associated ids.',
  PRIMARY KEY (`context`,`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_associations`

LOCK TABLES `mp75b_associations` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_banner_clients`

DROP TABLE IF EXISTS `mp75b_banner_clients`;
CREATE TABLE `mp75b_banner_clients` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `metakey` text NOT NULL,
  `own_prefix` tinyint(4) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_banner_clients`

LOCK TABLES `mp75b_banner_clients` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_banner_tracks`

DROP TABLE IF EXISTS `mp75b_banner_tracks`;
CREATE TABLE `mp75b_banner_tracks` (
  `track_date` datetime NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL,
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`track_date`,`track_type`,`banner_id`),
  KEY `idx_track_date` (`track_date`),
  KEY `idx_track_type` (`track_type`),
  KEY `idx_banner_id` (`banner_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_banner_tracks`

LOCK TABLES `mp75b_banner_tracks` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_banners`

DROP TABLE IF EXISTS `mp75b_banners`;
CREATE TABLE `mp75b_banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `custombannercode` varchar(2048) NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `params` text NOT NULL,
  `own_prefix` tinyint(1) NOT NULL DEFAULT '0',
  `metakey_prefix` varchar(255) NOT NULL DEFAULT '',
  `purchase_type` tinyint(4) NOT NULL DEFAULT '-1',
  `track_clicks` tinyint(4) NOT NULL DEFAULT '-1',
  `track_impressions` tinyint(4) NOT NULL DEFAULT '-1',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `reset` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `language` char(7) NOT NULL DEFAULT '',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_state` (`state`),
  KEY `idx_own_prefix` (`own_prefix`),
  KEY `idx_metakey_prefix` (`metakey_prefix`),
  KEY `idx_banner_catid` (`catid`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_banners`

LOCK TABLES `mp75b_banners` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_categories`

DROP TABLE IF EXISTS `mp75b_categories`;
CREATE TABLE `mp75b_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `extension` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`extension`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_categories`

LOCK TABLES `mp75b_categories` WRITE;
INSERT INTO `mp75b_categories` VALUES (1,0,0,0,23,0,'','system','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'{}','','','{}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (2,27,1,1,2,1,'uncategorised','com_content','Uncategorised','uncategorised','','',-2,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (3,28,1,3,4,1,'uncategorised','com_banners','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (4,29,1,5,6,1,'uncategorised','com_contact','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (5,30,1,7,8,1,'uncategorised','com_newsfeeds','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (6,31,1,9,10,1,'uncategorised','com_weblinks','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (7,32,1,11,12,1,'uncategorised','com_users','Uncategorised','uncategorised','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',42,'2011-01-01 00:00:01',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (8,72,1,13,14,1,'2014-08-20-17-23-17','com_webgallery','一頁風格','2014-08-20-17-23-17','','',1,0,'0000-00-00 00:00:00',1,'','','','',584,'2014-08-20 17:23:17',0,'0000-00-00 00:00:00',0,'',1);
INSERT INTO `mp75b_categories` VALUES (9,96,1,15,16,1,'basic-info','com_userxtd','Basic Info','userxtd-basic-info','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',584,'2014-09-07 09:58:40',584,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (10,97,1,17,18,1,'living','com_userxtd','Living','userxtd-living','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',584,'2014-09-07 09:58:40',584,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (11,126,1,19,20,1,'vegan','com_content','法式蔬食','vegan','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"t3_extrafields\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',584,'2014-10-07 03:48:36',0,'0000-00-00 00:00:00',0,'*',1);
INSERT INTO `mp75b_categories` VALUES (12,127,1,21,22,1,'pioneer','com_content','創業加盟輔導','pioneer','','',1,0,'0000-00-00 00:00:00',1,'{\"category_layout\":\"\",\"image\":\"\",\"t3_extrafields\":\"\"}','','','{\"author\":\"\",\"robots\":\"\"}',584,'2014-10-07 03:48:56',0,'0000-00-00 00:00:00',0,'*',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_contact_details`

DROP TABLE IF EXISTS `mp75b_contact_details`;
CREATE TABLE `mp75b_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  `sortname1` varchar(255) NOT NULL,
  `sortname2` varchar(255) NOT NULL,
  `sortname3` varchar(255) NOT NULL,
  `language` char(7) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_contact_details`

LOCK TABLES `mp75b_contact_details` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content`

DROP TABLE IF EXISTS `mp75b_content`;
CREATE TABLE `mp75b_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` varchar(5120) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if article is featured.',
  `language` char(7) NOT NULL COMMENT 'The language code for the article.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content`

LOCK TABLES `mp75b_content` WRITE;
INSERT INTO `mp75b_content` VALUES (6,128,'形象特色','pioneer-features','<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerfeatures_icon-1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>哈里歐創業加盟</h4>\r\n<p>二十幾年來，從咖啡豆進口、烘焙、行銷批發、零售，門市部成立，哈里歐咖啡直營店開幕，直至成立喜伯國際餐飲開發顧問公司，極力推廣法式蔬食咖啡、歐廷蔬食加盟事業至國際市場。一路走來，長年茹素的林總經理秉持著獨特前瞻的眼光，跳脫市場產品區隔，企圖將素食文化提升至更高品質的感官享受。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerfeatures_icon-2.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>突破了宗教的框框</h4>\r\n<p>將養生蔬食成功的推廣至一般大眾，極力的推廣法式蔬食咖啡、歐洲蔬食加盟事業至國際市場。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerfeatures_icon-3.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>自然原味的健康蔬食</h4>\r\n<p>精選天然蔬果食材，從哈里歐法式蔬食到平實的歐廷蔬食多國創作料理，始終堅持淨食文化的傳承！</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerfeatures_icon-4.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>讓加盟者輕鬆經營一家屬於自己的事業</h4>\r\n<p>新世紀、新飲食文化的驅動者，絕對是您健康事業的好幫手！</p>\r\n</div>\r\n</div>','',1,12,'2014-10-07 03:50:26',584,'','2014-10-15 02:37:37',584,585,'2015-03-15 16:07:27','2014-10-07 03:50:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',8,3,'','',1,117,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (7,129,'教學課程','pioneer-teach','<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-12\">\r\n<p>生活跟咖啡的關係相當密切，以基礎的意式咖啡烹煮教學，感於日常泡咖啡的程序有如一條生產線，從中領略從倒下新鮮生豆、磨豆、高壓濾出咖啡、打奶泡的標示以及打造好喝咖啡的訣竅，從原物料、製作教學、到開店輔導 專業技術傳授，幫您輕鬆做頭家！不但讓你學會煮出一手好咖啡，還教你 具體的實戰經營策略，搶進咖啡館市場!</p>\r\n</div>\r\n<div class=\"col-sm-2 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerteach_icon-1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-10\">\r\n<h3>◆教學方式</h3>\r\n<p>1. 採小班制、循環式教學。<br /> 2. 實際操作與理論並重，提供咖啡館現場實習。<br /> 3. 保證學成，輔導創業或就業。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-2 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerteach_icon-2.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-10\">\r\n<h3>◆教學內容</h3>\r\n<p>1. 義式咖啡沖調 / 花式特調 / 基豆調配。<br /> 2. 各式手作咖啡調製 / 咖啡基豆認識。<br /> 3. 各式花果茶類 / 飲料 / 優格冰沙調製。<br /> 4. 各類型態咖啡館 / 餐飲店經營管理實務 / 市場分析<br /> 5. 咖啡館現場實習 / 實際操作較學</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-2 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerteach_icon-3.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-10\">\r\n<h3>◆教學實用</h3>\r\n<p>1. 生活才藝班費用: NTS/ 12000 (含材料費) 每期20小時<br /> 2. 開店創業專修班: NTS/ 24000 (含材料費 / 現場實習) 每期30小時<br /> 3. 咖啡烘培專修班: NTS/ 60000 (含材料費) 每期40小時 (每堂4小時)<br />    由台灣咖啡業40資深咖啡師 第一達人 林榮生 親自授課</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-2 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/pioneerteach_icon-4.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-10\">\r\n<h3>◆上課時間</h3>\r\n<p>每星期三、五<br /> 下午 3:00 ~ 5:00<br /> 晚上 7:00 ~ 9:00<br /> 每期時數：20小時</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n<h4>餐飲業界如需人才，歡迎洽詢</h4>\r\n<p>開放全省法式蔬食咖啡館加盟募集中<br /> 詳細資訊請洽TEL：04-2325-4337、04-2325-4332</p>\r\n</div>\r\n</div>','',1,12,'2014-10-07 03:50:26',584,'','2014-10-15 02:41:11',584,0,'0000-00-00 00:00:00','2014-10-07 03:50:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',15,2,'','',1,46,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (8,130,'師資團隊','pioneer-teacher','<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-12\">\r\n<h3>師資介紹<small>親臨授課</small></h3>\r\n</div>\r\n<div class=\"col-sm-5 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/teacher1.jpg\" alt=\"\" /></div>\r\n<div class=\"col-sm-7\">\r\n<h4>林榮生</h4>\r\n<p>逢甲管理學院進修班結業<br /> 日本一番咖啡館研習結業<br /> 前實踐家政推廣中心講師<br /> 喜伯國際餐飲開發顧問公司負責人 (資歷32年)<br /> 哈里歐咖啡食品有限公司 總經理<br /> 上海哈里歐咖啡加盟事業公司 總經理</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-5 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/teacher2.jpg\" alt=\"\" /></div>\r\n<div class=\"col-sm-7\">\r\n<h4>蔡佩玲</h4>\r\n<p>前台北金世界西餐廳領班<br /> 前上島咖啡館吧台調理師<br /> 喜伯國際餐飲開發顧問公司負責人 (資歷32年)<br /> 哈里歐咖啡食品有限公司 總經理<br /> 哈里歐法式蔬食咖啡館 經理<br /> 哈里歐咖啡教室 首席講師</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n<h4>及數位資深餐飲吧台調理師傅親臨授課</h4>\r\n<p>從各國精品咖啡的認識、烘焙、杯測、研習、調配、各式沖煮法，想真正深入咖啡精神文化的追求者，把真正的咖啡慨念作正確傳承是我們的目標使命。</p>\r\n</div>\r\n</div>','',1,12,'2014-10-07 03:50:26',584,'','2014-10-15 02:45:58',584,0,'0000-00-00 00:00:00','2014-10-07 03:50:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',26,1,'','',1,73,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (9,131,'加盟規劃培訓','pioneer-affiliate','<div class=\"row\">\r\n<div class=\"col-sm-12\">\r\n<h2>加盟品牌優勢</h2>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 text-center\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/com_aedes/hecto/icon/affiliate-1.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<h3>風格型態具競爭力擁有高成功率</h3>\r\n<p> 加盟者不只備妥資金，更要有成功的、有實力的組織哈里歐總部為後盾提供永續的輔導。</p>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/com_aedes/hecto/icon/affiliate-2.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<h3>高知名度</h3>\r\n<p>哈里歐多年經營的商譽早已植入在消費者心中，更於2000年榮獲台灣優良餐飲企業金質獎集客力強，藉由高知名度輕鬆創造高營業額。</p>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/com_aedes/hecto/icon/affiliate-3.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<h3>店名容易記 有CIS規劃</h3>\r\n<p>哈里歐注重親切服務、形象設計，易於深入消費者心中，博得顧客好感。</p>\r\n</div>\r\n</div>\r\n<div class=\"row\">\r\n<div class=\"col-sm-4 text-center\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/com_aedes/hecto/icon/affiliate-4.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<h3>開發有主題商品 / 提供服務有特色</h3>\r\n<p>哈里歐不只崇高的經營理念，更不斷開發新產品、新菜單的變化，讓同業不易模仿，保持產品市場競爭力。</p>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/com_aedes/hecto/icon/affiliate-5.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<h3>有良好的連鎖經營體系及 KNOW-HOW 技術</h3>\r\n<p>從商品採購 / 整合 / 發送 / 製作 / 管理 / 人事 / 財務，乃至情報蒐集的總合，完整的經營傳承以及技術的指導。</p>\r\n</div>\r\n<div class=\"col-sm-4 text-center\"><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"images/com_aedes/hecto/icon/affiliate-6.png\" alt=\"\" width=\"128\" height=\"128\" />\r\n<h3>永續經營不斷研發改善</h3>\r\n<p>本公司隨著社會環境與經濟型態的變遷，不時地謀求改善乃至突破，以應隨時在變的大環境和顧客永不滿足的各種需求。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-sm-12 text-center\">\r\n<p>本公司以強有力、專業的組織、專業人才，<br />不斷的進行加盟店人員的在職教育訓練技術的再提升，<br />使加盟者不必為人事流動而煩惱。</p>\r\n<h4>加入我們，就是現在！</h4>\r\n<p> </p>\r\n<p>我們擁有最專業的經驗，為您量身打造屬於您的人生夢！<br /> 本案企劃執行：喜伯國際餐飲開發顧問公司<br /> 協力指導：哈里歐咖啡食品有限公司</p>\r\n<p> </p>\r\n<p>電話：886-4-2325-4337、886-4-2325-4332<br /> 免付費專線：0800-588338<br /> 傳真：886-4-2319-9156<br /> 地址：台中市西區精誠22街33號<br /> E-mail：service@hecto.com.tw</p>\r\n</div>\r\n</div>','',1,12,'2014-10-07 03:50:26',584,'','2014-10-15 02:56:11',584,0,'0000-00-00 00:00:00','2014-10-07 03:50:26','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',24,0,'','',1,61,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (19,146,'形象特色','image-features','<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img style=\"float: right;\" src=\"images/com_aedes/hecto/icon/haliio_icon_1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>關於哈里歐</h4>\r\n<p>1981創立至今30年歲月，一路走來，始终堅持著「品質」、「專業」、「服務」的經營原則，以及理想與信念的驅動力，讓無數的困難挫折都能勇敢面對與突破，如今將要邁入第二階段的里程，整頓與轉型的方向是哈里歐的階段任務，期待各界，一本初衷給予哈里歐一份愛的祝福，我們將更加努力的以您的祝福邁向無限的未來繼續前進。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img style=\"float: right;\" src=\"images/com_aedes/hecto/icon/haliio_icon_2.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>咖啡與淨食饗宴</h4>\r\n<p>由於對健康飲食文化有著超乎常人的執著，因此提倡自然飲食就成了哈里歐最大的使命！推廣精緻且富有內涵的蔬食文化，是我們不斷努力的方向。從選購食材、烹飪方式，甚至於空間造景、服務品質，哈里歐都堅持初衷，除了味覺上的驚喜，更要追求精神本質的昇華，真正達成心靈與味蕾相呼應的完美饗宴。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img style=\"float: right;\" src=\"images/com_aedes/hecto/icon/haliio_icon_3.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>品味 <small>大自然賜予的原味恩典</small></h4>\r\n<p>為倡導生機飲食文化，所有食材都是店家前往原產地與農民直接進行接觸與瞭解，以確保其食材的新鮮與健康、安全。主廚會因應季節需求與當季蔬果，變化出道道創意又美味十足的特製法式蔬食料理，顛覆常人對於素食的思維。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\"><!-- image at left -->\r\n<div class=\"col-sm-4 hidden-xs text-right\"><img style=\"float: right;\" src=\"images/com_aedes/hecto/icon/haliio_icon_4.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-8\">\r\n<h4>享受 <small>洗滌心靈的幸福體驗</small></h4>\r\n<p>座落環境清幽、綠樹成蔭，可觀賞到一年四季不同的景觀特色。店內空間典雅舒適，處處可見經營者的巧心安排，不同的室內格局區分呈現不同的風情氣質；可以點杯特調咖啡倚窗而坐，欣賞台灣鸞樹、一年四季不同美麗的變化。現代休閒格調的空間設計，伴著窗外透進來的暖暖陽光，獨享那份難得的心靈饗宴。換個心情，選擇私密不受干擾的空間，來一份精緻的法式蔬食餐點，道地的西餐服務品質，讓您吃得浪漫優雅又養生。</p>\r\n</div>\r\n</div>','',1,11,'2014-10-07 04:04:50',584,'','2014-10-15 03:09:01',584,0,'0000-00-00 00:00:00','2014-10-07 04:11:47','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',12,0,'','',1,52,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (20,147,'環境介紹','environment-introduction','<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<p>用心打造溫馨的用餐環境，不論是家庭聚餐或好友午茶，皆能找到最舒適的角落，在寬敞明亮的環境中，不僅享用著好吃的食物，更醉人的是來自法國的南部風情與那份簡單的美好。</p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3>用餐區</h3>\r\n<p>以老闆娘多年的蒐藏妝點出法式風情，輕聲訴說著美食和旅行的二三事，就著溫煦日光，享用著曬滿南法暖陽的餐點，點上一杯好茶，讓茶香沉澱心情。</p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment1.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment2.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment3.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3>閱讀區</h3>\r\n<p>纏繞於指尖的咖啡香，自然食材呈現的用心與堅持。兩種美好，一起感受。店內空間典雅舒適，處處可見經營者的巧心安排。</p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment4.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment5.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment6.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n</div>\r\n<hr />\r\n<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h3>飲料調製區</h3>\r\n<p>為倡導生機飲食文化，所有食材都是店家前往原產地與農民直接進行接觸與瞭解，以確保其食材的新鮮與健康、安全。</p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment7.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment8.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n<div class=\"col-md-4\">\r\n<p><img src=\"images/com_aedes/hecto/environment/environment9.jpg\" alt=\"\" width=\"300\" /></p>\r\n</div>\r\n</div>','',1,11,'2014-10-07 04:04:50',584,'','2014-10-15 02:59:23',584,0,'0000-00-00 00:00:00','2014-10-07 04:11:59','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',10,0,'','',1,42,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (21,148,'餐點管理','meals-management','<p><img src=\'http://placehold.it/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>','<p>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>',0,11,'2014-10-07 04:04:50',584,'','2014-10-07 04:10:48',584,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,0,'',0,'*','');
INSERT INTO `mp75b_content` VALUES (22,149,'營業據點','operating-period','<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<h4 style=\"text-align: center;\">台灣各都會區<br />蔬食咖啡館加盟募集中</h4>\r\n<p><img src=\"images/com_aedes/hecto/map.png\" alt=\"\" width=\"800\" height=\"467\" /></p>\r\n<p style=\"text-align: center;\">地址：台中市西區大忠街70號<br /><small>(公益路忠明南路.安泰商業 銀行旁進入50公尺處)</small><br /> TEL：04-23254337、04-2325433</p>\r\n</div>\r\n</div>','',1,11,'2014-10-07 04:04:50',584,'','2014-10-15 02:58:10',584,0,'0000-00-00 00:00:00','2014-10-07 04:11:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',11,0,'','',1,43,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (23,150,'促銷活動','promotions','<div class=\"row\">\r\n<div class=\"col-md-12\">\r\n<p><img src=\"images/com_aedes/hecto/promotions.jpg\" alt=\"\" /></p>\r\n</div>\r\n</div>','',1,11,'2014-10-07 04:04:50',584,'','2014-10-15 02:57:28',584,0,'0000-00-00 00:00:00','2014-10-07 04:12:13','0000-00-00 00:00:00','{\"image_intro\":\"\",\"float_intro\":\"\",\"image_intro_alt\":\"\",\"image_intro_caption\":\"\",\"image_fulltext\":\"\",\"float_fulltext\":\"\",\"image_fulltext_alt\":\"\",\"image_fulltext_caption\":\"\"}','{\"urla\":false,\"urlatext\":\"\",\"targeta\":\"\",\"urlb\":false,\"urlbtext\":\"\",\"targetb\":\"\",\"urlc\":false,\"urlctext\":\"\",\"targetc\":\"\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_tags\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_vote\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"alternative_readmore\":\"\",\"article_layout\":\"\",\"show_publishing_options\":\"\",\"show_article_options\":\"\",\"show_urls_images_backend\":\"\",\"show_urls_images_frontend\":\"\",\"extra-class\":\"\"}',10,0,'','',1,28,'{\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}',0,'*','');
INSERT INTO `mp75b_content` VALUES (24,151,'形象特色','image-features-2','<p><img src=\'http://placehold.it/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>','<p>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>',-2,1,'2014-10-07 04:04:51',584,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,1,'',0,'*','');
INSERT INTO `mp75b_content` VALUES (25,152,'教學課程','teaching-courses','<p><img src=\'http://placehold.it/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>','<p>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>',-2,1,'2014-10-07 04:04:51',584,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,0,'',0,'*','');
INSERT INTO `mp75b_content` VALUES (26,153,'師資團隊','teaching-team','<p><img src=\'http://placehold.it/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>','<p>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>',-2,1,'2014-10-07 04:04:51',584,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,0,'',0,'*','');
INSERT INTO `mp75b_content` VALUES (27,154,'加盟規劃培訓','affiliate-planning-training','<p><img src=\'http://placehold.it/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>','<p>彼得，說你在坐車裏常常伸出你的小手在車欄上跟著音樂按拍；你稍大些會得淘氣的時候，何嘗沒有羨慕的時候，但想起我做父親的往迹，與你一撮的遺灰，裝一個走江湖的桀卜閃人，因此我有時想，同在一個神奇的宇宙裡自得。</p><p>上山或是下山，那天在柏林的會館裏，只要把話匣開上，這問的後身便是無限的隱痛；我不能怨，但你應得帶書，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>你便蓋沒了你的小耳，這問的後身便是無限的隱痛；我不能怨，誰沒有悵惘？你是不認識你父親的，也不能給我們利益，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，我們的鏈永遠是制定我們行動的上司！大大記得最清楚，可以懂得我話裏意味的深淺，約莫八九歲光景，你應得躲避她像你躲避青草裡一條美麗的花蛇！</p><p>假如你長大的話，極端的自私，我心頭便湧起了不少的感想；我的話你是永遠聽不著了，并且假如我這番不到歐洲，流入嫵媚的阿諾河去……並且你不但不須應伴，那才是你實際領受，他們的獨子，那邊每株樹上都是滿掛著詩情最秀逸的果實，小鵝，一般紫的紫籐，體魄與性靈，同在一個神奇的宇宙裡自得。</p>',-2,1,'2014-10-07 04:04:51',584,'','0000-00-00 00:00:00',0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00','','','',1,0,'','',1,0,'',0,'*','');
UNLOCK TABLES;

-- Table structure for table `mp75b_content_frontpage`

DROP TABLE IF EXISTS `mp75b_content_frontpage`;
CREATE TABLE `mp75b_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content_frontpage`

LOCK TABLES `mp75b_content_frontpage` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content_images`

DROP TABLE IF EXISTS `mp75b_content_images`;
CREATE TABLE `mp75b_content_images` (
  `contentid` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `link` varchar(255) NOT NULL,
  `main` int(3) NOT NULL,
  `ordering` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- Dumping data for table `mp75b_content_images`

LOCK TABLES `mp75b_content_images` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content_rating`

DROP TABLE IF EXISTS `mp75b_content_rating`;
CREATE TABLE `mp75b_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(10) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(10) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content_rating`

LOCK TABLES `mp75b_content_rating` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_content_types`

DROP TABLE IF EXISTS `mp75b_content_types`;
CREATE TABLE `mp75b_content_types` (
  `type_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type_title` varchar(255) NOT NULL DEFAULT '',
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `table` varchar(255) NOT NULL DEFAULT '',
  `rules` text NOT NULL,
  `field_mappings` text NOT NULL,
  `router` varchar(255) NOT NULL DEFAULT '',
  `content_history_options` varchar(5120) DEFAULT NULL COMMENT 'JSON string for com_contenthistory options',
  PRIMARY KEY (`type_id`),
  KEY `idx_alias` (`type_alias`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_content_types`

LOCK TABLES `mp75b_content_types` WRITE;
INSERT INTO `mp75b_content_types` VALUES (0,'WebGallery Item','com_webgallery.item','{\"special\":{\"dbtable\":\"#__webgallery_items\",\"key\":\"id\",\"type\":\"Item\",\"prefix\":\"WebgalleryTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\r\n    \"common\": {\r\n        \"core_content_item_id\": \"id\",\r\n        \"core_title\": \"title\",\r\n        \"core_state\": \"published\",\r\n        \"core_alias\": \"alias\",\r\n        \"core_created_time\": \"created\",\r\n        \"core_modified_time\": \"modified\",\r\n        \"core_body\": \"introtext\",\r\n        \"core_publish_up\": \"publish_up\",\r\n        \"core_publish_down\": \"publish_down\",\r\n        \"core_access\": \"access\",\r\n        \"core_params\": \"params\",\r\n        \"core_language\": \"language\",\r\n        \"core_images\": \"images\",\r\n        \"core_urls\": \"urls\",\r\n        \"core_version\": \"version\",\r\n        \"core_ordering\": \"ordering\",\r\n        \"core_catid\": \"catid\",\r\n        \"asset_id\": \"asset_id\"\r\n    }\r\n}','WebgalleryHelperRoute::getItemRoute',NULL);
INSERT INTO `mp75b_content_types` VALUES (1,'Article','com_content.article','{\"special\":{\"dbtable\":\"#__content\",\"key\":\"id\",\"type\":\"Content\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"introtext\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"attribs\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"asset_id\"}, \"special\":{\"fulltext\":\"fulltext\"}}','ContentHelperRoute::getArticleRoute','{\"formFile\":\"administrator\\/components\\/com_content\\/models\\/forms\\/article.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (2,'Weblink','com_weblinks.weblink','{\"special\":{\"dbtable\":\"#__weblinks\",\"key\":\"id\",\"type\":\"Weblink\",\"prefix\":\"WeblinksTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"state\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{}}','WeblinksHelperRoute::getWeblinkRoute','{\"formFile\":\"administrator\\/components\\/com_weblinks\\/models\\/forms\\/weblink.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"featured\",\"images\"], \"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (3,'Contact','com_contact.contact','{\"special\":{\"dbtable\":\"#__contact_details\",\"key\":\"id\",\"type\":\"Contact\",\"prefix\":\"ContactTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"address\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"image\", \"core_urls\":\"webpage\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"con_position\":\"con_position\",\"suburb\":\"suburb\",\"state\":\"state\",\"country\":\"country\",\"postcode\":\"postcode\",\"telephone\":\"telephone\",\"fax\":\"fax\",\"misc\":\"misc\",\"email_to\":\"email_to\",\"default_con\":\"default_con\",\"user_id\":\"user_id\",\"mobile\":\"mobile\",\"sortname1\":\"sortname1\",\"sortname2\":\"sortname2\",\"sortname3\":\"sortname3\"}}','ContactHelperRoute::getContactRoute','{\"formFile\":\"administrator\\/components\\/com_contact\\/models\\/forms\\/contact.xml\",\"hideFields\":[\"default_con\",\"checked_out\",\"checked_out_time\",\"version\",\"xreference\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"], \"displayLookup\":[ {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ] }');
INSERT INTO `mp75b_content_types` VALUES (4,'Newsfeed','com_newsfeeds.newsfeed','{\"special\":{\"dbtable\":\"#__newsfeeds\",\"key\":\"id\",\"type\":\"Newsfeed\",\"prefix\":\"NewsfeedsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"xreference\", \"asset_id\":\"null\"}, \"special\":{\"numarticles\":\"numarticles\",\"cache_time\":\"cache_time\",\"rtl\":\"rtl\"}}','NewsfeedsHelperRoute::getNewsfeedRoute','{\"formFile\":\"administrator\\/components\\/com_newsfeeds\\/models\\/forms\\/newsfeed.xml\",\"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\"],\"convertToInt\":[\"publish_up\", \"publish_down\", \"featured\", \"ordering\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (5,'User','com_users.user','{\"special\":{\"dbtable\":\"#__users\",\"key\":\"id\",\"type\":\"User\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"null\",\"core_alias\":\"username\",\"core_created_time\":\"registerdate\",\"core_modified_time\":\"lastvisitDate\",\"core_body\":\"null\", \"core_hits\":\"null\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"access\":\"null\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"null\", \"core_language\":\"null\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"null\", \"core_ordering\":\"null\", \"core_metakey\":\"null\", \"core_metadesc\":\"null\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{}}','UsersHelperRoute::getUserRoute','');
INSERT INTO `mp75b_content_types` VALUES (6,'Article Category','com_content.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContentHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (7,'Contact Category','com_contact.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','ContactHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (8,'Newsfeeds Category','com_newsfeeds.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','NewsfeedsHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (9,'Weblinks Category','com_weblinks.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','WeblinksHelperRoute::getCategoryRoute','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (10,'Tag','com_tags.tag','{\"special\":{\"dbtable\":\"#__tags\",\"key\":\"tag_id\",\"type\":\"Tag\",\"prefix\":\"TagsTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"featured\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"urls\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"null\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\"}}','TagsHelperRoute::getTagRoute','{\"formFile\":\"administrator\\/components\\/com_tags\\/models\\/forms\\/tag.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"lft\", \"rgt\", \"level\", \"path\", \"urls\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"],\"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `mp75b_content_types` VALUES (11,'Banner','com_banners.banner','{\"special\":{\"dbtable\":\"#__banners\",\"key\":\"id\",\"type\":\"Banner\",\"prefix\":\"BannersTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"name\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created\",\"core_modified_time\":\"modified\",\"core_body\":\"description\", \"core_hits\":\"null\",\"core_publish_up\":\"publish_up\",\"core_publish_down\":\"publish_down\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"images\", \"core_urls\":\"link\", \"core_version\":\"version\", \"core_ordering\":\"ordering\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"catid\", \"core_xreference\":\"null\", \"asset_id\":\"null\"}, \"special\":{\"imptotal\":\"imptotal\", \"impmade\":\"impmade\", \"clicks\":\"clicks\", \"clickurl\":\"clickurl\", \"custombannercode\":\"custombannercode\", \"cid\":\"cid\", \"purchase_type\":\"purchase_type\", \"track_impressions\":\"track_impressions\", \"track_clicks\":\"track_clicks\"}}','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/banner.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\", \"reset\"],\"ignoreChanges\":[\"modified_by\", \"modified\", \"checked_out\", \"checked_out_time\", \"version\", \"imptotal\", \"impmade\", \"reset\"], \"convertToInt\":[\"publish_up\", \"publish_down\", \"ordering\"], \"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"cid\",\"targetTable\":\"#__banner_clients\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"created_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"modified_by\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"} ]}');
INSERT INTO `mp75b_content_types` VALUES (12,'Banners Category','com_banners.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\": {\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"asset_id\",\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
INSERT INTO `mp75b_content_types` VALUES (13,'Banner Client','com_banners.client','{\"special\":{\"dbtable\":\"#__banner_clients\",\"key\":\"id\",\"type\":\"Client\",\"prefix\":\"BannersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_banners\\/models\\/forms\\/client.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\"], \"ignoreChanges\":[\"checked_out\", \"checked_out_time\"], \"convertToInt\":[], \"displayLookup\":[]}');
INSERT INTO `mp75b_content_types` VALUES (14,'User Notes','com_users.note','{\"special\":{\"dbtable\":\"#__user_notes\",\"key\":\"id\",\"type\":\"Note\",\"prefix\":\"UsersTable\"}}','','','','{\"formFile\":\"administrator\\/components\\/com_users\\/models\\/forms\\/note.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\", \"publish_up\", \"publish_down\"],\"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\"], \"convertToInt\":[\"publish_up\", \"publish_down\"],\"displayLookup\":[{\"sourceColumn\":\"catid\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}, {\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}]}');
INSERT INTO `mp75b_content_types` VALUES (15,'User Notes Category','com_users.category','{\"special\":{\"dbtable\":\"#__categories\",\"key\":\"id\",\"type\":\"Category\",\"prefix\":\"JTable\",\"config\":\"array()\"},\"common\":{\"dbtable\":\"#__ucm_content\",\"key\":\"ucm_id\",\"type\":\"Corecontent\",\"prefix\":\"JTable\",\"config\":\"array()\"}}','','{\"common\":{\"core_content_item_id\":\"id\",\"core_title\":\"title\",\"core_state\":\"published\",\"core_alias\":\"alias\",\"core_created_time\":\"created_time\",\"core_modified_time\":\"modified_time\",\"core_body\":\"description\", \"core_hits\":\"hits\",\"core_publish_up\":\"null\",\"core_publish_down\":\"null\",\"core_access\":\"access\", \"core_params\":\"params\", \"core_featured\":\"null\", \"core_metadata\":\"metadata\", \"core_language\":\"language\", \"core_images\":\"null\", \"core_urls\":\"null\", \"core_version\":\"version\", \"core_ordering\":\"null\", \"core_metakey\":\"metakey\", \"core_metadesc\":\"metadesc\", \"core_catid\":\"parent_id\", \"core_xreference\":\"null\", \"asset_id\":\"asset_id\"}, \"special\":{\"parent_id\":\"parent_id\",\"lft\":\"lft\",\"rgt\":\"rgt\",\"level\":\"level\",\"path\":\"path\",\"extension\":\"extension\",\"note\":\"note\"}}','','{\"formFile\":\"administrator\\/components\\/com_categories\\/models\\/forms\\/category.xml\", \"hideFields\":[\"checked_out\",\"checked_out_time\",\"version\",\"lft\",\"rgt\",\"level\",\"path\",\"extension\"], \"ignoreChanges\":[\"modified_user_id\", \"modified_time\", \"checked_out\", \"checked_out_time\", \"version\", \"hits\", \"path\"], \"convertToInt\":[\"publish_up\", \"publish_down\"], \"displayLookup\":[{\"sourceColumn\":\"created_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"}, {\"sourceColumn\":\"access\",\"targetTable\":\"#__viewlevels\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"},{\"sourceColumn\":\"modified_user_id\",\"targetTable\":\"#__users\",\"targetColumn\":\"id\",\"displayColumn\":\"name\"},{\"sourceColumn\":\"parent_id\",\"targetTable\":\"#__categories\",\"targetColumn\":\"id\",\"displayColumn\":\"title\"}]}');
UNLOCK TABLES;

-- Table structure for table `mp75b_contentitem_tag_map`

DROP TABLE IF EXISTS `mp75b_contentitem_tag_map`;
CREATE TABLE `mp75b_contentitem_tag_map` (
  `type_alias` varchar(255) NOT NULL DEFAULT '',
  `core_content_id` int(10) unsigned NOT NULL COMMENT 'PK from the core content table',
  `content_item_id` int(11) NOT NULL COMMENT 'PK from the content type table',
  `tag_id` int(10) unsigned NOT NULL COMMENT 'PK from the tag table',
  `tag_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date of most recent save for this tag-item',
  `type_id` mediumint(8) NOT NULL COMMENT 'PK from the content_type table',
  UNIQUE KEY `uc_ItemnameTagid` (`type_id`,`content_item_id`,`tag_id`),
  KEY `idx_tag_type` (`tag_id`,`type_id`),
  KEY `idx_date_id` (`tag_date`,`tag_id`),
  KEY `idx_tag` (`tag_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_core_content_id` (`core_content_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Maps items from content tables to tags';

-- Dumping data for table `mp75b_contentitem_tag_map`

LOCK TABLES `mp75b_contentitem_tag_map` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_core_log_searches`

DROP TABLE IF EXISTS `mp75b_core_log_searches`;
CREATE TABLE `mp75b_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(10) unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_core_log_searches`

LOCK TABLES `mp75b_core_log_searches` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_categories`

DROP TABLE IF EXISTS `mp75b_djc2_categories`;
CREATE TABLE `mp75b_djc2_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` mediumtext,
  `parent_id` int(11) NOT NULL,
  `metatitle` varchar(255) DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `published` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL,
  `params` text,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_parent_id` (`parent_id`),
  KEY `idx_published` (`published`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_categories`

LOCK TABLES `mp75b_djc2_categories` WRITE;
INSERT INTO `mp75b_djc2_categories` VALUES (2,'刀具產品','knife','',0,'','','',1,1,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-08-26 08:23:06',584);
INSERT INTO `mp75b_djc2_categories` VALUES (3,'中式廚刀系列','zhknife','',2,'','','',1,1,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-05 14:53:31',584);
INSERT INTO `mp75b_djc2_categories` VALUES (4,'自動咖啡機','coffee-machine','',5,'','','',0,2,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-05 14:54:00',584);
INSERT INTO `mp75b_djc2_categories` VALUES (5,'摺疊鋼刀系列','foldingknife','',2,'','','',1,3,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-05 14:59:01',584);
INSERT INTO `mp75b_djc2_categories` VALUES (6,'法式蔬食','vegan','',0,'','','',0,3,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"0\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"0\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-05 18:17:45',584);
INSERT INTO `mp75b_djc2_categories` VALUES (7,'A 蔬菜餐','a','',6,'','','',0,3,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-05 18:29:21',584);
INSERT INTO `mp75b_djc2_categories` VALUES (8,'B 套餐','b','',6,'','','',0,4,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-05 18:29:56',584);
INSERT INTO `mp75b_djc2_categories` VALUES (9,'附餐單點','c','',6,'','','',0,5,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-05 18:30:08',584);
INSERT INTO `mp75b_djc2_categories` VALUES (10,'切片刀系列','zhknife1','',3,'','','',1,4,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-14 06:35:18',584);
INSERT INTO `mp75b_djc2_categories` VALUES (11,'剁刀系列','zhknife2','',3,'','','',1,5,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-14 06:35:18',584);
INSERT INTO `mp75b_djc2_categories` VALUES (12,'非洲','africa','',3,'','','',0,6,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-14 06:35:18',584);
INSERT INTO `mp75b_djc2_categories` VALUES (13,'西式料理主廚刀','enknife','',2,'','','',1,2,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-15 03:15:26',584);
INSERT INTO `mp75b_djc2_categories` VALUES (14,'原料設備器皿','rdc','',5,'','','',0,3,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-15 03:18:02',584);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_countries`

DROP TABLE IF EXISTS `mp75b_djc2_countries`;
CREATE TABLE `mp75b_djc2_countries` (
  `id` smallint(1) unsigned NOT NULL AUTO_INCREMENT,
  `country_name` char(64) DEFAULT NULL,
  `country_3_code` char(3) DEFAULT NULL,
  `country_2_code` char(2) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `is_eu` smallint(6) NOT NULL,
  `is_default` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_country_3_code` (`country_3_code`),
  KEY `idx_country_2_code` (`country_2_code`)
) ENGINE=MyISAM AUTO_INCREMENT=249 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_countries`

LOCK TABLES `mp75b_djc2_countries` WRITE;
INSERT INTO `mp75b_djc2_countries` VALUES (1,'Afghanistan','AFG','AF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (2,'Albania','ALB','AL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (3,'Algeria','DZA','DZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (4,'American Samoa','ASM','AS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (5,'Andorra','AND','AD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (6,'Angola','AGO','AO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (7,'Anguilla','AIA','AI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (8,'Antarctica','ATA','AQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (9,'Antigua and Barbuda','ATG','AG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (10,'Argentina','ARG','AR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (11,'Armenia','ARM','AM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (12,'Aruba','ABW','AW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (13,'Australia','AUS','AU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (14,'Austria','AUT','AT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (15,'Azerbaijan','AZE','AZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (16,'Bahamas','BHS','BS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (17,'Bahrain','BHR','BH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (18,'Bangladesh','BGD','BD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (19,'Barbados','BRB','BB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (20,'Belarus','BLR','BY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (21,'Belgium','BEL','BE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (22,'Belize','BLZ','BZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (23,'Benin','BEN','BJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (24,'Bermuda','BMU','BM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (25,'Bhutan','BTN','BT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (26,'Bolivia','BOL','BO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (27,'Bosnia and Herzegowina','BIH','BA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (28,'Botswana','BWA','BW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (29,'Bouvet Island','BVT','BV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (30,'Brazil','BRA','BR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (31,'British Indian Ocean Territory','IOT','IO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (32,'Brunei Darussalam','BRN','BN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (33,'Bulgaria','BGR','BG',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (34,'Burkina Faso','BFA','BF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (35,'Burundi','BDI','BI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (36,'Cambodia','KHM','KH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (37,'Cameroon','CMR','CM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (38,'Canada','CAN','CA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (39,'Cape Verde','CPV','CV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (40,'Cayman Islands','CYM','KY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (41,'Central African Republic','CAF','CF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (42,'Chad','TCD','TD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (43,'Chile','CHL','CL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (44,'China','CHN','CN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (45,'Christmas Island','CXR','CX',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (46,'Cocos (Keeling) Islands','CCK','CC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (47,'Colombia','COL','CO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (48,'Comoros','COM','KM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (49,'Congo','COG','CG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (50,'Cook Islands','COK','CK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (51,'Costa Rica','CRI','CR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (52,'Cote D\'Ivoire','CIV','CI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (53,'Croatia','HRV','HR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (54,'Cuba','CUB','CU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (55,'Cyprus','CYP','CY',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (56,'Czech Republic','CZE','CZ',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (57,'Denmark','DNK','DK',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (58,'Djibouti','DJI','DJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (59,'Dominica','DMA','DM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (60,'Dominican Republic','DOM','DO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (61,'East Timor','TMP','TP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (62,'Ecuador','ECU','EC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (63,'Egypt','EGY','EG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (64,'El Salvador','SLV','SV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (65,'Equatorial Guinea','GNQ','GQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (66,'Eritrea','ERI','ER',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (67,'Estonia','EST','EE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (68,'Ethiopia','ETH','ET',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (69,'Falkland Islands (Malvinas)','FLK','FK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (70,'Faroe Islands','FRO','FO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (71,'Fiji','FJI','FJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (72,'Finland','FIN','FI',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (73,'France','FRA','FR',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (75,'French Guiana','GUF','GF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (76,'French Polynesia','PYF','PF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (77,'French Southern Territories','ATF','TF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (78,'Gabon','GAB','GA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (79,'Gambia','GMB','GM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (80,'Georgia','GEO','GE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (81,'Germany','DEU','DE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (82,'Ghana','GHA','GH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (83,'Gibraltar','GIB','GI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (84,'Greece','GRC','GR',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (85,'Greenland','GRL','GL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (86,'Grenada','GRD','GD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (87,'Guadeloupe','GLP','GP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (88,'Guam','GUM','GU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (89,'Guatemala','GTM','GT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (90,'Guinea','GIN','GN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (91,'Guinea-bissau','GNB','GW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (92,'Guyana','GUY','GY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (93,'Haiti','HTI','HT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (94,'Heard and Mc Donald Islands','HMD','HM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (95,'Honduras','HND','HN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (96,'Hong Kong','HKG','HK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (97,'Hungary','HUN','HU',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (98,'Iceland','ISL','IS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (99,'India','IND','IN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (100,'Indonesia','IDN','ID',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (101,'Iran (Islamic Republic of)','IRN','IR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (102,'Iraq','IRQ','IQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (103,'Ireland','IRL','IE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (104,'Israel','ISR','IL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (105,'Italy','ITA','IT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (106,'Jamaica','JAM','JM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (107,'Japan','JPN','JP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (108,'Jordan','JOR','JO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (109,'Kazakhstan','KAZ','KZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (110,'Kenya','KEN','KE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (111,'Kiribati','KIR','KI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (112,'Korea, Democratic People\'s Republic of','PRK','KP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (113,'Korea, Republic of','KOR','KR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (114,'Kuwait','KWT','KW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (115,'Kyrgyzstan','KGZ','KG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (116,'Lao People\'s Democratic Republic','LAO','LA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (117,'Latvia','LVA','LV',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (118,'Lebanon','LBN','LB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (119,'Lesotho','LSO','LS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (120,'Liberia','LBR','LR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (121,'Libya','LBY','LY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (122,'Liechtenstein','LIE','LI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (123,'Lithuania','LTU','LT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (124,'Luxembourg','LUX','LU',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (125,'Macau','MAC','MO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (126,'Macedonia, The Former Yugoslav Republic of','MKD','MK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (127,'Madagascar','MDG','MG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (128,'Malawi','MWI','MW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (129,'Malaysia','MYS','MY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (130,'Maldives','MDV','MV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (131,'Mali','MLI','ML',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (132,'Malta','MLT','MT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (133,'Marshall Islands','MHL','MH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (134,'Martinique','MTQ','MQ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (135,'Mauritania','MRT','MR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (136,'Mauritius','MUS','MU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (137,'Mayotte','MYT','YT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (138,'Mexico','MEX','MX',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (139,'Micronesia, Federated States of','FSM','FM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (140,'Moldova, Republic of','MDA','MD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (141,'Monaco','MCO','MC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (142,'Mongolia','MNG','MN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (143,'Montserrat','MSR','MS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (144,'Morocco','MAR','MA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (145,'Mozambique','MOZ','MZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (146,'Myanmar','MMR','MM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (147,'Namibia','NAM','NA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (148,'Nauru','NRU','NR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (149,'Nepal','NPL','NP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (150,'Netherlands','NLD','NL',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (151,'Netherlands Antilles','ANT','AN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (152,'New Caledonia','NCL','NC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (153,'New Zealand','NZL','NZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (154,'Nicaragua','NIC','NI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (155,'Niger','NER','NE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (156,'Nigeria','NGA','NG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (157,'Niue','NIU','NU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (158,'Norfolk Island','NFK','NF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (159,'Northern Mariana Islands','MNP','MP',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (160,'Norway','NOR','NO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (161,'Oman','OMN','OM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (162,'Pakistan','PAK','PK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (163,'Palau','PLW','PW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (164,'Panama','PAN','PA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (165,'Papua New Guinea','PNG','PG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (166,'Paraguay','PRY','PY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (167,'Peru','PER','PE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (168,'Philippines','PHL','PH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (169,'Pitcairn','PCN','PN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (170,'Poland','POL','PL',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (171,'Portugal','PRT','PT',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (172,'Puerto Rico','PRI','PR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (173,'Qatar','QAT','QA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (174,'Reunion','REU','RE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (175,'Romania','ROM','RO',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (176,'Russian Federation','RUS','RU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (177,'Rwanda','RWA','RW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (178,'Saint Kitts and Nevis','KNA','KN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (179,'Saint Lucia','LCA','LC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (180,'Saint Vincent and the Grenadines','VCT','VC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (181,'Samoa','WSM','WS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (182,'San Marino','SMR','SM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (183,'Sao Tome and Principe','STP','ST',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (184,'Saudi Arabia','SAU','SA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (185,'Senegal','SEN','SN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (186,'Seychelles','SYC','SC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (187,'Sierra Leone','SLE','SL',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (188,'Singapore','SGP','SG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (189,'Slovakia','SVK','SK',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (190,'Slovenia','SVN','SI',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (191,'Solomon Islands','SLB','SB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (192,'Somalia','SOM','SO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (193,'South Africa','ZAF','ZA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (194,'South Georgia and the South Sandwich Islands','SGS','GS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (195,'Spain','ESP','ES',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (196,'Sri Lanka','LKA','LK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (197,'St. Helena','SHN','SH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (198,'St. Pierre and Miquelon','SPM','PM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (199,'Sudan','SDN','SD',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (200,'Suriname','SUR','SR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (201,'Svalbard and Jan Mayen Islands','SJM','SJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (202,'Swaziland','SWZ','SZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (203,'Sweden','SWE','SE',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (204,'Switzerland','CHE','CH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (205,'Syrian Arab Republic','SYR','SY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (206,'Taiwan','TWN','TW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (207,'Tajikistan','TJK','TJ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (208,'Tanzania, United Republic of','TZA','TZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (209,'Thailand','THA','TH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (210,'Togo','TGO','TG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (211,'Tokelau','TKL','TK',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (212,'Tonga','TON','TO',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (213,'Trinidad and Tobago','TTO','TT',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (214,'Tunisia','TUN','TN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (215,'Turkey','TUR','TR',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (216,'Turkmenistan','TKM','TM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (217,'Turks and Caicos Islands','TCA','TC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (218,'Tuvalu','TUV','TV',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (219,'Uganda','UGA','UG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (220,'Ukraine','UKR','UA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (221,'United Arab Emirates','ARE','AE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (222,'United Kingdom','GBR','GB',1,1,0);
INSERT INTO `mp75b_djc2_countries` VALUES (223,'United States','USA','US',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (224,'United States Minor Outlying Islands','UMI','UM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (225,'Uruguay','URY','UY',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (226,'Uzbekistan','UZB','UZ',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (227,'Vanuatu','VUT','VU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (228,'Vatican City State (Holy See)','VAT','VA',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (229,'Venezuela','VEN','VE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (230,'Viet Nam','VNM','VN',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (231,'Virgin Islands (British)','VGB','VG',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (232,'Virgin Islands (U.S.)','VIR','VI',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (233,'Wallis and Futuna Islands','WLF','WF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (234,'Western Sahara','ESH','EH',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (235,'Yemen','YEM','YE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (237,'The Democratic Republic of Congo','DRC','DC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (238,'Zambia','ZMB','ZM',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (239,'Zimbabwe','ZWE','ZW',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (240,'East Timor','XET','XE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (241,'Jersey','JEY','JE',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (242,'St. Barthelemy','XSB','XB',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (243,'St. Eustatius','XSE','XU',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (244,'Canary Islands','XCA','XC',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (245,'Serbia','SRB','RS',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (246,'Sint Maarten (French Antilles)','MAF','MF',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (247,'Sint Maarten (Netherlands Antilles)','SXM','SX',1,0,0);
INSERT INTO `mp75b_djc2_countries` VALUES (248,'Palestinian Territory, occupied','PSE','PS',1,0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_customer_groups`

DROP TABLE IF EXISTS `mp75b_djc2_customer_groups`;
CREATE TABLE `mp75b_djc2_customer_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_customer_groups`

LOCK TABLES `mp75b_djc2_customer_groups` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_files`

DROP TABLE IF EXISTS `mp75b_djc2_files`;
CREATE TABLE `mp75b_djc2_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ext` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `caption` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`),
  KEY `idx_item_type_ordering` (`item_id`,`type`,`ordering`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_files`

LOCK TABLES `mp75b_djc2_files` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_images`

DROP TABLE IF EXISTS `mp75b_djc2_images`;
CREATE TABLE `mp75b_djc2_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `type` varchar(64) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `ext` varchar(255) NOT NULL,
  `path` varchar(255) DEFAULT NULL,
  `fullpath` varchar(255) DEFAULT NULL,
  `caption` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `exclude` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `item_id` (`item_id`),
  KEY `idx_item_type_ordering` (`item_id`,`type`,`ordering`),
  KEY `idx_exclude` (`exclude`)
) ENGINE=MyISAM AUTO_INCREMENT=485 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_images`

LOCK TABLES `mp75b_djc2_images` WRITE;
INSERT INTO `mp75b_djc2_images` VALUES (4,1,'producer','gavick.png','gavick','png','producer/0','producer/0/gavick.png','logo',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (439,102,'item','vegan-b-2.3.jpg','vegan-b-2.3','jpg','item/1','item/1/vegan-b-2.3.jpg','雞尾酒－藍色夏威夷',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (438,102,'item','vegan-b-2.2.jpg','vegan-b-2.2','jpg','item/1','item/1/vegan-b-2.2.jpg','水果沙拉',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (437,102,'item','vegan-b-2.1.jpg','vegan-b-2.1','jpg','item/1','item/1/vegan-b-2.1.jpg','法式南瓜濃湯',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (436,104,'item','vegan-b-4.3.jpg','vegan-b-4.3','jpg','item/1','item/1/vegan-b-4.3.jpg','薩爾瓦多溫泉咖啡',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (435,104,'item','vegan-b-4.2.jpg','vegan-b-4.2','jpg','item/1','item/1/vegan-b-4.2.jpg','蔬菜沙拉',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (434,104,'item','vegan-b-4.1.jpg','vegan-b-4.1','jpg','item/1','item/1/vegan-b-4.1.jpg','法式南瓜濃湯',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (433,101,'item','vegan-b-1.3.jpg','vegan-b-1.3','jpg','item/1','item/1/vegan-b-1.3.jpg','青檸氣泡',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (432,101,'item','vegan-b-1.2.jpg','vegan-b-1.2','jpg','item/1','item/1/vegan-b-1.2.jpg','鮪魚沙拉',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (431,101,'item','vegan-b-1.1.jpg','vegan-b-1.1','jpg','item/1','item/1/vegan-b-1.1.jpg','法式南瓜濃湯',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (430,105,'item','vegan-b-5.3.jpg','vegan-b-5.3','jpg','item/1','item/1/vegan-b-5.3.jpg','檸檬紅茶',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (429,105,'item','vegan-b-5.2.jpg','vegan-b-5.2','jpg','item/1','item/1/vegan-b-5.2.jpg','水果沙拉',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (428,105,'item','vegan-b-5.1.jpg','vegan-b-5.1','jpg','item/1','item/1/vegan-b-5.1.jpg','番茄濃湯',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (427,103,'item','vegan-b-3.3.jpg','vegan-b-3.3','jpg','item/1','item/1/vegan-b-3.3.jpg','雞尾酒－檸莓夏戀',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (426,103,'item','vegan-b-3.2.jpg','vegan-b-3.2','jpg','item/1','item/1/vegan-b-3.2.jpg','蔬菜沙拉',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (425,103,'item','vegan-b-3.1.jpg','vegan-b-3.1','jpg','item/1','item/1/vegan-b-3.1.jpg','番茄濃湯',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (423,99,'item','vegan-a-4.4.jpg','vegan-a-4.4','jpg','item/0','item/0/vegan-a-4.4.jpg','水果鮮奶酪',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (422,99,'item','vegan-a-4.3.jpg','vegan-a-4.3','jpg','item/0','item/0/vegan-a-4.3.jpg','青檸氣泡',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (421,99,'item','vegan-a-4.2.jpg','vegan-a-4.2','jpg','item/0','item/0/vegan-a-4.2.jpg','番茄濃湯',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (420,99,'item','vegan-a-4.1.jpg','vegan-a-4.1','jpg','item/0','item/0/vegan-a-4.1.jpg','蔬菜沙拉',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (419,98,'item','vegan-a-3.4.jpg','vegan-a-3.4','jpg','item/0','item/0/vegan-a-3.4.jpg','水果鮮奶酪',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (418,98,'item','vegan-a-3.3.jpg','vegan-a-3.3','jpg','item/0','item/0/vegan-a-3.3.jpg','檸檬紅茶',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (417,98,'item','vegan-a-3.2.jpg','vegan-a-3.2','jpg','item/0','item/0/vegan-a-3.2.jpg','番茄濃湯',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (416,98,'item','vegan-a-3.1.jpg','vegan-a-3.1','jpg','item/0','item/0/vegan-a-3.1.jpg','水果沙拉',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (415,97,'item','vegan-a-2.4.jpg','vegan-a-2.4','jpg','item/0','item/0/vegan-a-2.4.jpg','輕乳酪蛋糕',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (414,97,'item','vegan-a-2.3.jpg','vegan-a-2.3','jpg','item/0','item/0/vegan-a-2.3.jpg','雞尾酒－檸莓夏戀',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (413,97,'item','vegan-a-2.2.jpg','vegan-a-2.2','jpg','item/0','item/0/vegan-a-2.2.jpg','法式南瓜濃湯',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (412,97,'item','vegan-a-2.1.jpg','vegan-a-2.1','jpg','item/0','item/0/vegan-a-2.1.jpg','鮪魚沙拉',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (411,96,'item','vegan-a-1.4.jpg','vegan-a-1.4','jpg','item/0','item/0/vegan-a-1.4.jpg','輕乳酪蛋糕',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (410,96,'item','vegan-a-1.3.jpg','vegan-a-1.3','jpg','item/0','item/0/vegan-a-1.3.jpg','薩爾瓦多溫泉咖啡',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (424,96,'item','vegan-a-1.2.jpg','vegan-a-1.2','jpg','item/0','item/0/vegan-a-1.2.jpg','蔬菜濃湯',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (408,96,'item','vegan-a-1.1.jpg','vegan-a-1.1','jpg','item/0','item/0/vegan-a-1.1.jpg','蔬菜沙拉',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (407,100,'item','vegan-a-5.4.jpg','vegan-a-5.4','jpg','item/1','item/1/vegan-a-5.4.jpg','水果鮮奶酪',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (406,100,'item','vegan-a-5.3.jpg','vegan-a-5.3','jpg','item/1','item/1/vegan-a-5.3.jpg','雞尾酒－藍色夏威夷',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (405,100,'item','vegan-a-5.2.jpg','vegan-a-5.2','jpg','item/1','item/1/vegan-a-5.2.jpg','法式南瓜濃湯',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (404,100,'item','vegan-a-5.1.jpg','vegan-a-5.1','jpg','item/1','item/1/vegan-a-5.1.jpg','水果沙拉',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (466,113,'item','055ec99eb90a12a976d1b406153aef20.1.jpg','055ec99eb90a12a976d1b406153aef20.1','jpg','item/1','item/1/055ec99eb90a12a976d1b406153aef20.1.jpg','055ec99eb90a12a976d1b406153aef20.1',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (478,65,'item','knife-5.jpg','knife-5','jpg','item/0','item/0/knife-5.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (401,87,'item','coffee-27.1.jpg','coffee-27.1','jpg','item/0','item/0/coffee-27.1.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (473,115,'item','055ec99eb90a12a976d1b406153aef20.3.jpg','055ec99eb90a12a976d1b406153aef20.3','jpg','item/1','item/1/055ec99eb90a12a976d1b406153aef20.3.jpg','055ec99eb90a12a976d1b406153aef20.3',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (455,84,'item','coffee-24.jpg','coffee-24','jpg','item/0','item/0/coffee-24.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (449,83,'item','coffee-23.jpg','coffee-23','jpg','item/0','item/0/coffee-23.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (452,82,'item','coffee-22.jpg','coffee-22','jpg','item/0','item/0/coffee-22.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (454,81,'item','coffee-21.jpg','coffee-21','jpg','item/0','item/0/coffee-21.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (390,76,'item','coffee-16.1.jpg','coffee-16.1','jpg','item/0','item/0/coffee-16.1.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (467,114,'item','055ec99eb90a12a976d1b406153aef20.2.jpg','055ec99eb90a12a976d1b406153aef20.2','jpg','item/1','item/1/055ec99eb90a12a976d1b406153aef20.2.jpg','055ec99eb90a12a976d1b406153aef20.2',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (476,63,'item','knife-3.jpg','knife-3','jpg','item/0','item/0/knife-3.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (374,111,'item','vegan-c-6.jpg','vegan-c-6','jpg','item/1','item/1/vegan-c-6.jpg','精緻甜點',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (372,110,'item','vegan-c-5.jpg','vegan-c-5','jpg','item/1','item/1/vegan-c-5.jpg','薩爾瓦多溫泉咖啡',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (375,109,'item','vegan-c-4.jpg','vegan-c-4','jpg','item/1','item/1/vegan-c-4.jpg','鮮蔬果汁',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (370,108,'item','vegan-c-3.jpg','vegan-c-3','jpg','item/1','item/1/vegan-c-3.jpg','法式酥烤香草麵包',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (369,107,'item','vegan-c-2.jpg','vegan-c-2','jpg','item/1','item/1/vegan-c-2.jpg','法式南瓜濃湯',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (368,106,'item','vegan-c-1.jpg','vegan-c-1','jpg','item/1','item/1/vegan-c-1.jpg','田園蔬菜沙拉',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (367,105,'item','vegan-b-5.jpg','vegan-b-5','jpg','item/1','item/1/vegan-b-5.jpg','義式迷迭酥烤千層捲',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (366,104,'item','vegan-b-4.jpg','vegan-b-4','jpg','item/1','item/1/vegan-b-4.jpg','南洋椰香咖哩飯  ',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (365,103,'item','vegan-b-3.jpg','vegan-b-3','jpg','item/1','item/1/vegan-b-3.jpg','義式鮮蔬南瓜焗飯',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (364,102,'item','vegan-b-2.jpg','vegan-b-2','jpg','item/1','item/1/vegan-b-2.jpg','辣味奶油蘑菇義大利麵  ',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (363,101,'item','vegan-b-1.jpg','vegan-b-1','jpg','item/1','item/1/vegan-b-1.jpg','紅蕃茄時蔬義大利麵',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (362,100,'item','vegan-a-5.jpg','vegan-a-5','jpg','item/1','item/1/vegan-a-5.jpg','鮮烤和風百果淮山盅',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (361,99,'item','vegan-a-4.jpg','vegan-a-4','jpg','item/0','item/0/vegan-a-4.jpg','安地那酥捲蔬菜盅',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (360,98,'item','vegan-a-3.jpg','vegan-a-3','jpg','item/0','item/0/vegan-a-3.jpg','法式焗烤蒔蔬麵包盅',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (359,97,'item','vegan-a-2.jpg','vegan-a-2','jpg','item/0','item/0/vegan-a-2.jpg','百匯鮮蔬烤筍排',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (472,95,'item','surrounding-2.jpg','surrounding-2','jpg','item/0','item/0/surrounding-2.jpg','5 人份虹吸壺附酒精燈組',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (358,96,'item','vegan-a-1.jpg','vegan-a-1','jpg','item/0','item/0/vegan-a-1.jpg','艾菲爾碳烤杏苞菇',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (468,93,'item','coffee-machine-5.jpg','coffee-machine-5','jpg','item/0','item/0/coffee-machine-5.jpg','ESAM6600 皇爵型',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (356,94,'item','surrounding-1.jpg','surrounding-1','jpg','item/0','item/0/surrounding-1.jpg','3 人份虹吸壺附酒精燈組',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (471,92,'item','coffee-machine-4.jpg','coffee-machine-4','jpg','item/0','item/0/coffee-machine-4.jpg','ESAM4400 時尚型',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (470,91,'item','coffee-machine-3.jpg','coffee-machine-3','jpg','item/0','item/0/coffee-machine-3.jpg','ESAM3500 新貴型',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (469,89,'item','coffee-machine-1.jpg','coffee-machine-1','jpg','item/0','item/0/coffee-machine-1.jpg','ESAM3200 浪漫型',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (352,90,'item','coffee-machine-2.jpg','coffee-machine-2','jpg','item/0','item/0/coffee-machine-2.jpg','ESAM3300 雅韻型',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (464,88,'item','coffee-28.jpg','coffee-28','jpg','item/0','item/0/coffee-28.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (465,112,'item','055ec99eb90a12a976d1b406153aef20.jpg','055ec99eb90a12a976d1b406153aef20','jpg','item/1','item/1/055ec99eb90a12a976d1b406153aef20.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (462,86,'item','coffee-25.jpg','coffee-25','jpg','item/0','item/0/coffee-25.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (453,85,'item','coffee-26.jpg','coffee-26','jpg','item/0','item/0/coffee-26.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (457,80,'item','coffee-20.jpg','coffee-20','jpg','item/0','item/0/coffee-20.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (461,79,'item','coffee-19.jpg','coffee-19','jpg','item/0','item/0/coffee-19.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (460,78,'item','coffee-18.jpg','coffee-18','jpg','item/0','item/0/coffee-18.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (451,77,'item','coffee-17.jpg','coffee-17','jpg','item/0','item/0/coffee-17.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (443,75,'item','coffee-15.jpg','coffee-15','jpg','item/0','item/0/coffee-15.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (448,74,'item','coffee-14.jpg','coffee-14','jpg','item/0','item/0/coffee-14.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (447,73,'item','coffee-13.jpg','coffee-13','jpg','item/0','item/0/coffee-13.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (463,72,'item','coffee-12.jpg','coffee-12','jpg','item/0','item/0/coffee-12.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (459,71,'item','coffee-11.jpg','coffee-11','jpg','item/0','item/0/coffee-11.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (444,70,'item','coffee-10.jpg','coffee-10','jpg','item/0','item/0/coffee-10.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (445,69,'item','coffee-9.jpg','coffee-9','jpg','item/0','item/0/coffee-9.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (458,68,'item','coffee-8.jpg','coffee-8','jpg','item/0','item/0/coffee-8.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (441,67,'item','coffee-7.jpg','coffee-7','jpg','item/0','item/0/coffee-7.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (479,66,'item','knife-6.jpg','knife-6','jpg','item/0','item/0/knife-6.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (477,64,'item','knife-4.jpg','knife-4','jpg','item/0','item/0/knife-4.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (475,62,'item','knife-2.jpg','knife-2','jpg','item/0','item/0/knife-2.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (474,61,'item','knife-1.jpg','knife-1','jpg','item/0','item/0/knife-1.jpg','',1,0);
INSERT INTO `mp75b_djc2_images` VALUES (480,61,'item','knife-1.1.jpg','knife-1.1','jpg','item/0','item/0/knife-1.1.jpg','',2,0);
INSERT INTO `mp75b_djc2_images` VALUES (481,61,'item','knife-1.2.jpg','knife-1.2','jpg','item/0','item/0/knife-1.2.jpg','',3,0);
INSERT INTO `mp75b_djc2_images` VALUES (482,61,'item','knife-1.3.jpg','knife-1.3','jpg','item/0','item/0/knife-1.3.jpg','',4,0);
INSERT INTO `mp75b_djc2_images` VALUES (483,61,'item','knife-1.4.jpg','knife-1.4','jpg','item/0','item/0/knife-1.4.jpg','',5,0);
INSERT INTO `mp75b_djc2_images` VALUES (484,61,'item','knife-1.5.jpg','knife-1.5','jpg','item/0','item/0/knife-1.5.jpg','',6,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items`

DROP TABLE IF EXISTS `mp75b_djc2_items`;
CREATE TABLE `mp75b_djc2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL DEFAULT '0',
  `producer_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` mediumtext,
  `intro_desc` text,
  `price` decimal(12,2) DEFAULT NULL,
  `special_price` decimal(12,2) DEFAULT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `available` int(11) NOT NULL DEFAULT '0',
  `metatitle` varchar(255) DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `published` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` int(11) NOT NULL DEFAULT '0',
  `hits` int(11) NOT NULL DEFAULT '0',
  `params` text,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_cat_id` (`cat_id`),
  KEY `idx_group_id` (`group_id`),
  KEY `idx_producer_id` (`producer_id`),
  KEY `idx_published` (`published`),
  KEY `idx_featured` (`featured`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items`

LOCK TABLES `mp75b_djc2_items` WRITE;
INSERT INTO `mp75b_djc2_items` VALUES (100,0,7,1,'鮮烤和風百果淮山盅','vegan-a-5','<p>百合及百果結合菇類的拌炒後’以白醬及迷迭香醍味’讓香草植物的香味’在口感與味覺中’呈現濃濃的普羅旺斯的私房菜味</p>\r\n<h4>套餐內容</h4>\r\n<p>水果沙拉<br /> 法式南瓜濃湯<br /> 雞尾酒－藍色夏威夷<br /> 水果鮮奶酪</p>','','0.00','0.00',0,1,'','','',0,5,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (99,0,7,1,'安地那酥捲蔬菜盅','vegan-a-4','<p>天然筍丁’洋菇及蔬菜香的拌炒後’佐以磨菇醬汁的和泥’在特製酥皮及起士絲的烘烤下’呈現出花朵般的細緻與誘人的味蕾</p>\r\n<h4>套餐內容</h4>\r\n<p>蔬菜沙拉<br /> 番茄濃湯<br /> 青檸氣泡<br /> 水果鮮奶酪</p>','','0.00','0.00',0,1,'','','',0,4,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (98,0,7,1,'法式焗烤蒔蔬麵包盅','vegan-a-3','<p>各式天然生機蔬菜’以義大利冷壓上等橄欖油新鮮搭配’在滑順的口感’更以義式醬汁的香味呈現’在麥香的引誘下’愛不釋手</p>\r\n<h4>套餐內容</h4>\r\n<p>水果沙拉<br /> 番茄濃湯<br /> 檸檬紅茶<br /> 水果鮮奶酪</p>','','0.00','0.00',0,1,'','','',0,3,0,2,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (97,0,7,1,'百匯鮮蔬烤筍排','vegan-a-2','<p>季節春筍’搭配生機蔬菜’佐以主廚特調義大利醬汁’新鮮天然美味’鮮甜細嫩’入口即化的咬勁’讓您意猶未盡</p>\r\n<h4>套餐內容</h4>\r\n<p>鮪魚沙拉<br /> 法式南瓜濃湯<br /> 雞尾酒－檸莓夏戀<br /> 輕乳酪蛋糕</p>','','0.00','0.00',0,1,'','','',0,2,0,2,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (96,0,7,1,'艾菲爾碳烤杏苞菇','vegan-a-1','<p>採自法國菇類蕈種’以台灣農業科技培育而成的高營養’高纖維質’口感媲 美上等鮑魚而得名’佐以本店特調松露醬汁’濃淡之間’顯現人間美味。</p>\r\n<h4>套餐內容</h4>\r\n<p>蔬菜沙拉<br /> 蔬菜濃湯<br /> 薩爾瓦多溫泉咖啡<br /> 輕乳酪蛋糕</p>','','0.00','0.00',0,1,'','','',0,1,0,9,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (95,0,14,1,'【Tiamo】TCA - 5 人份虹吸壺附酒精燈組','surrounding-2','<p>◆ 5 人份虹吸壼 + 酒精燈組◆操作簡易、收納方便,在家也可以享受好咖啡</p>','','2000.00','0.00',0,1,'','','',0,2,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:20:01',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (94,0,14,1,'【Tiamo】TCA - 3 人份虹吸壺附酒精燈組','surrounding-1','<p>◆ 3 人份虹吸壼 + 酒精燈組◆操作簡易、收納方便,在家也可以享受好咖啡</p>','','2000.00','0.00',0,1,'','','',0,1,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:20:01',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (93,0,4,1,'義大利全自動咖啡機 【ESAM6600 皇爵型】','coffee-machine-5','<p>※贈送特調義大利咖啡豆10磅※皇家爵品 經典完美</p>','','10000.00','0.00',0,1,'','','',0,5,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:04:18',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (92,0,4,1,'義大利全自動咖啡機 【ESAM4400 時尚型】','coffee-machine-4','<p>※贈送特調義大利咖啡豆10磅※時尚奢華 精緻卓越</p>','','10000.00','0.00',0,1,'','','',0,4,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:04:18',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (91,0,4,1,'義大利全自動咖啡機 【ESAM3500 新貴型】','coffee-machine-3','<p>※贈送特調義大利咖啡豆10磅※新穎貴氣 華麗摩登</p>','','10000.00','0.00',0,1,'','','',0,3,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:04:18',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (90,0,4,1,'義大利全自動咖啡機 【ESAM3300 雅韻型 】','coffee-machine-2','<p>※贈送特調義大利咖啡豆10磅※優雅風韻 多姿多采</p>','','10000.00','0.00',0,1,'','','',0,2,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:04:18',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (89,0,4,1,'義大利全自動咖啡機 【ESAM3200 浪漫型】','coffee-machine-1','<p>※贈送特調義大利咖啡豆10磅※浪漫唯美 氣質出眾</p>','','10000.00','0.00',0,1,'','','',0,1,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:04:18',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (88,0,3,1,'A級牙買加藍山 Blue mountain coffee 454g','coffee-28','<p>產地來自於牙買加，加勒比海氣候的薰孕出世界級的優良品質，讓藍山咖啡的美譽深植消費者心中，溫和又甘柔香醇的特性，是一般人可接受的標準口感。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_28_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,28,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (87,0,3,1,'牙買加產地藍山 Jamaica blue mountain 454g','coffee-27','<p>產地來自於牙買加高山豆，等級僅次於證書藍山口感、風味、質感豐富，老饕行家鑑賞的升等品味選擇。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,27,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (86,0,3,1,'台灣原生咖啡 Taiwan coffee 454g','coffee-25','<p>本土原生的咖啡故鄉-古坑，日據時代的物產之一，晉供日皇的禮物，現今台灣咖啡農的發揚光大，以原生栽種的方式，北回歸線的緯度上下，培殖了特有的台灣咖啡，香氣風味、溫和甘柔回甜的口感，比美進口的中美洲咖啡豆。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_25_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,26,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (85,0,3,1,'牙買加頂級證書藍山 Jamaica No.1 Blue Mountain 454g','coffee-26','<p>原裝進口橡木桶內裝生豆，精緻烘焙，具保證書品質保證，純度百分之百!!珠圓玉潤般的柔香，酸、甘、苦皆適中，是咖啡中的極品。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_26_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,25,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (84,0,3,1,'巴布亞新幾內亞 papua new guinea AA 454g','coffee-24','<p>地處熱帶氣候的大洋洲，獨特的氣候，孕育了獨特咖啡的特性，苦中回甘而醇厚的濃郁口感，特調他豆更顯香醇，純飲中不失滑潤而甘甜，值得一嚐。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_24_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,24,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (83,0,3,1,'盧安達 Rwanda washed Arabica 454g','coffee-23','<p>非洲豆的代表之一，水洗式阿拉比加品種，香氣的表現有著非洲的狂野但不失其原有的溫和感，濃郁又甘醇的本質，表露無遺。 </p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_23_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,23,0,2,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (82,0,3,1,'波多黎各 Puerto rico Yauco selecto AA 454g','coffee-22','<p>地處加勒比海氣候，海島型高山土壤的優勢栽種，是歐洲皇室貴族的最愛，顆粒飽滿、風味俱足、芳香濃郁，與牙買加藍山和夏威夷科娜豆，齊名於咖啡世界。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_22_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,22,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (81,0,3,1,'巴拿馬 Panama Carmen estate SHB 454g','coffee-21','<p>產地位於巴拿馬，地處中美與南美的緯度中，由以高海拔carmen農莊豆，SHB級的莊園豆，屬於大顆粒型豆，香氣溫和，甘柔滑順的口感，有如巧克力般。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_21_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,21,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (80,0,3,1,'墨西哥 Mexico Chiapas EP 454g','coffee-20','<p>產地墨國南方阿爾朵拉山區莊園，高海拔的氣候，手採選豆水洗方式，香氣微果酸的獨特口感，調配他豆的特色，中深度的烘焙，更能顯現香濃甘醇的口感。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_20_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,20,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (79,0,3,1,'哥倫比亞 Colombia san agustin 100% 454g','coffee-19','<p>哥倫比亞豆的最高等級之一，而san agustin農莊豆，更以得天獨厚的山區，最高海拔的栽種所生產的品質，絕無參雜他豆，口感、味蕾、香氣、無與倫比。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_19_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,19,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (78,0,3,1,'哥倫比亞 Colombia supremo 454g','coffee-18','<p>產地位於南美洲哥倫比亞，世界第二大咖啡出產國，阿拉比加品種的最優良產區之一，品質穩定，味道濃郁又香醇，顆粒大又均勻， 風味如釀酒般的香氣，讓人無法拒絕。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_18_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,18,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:43:17',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (77,0,3,1,'巴西喜拉朵 Brazil Cerrado ny2 454g','coffee-17','<p>產地位於巴西中部高海拔農莊豆，味道柔和的咖啡豆，風味變化豐富，最適合調配其他豆，都能呈現多種的咖啡口感，讓品嚐者嚐試多種口感變化。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_17_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,17,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:42:25',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (76,0,3,1,'巴西黃波旁 Brazil Yellow bourbon 454g','coffee-16','<p>咖啡大陸產地巴西，是巴西豆的上等品質，世界咖啡組織公認最穩定與溫和的巴西豆，口感檸檬香氣柔順，微酸甜而豐富的濃郁柔順感，讓人回味的咖啡。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_16_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,16,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:41:23',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (75,0,3,1,'薩爾瓦多溫泉咖啡 Salvador santa teresa pakamark 454g','coffee-15','<p>產地位於中美洲薩爾瓦多南部火山區，地處溫泉山岩，特殊土質的栽種，培孕出獨特的口感，濃醇甘柔甜味特強，香醇中，口齒留香撲鼻，非常特別，無與取代的咖啡。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_15_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,15,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:34:12',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (74,0,3,1,'瓜地馬拉葳葳特藍朵 Guatemala Huehuetenango SHB EP 454g','coffee-14','<p>產地來自於中美洲瓜地馬拉，年度競賽冠軍豆，是瓜地馬拉豆的首選，均勻的顆粒、亮度，本公司資深烘焙師親自用心烘焙，讓咖啡豆的既有口感，能表現得更釋放完整，甘醇中香濃的口感，讓人回味無窮。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_14_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,14,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:33:33',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (73,0,3,1,'瓜地馬拉花神 Guatemala La flor del café 454g','coffee-13','<p>產地位於中美洲瓜地馬拉，高海拔優良咖啡莊園，以最野生培育的方式，特殊的氣候、土壤、雨量、陽光、栽培出花果香，醇淨甘柔，香氣十足，特殊的口感，值得品嚐。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_13_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,13,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:32:28',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (72,0,3,1,'印尼黃金極品曼特寧 Indonesia Gold top mandheling 454g','coffee-12','<p>產地印尼蘇門達臘，在曼特寧品種中的高海拔農莊栽培，特有的香醇甘甜濃郁，在藍山咖啡未出現前，曾被視為咖啡的極品。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_12_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,12,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:31:43',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (71,0,3,1,'哥斯大黎加拉米尼塔 Costa Rica la minita 454g','coffee-11','<p>產地位於哥斯大黎加中部，三條河匯集處，是哥國最高等級的農莊豆，每年所產冠軍豆，產量有限，獨特的甘醇香濃，比美藍山，風味優雅。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_11_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,11,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:30:08',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (70,0,3,1,'衣索比亞凱蓓多Ethiopia Organic kebado 454g','coffee-10','<p>產地位於非洲衣索比亞，是咖啡發現的國度，而kebado有機野生栽種莊園海拔1900公尺是主要產區，風味優雅、香濃均衡、有特殊甜味。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_10_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,10,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:29:36',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (69,0,3,1,'衣索比亞耶加契夫 Ethiopia Yirgacheffee G-1 454g','coffee-9','<p>產地非洲衣索比亞YIRGACHEFFEE G-1等級，野生栽種，有著非洲曠野的奔放香氣，讓人著迷一口接一口的接吻的咖啡原液，愛不釋口。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_9_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,9,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:28:54',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (68,0,3,1,'坦尚尼亞克里曼加羅Tanzania AA Kilimanjaro KIBO 454g','coffee-8','<p>產地位於非洲肯亞艾古斯山高海拔莊園豆，特殊的甘醇、濃郁、優質香氣迷漫回甘中讓您口齒留香，意猶未盡的再來一杯。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_8_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,8,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:27:06',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (67,0,3,1,'肯亞莊園豆 Kenya AA Eaagads Estate 454g','coffee-7','<p>產地位於非洲肯亞艾古斯山高海拔莊園豆，特殊的甘醇、濃郁、優質香氣迷漫回甘中讓您口齒留香，意猶未盡的再來一杯。</p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_7_2.jpg\" alt=\"\" width=\"600\" /></p>\r\n<p><img src=\"images/com_aedes/hecto/coffee_beans/2_5_1_1_1_3.jpg\" alt=\"\" /></p>','','1000.00','0.00',0,1,'','','',0,7,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:25:50',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (66,0,3,1,'6寸片刀','knife-6','','','0.00','0.00',0,1,'','','',1,6,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:23:25',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (65,0,3,1,'半平片刀','knife-5','','','0.00','0.00',0,1,'','','',1,5,0,3,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:21:36',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (64,0,3,1,'三合柄牛刀(8寸)','knife-4','','','0.00','0.00',0,1,'','','',1,4,0,2,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:19:59',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (63,0,3,1,'三合柄6寸片刀','knife-3','','','0.00','0.00',0,1,'','','',1,3,0,7,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:18:08',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (62,0,3,1,'三合柄尖片刀','knife-2','','','0.00','0.00',0,1,'','','',1,2,0,10,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:15:24',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (61,0,3,1,'三合柄半平片刀','knife-1','','','0.00','0.00',0,1,'','','',1,1,0,36,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 01:09:04',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (101,0,8,1,'紅蕃茄時蔬義大利麵','vegan-b-1','<p>特選渾圓飽滿的新鮮蕃茄所手打的特調醬汁，甘甜不造作，清爽不膩，再帶點酸勁彷彿品嚐戀愛的滋味，最後撒上起司粉，讓人吃過意猶未盡，呼嚕嚕地保證吃得一乾二淨！</p>\r\n<h4>套餐內容</h4>\r\n<p>法式南瓜濃湯<br /> 鮪魚沙拉<br /> 青檸氣泡</p>','','0.00','0.00',0,1,'','','',0,1,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (102,0,8,1,'辣味奶油蘑菇義大利麵  ','vegan-b-2','<p>想嘗試重口味的麻吉們千萬不能錯過這一味，特選以奶油拌抄蘑菇素肉排絲加入少辣椒粉巴西利點綴，口感濃郁，溫和不傷胃，香氣逼人，保證令你垂涎三尺的人間極品！</p>\r\n<h4>套餐內容</h4>\r\n<p>法式南瓜濃湯<br /> 水果沙拉<br /> 雞尾酒－藍色夏威夷</p>','','0.00','0.00',0,1,'','','',0,2,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (103,0,8,1,'義式鮮蔬南瓜焗飯','vegan-b-3','<p>除了麵食類，當然還有可口誘人的美味焗飯，以南瓜泥、甜豆、蘑菇醬、撒上比薩絲烘烤的經典焗飯，鮮白的色澤看得不禁讓人胃口大開，嘴邊綻放的迷人甜味讓人回味不已！</p>\r\n<h4>套餐內容</h4>\r\n<p>番茄濃湯<br /> 蔬菜沙拉<br /> 雞尾酒－檸莓夏戀</p>','','0.00','0.00',0,1,'','','',0,3,0,2,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (104,0,8,1,'南洋椰香咖哩飯  ','vegan-b-4','<p>採印度香濃咖哩道地手法製作而成，混以五殼飯、青花椰、白花椰、馬鈴薯、紅黃椒等豐富食材，最後淋上南洋風味椰漿，讓口感加倍綿密滑順，挑逗味蕾神經最大極限！</p>\r\n<h4>套餐內容</h4>\r\n<p>法式南瓜濃湯<br /> 蔬菜沙拉<br /> 薩爾瓦多溫泉咖啡</p>','','0.00','0.00',0,1,'','','',0,4,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (105,0,8,1,'義式迷迭酥烤千層捲','vegan-b-5','<p>香酥可口的千層捲，以墨西哥薄餅捲杏鮑菇、紅蕃茄、鳳梨等，夾帶迷迭香白醬舖上比薩絲焗烤，瞧老闆不手軟的用料，搭配精細的作工，每口皆讓你回味無窮，吃過還想再要！</p>\r\n<h4>套餐內容</h4>\r\n<p>番茄濃湯<br /> 水果沙拉<br /> 檸檬紅茶</p>','','0.00','0.00',0,1,'','','',0,5,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (106,0,9,1,'田園蔬菜沙拉','vegan-c-1','<p>先來盤清爽的開胃菜吧！嚴選當季的美味蔬食，冰涼好入口，甜脆的滋味包你欲罷不能！</p>','','0.00','0.00',0,1,'','','',0,1,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (107,0,9,1,'法式南瓜濃湯','vegan-c-2','<p>鮮濃的經典主廚湯品，以整顆南瓜熬煮，美味直抵心房，絕對令你飆淚讚賞！</p>','','0.00','0.00',0,1,'','','',0,2,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (108,0,9,1,'法式酥烤香草麵包','vegan-c-3','<p>鮮濃滿滿的香草，道地的法式香草料理，美味直抵心房，絕對令你飆淚讚賞！</p>','','0.00','0.00',0,1,'','','',0,3,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (109,0,9,1,'鮮蔬果汁','vegan-c-4','<p>鮮榨蔬果汁，百分百純鮮。</p>','','0.00','0.00',0,1,'','','',0,4,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (110,0,9,1,'薩爾瓦多溫泉咖啡','vegan-c-5','<p>產地位於中美洲薩爾瓦多南部火山區，地處溫泉山岩，特殊土質的栽種，培孕出獨特的口感，濃醇甘柔甜味特強，香醇中，口齒留香撲鼻，非常特別，無與取代的咖啡。</p>','','0.00','0.00',0,1,'','','',0,5,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (111,0,9,1,'精緻甜點','vegan-c-6','<p>精緻手工甜點鮮奶酪，全採以林鳳營特級鮮奶精製而成，不含防腐劑，原汁原味，香醇濃郁，是您飯後最佳選擇甜品。</p>','','0.00','0.00',0,1,'','','',0,6,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-07 02:25:27',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (112,0,10,1,'中南美洲的咖啡豆','us','','','1000.00','0.00',0,1,'','','',0,1,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-14 06:36:09',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (113,0,11,1,'東南亞的咖啡豆','sa','','','1000.00','0.00',0,1,'','','',0,1,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-14 06:36:09',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (114,0,12,1,'非洲的咖啡豆','africa','','','1000.00','0.00',0,1,'','','',0,1,0,0,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-14 06:36:09',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
INSERT INTO `mp75b_djc2_items` VALUES (115,0,13,1,'咖啡生豆','cgb-1','','','1000.00','0.00',0,1,'','','',0,1,0,1,'{\"show_contact_form\":\"\",\"comments\":\"\",\"price_restrict\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\"}',0,'0000-00-00 00:00:00','2014-10-14 06:36:09',584,'0000-00-00 00:00:00','0000-00-00 00:00:00');
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_categories`

DROP TABLE IF EXISTS `mp75b_djc2_items_categories`;
CREATE TABLE `mp75b_djc2_items_categories` (
  `item_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`item_id`),
  UNIQUE KEY `item_category` (`item_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_categories`

LOCK TABLES `mp75b_djc2_items_categories` WRITE;
INSERT INTO `mp75b_djc2_items_categories` VALUES (61,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (62,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (63,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (64,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (65,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (66,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (67,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (68,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (69,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (70,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (71,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (72,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (73,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (74,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (75,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (76,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (77,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (78,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (79,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (80,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (81,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (82,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (83,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (84,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (85,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (86,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (87,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (88,3);
INSERT INTO `mp75b_djc2_items_categories` VALUES (89,4);
INSERT INTO `mp75b_djc2_items_categories` VALUES (90,4);
INSERT INTO `mp75b_djc2_items_categories` VALUES (91,4);
INSERT INTO `mp75b_djc2_items_categories` VALUES (92,4);
INSERT INTO `mp75b_djc2_items_categories` VALUES (93,4);
INSERT INTO `mp75b_djc2_items_categories` VALUES (96,7);
INSERT INTO `mp75b_djc2_items_categories` VALUES (97,7);
INSERT INTO `mp75b_djc2_items_categories` VALUES (98,7);
INSERT INTO `mp75b_djc2_items_categories` VALUES (99,7);
INSERT INTO `mp75b_djc2_items_categories` VALUES (100,7);
INSERT INTO `mp75b_djc2_items_categories` VALUES (101,8);
INSERT INTO `mp75b_djc2_items_categories` VALUES (102,8);
INSERT INTO `mp75b_djc2_items_categories` VALUES (103,8);
INSERT INTO `mp75b_djc2_items_categories` VALUES (104,8);
INSERT INTO `mp75b_djc2_items_categories` VALUES (105,8);
INSERT INTO `mp75b_djc2_items_categories` VALUES (106,9);
INSERT INTO `mp75b_djc2_items_categories` VALUES (107,9);
INSERT INTO `mp75b_djc2_items_categories` VALUES (108,9);
INSERT INTO `mp75b_djc2_items_categories` VALUES (109,9);
INSERT INTO `mp75b_djc2_items_categories` VALUES (110,9);
INSERT INTO `mp75b_djc2_items_categories` VALUES (111,9);
INSERT INTO `mp75b_djc2_items_categories` VALUES (112,10);
INSERT INTO `mp75b_djc2_items_categories` VALUES (113,11);
INSERT INTO `mp75b_djc2_items_categories` VALUES (114,12);
INSERT INTO `mp75b_djc2_items_categories` VALUES (115,13);
INSERT INTO `mp75b_djc2_items_categories` VALUES (94,14);
INSERT INTO `mp75b_djc2_items_categories` VALUES (95,14);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields`;
CREATE TABLE `mp75b_djc2_items_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `imagelabel` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '1',
  `ordering` int(11) NOT NULL,
  `filterable` int(11) NOT NULL,
  `searchable` int(11) NOT NULL,
  `visibility` int(11) NOT NULL,
  `separate_column` int(11) NOT NULL DEFAULT '0',
  `required` smallint(6) NOT NULL DEFAULT '0',
  `sortable` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_published` (`published`),
  KEY `idx_filterable` (`filterable`),
  KEY `idx_searchable` (`searchable`),
  KEY `idx_separate_column` (`separate_column`),
  KEY `idx_type` (`type`),
  KEY `idx_group_id` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields`

LOCK TABLES `mp75b_djc2_items_extra_fields` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_groups`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_groups`;
CREATE TABLE `mp75b_djc2_items_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_groups`

LOCK TABLES `mp75b_djc2_items_extra_fields_groups` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_options`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_options`;
CREATE TABLE `mp75b_djc2_items_extra_fields_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `field_id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_field_id` (`field_id`),
  KEY `idx_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_options`

LOCK TABLES `mp75b_djc2_items_extra_fields_options` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_values_date`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_values_date`;
CREATE TABLE `mp75b_djc2_items_extra_fields_values_date` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_field` (`item_id`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_values_date`

LOCK TABLES `mp75b_djc2_items_extra_fields_values_date` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_values_int`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_values_int`;
CREATE TABLE `mp75b_djc2_items_extra_fields_values_int` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item_field` (`item_id`,`field_id`),
  KEY `idx_value` (`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_values_int`

LOCK TABLES `mp75b_djc2_items_extra_fields_values_int` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_extra_fields_values_text`

DROP TABLE IF EXISTS `mp75b_djc2_items_extra_fields_values_text`;
CREATE TABLE `mp75b_djc2_items_extra_fields_values_text` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_field` (`item_id`,`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_extra_fields_values_text`

LOCK TABLES `mp75b_djc2_items_extra_fields_values_text` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_items_related`

DROP TABLE IF EXISTS `mp75b_djc2_items_related`;
CREATE TABLE `mp75b_djc2_items_related` (
  `item_id` int(11) NOT NULL,
  `related_item` int(11) NOT NULL,
  PRIMARY KEY (`related_item`,`item_id`),
  UNIQUE KEY `item_related` (`item_id`,`related_item`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_items_related`

LOCK TABLES `mp75b_djc2_items_related` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_order_items`

DROP TABLE IF EXISTS `mp75b_djc2_order_items`;
CREATE TABLE `mp75b_djc2_order_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT '0',
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `cost` decimal(10,4) NOT NULL,
  `base_cost` decimal(10,4) NOT NULL,
  `tax` decimal(10,4) NOT NULL,
  `tax_rate` decimal(10,4) NOT NULL,
  `total` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_order_id` (`order_id`),
  KEY `idx_item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_order_items`

LOCK TABLES `mp75b_djc2_order_items` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_orders`

DROP TABLE IF EXISTS `mp75b_djc2_orders`;
CREATE TABLE `mp75b_djc2_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_number` int(11) NOT NULL,
  `invoice_number` varchar(64) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_date` datetime DEFAULT '0000-00-00 00:00:00',
  `invoice_date` datetime DEFAULT '0000-00-00 00:00:00',
  `total` decimal(10,4) NOT NULL,
  `grand_total` decimal(10,4) NOT NULL,
  `tax` decimal(10,4) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `currency` varchar(3) NOT NULL,
  `status` char(1) NOT NULL DEFAULT 'N',
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `vat_id` varchar(20) DEFAULT NULL,
  `customer_note` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_orders`

LOCK TABLES `mp75b_djc2_orders` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_prices`

DROP TABLE IF EXISTS `mp75b_djc2_prices`;
CREATE TABLE `mp75b_djc2_prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `price` decimal(10,4) NOT NULL DEFAULT '0.0000',
  PRIMARY KEY (`id`),
  UNIQUE KEY `item_group` (`item_id`,`group_id`),
  UNIQUE KEY `group_item` (`group_id`,`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_prices`

LOCK TABLES `mp75b_djc2_prices` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_producers`

DROP TABLE IF EXISTS `mp75b_djc2_producers`;
CREATE TABLE `mp75b_djc2_producers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` mediumtext,
  `metatitle` varchar(255) DEFAULT NULL,
  `metakey` text,
  `metadesc` text,
  `published` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_published` (`published`),
  KEY `idx_created_by` (`created_by`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_producers`

LOCK TABLES `mp75b_djc2_producers` WRITE;
INSERT INTO `mp75b_djc2_producers` VALUES (1,'台中保國菜刀王網路經銷商','zongknife','','','','',1,1,0,'0000-00-00 00:00:00','2014-08-26 08:25:51',584);
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_quote_items`

DROP TABLE IF EXISTS `mp75b_djc2_quote_items`;
CREATE TABLE `mp75b_djc2_quote_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quote_id` int(11) NOT NULL,
  `item_id` int(11) DEFAULT '0',
  `item_name` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_quote_id` (`quote_id`),
  KEY `idx_item_id` (`item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_quote_items`

LOCK TABLES `mp75b_djc2_quote_items` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_quotes`

DROP TABLE IF EXISTS `mp75b_djc2_quotes`;
CREATE TABLE `mp75b_djc2_quotes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `created_date` datetime DEFAULT '0000-00-00 00:00:00',
  `email` varchar(255) DEFAULT NULL,
  `firstname` varchar(100) DEFAULT NULL,
  `lastname` varchar(100) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `country_id` int(11) NOT NULL,
  `vat_id` varchar(20) DEFAULT NULL,
  `customer_note` mediumtext,
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_country_id` (`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_quotes`

LOCK TABLES `mp75b_djc2_quotes` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_tax_rates`

DROP TABLE IF EXISTS `mp75b_djc2_tax_rates`;
CREATE TABLE `mp75b_djc2_tax_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `value` decimal(10,4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_tax_rates`

LOCK TABLES `mp75b_djc2_tax_rates` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_tax_rules`

DROP TABLE IF EXISTS `mp75b_djc2_tax_rules`;
CREATE TABLE `mp75b_djc2_tax_rules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_rate_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country_id` int(11) NOT NULL,
  `client_type` char(1) NOT NULL DEFAULT 'A',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_tax_rate_id` (`tax_rate_id`,`country_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_tax_rules`

LOCK TABLES `mp75b_djc2_tax_rules` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_djc2_users`

DROP TABLE IF EXISTS `mp75b_djc2_users`;
CREATE TABLE `mp75b_djc2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `client_type` char(1) NOT NULL DEFAULT 'A',
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `company` varchar(100) NOT NULL,
  `position` varchar(100) DEFAULT NULL,
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `postcode` varchar(20) NOT NULL,
  `country_id` int(11) NOT NULL,
  `vat_id` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `www` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_id` (`user_id`),
  KEY `idx_customer_group_id` (`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_djc2_users`

LOCK TABLES `mp75b_djc2_users` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_extensions`

DROP TABLE IF EXISTS `mp75b_extensions`;
CREATE TABLE `mp75b_extensions` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `element` varchar(100) NOT NULL,
  `folder` varchar(100) NOT NULL,
  `client_id` tinyint(3) NOT NULL,
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  `access` int(10) unsigned NOT NULL DEFAULT '1',
  `protected` tinyint(3) NOT NULL DEFAULT '0',
  `manifest_cache` text NOT NULL,
  `params` text NOT NULL,
  `custom_data` text NOT NULL,
  `system_data` text NOT NULL,
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) DEFAULT '0',
  `state` int(11) DEFAULT '0',
  PRIMARY KEY (`extension_id`),
  KEY `element_clientid` (`element`,`client_id`),
  KEY `element_folder_clientid` (`element`,`folder`,`client_id`),
  KEY `extension` (`type`,`element`,`folder`,`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10046 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_extensions`

LOCK TABLES `mp75b_extensions` WRITE;
INSERT INTO `mp75b_extensions` VALUES (1,'com_mailto','component','com_mailto','',0,1,1,1,'{\"name\":\"com_mailto\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MAILTO_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (2,'com_wrapper','component','com_wrapper','',0,1,1,1,'{\"name\":\"com_wrapper\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (3,'com_admin','component','com_admin','',1,1,1,1,'{\"name\":\"com_admin\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_ADMIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (4,'com_banners','component','com_banners','',1,1,1,0,'{\"name\":\"com_banners\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"purchase_type\":\"3\",\"track_impressions\":\"0\",\"track_clicks\":\"0\",\"metakey_prefix\":\"\",\"save_history\":\"1\",\"history_limit\":10}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (5,'com_cache','component','com_cache','',1,1,1,1,'{\"name\":\"com_cache\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (6,'com_categories','component','com_categories','',1,1,1,1,'{\"name\":\"com_categories\",\"type\":\"component\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (7,'com_checkin','component','com_checkin','',1,1,1,1,'{\"name\":\"com_checkin\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2008 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CHECKIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (8,'com_contact','component','com_contact','',1,1,1,0,'{\"name\":\"com_contact\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_contact_category\":\"hide\",\"save_history\":\"1\",\"history_limit\":10,\"show_contact_list\":\"0\",\"presentation_style\":\"sliders\",\"show_name\":\"1\",\"show_position\":\"1\",\"show_email\":\"0\",\"show_street_address\":\"1\",\"show_suburb\":\"1\",\"show_state\":\"1\",\"show_postcode\":\"1\",\"show_country\":\"1\",\"show_telephone\":\"1\",\"show_mobile\":\"1\",\"show_fax\":\"1\",\"show_webpage\":\"1\",\"show_misc\":\"1\",\"show_image\":\"1\",\"image\":\"\",\"allow_vcard\":\"0\",\"show_articles\":\"0\",\"show_profile\":\"0\",\"show_links\":\"0\",\"linka_name\":\"\",\"linkb_name\":\"\",\"linkc_name\":\"\",\"linkd_name\":\"\",\"linke_name\":\"\",\"contact_icons\":\"0\",\"icon_address\":\"\",\"icon_email\":\"\",\"icon_telephone\":\"\",\"icon_mobile\":\"\",\"icon_fax\":\"\",\"icon_misc\":\"\",\"show_headings\":\"1\",\"show_position_headings\":\"1\",\"show_email_headings\":\"0\",\"show_telephone_headings\":\"1\",\"show_mobile_headings\":\"0\",\"show_fax_headings\":\"0\",\"allow_vcard_headings\":\"0\",\"show_suburb_headings\":\"1\",\"show_state_headings\":\"1\",\"show_country_headings\":\"1\",\"show_email_form\":\"1\",\"show_email_copy\":\"1\",\"banned_email\":\"\",\"banned_subject\":\"\",\"banned_text\":\"\",\"validate_session\":\"1\",\"custom_reply\":\"0\",\"redirect\":\"\",\"show_category_crumb\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"robots\":\"\",\"author\":\"\",\"rights\":\"\",\"xreference\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (9,'com_cpanel','component','com_cpanel','',1,1,1,1,'{\"name\":\"com_cpanel\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CPANEL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10,'com_installer','component','com_installer','',1,1,1,1,'{\"name\":\"com_installer\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_INSTALLER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (11,'com_languages','component','com_languages','',1,1,1,1,'{\"name\":\"com_languages\",\"type\":\"component\",\"creationDate\":\"2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','{\"administrator\":\"zh-TW\",\"site\":\"zh-TW\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (12,'com_login','component','com_login','',1,1,1,1,'{\"name\":\"com_login\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (13,'com_media','component','com_media','',1,1,0,1,'{\"name\":\"com_media\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MEDIA_XML_DESCRIPTION\",\"group\":\"\"}','{\"upload_extensions\":\"bmp,csv,doc,gif,ico,jpg,jpeg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,GIF,ICO,JPG,JPEG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\",\"upload_maxsize\":\"10\",\"file_path\":\"images\",\"image_path\":\"images\",\"restrict_uploads\":\"1\",\"allowed_media_usergroup\":\"3\",\"check_mime\":\"1\",\"image_extensions\":\"bmp,gif,jpg,png\",\"ignore_extensions\":\"\",\"upload_mime\":\"image\\/jpeg,image\\/gif,image\\/png,image\\/bmp,application\\/x-shockwave-flash,application\\/msword,application\\/excel,application\\/pdf,application\\/powerpoint,text\\/plain,application\\/x-zip\",\"upload_mime_illegal\":\"text\\/html\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (14,'com_menus','component','com_menus','',1,1,1,1,'{\"name\":\"com_menus\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MENUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (15,'com_messages','component','com_messages','',1,1,1,1,'{\"name\":\"com_messages\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MESSAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (16,'com_modules','component','com_modules','',1,1,1,1,'{\"name\":\"com_modules\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_MODULES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (17,'com_newsfeeds','component','com_newsfeeds','',1,1,1,0,'{\"name\":\"com_newsfeeds\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"newsfeed_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_feed_image\":\"1\",\"show_feed_description\":\"1\",\"show_item_description\":\"1\",\"feed_character_count\":\"0\",\"feed_display_order\":\"des\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_items\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_items_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"1\",\"show_articles\":\"0\",\"show_link\":\"1\",\"show_pagination\":\"1\",\"show_pagination_results\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (18,'com_plugins','component','com_plugins','',1,1,1,1,'{\"name\":\"com_plugins\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_PLUGINS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (19,'com_search','component','com_search','',1,1,1,0,'{\"name\":\"com_search\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','{\"enabled\":\"0\",\"show_date\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (20,'com_templates','component','com_templates','',1,1,1,1,'{\"name\":\"com_templates\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_TEMPLATES_XML_DESCRIPTION\",\"group\":\"\"}','{\"template_positions_display\":\"1\",\"upload_limit\":\"2\",\"image_formats\":\"gif,bmp,jpg,jpeg,png\",\"source_formats\":\"txt,less,ini,xml,js,php,css\",\"font_formats\":\"woff,ttf,otf\",\"compressed_formats\":\"zip\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (21,'com_weblinks','component','com_weblinks','',1,1,1,0,'{\"name\":\"com_weblinks\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\n\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"target\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"count_clicks\":\"1\",\"icons\":1,\"link_icons\":\"\",\"float_first\":\"right\",\"float_second\":\"right\",\"show_tags\":\"1\",\"category_layout\":\"_:default\",\"show_category_title\":\"1\",\"show_description\":\"1\",\"show_description_image\":\"1\",\"maxLevel\":\"-1\",\"show_empty_categories\":\"0\",\"show_subcat_desc\":\"1\",\"show_cat_num_links\":\"1\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_links_cat\":\"1\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_headings\":\"0\",\"show_link_description\":\"1\",\"show_link_hits\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (22,'com_content','component','com_content','',1,1,0,1,'{\"name\":\"com_content\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"article_layout\":\"_:default\",\"show_title\":\"1\",\"link_titles\":\"1\",\"show_intro\":\"1\",\"info_block_position\":\"0\",\"show_category\":\"1\",\"link_category\":\"1\",\"show_parent_category\":\"0\",\"link_parent_category\":\"0\",\"show_author\":\"0\",\"link_author\":\"0\",\"show_create_date\":\"1\",\"show_modify_date\":\"1\",\"show_publish_date\":\"0\",\"show_item_navigation\":\"0\",\"show_vote\":\"0\",\"show_readmore\":\"1\",\"show_readmore_title\":\"1\",\"readmore_limit\":\"100\",\"show_tags\":\"1\",\"show_icons\":\"0\",\"show_print_icon\":\"0\",\"show_email_icon\":\"0\",\"show_hits\":\"0\",\"show_noauth\":\"0\",\"urls_position\":\"0\",\"show_publishing_options\":\"1\",\"show_article_options\":\"1\",\"save_history\":\"0\",\"history_limit\":10,\"show_urls_images_frontend\":\"0\",\"show_urls_images_backend\":\"1\",\"targeta\":0,\"targetb\":0,\"targetc\":0,\"float_intro\":\"left\",\"float_fulltext\":\"left\",\"category_layout\":\"purity_iii:magazine-sub\",\"show_category_heading_title_text\":\"1\",\"show_category_title\":\"0\",\"show_description\":\"0\",\"show_description_image\":\"0\",\"maxLevel\":\"1\",\"show_empty_categories\":\"0\",\"show_no_articles\":\"1\",\"show_subcat_desc\":\"1\",\"show_cat_num_articles\":\"0\",\"show_cat_tags\":\"1\",\"show_base_description\":\"1\",\"maxLevelcat\":\"-1\",\"show_empty_categories_cat\":\"0\",\"show_subcat_desc_cat\":\"1\",\"show_cat_num_articles_cat\":\"1\",\"num_leading_articles\":\"1\",\"num_intro_articles\":\"4\",\"num_columns\":\"2\",\"num_links\":\"4\",\"multi_column_order\":\"0\",\"show_subcategory_content\":\"0\",\"show_pagination_limit\":\"1\",\"filter_field\":\"hide\",\"show_headings\":\"1\",\"list_show_date\":\"0\",\"date_format\":\"\",\"list_show_hits\":\"1\",\"list_show_author\":\"0\",\"orderby_pri\":\"order\",\"orderby_sec\":\"rdate\",\"order_date\":\"published\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"show_feed_link\":\"0\",\"feed_summary\":\"0\",\"feed_show_readmore\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (23,'com_config','component','com_config','',1,1,0,1,'{\"name\":\"com_config\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_CONFIG_XML_DESCRIPTION\",\"group\":\"\"}','{\"filters\":{\"1\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"9\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"6\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"7\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"2\":{\"filter_type\":\"NH\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"3\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"4\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"5\":{\"filter_type\":\"BL\",\"filter_tags\":\"\",\"filter_attributes\":\"\"},\"8\":{\"filter_type\":\"NONE\",\"filter_tags\":\"\",\"filter_attributes\":\"\"}}}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (24,'com_redirect','component','com_redirect','',1,1,0,1,'{\"name\":\"com_redirect\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (25,'com_users','component','com_users','',1,1,0,1,'{\"name\":\"com_users\",\"type\":\"component\",\"creationDate\":\"April 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_USERS_XML_DESCRIPTION\",\"group\":\"\"}','{\"allowUserRegistration\":\"1\",\"new_usertype\":\"2\",\"guest_usergroup\":\"9\",\"sendpassword\":\"1\",\"useractivation\":\"1\",\"mail_to_admin\":\"0\",\"captcha\":\"\",\"frontend_userparams\":\"1\",\"site_language\":\"0\",\"change_login_name\":\"0\",\"reset_count\":\"10\",\"reset_time\":\"1\",\"minimum_length\":\"6\",\"minimum_integers\":\"0\",\"minimum_symbols\":\"0\",\"minimum_uppercase\":\"0\",\"save_history\":\"1\",\"history_limit\":5,\"mailSubjectPrefix\":\"\",\"mailBodySuffix\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (27,'com_finder','component','com_finder','',1,1,0,0,'{\"name\":\"com_finder\",\"type\":\"component\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','{\"show_description\":\"1\",\"description_length\":255,\"allow_empty_query\":\"0\",\"show_url\":\"1\",\"show_advanced\":\"1\",\"expand_advanced\":\"0\",\"show_date_filters\":\"0\",\"highlight_terms\":\"1\",\"opensearch_name\":\"\",\"opensearch_description\":\"\",\"batch_size\":\"50\",\"memory_table_limit\":30000,\"title_multiplier\":\"1.7\",\"text_multiplier\":\"0.7\",\"meta_multiplier\":\"1.2\",\"path_multiplier\":\"2.0\",\"misc_multiplier\":\"0.3\",\"stemmer\":\"snowball\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (28,'com_joomlaupdate','component','com_joomlaupdate','',1,1,0,1,'{\"name\":\"com_joomlaupdate\",\"type\":\"component\",\"creationDate\":\"February 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\\t\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"COM_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (29,'com_tags','component','com_tags','',1,1,1,1,'{\"name\":\"com_tags\",\"type\":\"component\",\"creationDate\":\"December 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"COM_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"tag_layout\":\"_:default\",\"save_history\":\"1\",\"history_limit\":5,\"show_tag_title\":\"0\",\"tag_list_show_tag_image\":\"0\",\"tag_list_show_tag_description\":\"0\",\"tag_list_image\":\"\",\"show_tag_num_items\":\"0\",\"tag_list_orderby\":\"title\",\"tag_list_orderby_direction\":\"ASC\",\"show_headings\":\"0\",\"tag_list_show_date\":\"0\",\"tag_list_show_item_image\":\"0\",\"tag_list_show_item_description\":\"0\",\"tag_list_item_maximum_characters\":0,\"return_any_or_all\":\"1\",\"include_children\":\"0\",\"maximum\":200,\"tag_list_language_filter\":\"all\",\"tags_layout\":\"_:default\",\"all_tags_orderby\":\"title\",\"all_tags_orderby_direction\":\"ASC\",\"all_tags_show_tag_image\":\"0\",\"all_tags_show_tag_descripion\":\"0\",\"all_tags_tag_maximum_characters\":20,\"all_tags_show_tag_hits\":\"0\",\"filter_field\":\"1\",\"show_pagination_limit\":\"1\",\"show_pagination\":\"2\",\"show_pagination_results\":\"1\",\"tag_field_ajax_mode\":\"1\",\"show_feed_link\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (30,'com_contenthistory','component','com_contenthistory','',1,1,1,0,'{\"name\":\"com_contenthistory\",\"type\":\"component\",\"creationDate\":\"May 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_CONTENTHISTORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (31,'com_ajax','component','com_ajax','',1,1,1,0,'{\"name\":\"com_ajax\",\"type\":\"component\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_AJAX_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (32,'com_postinstall','component','com_postinstall','',1,1,1,1,'{\"name\":\"com_postinstall\",\"type\":\"component\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"COM_POSTINSTALL_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (100,'PHPMailer','library','phpmailer','',0,1,1,1,'{\"name\":\"PHPMailer\",\"type\":\"library\",\"creationDate\":\"2001\",\"author\":\"PHPMailer\",\"copyright\":\"(c) 2001-2003, Brent R. Matzelle, (c) 2004-2009, Andy Prevost. All Rights Reserved., (c) 2010-2013, Jim Jagielski. All Rights Reserved.\",\"authorEmail\":\"jimjag@gmail.com\",\"authorUrl\":\"https:\\/\\/github.com\\/PHPMailer\\/PHPMailer\",\"version\":\"5.2.6\",\"description\":\"LIB_PHPMAILER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (101,'SimplePie','library','simplepie','',0,1,1,1,'{\"name\":\"SimplePie\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"SimplePie\",\"copyright\":\"Copyright (c) 2004-2009, Ryan Parman and Geoffrey Sneddon\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/simplepie.org\\/\",\"version\":\"1.2\",\"description\":\"LIB_SIMPLEPIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (102,'phputf8','library','phputf8','',0,1,1,1,'{\"name\":\"phputf8\",\"type\":\"library\",\"creationDate\":\"2006\",\"author\":\"Harry Fuecks\",\"copyright\":\"Copyright various authors\",\"authorEmail\":\"hfuecks@gmail.com\",\"authorUrl\":\"http:\\/\\/sourceforge.net\\/projects\\/phputf8\",\"version\":\"0.5\",\"description\":\"LIB_PHPUTF8_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (103,'Joomla! Platform','library','joomla','',0,1,1,1,'{\"name\":\"Joomla! Platform\",\"type\":\"library\",\"creationDate\":\"2008\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"http:\\/\\/www.joomla.org\",\"version\":\"13.1\",\"description\":\"LIB_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"mediaversion\":\"ad1993eb0767b7b709800d790eafbe59\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (104,'IDNA Convert','library','idna_convert','',0,1,1,1,'{\"name\":\"IDNA Convert\",\"type\":\"library\",\"creationDate\":\"2004\",\"author\":\"phlyLabs\",\"copyright\":\"2004-2011 phlyLabs Berlin, http:\\/\\/phlylabs.de\",\"authorEmail\":\"phlymail@phlylabs.de\",\"authorUrl\":\"http:\\/\\/phlylabs.de\",\"version\":\"0.8.0\",\"description\":\"LIB_IDNA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (105,'FOF','library','fof','',0,1,1,1,'{\"name\":\"FOF\",\"type\":\"library\",\"creationDate\":\"2014-03-09 12:54:48\",\"author\":\"Nicholas K. Dionysopoulos \\/ Akeeba Ltd\",\"copyright\":\"(C)2011-2014 Nicholas K. Dionysopoulos\",\"authorEmail\":\"nicholas@akeebabackup.com\",\"authorUrl\":\"https:\\/\\/www.akeebabackup.com\",\"version\":\"2.2.1\",\"description\":\"LIB_FOF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (106,'PHPass','library','phpass','',0,1,1,1,'{\"name\":\"PHPass\",\"type\":\"library\",\"creationDate\":\"2004-2006\",\"author\":\"Solar Designer\",\"copyright\":\"\",\"authorEmail\":\"solar@openwall.com\",\"authorUrl\":\"http:\\/\\/www.openwall.com\\/phpass\\/\",\"version\":\"0.3\",\"description\":\"LIB_PHPASS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (200,'mod_articles_archive','module','mod_articles_archive','',0,1,1,0,'{\"name\":\"mod_articles_archive\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters.\\n\\t\\tAll rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_ARCHIVE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (201,'mod_articles_latest','module','mod_articles_latest','',0,1,1,0,'{\"name\":\"mod_articles_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (202,'mod_articles_popular','module','mod_articles_popular','',0,1,1,0,'{\"name\":\"mod_articles_popular\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (203,'mod_banners','module','mod_banners','',0,1,1,0,'{\"name\":\"mod_banners\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BANNERS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (204,'mod_breadcrumbs','module','mod_breadcrumbs','',0,1,1,1,'{\"name\":\"mod_breadcrumbs\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_BREADCRUMBS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (205,'mod_custom','module','mod_custom','',0,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (206,'mod_feed','module','mod_feed','',0,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (207,'mod_footer','module','mod_footer','',0,1,1,0,'{\"name\":\"mod_footer\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FOOTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (208,'mod_login','module','mod_login','',0,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (209,'mod_menu','module','mod_menu','',0,1,1,1,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (210,'mod_articles_news','module','mod_articles_news','',0,1,1,0,'{\"name\":\"mod_articles_news\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_NEWS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (211,'mod_random_image','module','mod_random_image','',0,1,1,0,'{\"name\":\"mod_random_image\",\"type\":\"module\",\"creationDate\":\"July 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RANDOM_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (212,'mod_related_items','module','mod_related_items','',0,1,1,0,'{\"name\":\"mod_related_items\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_RELATED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (213,'mod_search','module','mod_search','',0,1,1,0,'{\"name\":\"mod_search\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SEARCH_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (214,'mod_stats','module','mod_stats','',0,1,1,0,'{\"name\":\"mod_stats\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (215,'mod_syndicate','module','mod_syndicate','',0,1,1,1,'{\"name\":\"mod_syndicate\",\"type\":\"module\",\"creationDate\":\"May 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SYNDICATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (216,'mod_users_latest','module','mod_users_latest','',0,1,1,0,'{\"name\":\"mod_users_latest\",\"type\":\"module\",\"creationDate\":\"December 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_USERS_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (217,'mod_weblinks','module','mod_weblinks','',0,1,1,0,'{\"name\":\"mod_weblinks\",\"type\":\"module\",\"creationDate\":\"July 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (218,'mod_whosonline','module','mod_whosonline','',0,1,1,0,'{\"name\":\"mod_whosonline\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WHOSONLINE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (219,'mod_wrapper','module','mod_wrapper','',0,1,1,0,'{\"name\":\"mod_wrapper\",\"type\":\"module\",\"creationDate\":\"October 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_WRAPPER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (220,'mod_articles_category','module','mod_articles_category','',0,1,1,0,'{\"name\":\"mod_articles_category\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (221,'mod_articles_categories','module','mod_articles_categories','',0,1,1,0,'{\"name\":\"mod_articles_categories\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_ARTICLES_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (222,'mod_languages','module','mod_languages','',0,1,1,1,'{\"name\":\"mod_languages\",\"type\":\"module\",\"creationDate\":\"February 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LANGUAGES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (223,'mod_finder','module','mod_finder','',0,1,0,0,'{\"name\":\"mod_finder\",\"type\":\"module\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (300,'mod_custom','module','mod_custom','',1,1,1,1,'{\"name\":\"mod_custom\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_CUSTOM_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (301,'mod_feed','module','mod_feed','',1,1,1,0,'{\"name\":\"mod_feed\",\"type\":\"module\",\"creationDate\":\"July 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_FEED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (302,'mod_latest','module','mod_latest','',1,1,1,0,'{\"name\":\"mod_latest\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LATEST_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (303,'mod_logged','module','mod_logged','',1,1,1,0,'{\"name\":\"mod_logged\",\"type\":\"module\",\"creationDate\":\"January 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGGED_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (304,'mod_login','module','mod_login','',1,1,1,1,'{\"name\":\"mod_login\",\"type\":\"module\",\"creationDate\":\"March 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_LOGIN_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (305,'mod_menu','module','mod_menu','',1,1,1,0,'{\"name\":\"mod_menu\",\"type\":\"module\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (307,'mod_popular','module','mod_popular','',1,1,1,0,'{\"name\":\"mod_popular\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (308,'mod_quickicon','module','mod_quickicon','',1,1,1,1,'{\"name\":\"mod_quickicon\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_QUICKICON_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (309,'mod_status','module','mod_status','',1,1,1,0,'{\"name\":\"mod_status\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATUS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (310,'mod_submenu','module','mod_submenu','',1,1,1,0,'{\"name\":\"mod_submenu\",\"type\":\"module\",\"creationDate\":\"Feb 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_SUBMENU_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (311,'mod_title','module','mod_title','',1,1,1,0,'{\"name\":\"mod_title\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TITLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (312,'mod_toolbar','module','mod_toolbar','',1,1,1,1,'{\"name\":\"mod_toolbar\",\"type\":\"module\",\"creationDate\":\"Nov 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_TOOLBAR_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (313,'mod_multilangstatus','module','mod_multilangstatus','',1,1,1,0,'{\"name\":\"mod_multilangstatus\",\"type\":\"module\",\"creationDate\":\"September 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_MULTILANGSTATUS_XML_DESCRIPTION\",\"group\":\"\"}','{\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (314,'mod_version','module','mod_version','',1,1,1,0,'{\"name\":\"mod_version\",\"type\":\"module\",\"creationDate\":\"January 2012\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_VERSION_XML_DESCRIPTION\",\"group\":\"\"}','{\"format\":\"short\",\"product\":\"1\",\"cache\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (315,'mod_stats_admin','module','mod_stats_admin','',1,1,1,0,'{\"name\":\"mod_stats_admin\",\"type\":\"module\",\"creationDate\":\"July 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"MOD_STATS_XML_DESCRIPTION\",\"group\":\"\"}','{\"serverinfo\":\"0\",\"siteinfo\":\"0\",\"counter\":\"0\",\"increase\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (316,'mod_tags_popular','module','mod_tags_popular','',0,1,1,0,'{\"name\":\"mod_tags_popular\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_POPULAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"timeframe\":\"alltime\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (317,'mod_tags_similar','module','mod_tags_similar','',0,1,1,0,'{\"name\":\"mod_tags_similar\",\"type\":\"module\",\"creationDate\":\"January 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.1.0\",\"description\":\"MOD_TAGS_SIMILAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"maximum\":\"5\",\"matchtype\":\"any\",\"owncache\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (400,'plg_authentication_gmail','plugin','gmail','authentication',0,0,1,0,'{\"name\":\"plg_authentication_gmail\",\"type\":\"plugin\",\"creationDate\":\"February 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_GMAIL_XML_DESCRIPTION\",\"group\":\"\"}','{\"applysuffix\":\"0\",\"suffix\":\"\",\"verifypeer\":\"1\",\"user_blacklist\":\"\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (401,'plg_authentication_joomla','plugin','joomla','authentication',0,1,1,1,'{\"name\":\"plg_authentication_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (402,'plg_authentication_ldap','plugin','ldap','authentication',0,0,1,0,'{\"name\":\"plg_authentication_ldap\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LDAP_XML_DESCRIPTION\",\"group\":\"\"}','{\"host\":\"\",\"port\":\"389\",\"use_ldapV3\":\"0\",\"negotiate_tls\":\"0\",\"no_referrals\":\"0\",\"auth_method\":\"bind\",\"base_dn\":\"\",\"search_string\":\"\",\"users_dn\":\"\",\"username\":\"admin\",\"password\":\"bobby7\",\"ldap_fullname\":\"fullName\",\"ldap_email\":\"mail\",\"ldap_uid\":\"uid\"}','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (403,'plg_content_contact','plugin','contact','content',0,0,1,0,'{\"name\":\"plg_content_contact\",\"type\":\"plugin\",\"creationDate\":\"January 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.2\",\"description\":\"PLG_CONTENT_CONTACT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (404,'plg_content_emailcloak','plugin','emailcloak','content',0,0,1,0,'{\"name\":\"plg_content_emailcloak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_EMAILCLOAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (406,'plg_content_loadmodule','plugin','loadmodule','content',0,1,1,0,'{\"name\":\"plg_content_loadmodule\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOADMODULE_XML_DESCRIPTION\",\"group\":\"\"}','{\"style\":\"xhtml\"}','','',0,'2011-09-18 15:22:50',0,0);
INSERT INTO `mp75b_extensions` VALUES (407,'plg_content_pagebreak','plugin','pagebreak','content',0,0,1,0,'{\"name\":\"plg_content_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','{\"title\":\"1\",\"multipage_toc\":\"1\",\"showall\":\"1\"}','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (408,'plg_content_pagenavigation','plugin','pagenavigation','content',0,0,1,0,'{\"name\":\"plg_content_pagenavigation\",\"type\":\"plugin\",\"creationDate\":\"January 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_PAGENAVIGATION_XML_DESCRIPTION\",\"group\":\"\"}','{\"position\":\"1\"}','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `mp75b_extensions` VALUES (409,'plg_content_vote','plugin','vote','content',0,0,1,0,'{\"name\":\"plg_content_vote\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_VOTE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0);
INSERT INTO `mp75b_extensions` VALUES (410,'plg_editors_codemirror','plugin','codemirror','editors',0,1,1,1,'{\"name\":\"plg_editors_codemirror\",\"type\":\"plugin\",\"creationDate\":\"28 March 2011\",\"author\":\"Marijn Haverbeke\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.15\",\"description\":\"PLG_CODEMIRROR_XML_DESCRIPTION\",\"group\":\"\"}','{\"lineNumbers\":\"1\",\"lineWrapping\":\"1\",\"matchTags\":\"1\",\"matchBrackets\":\"1\",\"marker-gutter\":\"1\",\"autoCloseTags\":\"1\",\"autoCloseBrackets\":\"1\",\"autoFocus\":\"1\",\"theme\":\"default\",\"tabmode\":\"indent\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (411,'plg_editors_none','plugin','none','editors',0,1,1,1,'{\"name\":\"plg_editors_none\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"\",\"version\":\"3.0.0\",\"description\":\"PLG_NONE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (412,'plg_editors_tinymce','plugin','tinymce','editors',0,1,1,0,'{\"name\":\"plg_editors_tinymce\",\"type\":\"plugin\",\"creationDate\":\"2005-2014\",\"author\":\"Moxiecode Systems AB\",\"copyright\":\"Moxiecode Systems AB\",\"authorEmail\":\"N\\/A\",\"authorUrl\":\"tinymce.moxiecode.com\",\"version\":\"4.1.2\",\"description\":\"PLG_TINY_XML_DESCRIPTION\",\"group\":\"\"}','{\"mode\":\"1\",\"skin\":\"0\",\"mobile\":\"0\",\"entity_encoding\":\"raw\",\"lang_mode\":\"1\",\"text_direction\":\"ltr\",\"content_css\":\"1\",\"content_css_custom\":\"\",\"relative_urls\":\"1\",\"newlines\":\"0\",\"invalid_elements\":\"script,applet,iframe\",\"extended_elements\":\"\",\"html_height\":\"550\",\"html_width\":\"750\",\"resizing\":\"1\",\"element_path\":\"1\",\"fonts\":\"1\",\"paste\":\"1\",\"searchreplace\":\"1\",\"insertdate\":\"1\",\"colors\":\"1\",\"table\":\"1\",\"smilies\":\"1\",\"hr\":\"1\",\"link\":\"1\",\"media\":\"1\",\"print\":\"1\",\"directionality\":\"1\",\"fullscreen\":\"1\",\"alignment\":\"1\",\"visualchars\":\"1\",\"visualblocks\":\"1\",\"nonbreaking\":\"1\",\"template\":\"1\",\"blockquote\":\"1\",\"wordcount\":\"1\",\"advlist\":\"1\",\"autosave\":\"1\",\"contextmenu\":\"1\",\"inlinepopups\":\"1\",\"custom_plugin\":\"\",\"custom_button\":\"\"}','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (413,'plg_editors-xtd_article','plugin','article','editors-xtd',0,1,1,1,'{\"name\":\"plg_editors-xtd_article\",\"type\":\"plugin\",\"creationDate\":\"October 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_ARTICLE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (414,'plg_editors-xtd_image','plugin','image','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_image\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_IMAGE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (415,'plg_editors-xtd_pagebreak','plugin','pagebreak','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"August 2004\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EDITORSXTD_PAGEBREAK_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (416,'plg_editors-xtd_readmore','plugin','readmore','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_readmore\",\"type\":\"plugin\",\"creationDate\":\"March 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_READMORE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (417,'plg_search_categories','plugin','categories','search',0,1,1,0,'{\"name\":\"plg_search_categories\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (418,'plg_search_contacts','plugin','contacts','search',0,1,1,0,'{\"name\":\"plg_search_contacts\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (419,'plg_search_content','plugin','content','search',0,1,1,0,'{\"name\":\"plg_search_content\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (420,'plg_search_newsfeeds','plugin','newsfeeds','search',0,1,1,0,'{\"name\":\"plg_search_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (421,'plg_search_weblinks','plugin','weblinks','search',0,1,1,0,'{\"name\":\"plg_search_weblinks\",\"type\":\"plugin\",\"creationDate\":\"November 2005\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"search_content\":\"1\",\"search_archived\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (422,'plg_system_languagefilter','plugin','languagefilter','system',0,0,1,1,'{\"name\":\"plg_system_languagefilter\",\"type\":\"plugin\",\"creationDate\":\"July 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGEFILTER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (423,'plg_system_p3p','plugin','p3p','system',0,1,1,0,'{\"name\":\"plg_system_p3p\",\"type\":\"plugin\",\"creationDate\":\"September 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_P3P_XML_DESCRIPTION\",\"group\":\"\"}','{\"headers\":\"NOI ADM DEV PSAi COM NAV OUR OTRo STP IND DEM\"}','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (424,'plg_system_cache','plugin','cache','system',0,0,1,1,'{\"name\":\"plg_system_cache\",\"type\":\"plugin\",\"creationDate\":\"February 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CACHE_XML_DESCRIPTION\",\"group\":\"\"}','{\"browsercache\":\"0\",\"cachetime\":\"15\"}','','',0,'0000-00-00 00:00:00',9,0);
INSERT INTO `mp75b_extensions` VALUES (425,'plg_system_debug','plugin','debug','system',0,1,1,0,'{\"name\":\"plg_system_debug\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_DEBUG_XML_DESCRIPTION\",\"group\":\"\"}','{\"profile\":\"1\",\"queries\":\"1\",\"memory\":\"1\",\"language_files\":\"1\",\"language_strings\":\"1\",\"strip-first\":\"1\",\"strip-prefix\":\"\",\"strip-suffix\":\"\"}','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (426,'plg_system_log','plugin','log','system',0,1,1,1,'{\"name\":\"plg_system_log\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_LOG_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `mp75b_extensions` VALUES (427,'plg_system_redirect','plugin','redirect','system',0,0,1,1,'{\"name\":\"plg_system_redirect\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REDIRECT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',6,0);
INSERT INTO `mp75b_extensions` VALUES (428,'plg_system_remember','plugin','remember','system',0,1,1,1,'{\"name\":\"plg_system_remember\",\"type\":\"plugin\",\"creationDate\":\"April 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_REMEMBER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0);
INSERT INTO `mp75b_extensions` VALUES (429,'plg_system_sef','plugin','sef','system',0,1,1,0,'{\"name\":\"plg_system_sef\",\"type\":\"plugin\",\"creationDate\":\"December 2007\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEF_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',8,0);
INSERT INTO `mp75b_extensions` VALUES (430,'plg_system_logout','plugin','logout','system',0,1,1,1,'{\"name\":\"plg_system_logout\",\"type\":\"plugin\",\"creationDate\":\"April 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LOGOUT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (431,'plg_user_contactcreator','plugin','contactcreator','user',0,0,1,0,'{\"name\":\"plg_user_contactcreator\",\"type\":\"plugin\",\"creationDate\":\"August 2009\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTACTCREATOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"autowebpage\":\"\",\"category\":\"34\",\"autopublish\":\"0\"}','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (432,'plg_user_joomla','plugin','joomla','user',0,1,1,0,'{\"name\":\"plg_user_joomla\",\"type\":\"plugin\",\"creationDate\":\"December 2006\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2009 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','{\"strong_passwords\":\"1\",\"autoregister\":\"1\"}','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (433,'plg_user_profile','plugin','profile','user',0,0,1,0,'{\"name\":\"plg_user_profile\",\"type\":\"plugin\",\"creationDate\":\"January 2008\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_USER_PROFILE_XML_DESCRIPTION\",\"group\":\"\"}','{\"register-require_address1\":\"1\",\"register-require_address2\":\"1\",\"register-require_city\":\"1\",\"register-require_region\":\"1\",\"register-require_country\":\"1\",\"register-require_postal_code\":\"1\",\"register-require_phone\":\"1\",\"register-require_website\":\"1\",\"register-require_favoritebook\":\"1\",\"register-require_aboutme\":\"1\",\"register-require_tos\":\"1\",\"register-require_dob\":\"1\",\"profile-require_address1\":\"1\",\"profile-require_address2\":\"1\",\"profile-require_city\":\"1\",\"profile-require_region\":\"1\",\"profile-require_country\":\"1\",\"profile-require_postal_code\":\"1\",\"profile-require_phone\":\"1\",\"profile-require_website\":\"1\",\"profile-require_favoritebook\":\"1\",\"profile-require_aboutme\":\"1\",\"profile-require_tos\":\"1\",\"profile-require_dob\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (434,'plg_extension_joomla','plugin','joomla','extension',0,1,1,1,'{\"name\":\"plg_extension_joomla\",\"type\":\"plugin\",\"creationDate\":\"May 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_EXTENSION_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (435,'plg_content_joomla','plugin','joomla','content',0,1,1,0,'{\"name\":\"plg_content_joomla\",\"type\":\"plugin\",\"creationDate\":\"November 2010\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (436,'plg_system_languagecode','plugin','languagecode','system',0,0,1,0,'{\"name\":\"plg_system_languagecode\",\"type\":\"plugin\",\"creationDate\":\"November 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_LANGUAGECODE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',10,0);
INSERT INTO `mp75b_extensions` VALUES (437,'plg_quickicon_joomlaupdate','plugin','joomlaupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_joomlaupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_JOOMLAUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (438,'plg_quickicon_extensionupdate','plugin','extensionupdate','quickicon',0,1,1,1,'{\"name\":\"plg_quickicon_extensionupdate\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_QUICKICON_EXTENSIONUPDATE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (439,'plg_captcha_recaptcha','plugin','recaptcha','captcha',0,0,1,0,'{\"name\":\"plg_captcha_recaptcha\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CAPTCHA_RECAPTCHA_XML_DESCRIPTION\",\"group\":\"\"}','{\"public_key\":\"\",\"private_key\":\"\",\"theme\":\"clean\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (440,'plg_system_highlight','plugin','highlight','system',0,1,1,0,'{\"name\":\"plg_system_highlight\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SYSTEM_HIGHLIGHT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',7,0);
INSERT INTO `mp75b_extensions` VALUES (441,'plg_content_finder','plugin','finder','content',0,0,1,0,'{\"name\":\"plg_content_finder\",\"type\":\"plugin\",\"creationDate\":\"December 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_CONTENT_FINDER_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (442,'plg_finder_categories','plugin','categories','finder',0,1,1,0,'{\"name\":\"plg_finder_categories\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CATEGORIES_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',1,0);
INSERT INTO `mp75b_extensions` VALUES (443,'plg_finder_contacts','plugin','contacts','finder',0,1,1,0,'{\"name\":\"plg_finder_contacts\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTACTS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',2,0);
INSERT INTO `mp75b_extensions` VALUES (444,'plg_finder_content','plugin','content','finder',0,1,1,0,'{\"name\":\"plg_finder_content\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_CONTENT_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',3,0);
INSERT INTO `mp75b_extensions` VALUES (445,'plg_finder_newsfeeds','plugin','newsfeeds','finder',0,1,1,0,'{\"name\":\"plg_finder_newsfeeds\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_NEWSFEEDS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',4,0);
INSERT INTO `mp75b_extensions` VALUES (446,'plg_finder_weblinks','plugin','weblinks','finder',0,1,1,0,'{\"name\":\"plg_finder_weblinks\",\"type\":\"plugin\",\"creationDate\":\"August 2011\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_WEBLINKS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',5,0);
INSERT INTO `mp75b_extensions` VALUES (447,'plg_finder_tags','plugin','tags','finder',0,1,1,0,'{\"name\":\"plg_finder_tags\",\"type\":\"plugin\",\"creationDate\":\"February 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_FINDER_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (448,'plg_twofactorauth_totp','plugin','totp','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_totp\",\"type\":\"plugin\",\"creationDate\":\"August 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_TOTP_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (449,'plg_authentication_cookie','plugin','cookie','authentication',0,1,1,0,'{\"name\":\"plg_authentication_cookie\",\"type\":\"plugin\",\"creationDate\":\"July 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_AUTH_COOKIE_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (450,'plg_twofactorauth_yubikey','plugin','yubikey','twofactorauth',0,0,1,0,'{\"name\":\"plg_twofactorauth_yubikey\",\"type\":\"plugin\",\"creationDate\":\"September 2013\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.2.0\",\"description\":\"PLG_TWOFACTORAUTH_YUBIKEY_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (451,'plg_search_tags','plugin','tags','search',0,1,1,0,'{\"name\":\"plg_search_tags\",\"type\":\"plugin\",\"creationDate\":\"March 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.0.0\",\"description\":\"PLG_SEARCH_TAGS_XML_DESCRIPTION\",\"group\":\"\"}','{\"search_limit\":\"50\",\"show_tagged_items\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (503,'beez3','template','beez3','',0,1,1,0,'{\"name\":\"beez3\",\"type\":\"template\",\"creationDate\":\"25 November 2009\",\"author\":\"Angie Radtke\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"a.radtke@derauftritt.de\",\"authorUrl\":\"http:\\/\\/www.der-auftritt.de\",\"version\":\"3.1.0\",\"description\":\"TPL_BEEZ3_XML_DESCRIPTION\",\"group\":\"\"}','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"sitetitle\":\"\",\"sitedescription\":\"\",\"navposition\":\"center\",\"templatecolor\":\"nature\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (504,'hathor','template','hathor','',1,1,1,0,'{\"name\":\"hathor\",\"type\":\"template\",\"creationDate\":\"May 2010\",\"author\":\"Andrea Tarr\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"hathor@tarrconsulting.com\",\"authorUrl\":\"http:\\/\\/www.tarrconsulting.com\",\"version\":\"3.0.0\",\"description\":\"TPL_HATHOR_XML_DESCRIPTION\",\"group\":\"\"}','{\"showSiteName\":\"0\",\"colourChoice\":\"0\",\"boldText\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (506,'protostar','template','protostar','',0,1,1,0,'{\"name\":\"protostar\",\"type\":\"template\",\"creationDate\":\"4\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_PROTOSTAR_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (507,'isis','template','isis','',1,1,1,0,'{\"name\":\"isis\",\"type\":\"template\",\"creationDate\":\"3\\/30\\/2012\",\"author\":\"Kyle Ledbetter\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters, Inc. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"\",\"version\":\"1.0\",\"description\":\"TPL_ISIS_XML_DESCRIPTION\",\"group\":\"\"}','{\"templateColor\":\"\",\"logoFile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (600,'English (United Kingdom)','language','en-GB','',0,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB site language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (601,'English (United Kingdom)','language','en-GB','',1,1,1,1,'{\"name\":\"English (United Kingdom)\",\"type\":\"language\",\"creationDate\":\"2013-03-07\",\"author\":\"Joomla! Project\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.1\",\"description\":\"en-GB administrator language\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (700,'files_joomla','file','joomla','',0,1,1,1,'{\"name\":\"files_joomla\",\"type\":\"file\",\"creationDate\":\"July 2014\",\"author\":\"Joomla! Project\",\"copyright\":\"(C) 2005 - 2014 Open Source Matters. All rights reserved\",\"authorEmail\":\"admin@joomla.org\",\"authorUrl\":\"www.joomla.org\",\"version\":\"3.3.3\",\"description\":\"FILES_JOOMLA_XML_DESCRIPTION\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10000,'','language','zh-TW','',0,1,0,0,'{\"name\":\"\\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\",\"type\":\"language\",\"creationDate\":\"2014-7-30\",\"author\":\"Joomla! Taiwan User Community\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters. All rights reserved.\",\"authorEmail\":\"eddy@joomla.org.tw\",\"authorUrl\":\"www.joomla.org.tw\",\"version\":\"3.3.3.1\",\"description\":\"zh-TW site language\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10001,'','language','zh-TW','',1,1,0,0,'{\"name\":\"\\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\",\"type\":\"language\",\"creationDate\":\"2014-7-30\",\"author\":\"Joomla! Taiwan User Community\",\"copyright\":\"Copyright (C) 2005 - 2014 Open Source Matters All rights reserved. \",\"authorEmail\":\"eddy@joomla.org.tw\",\"authorUrl\":\"www.joomla.org.tw\",\"version\":\"3.3.3.1\",\"description\":\"zh-TW administrator language\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10002,'zh-TW','package','pkg_zh-TW','',0,1,1,0,'{\"name\":\"\\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\\u5b8c\\u6574\\u8a9e\\u8a00\\u5305\",\"type\":\"package\",\"creationDate\":\"2014-7-30\",\"author\":\"Joomla! Taiwan User Community\",\"copyright\":\"Copyright (C) 2005 - 2012 Copyright (C) 2005 - 2014 Open Source Matters  All rights reserved.\",\"authorEmail\":\"eddy@joomla.org.tw\",\"authorUrl\":\"www.joomla.org.tw\",\"version\":\"3.3.3.1\",\"description\":\"\\n      \\n      <h3>Joomla! 3.3.3v1 \\u4e2d\\u6587(\\u7e41\\u9ad4\\uff0e\\u53f0\\u7063)\\u5b8c\\u6574\\u8a9e\\u8a00\\u5305<\\/h3>\\n      <h3>Joomla! 3.3.3v1 Traditional Chinese (Taiwan) Language Package<\\/h3>\\n      \\n   \",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10003,'com_djcatalog2','component','com_djcatalog2','',1,1,0,0,'{\"name\":\"com_djcatalog2\",\"type\":\"component\",\"creationDate\":\"January 2013\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4.1.1\",\"description\":\"\",\"group\":\"\"}','{\"theme\":\"default\",\"theme_responsive\":\"1\",\"allowed_image_types\":\"jpg,png,gif\",\"allowed_attachment_types\":\"jpg,png,bmp,gif,pdf,tif,tiff,txt,csv,doc,docx,xls,xlsx,xlt,pps,ppt,pptx,ods,odp,odt,rar,zip,tar,bz2,gz2,7z\",\"multiple_image_upload\":\"1\",\"multiple_file_upload\":\"1\",\"show_contact_form\":\"0\",\"contact_list\":\"\",\"contact_sender\":\"0\",\"contact_captcha\":\"\",\"contact_company_name_field\":\"0\",\"contact_street_field\":\"0\",\"contact_city_field\":\"0\",\"contact_zip_field\":\"0\",\"contact_country_field\":\"0\",\"contact_phone_field\":\"0\",\"contact_copy_field\":\"1\",\"price_restrict\":\"0\",\"price_unit\":\"$\",\"thousand_separator\":\"0\",\"decimal_separator\":\"0\",\"decimals\":\"2\",\"unit_side\":\"1\",\"social_code\":\"\",\"social_code_position\":\"bottom\",\"comments\":\"0\",\"facebook-sdk\":\"1\",\"disqus_shortname\":\"\",\"show_footer\":\"0\",\"product_catalogue\":\"0\",\"showcatdesc\":\"0\",\"showcatimg\":\"0\",\"category_ordering\":\"c.ordering\",\"showsubcategories\":\"0\",\"showsubcategories_label\":\"1\",\"category_columns\":\"2\",\"category_show_intro\":\"1\",\"category_intro_trunc\":\"0\",\"category_intro_length\":\"0\",\"image_link_subcategory\":\"0\",\"showreadmore_subcategory\":\"1\",\"subcategory_showchildren\":\"0\",\"limit_items_show\":\"50\",\"list_layout\":\"items\",\"show_layout_switch\":\"0\",\"items_columns\":\"3\",\"items_default_order\":\"i.created\",\"items_default_order_dir\":\"asc\",\"items_category_ordering\":\"1\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"show_category_filter\":\"0\",\"category_filter_type\":\"0\",\"show_producer_filter\":\"0\",\"show_price_filter\":\"0\",\"show_search\":\"0\",\"show_atoz_filter\":\"0\",\"atoz_letters\":\"a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z\",\"atoz_check_available\":\"0\",\"show_category_orderby\":\"0\",\"show_producer_orderby\":\"0\",\"show_name_orderby\":\"0\",\"show_price_orderby\":\"0\",\"show_date_orderby\":\"0\",\"show_item_name\":\"1\",\"show_category_name\":\"0\",\"show_producer_name\":\"0\",\"show_producers_items\":\"0\",\"show_price\":\"1\",\"show_old_price\":\"0\",\"show_author\":\"0\",\"show_hits\":\"0\",\"show_date\":\"0\",\"show_publishdate\":\"0\",\"items_show_attributes\":\"1\",\"items_show_cart_button\":\"1\",\"items_show_intro\":\"0\",\"items_intro_trunc\":\"0\",\"items_intro_length\":\"0\",\"image_link_item\":\"0\",\"showreadmore_item\":\"0\",\"rss_enabled\":\"1\",\"rss_feed_icon\":\"0\",\"rss_limit_items_show\":\"8\",\"rss_items_default_order\":\"i.created\",\"rss_items_default_order_dir\":\"desc\",\"rss_description_type\":\"1\",\"rss_image_link_item\":\"1\",\"rss_showreadmore_item\":\"1\",\"show_image_item\":\"1\",\"show_category_name_item\":\"0\",\"show_producer_name_item\":\"2\",\"show_producers_items_item\":\"1\",\"show_price_item\":\"1\",\"show_old_price_item\":\"0\",\"show_author_item\":\"0\",\"show_hits_item\":\"0\",\"show_date_item\":\"0\",\"show_publishdate_item\":\"0\",\"items_show_cart_button_item\":\"1\",\"show_intro_desc_item\":\"0\",\"show_navigation\":\"0\",\"related_items_columns\":\"2\",\"related_items_count\":\"2\",\"producers_pagination_limit\":\"8\",\"producers_columns\":\"2\",\"producers_default_order\":\"a.ordering\",\"producers_default_order_dir\":\"asc\",\"producers_show_name\":\"2\",\"producers_show_intro\":\"0\",\"producers_intro_trunc\":\"0\",\"producers_intro_length\":\"0\",\"producers_image_link\":\"0\",\"producers_readmore\":\"0\",\"cart_show_prices\":\"1\",\"cart_query_enabled\":\"1\",\"cart_query_registered\":\"0\",\"cart_query_captcha\":\"\",\"cart_queryfield_company\":\"1\",\"cart_queryfield_position\":\"0\",\"cart_queryfield_address\":\"1\",\"cart_queryfield_city\":\"1\",\"cart_queryfield_postcode\":\"1\",\"cart_queryfield_country_id\":\"1\",\"cart_queryfield_vat_id\":\"0\",\"cart_queryfield_phone\":\"1\",\"cart_queryfield_fax\":\"0\",\"cart_queryfield_www\":\"0\",\"cart_queryfield_customer_note\":\"2\",\"lightbox_type\":\"slimbox\",\"resize\":\"0\",\"image_jpg_quality\":\"85\",\"crop_alignment_h\":\"m\",\"crop_alignment_v\":\"m\",\"width\":\"600\",\"height\":\"600\",\"th_width\":\"250\",\"th_height\":\"250\",\"smallth_width\":\"150\",\"smallth_height\":\"150\",\"smallth_spacing_v\":\"4\",\"smallth_spacing_h\":\"4\",\"smallth_padding_h\":\"4\",\"category_resize\":\"\",\"category_width\":\"\",\"category_height\":\"\",\"category_th_width\":\"\",\"category_th_height\":\"\",\"category_smallth_width\":\"\",\"category_smallth_height\":\"\",\"category_smallth_spacing_v\":\"\",\"category_smallth_spacing_h\":\"\",\"category_smallth_padding_h\":\"\",\"producer_resize\":\"\",\"producer_width\":\"\",\"producer_height\":\"\",\"producer_th_width\":\"\",\"producer_th_height\":\"\",\"producer_smallth_width\":\"\",\"producer_smallth_height\":\"\",\"producer_smallth_spacing_v\":\"\",\"producer_smallth_spacing_h\":\"\",\"producer_smallth_padding_h\":\"\",\"seo_items_view\":\"items\",\"seo_item_view\":\"item\",\"seo_producer_view\":\"producer\",\"seo_producers_view\":\"producers\",\"seo_myitems_view\":\"myitems\",\"seo_itemform_view\":\"itemform\",\"seo_cart_view\":\"cart\",\"seo_query_view\":\"query\",\"seo_alias_separator\":\"0\",\"seo_id_position\":\"-1\",\"fed_edit_button\":\"0\",\"fed_max_products\":\"0\",\"fed_multiple_categories\":\"0\",\"fed_multiple_categories_limit\":\"3\",\"fed_default_state\":\"0\",\"fed_producer\":\"0\",\"fed_producer_restrict\":\"0\",\"fed_price\":\"0\",\"fed_featured\":\"0\",\"fed_group\":\"0\",\"fed_intro_description\":\"1\",\"fed_intro_description_editor\":\"codemirror\",\"fed_description\":\"1\",\"fed_description_editor\":\"codemirror\",\"fed_meta\":\"0\",\"fed_contact\":\"0\",\"fed_max_images\":\"6\",\"fed_max_image_size\":\"2048\",\"fed_max_files\":\"6\",\"fed_max_file_size\":\"2048\",\"fed_multiple_image_upload\":\"1\",\"fed_multiple_file_upload\":\"1\",\"fed_notify\":\"1\",\"fed_notify_list\":\"\",\"fed_myitems_list\":\"0\",\"fed_show_category_name\":\"1\",\"fed_show_producer_name\":\"3\",\"fed_show_price\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10004,'mod_djc2categories','module','mod_djc2categories','',0,1,0,0,'{\"name\":\"mod_djc2categories\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4\",\"description\":\"MOD_DJC2CATEGORIES_DESC\",\"group\":\"\"}','{\"moduleclass_sfx\":\"_menu\",\"expand\":\"0\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10005,'mod_djc2frontpage','module','mod_djc2frontpage','',0,1,0,0,'{\"name\":\"mod_djc2frontpage\",\"type\":\"module\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.3\",\"description\":\"MOD_DJC2FRONTPAGE_MODULE_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"css\":\"0\",\"responsive_width\":\"\",\"showtitle\":\"1\",\"linktitle\":\"1\",\"showcattitle\":\"1\",\"showpagination\":\"1\",\"orderby\":\"0\",\"orderbydir\":\"0\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"@spacer\":\"\",\"catsw\":\"0\",\"catid\":\"0\",\"cols\":\"1\",\"rows\":\"3\",\"largeprocess\":\"1\",\"largewidth\":\"400\",\"largeheight\":\"240\",\"smallprocess\":\"1\",\"smallwidth\":\"90\",\"smallheight\":\"70\",\"trunc\":\"0\",\"trunclimit\":\"0\",\"showreadmore\":\"1\",\"readmoretext\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10006,'mod_djc2items','module','mod_djc2items','',0,1,0,0,'{\"name\":\"mod_djc2items\",\"type\":\"module\",\"creationDate\":\"November 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.6\",\"description\":\"MOD_DJC2ITEMS_MODULE_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"orderby\":\"0\",\"orderdir\":\"0\",\"catid\":\"0\",\"items_limit\":\"0\",\"showimage\":\"1\",\"show_category_name\":\"1\",\"show_producer_name\":\"3\",\"show_price\":\"1\",\"items_show_intro\":\"1\",\"items_intro_trunc\":\"0\",\"items_intro_length\":\"0\",\"showreadmore_item\":\"1\",\"imageprocess\":\"1\",\"imagewidth\":\"120\",\"imageheight\":\"120\",\"module_float\":\"\",\"module_width\":\"\",\"module_height\":\"\",\"module_text_align\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10007,'mod_djc2relateditems','module','mod_djc2relateditems','',0,1,0,0,'{\"name\":\"mod_djc2relateditems\",\"type\":\"module\",\"creationDate\":\"October 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.6\",\"description\":\"MOD_DJC2RELATEDITEMS_MODULE_DESCRIPTION\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"featured_only\":\"0\",\"featured_first\":\"0\",\"orderby\":\"0\",\"orderdir\":\"0\",\"items_limit\":\"0\",\"showimage\":\"1\",\"show_category_name\":\"1\",\"show_producer_name\":\"3\",\"show_price\":\"1\",\"items_show_intro\":\"1\",\"items_intro_trunc\":\"0\",\"items_intro_length\":\"0\",\"showreadmore_item\":\"1\",\"imageprocess\":\"1\",\"imagewidth\":\"120\",\"imageheight\":\"120\",\"module_float\":\"\",\"module_width\":\"\",\"module_height\":\"\",\"module_text_align\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10008,'mod_djc2filters','module','mod_djc2filters','',0,1,0,0,'{\"name\":\"mod_djc2filters\",\"type\":\"module\",\"creationDate\":\"September 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.8\",\"description\":\"MOD_DJC2FILTERS_DESC\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"visibility\":\"\",\"group_title\":\"1\",\"categories\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10009,'mod_djc2producers','module','mod_djc2producers','',0,1,0,0,'{\"name\":\"mod_djc2producers\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4\",\"description\":\"MOD_DJC2PRODUCERS_DESC\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"filter\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10010,'mod_djc2search','module','mod_djc2search','',0,1,0,0,'{\"name\":\"mod_djc2search\",\"type\":\"module\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.4\",\"description\":\"MOD_DJC2SEARCH\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\",\"filter\":\"1\",\"show_label\":\"1\",\"show_button\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10011,'plg_djcatalog2_pagebreak','plugin','pagebreak','djcatalog2',0,0,1,0,'{\"name\":\"plg_djcatalog2_pagebreak\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.2\",\"description\":\"PLG_DJCATALOG2_PAGEBREAK_DJCATALOGPAGEBREAK\",\"group\":\"\"}','{\"enabled\":\"1\",\"accordion\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10012,'plg_search_djcatalog2','plugin','djcatalog2','search',0,0,1,0,'{\"name\":\"plg_search_djcatalog2\",\"type\":\"plugin\",\"creationDate\":\"January 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"2.4\",\"description\":\"PLG_SEARCH_DJCATALOG2_DJPLGSEARCHDESC\",\"group\":\"\"}','{\"search_limit\":\"50\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10013,'plg_xmap_com_djcatalog2','plugin','com_djcatalog2','xmap',0,0,1,0,'{\"name\":\"plg_xmap_com_djcatalog2\",\"type\":\"plugin\",\"creationDate\":\"January 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.4\",\"description\":\"PLG_XMAP_COM_DJCATALOG2_DESC\",\"group\":\"\"}','{\"include_products\":\"1\",\"cat_priority\":\"0.5\",\"cat_changefreq\":\"weekly\",\"link_priority\":\"0.5\",\"link_changefreq\":\"weekly\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10014,'plg_quickicon_djcatalog','plugin','djcatalog2','quickicon',0,0,1,0,'{\"name\":\"plg_quickicon_djcatalog\",\"type\":\"plugin\",\"creationDate\":\"August 2012\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_QUICKICON_DJCATALOG2_DESCRIPTION\",\"group\":\"\"}','{\"context\":\"mod_quickicon\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10015,'dj-catalog2','package','pkg_dj-catalog2','',0,1,1,0,'{\"name\":\"DJ-Catalog2 Package\",\"type\":\"package\",\"creationDate\":\"August 2011\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"3.4.1\",\"description\":\"DJ-Catalog2 All-in-one Package\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10016,'rsform','component','com_rsform','',1,1,0,0,'{\"name\":\"RSForm!\",\"type\":\"component\",\"creationDate\":\"October 2012\",\"author\":\"RSJoomla!\",\"copyright\":\"(C) 2007-2012 www.rsjoomla.com\",\"authorEmail\":\"support@rsjoomla.com\",\"authorUrl\":\"www.rsjoomla.com\",\"version\":\"1.4.0 R45\",\"description\":\"COM_RSFORM_INSTALL_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10017,'TCPDF','library','tcpdf','',0,1,1,0,'{\"name\":\"TCPDF\",\"type\":\"library\",\"creationDate\":\"28 January 2011\",\"author\":\"Nicola Asuni\",\"copyright\":\"http:\\/\\/www.tcpdf.org\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.tcpdf.org\",\"version\":\"2.5.0\",\"description\":\"Class for generating PDF files on-the-fly without requiring external extensions.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10018,'com_jaextmanager','component','com_jaextmanager','',1,1,0,0,'{\"name\":\"com_jaextmanager\",\"type\":\"component\",\"creationDate\":\"12 February 2014\",\"author\":\"JoomlArt\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.joomlart.com\",\"version\":\"2.5.8\",\"description\":\"JA Extension Manager Component\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10019,'T3 Framework','plugin','t3','system',0,1,1,0,'{\"name\":\"T3 Framework\",\"type\":\"plugin\",\"creationDate\":\"June 23, 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C) 2005 - 2013 Open Source Matters. All rights reserved.\",\"authorEmail\":\"info@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"2.3.0\",\"description\":\"\\n\\t\\n\\t<div align=\\\"center\\\">\\n\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<a href=\\\"http:\\/\\/t3-framework.org\\/\\\"><img src=\\\"http:\\/\\/joomlart.s3.amazonaws.com\\/images\\/jat3v3-documents\\/message-installation\\/logo.png\\\" alt=\\\"some_text\\\" width=\\\"300\\\" height=\\\"99\\\"><\\/a>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/t3-framework.org\\/\\\" title=\\\"\\\">Home<\\/a> | <a href=\\\"http:\\/\\/demo.t3-framework.org\\/\\\" title=\\\"\\\">Demo<\\/a> | <a href=\\\"http:\\/\\/t3-framework.org\\/documentation\\\" title=\\\"\\\">Document<\\/a> | <a href=\\\"https:\\/\\/github.com\\/t3framework\\/t3\\/blob\\/master\\/CHANGELOG.md\\\" title=\\\"\\\">Changelog<\\/a><\\/h4>\\n\\t\\t<p> <\\/p>\\n\\t\\t<p>Copyright 2004 - 2014 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t<\\/div>\\n     <style>table.adminform{width: 100%;}<\\/style>\\n\\t <\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10020,'purity_III','template','purity_iii','',0,1,1,0,'{\"name\":\"purity_III\",\"type\":\"template\",\"creationDate\":\"July 2014\",\"author\":\"JoomlArt.com\",\"copyright\":\"Copyright (C), J.O.O.M Solutions Co., Ltd. All Rights Reserved.\",\"authorEmail\":\"webmaster@joomlart.com\",\"authorUrl\":\"http:\\/\\/www.t3-framework.org\",\"version\":\"1.1.1\",\"description\":\"\\n\\t\\t\\n\\t\\t<div align=\\\"center\\\">\\n\\t\\t\\t<div class=\\\"alert alert-success\\\" style=\\\"background-color:#DFF0D8;border-color:#D6E9C6;color: #468847;padding: 1px 0;\\\">\\n\\t\\t\\t\\t<h2>Purity III Template references<\\/h2>\\n\\t\\t\\t\\t<h4><a href=\\\"http:\\/\\/joomla-templates.joomlart.com\\/purity_iii\\/\\\" title=\\\"Purity III Template demo\\\">Live Demo<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/documentation\\/joomla-templates\\/purity-iii\\\" title=\\\"purity iii template documentation\\\">Documentation<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/forums\\/forumdisplay.php?542-Purity-III\\\" title=\\\"purity iii forum\\\">Forum<\\/a> | <a href=\\\"http:\\/\\/www.joomlart.com\\/joomla\\/templates\\/purity-iii\\\" title=\\\"Purity III template more info\\\">More Info<\\/a><\\/h4>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<span style=\\\"color:#FF0000\\\">Note: Purity III requires T3 plugin to be installed and enabled.<\\/span>\\n\\t\\t\\t\\t<p> <\\/p>\\n\\t\\t\\t\\t<p>Copyright 2004 - 2014 <a href=\'http:\\/\\/www.joomlart.com\\/\' title=\'Visit Joomlart.com!\'>JoomlArt.com<\\/a>.<\\/p>\\n\\t\\t\\t<\\/div>\\n\\t\\t\\t<style>table.adminform{width: 100%;}<\\/style>\\n\\t\\t<\\/div>\\n\\t\\t\\n\\t\",\"group\":\"\"}','{\"tpl_article_info_datetime_format\":\"d M Y\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10021,'com_remoteimage','component','com_remoteimage','',1,1,0,0,'{\"name\":\"com_remoteimage\",\"type\":\"component\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.5\",\"description\":\"COM_REMOTEIMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{\"Connection_Local\":\"1\",\"Connection_Ftp\":\"1\",\"Local_Root\":\"images\",\"Ftp_Host\":\"127.0.0.1\",\"Ftp_User\":\"\",\"Ftp_Password\":\"\",\"Ftp_Port\":\"21\",\"Ftp_Active\":\"passive\",\"Ftp_Root\":\"\",\"Ftp_Url\":\"\",\"Onlyimage\":\"0\",\"Safemode\":\"1\",\"Integrate_InsertTemplateImage\":\"<p>{%CONTENT%}<\\/p>\",\"Integrate_InsertTemplateLink\":\"{%CONTENT%}\",\"Image_DefaultWidth_Midium\":640,\"Image_DefaultHeight_Midium\":640,\"Integrate_Override_MediaManager\":\"1\",\"Integrate_Override_MediaFormField\":\"1\",\"Integrate_Override_InsertImageArticle\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10023,'plg_editors-xtd_remoteimage','plugin','remoteimage','editors-xtd',0,1,1,0,'{\"name\":\"plg_editors-xtd_remoteimage\",\"type\":\"plugin\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.5\",\"description\":\"PLG_EDITORS-XTD_REMOTEIMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10024,'plg_system_remoteimage','plugin','remoteimage','system',0,1,1,0,'{\"name\":\"plg_system_remoteimage\",\"type\":\"plugin\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.2\",\"description\":\"PLG_SYSTEM_REMOTEIMAGE_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10025,'System - Asikart Easy Set','plugin','asikart_easyset','system',0,1,1,0,'{\"name\":\"System - Asikart Easy Set\",\"type\":\"plugin\",\"creationDate\":\"2011-06-28\",\"author\":\"Asikart.com\",\"copyright\":\"(C) 2013 Asikart.com. All rights reserved.\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"2.6.4\",\"description\":\"Asikart Easy Set. Easy setup Joomla! Site!\",\"group\":\"\"}','{\"includejQuery\":\"0\",\"includeBootstrap\":\"0\",\"colorTable\":\"0\",\"tidyRepair\":\"0\",\"smoothScroll\":\"0\",\"getImages\":\"0\",\"blogViewClearly\":\"0\",\"blogViewImgWidth\":\"150\",\"blogViewImgCrop\":\"0\",\"blogViewCleanTags\":\"0\",\"blogViewTagsAllow\":\"\",\"blogViewMaxChar\":\"250\",\"autoThumbnail\":\"0\",\"onlyLocalhostThumb\":\"1\",\"tranAlias\":\"0\",\"originLan\":\"\",\"tranLan\":\"\",\"seo\":\"0\",\"titleFix\":\"{%TITLE%} | {%SITE%}\",\"titleSeparator\":\"|\",\"getMeta\":\"0\",\"maxMetaChar\":\"250\",\"generator\":\"\",\"insertHeader\":\"\",\"openGraph\":\"0\",\"ogDefaultImage\":\"\",\"ogDefaultImageOnlyFrontPage\":\"1\",\"ogAdminId\":\"\",\"ogPageId\":\"\",\"ogAppId\":\"\",\"fbLike\":\"0\",\"fbLikeOnBlog\":\"0\",\"fbLikePosition\":\"3\",\"inputCodeBase\":\"\",\"insertArticleTop\":\"\",\"insertTitleBottom\":\"\",\"insertContentTop\":\"\",\"insertContentBottom\":\"\",\"showOnBlog\":\"1\",\"showNumber\":\"3\",\"adminSecure\":\"url\",\"adminSecureCode\":\"aedes\",\"languageOrphan\":\"0\",\"languageOrphanPath\":\"logs\\/language.ini\",\"cacheManagerEnabled\":\"0\",\"cacheControlType\":\"exclude\",\"CacheQueries\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10027,'com_echo','component','com_echo','',1,1,0,0,'{\"name\":\"com_echo\",\"type\":\"component\",\"creationDate\":\"Unknown\",\"author\":\"Unknown\",\"copyright\":\"\",\"authorEmail\":\"\",\"authorUrl\":\"\",\"version\":\"\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10028,'com_m2c','component','com_m2c','',1,1,0,0,'{\"name\":\"COM_M2C\",\"type\":\"component\",\"creationDate\":\"21-Jun-2013\",\"author\":\"Douglas Machado\",\"copyright\":\"2006 - 2013 - Ideal Extensions for Joomla - All rights reserved.\",\"authorEmail\":\"admin@fok.com.br\",\"authorUrl\":\"http:\\/\\/idealextensions.com\",\"version\":\"3.0\",\"description\":\"Module to Component - Loads a Module position in the component area of the site (template)\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10029,'com_webgallery','component','com_webgallery','',1,1,0,0,'{\"name\":\"com_webgallery\",\"type\":\"component\",\"creationDate\":\"2012-11-12\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.0\",\"description\":\"COM_WEBGALLERY_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10030,'com_modulesmanagerck','component','com_modulesmanagerck','',1,1,0,0,'{\"name\":\"com_modulesmanagerck\",\"type\":\"component\",\"creationDate\":\"April 2013\",\"author\":\"Cedric Keiflin\",\"copyright\":\"Copyright (C) 2013. All rights reserved.\",\"authorEmail\":\"ced1870@gmail.com\",\"authorUrl\":\"http:\\/\\/www.joomlack.fr\",\"version\":\"1.0.1\",\"description\":\"COM_MODULESMANAGERCK_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10031,'System - Modules Manager CK','plugin','modulesmanagersystemck','system',0,0,1,0,'{\"name\":\"System - Modules Manager CK\",\"type\":\"plugin\",\"creationDate\":\"June 2013\",\"author\":\"Cedric KEIFLIN\",\"copyright\":\"Copyright (C) 2013   . All rights reserved.\",\"authorEmail\":\" \",\"authorUrl\":\" \",\"version\":\"1.0.1\",\"description\":\"System plugin for the component Modules Manager CK\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10032,'modulesmanagerck','package','pkg_modulesmanagerck','',0,1,1,0,'{\"name\":\"Modules Manager CK Package\",\"type\":\"package\",\"creationDate\":\"Mai 2013\",\"author\":\"C\\u00e9dric KEIFLIN\",\"copyright\":\"Copyright (C) 2013. All rights reserved.\",\"authorEmail\":\"\",\"authorUrl\":\"http:\\/\\/www.joomlack.fr\",\"version\":\"1.0.2\",\"description\":\"Manages your modules with drag and drop into your template with Modules Manager CK.\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10033,'mod_djc2cart','module','mod_djc2cart','',0,1,0,0,'{\"name\":\"mod_djc2cart\",\"type\":\"module\",\"creationDate\":\"February 2014\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"MOD_DJC2CART\",\"group\":\"\"}','{\"moduleclass_sfx\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10034,'plg_djcatalog2_customfield','plugin','customfield','djcatalog2',0,0,1,0,'{\"name\":\"plg_djcatalog2_customfield\",\"type\":\"plugin\",\"creationDate\":\"April 2014\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_DJCATALOG2_CUSTOMFIELD_DESC\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10035,'plg_djcatalog2_jlexreview','plugin','jlexreview','djcatalog2',0,0,1,0,'{\"name\":\"plg_djcatalog2_jlexreview\",\"type\":\"plugin\",\"creationDate\":\"February 2014\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_DJCATALOG2_JLEXREVIEW\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10036,'plg_user_djcatalog2','plugin','djcatalog2','user',0,0,1,0,'{\"name\":\"plg_user_djcatalog2\",\"type\":\"plugin\",\"creationDate\":\"October 2013\",\"author\":\"DJ-Extensions.com LTD\",\"copyright\":\"Copyright (C) 2010-2012 DJ-Extensions.com LTD, All rights reserved.\",\"authorEmail\":\"contact@dj-extensions.com\",\"authorUrl\":\"http:\\/\\/dj-extensions.com\",\"version\":\"1.0\",\"description\":\"PLG_USER_DJCATALOG2_DESCRIPTION\",\"group\":\"\"}','{\"field_firstname\":\"2\",\"field_lastname\":\"2\",\"field_company\":\"1\",\"field_position\":\"0\",\"field_address\":\"1\",\"field_city\":\"1\",\"field_postcode\":\"1\",\"field_country_id\":\"1\",\"field_vat_id\":\"0\",\"field_phone\":\"1\",\"field_fax\":\"0\",\"field_www\":\"0\",\"field_customer_note\":\"2\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10037,'Chinese language pack for DJ-Catalog2','file','zh-TW-djcatalog2','',0,1,0,0,'{\"name\":\"Chinese language pack for DJ-Catalog2\",\"type\":\"file\",\"creationDate\":\"September 2013\",\"author\":\"Blue Constant Media LTD\",\"copyright\":\"2010 Blue Constant Media LTD\",\"authorEmail\":\"\",\"authorUrl\":\"dj-extensions.com\",\"version\":\"3.2.11\",\"description\":\"DJ-Catalog2 Chinese-traditional translation\",\"group\":\"\"}','','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10038,'Custom CSS','module','mod_customcss','',0,1,0,0,'{\"name\":\"Custom CSS\",\"type\":\"module\",\"creationDate\":\"July 2013\",\"author\":\"Hyde-Design\",\"copyright\":\"2013\",\"authorEmail\":\"sales@hyde-design.co.uk\",\"authorUrl\":\"www.hyde-design.co.uk\",\"version\":\"1.8\",\"description\":\"A simple Joomla 2.5 \\/ 3 module to enable you to style individual pages with CSS.\",\"group\":\"\"}','{\"customcss\":\"\\/* Custom CSS *\\/\",\"browsercss\":\"all\",\"externalcss\":\"0\",\"externalcssfile\":\"\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10039,'com_userxtd','component','com_userxtd','',1,1,0,0,'{\"name\":\"com_userxtd\",\"type\":\"component\",\"creationDate\":\"2014-6-4\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.1\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10040,'windwalker','library','windwalker','',0,1,1,0,'{\"name\":\"windwalker\",\"type\":\"library\",\"creationDate\":\"2012-11-23\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) Asikart 2008 - 2014. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"4.0.7\",\"description\":\"LIB_WINDWALKER_XML_DESC\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10041,'plg_system_userxtd','plugin','userxtd','system',0,1,1,0,'{\"name\":\"plg_system_userxtd\",\"type\":\"plugin\",\"creationDate\":\"2013-2-15\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2012 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.0.1\",\"description\":\"PLG_SYSTEM_USERXTD_XML_DESCRIPTION\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10042,'plg_system_akmarkdown','plugin','akmarkdown','system',0,0,1,0,'{\"name\":\"plg_system_akmarkdown\",\"type\":\"plugin\",\"creationDate\":\"2013-05-07\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.2\",\"description\":\"\",\"group\":\"\"}','{\"Markdown_Extra\":\"1\",\"Article_Prettify\":\"2\",\"Article_ForceNewWindow\":\"0\",\"Article_NavList\":\"0\",\"Article_ForceImageAlign\":\"center\",\"Article_ImageClass\":\"akmarkdown-img img-polaroid\",\"Article_NavList_Class\":\"akmarkdown-nav-box well well-small\",\"Article_TableClass\":\"akmarkdown-table table-bordered table-striped table-hover center\",\"Highlight_Enabled\":\"1\",\"Highlight_Theme\":\"default\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10043,'plg_editors_akmarkdown','plugin','akmarkdown','editors',0,1,1,0,'{\"name\":\"plg_editors_akmarkdown\",\"type\":\"plugin\",\"creationDate\":\"2013-05-07\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014 Asikart.com\",\"authorEmail\":\"asika@asikart.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"1.1.2\",\"description\":\"PLG_EDITORS_AKMARKDOWN_XML_DESCRIPTION\",\"group\":\"\"}','{\"EditorButton_ConvertMarkdown\":\"1\",\"Editor_WordWrap\":\"1\",\"Editor_SoftWrapNum\":\"0\",\"AceEditor_Theme\":\"twilight\",\"MarkItUp_Theme\":\"simple\",\"MarkItUp_ButtonSet\":\"markdown\",\"Upload_Handler\":\"\",\"Upload_S3_Key\":\"\",\"Upload_S3_SecretKey\":\"\",\"Upload_S3_Bucket\":\"\",\"Upload_S3_Subfolder\":\"\",\"Upload_AllowExtension\":\"png,gif,jpg,jpeg,zip,txt,rar\",\"Upload_ButtonCss\":\"btn pull-right fltrt btn-inverse btn-upload delicious light green-pastel\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10044,'Image Show GK4','module','mod_image_show_gk4','',0,1,0,0,'{\"name\":\"Image Show GK4\",\"type\":\"module\",\"creationDate\":\"03\\/09\\/2014\",\"author\":\"GavickPro\",\"copyright\":\"Copyright (C) 2011-2014 GavickPro. All rights reserved.\",\"authorEmail\":\"info@gavick.com\",\"authorUrl\":\"www.gavickpro.com\",\"version\":\"1.47\",\"description\":\"\\n\\t\\t<style type=\\\"text\\/css\\\">\\n\\t\\t\\tspan.readonly { padding: 10px; font-family: Arial; font-size:13px !important; font-weight: normal !important; text-align: justify; color: #4d4d4d; line-height: 24px; }\\n\\t\\t\\tspan.readonly h1 { clear:both; font-family: Georgia, sans-serif; font-size:38px; margin:30px 20px 23px; padding:0px 0px 24px 10px; color:#333; border-bottom: 1px solid #eee; font-weight: normal; }\\n\\t\\t\\tspan.tooltip-content { display: none; }\\n\\t\\t\\t.tip-text span.readonly { display: none; }\\n\\t\\t\\t.tip-text span.tooltip-content { display: block; }\\n\\t\\t\\tspan.readonly p { margin: 0 26px 10px }\\n\\t\\t\\tspan.readonly p a { color: #8e0b8c }\\n\\t\\t\\tspan.readonly p.homepage { margin-top: 30px }\\n\\t\\t\\tspan.readonly p.license { border-top: 1px solid #eee; font-size: 11px; margin: 30px 26px 0; padding: 6px 0; }\\n\\t\\t<\\/style>\\n\\n\\t\\t<span class=\\\"readonly\\\"><h1>Image Show GK4<small>ver. 1.47<\\/small><\\/h1><p>GK4 is new generation of our extensions dedicated to Joomla 1.6+.<\\/p><p>With Image Show GK4 module, you can create slideshow on a site which include various images and article fragments or texts defined by a user. Thanks to slide management system integrated in the module, its support is very easy, intuitive and fast. With the new method of creating module styles you can easily move your slideshow style from one template to other template.<\\/p> <p class=\'homepage\'><a href=\'http:\\/\\/tools.gavick.com\\/image-show.html\' target=\'_blank\'>Learn more at the Image Show GK4 project website.<\\/a><\\/p><p class=\'license\'>Image Show GK4 is released under the <a target=\\\"_blank\\\" href=\\\"http:\\/\\/www.gnu.org\\/licenses\\/gpl-2.0.html\\\">GNU\\/GPL v2 license.<\\/a><\\/p><\\/span>\\n\\t\\t\\n\\t\\t<span class=\'tooltip-content\'>Advanced slideshow module for Joomla! 3.2<\\/span>\\n\\t\",\"group\":\"\"}','{\"automatic_module_id\":\"1\",\"module_id\":\"gk-is-1\",\"moduleclass_sfx\":\"\",\"module_style\":\"gk_coffe\",\"memory_limit\":\"128M\",\"generate_thumbnails\":\"1\",\"random_slides\":\"0\",\"use_style_css\":\"1\"}','','',0,'0000-00-00 00:00:00',0,0);
INSERT INTO `mp75b_extensions` VALUES (10045,'com_quickcontent','component','com_quickcontent','',1,1,0,0,'{\"name\":\"com_quickcontent\",\"type\":\"component\",\"creationDate\":\"2013-1-8\",\"author\":\"Asika\",\"copyright\":\"Copyright (C) 2014. All rights reserved.\",\"authorEmail\":\"asika32764@gmail.com\",\"authorUrl\":\"http:\\/\\/asikart.com\",\"version\":\"2.0.1\",\"description\":\"\",\"group\":\"\"}','{}','','',0,'0000-00-00 00:00:00',0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_filters`

DROP TABLE IF EXISTS `mp75b_finder_filters`;
CREATE TABLE `mp75b_finder_filters` (
  `filter_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `state` tinyint(1) NOT NULL DEFAULT '1',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL,
  `created_by_alias` varchar(255) NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `map_count` int(10) unsigned NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `params` mediumtext,
  PRIMARY KEY (`filter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_filters`

LOCK TABLES `mp75b_finder_filters` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links`

DROP TABLE IF EXISTS `mp75b_finder_links`;
CREATE TABLE `mp75b_finder_links` (
  `link_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `route` varchar(255) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `indexdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `md5sum` varchar(32) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `state` int(5) DEFAULT '1',
  `access` int(5) DEFAULT '0',
  `language` varchar(8) NOT NULL,
  `publish_start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `start_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `end_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `list_price` double unsigned NOT NULL DEFAULT '0',
  `sale_price` double unsigned NOT NULL DEFAULT '0',
  `type_id` int(11) NOT NULL,
  `object` mediumblob NOT NULL,
  PRIMARY KEY (`link_id`),
  KEY `idx_type` (`type_id`),
  KEY `idx_title` (`title`),
  KEY `idx_md5` (`md5sum`),
  KEY `idx_url` (`url`(75)),
  KEY `idx_published_list` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`list_price`),
  KEY `idx_published_sale` (`published`,`state`,`access`,`publish_start_date`,`publish_end_date`,`sale_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links`

LOCK TABLES `mp75b_finder_links` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms0`

DROP TABLE IF EXISTS `mp75b_finder_links_terms0`;
CREATE TABLE `mp75b_finder_links_terms0` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms0`

LOCK TABLES `mp75b_finder_links_terms0` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms1`

DROP TABLE IF EXISTS `mp75b_finder_links_terms1`;
CREATE TABLE `mp75b_finder_links_terms1` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms1`

LOCK TABLES `mp75b_finder_links_terms1` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms2`

DROP TABLE IF EXISTS `mp75b_finder_links_terms2`;
CREATE TABLE `mp75b_finder_links_terms2` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms2`

LOCK TABLES `mp75b_finder_links_terms2` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms3`

DROP TABLE IF EXISTS `mp75b_finder_links_terms3`;
CREATE TABLE `mp75b_finder_links_terms3` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms3`

LOCK TABLES `mp75b_finder_links_terms3` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms4`

DROP TABLE IF EXISTS `mp75b_finder_links_terms4`;
CREATE TABLE `mp75b_finder_links_terms4` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms4`

LOCK TABLES `mp75b_finder_links_terms4` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms5`

DROP TABLE IF EXISTS `mp75b_finder_links_terms5`;
CREATE TABLE `mp75b_finder_links_terms5` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms5`

LOCK TABLES `mp75b_finder_links_terms5` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms6`

DROP TABLE IF EXISTS `mp75b_finder_links_terms6`;
CREATE TABLE `mp75b_finder_links_terms6` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms6`

LOCK TABLES `mp75b_finder_links_terms6` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms7`

DROP TABLE IF EXISTS `mp75b_finder_links_terms7`;
CREATE TABLE `mp75b_finder_links_terms7` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms7`

LOCK TABLES `mp75b_finder_links_terms7` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms8`

DROP TABLE IF EXISTS `mp75b_finder_links_terms8`;
CREATE TABLE `mp75b_finder_links_terms8` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms8`

LOCK TABLES `mp75b_finder_links_terms8` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_terms9`

DROP TABLE IF EXISTS `mp75b_finder_links_terms9`;
CREATE TABLE `mp75b_finder_links_terms9` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_terms9`

LOCK TABLES `mp75b_finder_links_terms9` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsa`

DROP TABLE IF EXISTS `mp75b_finder_links_termsa`;
CREATE TABLE `mp75b_finder_links_termsa` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsa`

LOCK TABLES `mp75b_finder_links_termsa` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsb`

DROP TABLE IF EXISTS `mp75b_finder_links_termsb`;
CREATE TABLE `mp75b_finder_links_termsb` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsb`

LOCK TABLES `mp75b_finder_links_termsb` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsc`

DROP TABLE IF EXISTS `mp75b_finder_links_termsc`;
CREATE TABLE `mp75b_finder_links_termsc` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsc`

LOCK TABLES `mp75b_finder_links_termsc` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsd`

DROP TABLE IF EXISTS `mp75b_finder_links_termsd`;
CREATE TABLE `mp75b_finder_links_termsd` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsd`

LOCK TABLES `mp75b_finder_links_termsd` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termse`

DROP TABLE IF EXISTS `mp75b_finder_links_termse`;
CREATE TABLE `mp75b_finder_links_termse` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termse`

LOCK TABLES `mp75b_finder_links_termse` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_links_termsf`

DROP TABLE IF EXISTS `mp75b_finder_links_termsf`;
CREATE TABLE `mp75b_finder_links_termsf` (
  `link_id` int(10) unsigned NOT NULL,
  `term_id` int(10) unsigned NOT NULL,
  `weight` float unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`term_id`),
  KEY `idx_term_weight` (`term_id`,`weight`),
  KEY `idx_link_term_weight` (`link_id`,`term_id`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_links_termsf`

LOCK TABLES `mp75b_finder_links_termsf` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_taxonomy`

DROP TABLE IF EXISTS `mp75b_finder_taxonomy`;
CREATE TABLE `mp75b_finder_taxonomy` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL,
  `state` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `access` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `parent_id` (`parent_id`),
  KEY `state` (`state`),
  KEY `ordering` (`ordering`),
  KEY `access` (`access`),
  KEY `idx_parent_published` (`parent_id`,`state`,`access`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_taxonomy`

LOCK TABLES `mp75b_finder_taxonomy` WRITE;
INSERT INTO `mp75b_finder_taxonomy` VALUES (1,0,'ROOT',0,0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_taxonomy_map`

DROP TABLE IF EXISTS `mp75b_finder_taxonomy_map`;
CREATE TABLE `mp75b_finder_taxonomy_map` (
  `link_id` int(10) unsigned NOT NULL,
  `node_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`link_id`,`node_id`),
  KEY `link_id` (`link_id`),
  KEY `node_id` (`node_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_taxonomy_map`

LOCK TABLES `mp75b_finder_taxonomy_map` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_terms`

DROP TABLE IF EXISTS `mp75b_finder_terms`;
CREATE TABLE `mp75b_finder_terms` (
  `term_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '0',
  `soundex` varchar(75) NOT NULL,
  `links` int(10) NOT NULL DEFAULT '0',
  `language` char(3) NOT NULL DEFAULT '',
  PRIMARY KEY (`term_id`),
  UNIQUE KEY `idx_term` (`term`),
  KEY `idx_term_phrase` (`term`,`phrase`),
  KEY `idx_stem_phrase` (`stem`,`phrase`),
  KEY `idx_soundex_phrase` (`soundex`,`phrase`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_terms`

LOCK TABLES `mp75b_finder_terms` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_terms_common`

DROP TABLE IF EXISTS `mp75b_finder_terms_common`;
CREATE TABLE `mp75b_finder_terms_common` (
  `term` varchar(75) NOT NULL,
  `language` varchar(3) NOT NULL,
  KEY `idx_word_lang` (`term`,`language`),
  KEY `idx_lang` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_terms_common`

LOCK TABLES `mp75b_finder_terms_common` WRITE;
INSERT INTO `mp75b_finder_terms_common` VALUES ('a','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('about','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('after','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('ago','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('all','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('am','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('an','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('and','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('ani','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('any','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('are','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('aren\'t','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('as','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('at','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('be','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('but','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('by','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('for','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('from','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('get','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('go','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('how','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('if','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('in','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('into','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('is','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('isn\'t','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('it','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('its','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('me','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('more','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('most','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('must','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('my','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('new','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('no','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('none','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('not','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('noth','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('nothing','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('of','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('off','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('often','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('old','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('on','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('onc','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('once','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('onli','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('only','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('or','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('other','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('our','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('ours','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('out','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('over','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('page','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('she','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('should','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('small','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('so','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('some','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('than','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('thank','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('that','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('the','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('their','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('theirs','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('them','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('then','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('there','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('these','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('they','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('this','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('those','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('thus','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('time','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('times','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('to','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('too','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('true','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('under','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('until','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('up','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('upon','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('use','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('user','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('users','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('veri','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('version','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('very','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('via','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('want','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('was','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('way','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('were','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('what','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('when','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('where','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('whi','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('which','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('who','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('whom','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('whose','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('why','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('wide','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('will','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('with','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('within','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('without','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('would','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('yes','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('yet','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('you','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('your','en');
INSERT INTO `mp75b_finder_terms_common` VALUES ('yours','en');
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_tokens`

DROP TABLE IF EXISTS `mp75b_finder_tokens`;
CREATE TABLE `mp75b_finder_tokens` (
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `weight` float unsigned NOT NULL DEFAULT '1',
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `language` char(3) NOT NULL DEFAULT '',
  KEY `idx_word` (`term`),
  KEY `idx_context` (`context`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_tokens`

LOCK TABLES `mp75b_finder_tokens` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_tokens_aggregate`

DROP TABLE IF EXISTS `mp75b_finder_tokens_aggregate`;
CREATE TABLE `mp75b_finder_tokens_aggregate` (
  `term_id` int(10) unsigned NOT NULL,
  `map_suffix` char(1) NOT NULL,
  `term` varchar(75) NOT NULL,
  `stem` varchar(75) NOT NULL,
  `common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `phrase` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `term_weight` float unsigned NOT NULL,
  `context` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `context_weight` float unsigned NOT NULL,
  `total_weight` float unsigned NOT NULL,
  `language` char(3) NOT NULL DEFAULT '',
  KEY `token` (`term`),
  KEY `keyword_id` (`term_id`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_tokens_aggregate`

LOCK TABLES `mp75b_finder_tokens_aggregate` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_finder_types`

DROP TABLE IF EXISTS `mp75b_finder_types`;
CREATE TABLE `mp75b_finder_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `mime` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `title` (`title`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_finder_types`

LOCK TABLES `mp75b_finder_types` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jaem_log`

DROP TABLE IF EXISTS `mp75b_jaem_log`;
CREATE TABLE `mp75b_jaem_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ext_id` varchar(50) DEFAULT NULL,
  `service_id` int(11) DEFAULT NULL,
  `check_date` datetime DEFAULT NULL,
  `check_info` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ext_id` (`ext_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jaem_log`

LOCK TABLES `mp75b_jaem_log` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_jaem_services`

DROP TABLE IF EXISTS `mp75b_jaem_services`;
CREATE TABLE `mp75b_jaem_services` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ws_name` varchar(255) NOT NULL,
  `ws_mode` varchar(50) NOT NULL DEFAULT 'local',
  `ws_uri` varchar(255) NOT NULL,
  `ws_user` varchar(100) NOT NULL,
  `ws_pass` varchar(100) NOT NULL,
  `ws_default` tinyint(1) NOT NULL DEFAULT '0',
  `ws_core` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_jaem_services`

LOCK TABLES `mp75b_jaem_services` WRITE;
INSERT INTO `mp75b_jaem_services` VALUES (1,'Local Service','local','','','',1,1);
INSERT INTO `mp75b_jaem_services` VALUES (2,'JoomlArt Updates','remote','http://update.joomlart.com/service/','','',0,1);
UNLOCK TABLES;

-- Table structure for table `mp75b_languages`

DROP TABLE IF EXISTS `mp75b_languages`;
CREATE TABLE `mp75b_languages` (
  `lang_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `lang_code` char(7) NOT NULL,
  `title` varchar(50) NOT NULL,
  `title_native` varchar(50) NOT NULL,
  `sef` varchar(50) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` varchar(512) NOT NULL,
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `sitename` varchar(1024) NOT NULL DEFAULT '',
  `published` int(11) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  UNIQUE KEY `idx_sef` (`sef`),
  UNIQUE KEY `idx_image` (`image`),
  UNIQUE KEY `idx_langcode` (`lang_code`),
  KEY `idx_access` (`access`),
  KEY `idx_ordering` (`ordering`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_languages`

LOCK TABLES `mp75b_languages` WRITE;
INSERT INTO `mp75b_languages` VALUES (1,'en-GB','English (UK)','English (UK)','en','en','','','','',1,1,1);
UNLOCK TABLES;

-- Table structure for table `mp75b_menu`

DROP TABLE IF EXISTS `mp75b_menu`;
CREATE TABLE `mp75b_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL COMMENT 'The type of menu this item belongs to. FK to #__menu_types.menutype',
  `title` varchar(255) NOT NULL COMMENT 'The display title of the menu item.',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT 'The SEF alias of the menu item.',
  `note` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(1024) NOT NULL COMMENT 'The computed path of the menu item based on the alias field.',
  `link` varchar(1024) NOT NULL COMMENT 'The actually link the menu item refers to.',
  `type` varchar(16) NOT NULL COMMENT 'The type of link: Component, URL, Alias, Separator',
  `published` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The published state of the menu link.',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '1' COMMENT 'The parent menu item in the menu tree.',
  `level` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The relative level in the tree.',
  `component_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__extensions.id',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to #__users.id',
  `checked_out_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'The time the menu item was checked out.',
  `browserNav` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'The click behaviour of the link.',
  `access` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'The access level required to view the menu item.',
  `img` varchar(255) NOT NULL COMMENT 'The image of the menu item.',
  `template_style_id` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL COMMENT 'JSON encoded data for the menu item.',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `home` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Indicates if this menu item is the home or default page.',
  `language` char(7) NOT NULL DEFAULT '',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_client_id_parent_id_alias_language` (`client_id`,`parent_id`,`alias`,`language`),
  KEY `idx_componentid` (`component_id`,`menutype`,`published`,`access`),
  KEY `idx_menutype` (`menutype`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_path` (`path`(255)),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=173 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_menu`

LOCK TABLES `mp75b_menu` WRITE;
INSERT INTO `mp75b_menu` VALUES (1,'','Menu_Item_Root','root','','','','',1,0,0,0,0,'0000-00-00 00:00:00',0,0,'',0,'',0,155,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (2,'menu','com_banners','Banners','','Banners','index.php?option=com_banners','component',0,1,1,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',3,12,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (3,'menu','com_banners','Banners','','Banners/Banners','index.php?option=com_banners','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners',0,'',4,5,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (4,'menu','com_banners_categories','Categories','','Banners/Categories','index.php?option=com_categories&extension=com_banners','component',0,2,2,6,0,'0000-00-00 00:00:00',0,0,'class:banners-cat',0,'',6,7,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (5,'menu','com_banners_clients','Clients','','Banners/Clients','index.php?option=com_banners&view=clients','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-clients',0,'',8,9,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (6,'menu','com_banners_tracks','Tracks','','Banners/Tracks','index.php?option=com_banners&view=tracks','component',0,2,2,4,0,'0000-00-00 00:00:00',0,0,'class:banners-tracks',0,'',10,11,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (7,'menu','com_contact','Contacts','','Contacts','index.php?option=com_contact','component',0,1,1,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',13,18,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (8,'menu','com_contact','Contacts','','Contacts/Contacts','index.php?option=com_contact','component',0,7,2,8,0,'0000-00-00 00:00:00',0,0,'class:contact',0,'',14,15,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (9,'menu','com_contact_categories','Categories','','Contacts/Categories','index.php?option=com_categories&extension=com_contact','component',0,7,2,6,0,'0000-00-00 00:00:00',0,0,'class:contact-cat',0,'',16,17,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (10,'menu','com_messages','Messaging','','Messaging','index.php?option=com_messages','component',0,1,1,15,0,'0000-00-00 00:00:00',0,0,'class:messages',0,'',19,24,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (11,'menu','com_messages_add','New Private Message','','Messaging/New Private Message','index.php?option=com_messages&task=message.add','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-add',0,'',20,21,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (12,'menu','com_messages_read','Read Private Message','','Messaging/Read Private Message','index.php?option=com_messages','component',0,10,2,15,0,'0000-00-00 00:00:00',0,0,'class:messages-read',0,'',22,23,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (13,'menu','com_newsfeeds','News Feeds','','News Feeds','index.php?option=com_newsfeeds','component',0,1,1,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',25,30,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (14,'menu','com_newsfeeds_feeds','Feeds','','News Feeds/Feeds','index.php?option=com_newsfeeds','component',0,13,2,17,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds',0,'',26,27,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (15,'menu','com_newsfeeds_categories','Categories','','News Feeds/Categories','index.php?option=com_categories&extension=com_newsfeeds','component',0,13,2,6,0,'0000-00-00 00:00:00',0,0,'class:newsfeeds-cat',0,'',28,29,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (16,'menu','com_redirect','Redirect','','Redirect','index.php?option=com_redirect','component',0,1,1,24,0,'0000-00-00 00:00:00',0,0,'class:redirect',0,'',31,32,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (17,'menu','com_search','Basic Search','','Basic Search','index.php?option=com_search','component',0,1,1,19,0,'0000-00-00 00:00:00',0,0,'class:search',0,'',33,34,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (18,'menu','com_weblinks','Weblinks','','Weblinks','index.php?option=com_weblinks','component',0,1,1,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',35,40,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (19,'menu','com_weblinks_links','Links','','Weblinks/Links','index.php?option=com_weblinks','component',0,18,2,21,0,'0000-00-00 00:00:00',0,0,'class:weblinks',0,'',36,37,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (20,'menu','com_weblinks_categories','Categories','','Weblinks/Categories','index.php?option=com_categories&extension=com_weblinks','component',0,18,2,6,0,'0000-00-00 00:00:00',0,0,'class:weblinks-cat',0,'',38,39,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (21,'menu','com_finder','Smart Search','','Smart Search','index.php?option=com_finder','component',0,1,1,27,0,'0000-00-00 00:00:00',0,0,'class:finder',0,'',41,42,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (22,'menu','com_joomlaupdate','Joomla! Update','','Joomla! Update','index.php?option=com_joomlaupdate','component',1,1,1,28,0,'0000-00-00 00:00:00',0,0,'class:joomlaupdate',0,'',43,44,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (23,'main','com_tags','Tags','','Tags','index.php?option=com_tags','component',0,1,1,29,0,'0000-00-00 00:00:00',0,1,'class:tags',0,'',45,46,0,'',1);
INSERT INTO `mp75b_menu` VALUES (24,'main','com_postinstall','Post-installation messages','','Post-installation messages','index.php?option=com_postinstall','component',0,1,1,32,0,'0000-00-00 00:00:00',0,1,'class:postinstall',0,'',47,48,0,'*',1);
INSERT INTO `mp75b_menu` VALUES (101,'mainmenu','Home','home','','home','index.php?option=com_m2c&view=m2c','component',1,1,1,10028,0,'0000-00-00 00:00:00',0,1,'',0,'{\"position\":\"content\",\"mdescription\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',49,50,1,'*',0);
INSERT INTO `mp75b_menu` VALUES (103,'main','RSFormPro','rsformpro','','rsformpro','index.php?option=com_rsform','component',0,1,1,10016,0,'0000-00-00 00:00:00',0,1,'components/com_rsform/assets/images/rsformpro.gif',0,'',53,66,0,'',1);
INSERT INTO `mp75b_menu` VALUES (104,'main','COM_RSFORM_MANAGE_FORMS','com-rsform-manage-forms','','rsformpro/com-rsform-manage-forms','index.php?option=com_rsform&view=forms','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',54,55,0,'',1);
INSERT INTO `mp75b_menu` VALUES (105,'main','COM_RSFORM_MANAGE_SUBMISSIONS','com-rsform-manage-submissions','','rsformpro/com-rsform-manage-submissions','index.php?option=com_rsform&view=submissions','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',56,57,0,'',1);
INSERT INTO `mp75b_menu` VALUES (106,'main','COM_RSFORM_CONFIGURATION','com-rsform-configuration','','rsformpro/com-rsform-configuration','index.php?option=com_rsform&view=configuration','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',58,59,0,'',1);
INSERT INTO `mp75b_menu` VALUES (107,'main','COM_RSFORM_BACKUP_RESTORE','com-rsform-backup-restore','','rsformpro/com-rsform-backup-restore','index.php?option=com_rsform&view=backuprestore','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',60,61,0,'',1);
INSERT INTO `mp75b_menu` VALUES (108,'main','COM_RSFORM_UPDATES','com-rsform-updates','','rsformpro/com-rsform-updates','index.php?option=com_rsform&view=updates','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',62,63,0,'',1);
INSERT INTO `mp75b_menu` VALUES (109,'main','COM_RSFORM_PLUGINS','com-rsform-plugins','','rsformpro/com-rsform-plugins','index.php?option=com_rsform&task=goto.plugins','component',0,103,2,10016,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',64,65,0,'',1);
INSERT INTO `mp75b_menu` VALUES (110,'main','COM_JAEXTMANAGER','com-jaextmanager','','com-jaextmanager','index.php?option=com_jaextmanager','component',0,1,1,10018,0,'0000-00-00 00:00:00',0,1,'components/com_jaextmanager/assets/images/jauc.png',0,'',67,68,0,'',1);
INSERT INTO `mp75b_menu` VALUES (112,'main','Just echo','just-echo','','just-echo','index.php?option=com_echo','component',0,1,1,10027,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',69,70,0,'',1);
INSERT INTO `mp75b_menu` VALUES (114,'main','M2C','m2c','','m2c','index.php?option=com_m2c','component',0,1,1,10028,0,'0000-00-00 00:00:00',0,1,'../media/com_m2c/images/com_m2c-16x16.png',0,'',71,72,0,'',1);
INSERT INTO `mp75b_menu` VALUES (115,'main','COM_WEBGALLERY','com-webgallery','','com-webgallery','index.php?option=com_webgallery','component',0,1,1,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-webgallery.png',0,'',73,82,0,'',1);
INSERT INTO `mp75b_menu` VALUES (116,'main','jcategories','jcategories','','com-webgallery/jcategories','index.php?option=com_categories&extension=com_webgallery','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'class:category',0,'',74,75,0,'',1);
INSERT INTO `mp75b_menu` VALUES (117,'main','com_webgallery_items','com-webgallery-items','','com-webgallery/com-webgallery-items','index.php?option=com_webgallery&view=items','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-items.png',0,'',76,77,0,'',1);
INSERT INTO `mp75b_menu` VALUES (118,'main','COM_WEBGALLERY_QUEUES','com-webgallery-queues','','com-webgallery/com-webgallery-queues','index.php?option=com_webgallery&view=queues','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-items.png',0,'',78,79,0,'',1);
INSERT INTO `mp75b_menu` VALUES (119,'main','COM_WEBGALLERY_THUMBNAILS','com-webgallery-thumbnails','','com-webgallery/com-webgallery-thumbnails','index.php?option=com_webgallery&view=thumbnails','component',0,115,2,10029,0,'0000-00-00 00:00:00',0,1,'components/com_webgallery/images/admin-icons/menu-items.png',0,'',80,81,0,'',1);
INSERT INTO `mp75b_menu` VALUES (120,'main','COM_REMOTEIMAGE','com-remoteimage','','com-remoteimage','index.php?option=com_remoteimage','component',0,1,1,10021,0,'0000-00-00 00:00:00',0,1,'components/com_remoteimage/images/admin-icons/menu-remoteimage.png',0,'',83,84,0,'',1);
INSERT INTO `mp75b_menu` VALUES (122,'main','COM_MODULESMANAGERCK','com-modulesmanagerck','','com-modulesmanagerck','index.php?option=com_modulesmanagerck','component',0,1,1,10030,0,'0000-00-00 00:00:00',0,1,'components/com_modulesmanagerck/images/logo_modulesmanagerck_16.png',0,'',85,86,0,'',1);
INSERT INTO `mp75b_menu` VALUES (124,'main','COM_DJCATALOG2','com-djcatalog2','','com-djcatalog2','index.php?option=com_djcatalog2','component',0,1,1,10003,0,'0000-00-00 00:00:00',0,1,'components/com_djcatalog2/assets/images/icon-16-djcatalog.png',0,'',87,88,0,'',1);
INSERT INTO `mp75b_menu` VALUES (129,'main','COM_USERXTD','com_userxtd','','com_userxtd','index.php?option=com_userxtd','component',0,1,1,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',89,98,0,'',1);
INSERT INTO `mp75b_menu` VALUES (130,'main','jcategory','jcategory','','com_userxtd/jcategory','index.php?option=com_categories&extension=com_userxtd','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',90,91,0,'',1);
INSERT INTO `mp75b_menu` VALUES (131,'main','com_userxtd_fields','com_userxtd_fields','','com_userxtd/com_userxtd_fields','index.php?option=com_userxtd&view=fields','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',92,93,0,'',1);
INSERT INTO `mp75b_menu` VALUES (132,'main','com_userxtd_profiles','com_userxtd_profiles','','com_userxtd/com_userxtd_profiles','index.php?option=com_userxtd&view=profiles','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',94,95,0,'',1);
INSERT INTO `mp75b_menu` VALUES (133,'main','com_userxtd_users','com_userxtd_users','','com_userxtd/com_userxtd_users','index.php?option=com_userxtd&view=users','component',0,129,2,10039,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',96,97,0,'',1);
INSERT INTO `mp75b_menu` VALUES (136,'main','COM_QUICKCONTENT','com_quickcontent','','com_quickcontent','index.php?option=com_quickcontent','component',0,1,1,10045,0,'0000-00-00 00:00:00',0,1,'class:component',0,'',101,102,0,'',1);
INSERT INTO `mp75b_menu` VALUES (155,'veganmenu','形象特色','image-features','','image-features','index.php?option=com_content&view=article&id=19','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',141,142,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (156,'veganmenu','環境介紹','environment-introduction','','environment-introduction','index.php?option=com_content&view=article&id=20','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}',145,146,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (157,'veganmenu','餐點管理','meals-management','','meals-management','index.php?option=com_content&view=article&id=21','component',0,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}',147,148,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (158,'veganmenu','營業據點','operating-period','','operating-period','index.php?option=com_content&view=article&id=22','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',149,150,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (159,'veganmenu','促銷活動','promotions','','promotions','index.php?option=com_content&view=article&id=23','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}',151,152,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (160,'pioneermenu','形象特色','image-features-2','','image-features-2','index.php?option=com_content&view=article&id=6','component',-2,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',143,144,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (161,'pioneermenu','教學課程','teaching-courses','','teaching-courses','index.php?option=com_content&view=article&id=7','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',123,124,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (162,'pioneermenu','師資團隊','teaching-team','','teaching-team','index.php?option=com_content&view=article&id=8','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',125,126,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (163,'pioneermenu','加盟規劃培訓','affiliate-planning-training','','affiliate-planning-training','index.php?option=com_content&view=article&id=9','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',127,128,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (164,'mainmenu','刀具產品總覽','knife','','knife','index.php?option=com_djcatalog2&view=items&cid=2&pid=1','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'',0,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',129,130,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (165,'mainmenu','法式蔬食','vegan','','vegan','index.php?option=com_djcatalog2&view=items&cid=6','component',0,1,1,10003,0,'0000-00-00 00:00:00',0,1,'',0,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',137,138,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (166,'mainmenu','創業加盟輔導','pioneer','','pioneer','index.php?option=com_content&view=article&id=6','component',0,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',139,140,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (167,'pioneermenu','形象特色','pioneer-features','','pioneer-features','index.php?option=com_content&view=article&id=6','component',1,1,1,22,0,'0000-00-00 00:00:00',0,1,'',0,'{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',1,2,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (168,'mainmenu','會員專區','usermember','','usermember','index.php?option=com_users&view=profile','component',0,1,1,25,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',153,154,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (169,'mainmenu','Home2','home2','','home2','index.php?option=com_m2c&view=m2c','component',-2,1,1,10028,0,'0000-00-00 00:00:00',0,1,'',0,'{\"position\":\"content\",\"mdescription\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":1,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',51,52,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (170,'mainmenu','刀具產品總覽2','knife2','','knife2','index.php?option=com_djcatalog2&view=items&cid=2&pid=1','component',-2,1,1,10003,0,'0000-00-00 00:00:00',0,1,'',0,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',135,136,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (171,'mainmenu','團購','customers','','customers','index.php?option=com_djcatalog2&view=items','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'',0,'{\"theme\":\"\",\"theme_responsive\":\"\",\"show_contact_form\":\"\",\"contact_list\":\"\",\"price_restrict\":\"\",\"price_unit\":\"\",\"thousand_separator\":\"\",\"decimal_separator\":\"\",\"decimals\":\"\",\"unit_side\":\"\",\"product_catalogue\":\"\",\"showcatdesc\":\"\",\"showcatimg\":\"\",\"showsubcategories\":\"\",\"showsubcategories_label\":\"\",\"category_columns\":\"\",\"category_show_intro\":\"\",\"category_intro_trunc\":\"\",\"category_intro_length\":\"\",\"image_link_subcategory\":\"\",\"showreadmore_subcategory\":\"\",\"subcategory_showchildren\":\"\",\"limit_items_show\":\"\",\"list_layout\":\"\",\"show_layout_switch\":\"\",\"items_columns\":\"\",\"items_default_order\":\"\",\"items_default_order_dir\":\"\",\"items_category_ordering\":\"\",\"featured_only\":\"\",\"featured_first\":\"\",\"show_category_filter\":\"\",\"category_filter_type\":\"\",\"show_producer_filter\":\"\",\"show_price_filter\":\"\",\"show_search\":\"\",\"show_atoz_filter\":\"\",\"atoz_letters\":\"\",\"atoz_check_available\":\"\",\"show_category_orderby\":\"\",\"show_producer_orderby\":\"\",\"show_name_orderby\":\"\",\"show_price_orderby\":\"\",\"show_date_orderby\":\"\",\"show_item_name\":\"\",\"show_category_name\":\"\",\"show_producer_name\":\"\",\"show_price\":\"\",\"show_old_price\":\"\",\"show_author\":\"\",\"show_hits\":\"\",\"show_date\":\"\",\"show_publishdate\":\"\",\"items_show_attributes\":\"\",\"items_show_cart_button\":\"\",\"items_show_intro\":\"\",\"items_intro_trunc\":\"\",\"items_intro_length\":\"\",\"image_link_item\":\"\",\"showreadmore_item\":\"\",\"rss_enabled\":\"\",\"rss_feed_icon\":\"\",\"rss_limit_items_show\":\"\",\"rss_items_default_order\":\"\",\"rss_items_default_order_dir\":\"\",\"rss_description_type\":\"\",\"rss_image_link_item\":\"\",\"rss_showreadmore_item\":\"\",\"show_image_item\":\"\",\"show_category_name_item\":\"\",\"show_producer_name_item\":\"\",\"show_price_item\":\"\",\"show_old_price_item\":\"\",\"show_author_item\":\"\",\"show_hits_item\":\"\",\"show_date_item\":\"\",\"show_publishdate_item\":\"\",\"items_show_cart_button_item\":\"\",\"show_intro_desc_item\":\"\",\"show_navigation\":\"\",\"related_items_columns\":\"\",\"related_items_count\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',131,132,0,'*',0);
INSERT INTO `mp75b_menu` VALUES (172,'mainmenu','購物車','shopping-cart','','shopping-cart','index.php?option=com_djcatalog2&view=cart','component',1,1,1,10003,0,'0000-00-00 00:00:00',0,1,'',0,'{\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":1,\"page_title\":\"\",\"show_page_heading\":0,\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":0,\"masthead-title\":\"\",\"masthead-slogan\":\"\"}',133,134,0,'*',0);
UNLOCK TABLES;

-- Table structure for table `mp75b_menu_types`

DROP TABLE IF EXISTS `mp75b_menu_types`;
CREATE TABLE `mp75b_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(24) NOT NULL,
  `title` varchar(48) NOT NULL,
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_menutype` (`menutype`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_menu_types`

LOCK TABLES `mp75b_menu_types` WRITE;
INSERT INTO `mp75b_menu_types` VALUES (1,'mainmenu','Main Menu','The main menu for the site');
INSERT INTO `mp75b_menu_types` VALUES (5,'veganmenu','veganMenu','veganMenu');
INSERT INTO `mp75b_menu_types` VALUES (6,'pioneermenu','pioneerMenu','pioneerMenu');
UNLOCK TABLES;

-- Table structure for table `mp75b_messages`

DROP TABLE IF EXISTS `mp75b_messages`;
CREATE TABLE `mp75b_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `priority` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_messages`

LOCK TABLES `mp75b_messages` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_messages_cfg`

DROP TABLE IF EXISTS `mp75b_messages_cfg`;
CREATE TABLE `mp75b_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_messages_cfg`

LOCK TABLES `mp75b_messages_cfg` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_modules`

DROP TABLE IF EXISTS `mp75b_modules`;
CREATE TABLE `mp75b_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `asset_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'FK to the #__assets table.',
  `title` varchar(100) NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) NOT NULL DEFAULT '',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=140 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_modules`

LOCK TABLES `mp75b_modules` WRITE;
INSERT INTO `mp75b_modules` VALUES (1,55,'Main Menu','','',1,'position-7',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,1,'{\"menutype\":\"mainmenu\",\"startLevel\":\"0\",\"endLevel\":\"0\",\"showAllChildren\":\"0\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"\",\"moduleclass_sfx\":\"_menu\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (2,56,'Login','','',1,'login',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_login',1,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (3,57,'Popular Articles','','',3,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_popular',3,1,'{\"count\":\"5\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (4,58,'Recently Added Articles','','',4,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_latest',3,1,'{\"count\":\"5\",\"ordering\":\"c_dsc\",\"catid\":\"\",\"user_id\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (8,59,'Toolbar','','',1,'toolbar',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_toolbar',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (9,60,'Quick Icons','','',1,'icon',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_quickicon',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (10,61,'Logged-in Users','','',2,'cpanel',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_logged',3,1,'{\"count\":\"5\",\"name\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"automatic_title\":\"1\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (12,62,'Admin Menu','','',1,'menu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_menu',3,1,'{\"layout\":\"\",\"moduleclass_sfx\":\"\",\"shownew\":\"1\",\"showhelp\":\"1\",\"cache\":\"0\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (13,63,'Admin Submenu','','',1,'submenu',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_submenu',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (14,64,'User Status','','',2,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_status',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (15,65,'Title','','',1,'title',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_title',3,1,'',1,'*');
INSERT INTO `mp75b_modules` VALUES (16,50,'Login Form','','',19,'sidebar-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_login',1,1,'{\"pretext\":\"\",\"posttext\":\"\",\"login\":\"\",\"logout\":\"\",\"greeting\":\"1\",\"name\":\"0\",\"usesecure\":\"0\",\"usetext\":\"0\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (17,67,'Breadcrumbs','','',1,'position-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_breadcrumbs',1,1,'{\"moduleclass_sfx\":\"\",\"showHome\":\"1\",\"homeText\":\"\",\"showComponent\":\"1\",\"separator\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (79,68,'Multilanguage status','','',1,'status',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_multilangstatus',3,1,'{\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (86,69,'Joomla Version','','',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_version',3,1,'{\"format\":\"short\",\"product\":\"1\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"0\"}',1,'*');
INSERT INTO `mp75b_modules` VALUES (87,55,'DJ-Catalog2 Categories','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2categories',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (88,56,'DJ-Catalog2 Frontpage','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2frontpage',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (89,57,'DJ-Catalog2 Items','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2items',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (90,58,'DJ-Catalog2 Related Items','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2relateditems',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (91,59,'DJ-Catalog2 Filters Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2filters',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (92,60,'DJ-Catalog2 Producers','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2producers',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (93,61,'DJ-Catalog2 Search Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2search',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (94,67,'IndexHtml','','',1,'content',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (95,68,'header','','<div class=\"custom row-feature-primary\">\r\n<div class=\"jumbotron jumbotron-primary masthead\">\r\n<h2>有一種感覺叫做 <strong>不可思議</strong></h2>\r\n<p>手機, 電腦, 平板 三個願望一次滿足，卻如此便宜。</p>\r\n<p class=\"btn-actions\"><a class=\"btn btn-primary btn-lg\" href=\"#contact\">立即體驗</a> 這 <strong>不可思議</strong> 的感覺吧！</p>\r\n</div>\r\n</div>',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"row-feature-primary\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (96,69,'advantage','','<div class=\"container\">\r\n<div class=\"row\" style=\"margin-bottom: 72px;\">\r\n<div class=\"col-sm-3 wow fadeInRight text-center\"><img src=\"images/com_aedes/zongknife/icon/homeicon1.jpg\" alt=\"\" width=\"128\" />\r\n<h3>日本進口鋼-vg10</h3>\r\n<p>菜刀王vg10系列刀具皆採自日本專產優質刀具的武生煉鋼廠鋼板，品質優異 是目前時下最夯的高質量鋼材。 日本武生煉鋼廠網址:http://www.e-tokko.com/ 日本「武生特製鋼」之「V金10號」不銹鋼材，乃「V金」系鋼材之最優級別，含碳量約1％，含鉬1.2％及鈷1.5％，經熱處理後可達HRc60-62之硬度。VG-10加工性優，韌性及耐蝕性皆強，多被應用於日製之優質刀具。</p>\r\n</div>\r\n<div class=\"col-sm-3 wow fadeInRight text-center\" data-wow-delay=\"0.3s\"><img src=\"images/com_aedes/zongknife/icon/homeicon2.jpg\" alt=\"\" width=\"128\" />\r\n<h3>VG-1(V Gold 1)</h3>\r\n<p>由武生特殊鋼有限公司開發的一種高碳高鉬不銹鋼在鍛造過程中，鉬和鈷在鋼材中形成了堅硬的雙重碳化晶粒結構，這有助於提高鋼材的耐磨損和耐腐蝕的，在經過熱處理後這種鋼材通常能達到58-61HRC的硬度。</p>\r\n</div>\r\n<div class=\"col-sm-3 wow fadeInRight text-center\" data-wow-delay=\"0.5s\"><img src=\"images/com_aedes/zongknife/icon/homeicon3.jpg\" alt=\"\" width=\"128\" />\r\n<h3>日立SDK12<small>俗稱A2</small></h3>\r\n<p>日本進口高韌性中碳鉻鋼. 耐磨性介于油鋼和 D2 鋼之間，而韌性則比 兩者都好 有耐磨耗及耐衝擊的特性 精磨後鋒利無比 適合營業用刀</p>\r\n</div>\r\n<div class=\"col-sm-3 wow fadeInRight text-center\" data-wow-delay=\"0.7s\"><img src=\"images/com_aedes/zongknife/icon/homeicon4.jpg\" alt=\"\" width=\"128\" />\r\n<h3>日本進口青紙鋼<small>高碳鋼</small></h3>\r\n<p>材質:日本進口青紙鋼(高碳鋼).不是不銹鋼(會鏽) 在刀具鋒利度來講，以會鏽的碳鋼為最，因刀具的鋒利性，在於刀鋒的「微鋸齒」，含碳量高的刀具，天然微鋸齒越多，可以研磨的程度也越高，不鏽鋼刀具來講，含鉻量高，表面平滑，如研磨至較高系數，結構支撐不住「碳化物」即使研磨至鏡面程度，也失去其鋒利性，所以碳鋼會鏽，不鏽鋼不利，在之間取捨就看個人，以專業廚師以及專業職人，習慣使用鍛造碳鋼刀具來操作，因長時間的使用下，需要極鋒利及超高耐久度的刀具。館</p>\r\n</div>\r\n</div>\r\n</div>',5,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" row-feature-content\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (97,70,'project','','<div class=\"row row-feature-ct\">\r\n<div class=\"custom\"><header class=\"jumbotron\">\r\n<h2>優惠方案</h2>\r\n</header>\r\n<table class=\"aedesProject table table-striped\">\r\n<thead>\r\n<tr><th> </th><th>無修改方案</th><th>評價奢華</th><th class=\"active\">高貴不貴</th><th>華麗登場</th><th>客製化</th><th class=\"disable\"><i>購物車方案</i></th></tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td>製作服務</td>\r\n<td>精美製作</td>\r\n<td>樣板色系調整</td>\r\n<td class=\"active\">樣板色系調整</td>\r\n<td>樣板色系調整</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>網站空間</td>\r\n<td>30 GB</td>\r\n<td>40 GB</td>\r\n<td class=\"active\">100 GB</td>\r\n<td>無限制</td>\r\n<td>無限制</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>流量限制</td>\r\n<td>100 GB</td>\r\n<td>100 GB</td>\r\n<td class=\"active\">500 GB</td>\r\n<td>無限制</td>\r\n<td>無限制</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>網址</td>\r\n<td style=\"text-align: center;\" colspan=\"5\">贈送一組免費網區名稱<br /> (無重複任意).dsa.tw</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>首年頁面代理上傳</td>\r\n<td>5 頁</td>\r\n<td>20 頁</td>\r\n<td class=\"active\">30 頁</td>\r\n<td>50 頁</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>製作費用 與 首年合約</td>\r\n<td><small>$</small> 10000</td>\r\n<td><small>$</small> 25000</td>\r\n<td class=\"active\"><small>$</small> 30000</td>\r\n<td><small>$</small> 50000</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n<tr>\r\n<td>續約，含<br /> <small>服務費, 主機費用, <br /> 網站樣板合法授權</small></td>\r\n<td><small>$</small> 5000</td>\r\n<td><small>$</small> 6000</td>\r\n<td class=\"active\"><small>$</small> 8000</td>\r\n<td><small>$</small> 10000</td>\r\n<td>詳談</td>\r\n<td>籌備中</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n</div>\r\n</div>',10,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (98,73,'projectSetup1','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInLeft\">\r\n<div class=\"col-md-6 column wow slideInRight\">\r\n<h3 class=\"text-right\">第一步 - 選擇方案與版型。</h3>\r\n<blockquote class=\"pull-right\">\r\n<p><strong>挑選</strong>一個喜歡的版型，適合的<strong>方案</strong>。</p>\r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 column wow slideInRight\"><img src=\"images/com_aedes/boostrap3.png\" alt=\"140x140\" /></div>\r\n</div>\r\n</div>',13,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (99,75,'NEW MODULE','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_articles_news',1,1,'{\"catid\":\"\",\"image\":\"0\",\"item_title\":\"0\",\"link_titles\":\"\",\"item_heading\":\"h4\",\"showLastSeparator\":\"1\",\"readmore\":\"0\",\"count\":\"5\",\"ordering\":\"a.publish_up\",\"direction\":\"1\",\"layout\":\"\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (100,76,'projectSetup2','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInRight\">\r\n<div class=\"col-md-6 column\"><img src=\"images/com_aedes/typography.png\" alt=\"140x140\" /></div>\r\n<div class=\"col-md-6 column\">\r\n<h3>第二步 - 簽約</h3>\r\n<blockquote>\r\n<p>我們<strong>簽約</strong>後支付 50 ％ 訂金。</p>\r\n</blockquote>\r\n</div>\r\n</div>\r\n</div>',14,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (101,77,'projectSetup3','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInLeft\">\r\n<div class=\"col-md-6 column\">\r\n<h3 class=\"text-right\">h3. Lorem ipsum dolor sit amet.</h3>\r\n<blockquote class=\"pull-right\">\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n<small>Someone famous <cite>Source Title</cite></small></blockquote>\r\n</div>\r\n<div class=\"col-md-6 column\"><img src=\"images/com_aedes/boostrap3.png\" alt=\"140x140\" /></div>\r\n</div>\r\n</div>',15,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (103,79,'projectSetup4','','<div class=\"container\">\r\n<div class=\"row clearfix wow fadeInRight\">\r\n<div class=\"col-md-6 column\"><img src=\"images/com_aedes/boostrap3.png\" alt=\"140x140\" /></div>\r\n<div class=\"col-md-6 column\">\r\n<h3>h3. Lorem ipsum dolor sit amet.</h3>\r\n<blockquote>\r\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer posuere erat a ante.</p>\r\n<small>Someone famous <cite>Source Title</cite></small></blockquote>\r\n</div>\r\n</div>\r\n</div>',16,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (104,80,'projectSetupTitle','','<div class=\"container\">\r\n<div class=\"row clearfix\">\r\n<div class=\"col-md-12 column\">\r\n<h2 class=\"text-center\">服務流程</h2>\r\n<h3 class=\"text-center\">簡單又快速可享有的高品質服務</h3>\r\n</div>\r\n</div>\r\n</div>',12,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (105,81,'DJ-Catalog2 Cart Module','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2cart',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (106,82,'關於中刀','','<div class=\"col-sm-6 wow fadeInLeft \">\r\n<div class=\"page-header text-right\"><img src=\"images/com_aedes/zongknife/knife_combination-3.jpg\" alt=\"\" width=\"452\" height=\"800\" /></div>\r\n</div>\r\n<div class=\"col-sm-6 wow fadeInDown\" data-wow-delay=\"0.3s\">\r\n<div class=\"page-header text-left\">\r\n<h2>關於中刀</h2>\r\n<img src=\"images/com_aedes/zongknife/aboutlogo.png\" alt=\"\" width=\"150\" />\r\n<p>何以取名為: 中 磨刀 ，<br />乃取自中庸意涵，磨刀就像做人，過與不及都不行，<br />剛好就好如何磨出一把好刀練的是人的性、情、毅力技巧故然重要，<br />但堅心、耐心卻是最根本的條件，而刀非利就夠，是要合用、合宜、合適，<br />然而於磨刀、賣刀中找到人生的另一遵行的方向更是如獲至寶。<br /> 因為對刀的一分堅持，所以對於刀材的選擇是首要考量重點，<br />嚴選進口日本武生鍊鋼廠生產鋼材，加上至今已製刀超過半世紀，<br />70年老店菜刀王製刀公司所生產的刀具，只為滿足對刀的偏執。</p>\r\n<p> </p>\r\n<p>菜刀、廚刀是指在處理食物時所使用的刀具。<br />在市面上有許多針對不同目的所設計的特殊菜刀，<br />用來製造菜刀的材料也會有所不同。</p>\r\n<p> </p>\r\n<p>菜刀有非常多的種類，除了依據各種目的設計的菜刀之外，<br />也可分為中式菜刀、日式菜刀和洋式菜刀。<br />日式菜刀通常是搭配在砧板上使用，切斷食材後砧板可防止刀刃受損。<br />而洋式菜刀則是大部份可直接在調理台上使用。</p>\r\n<p> </p>\r\n<p>剁刀：砍、剁肉類，也可將骨頭剁成小塊。刀片較厚，重量也較重。<br />片刀：切肉絲、將瓜果類切成片、切蔬菜皆宜。<br />水果刀：切水果與較小型的食物。<br />鋸齒刀：適合切較多水分的水果。</p>\r\n</div>\r\n</div>',2,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (107,83,'創業加盟專區','','<div class=\"container\"><!-- image at right -->\r\n<div class=\"col-sm-6 text-right\">\r\n<h3>創業加盟專區</h3>\r\n<p>哈里歐 從咖啡豆進口、烘焙、行銷批發、零售，門市部成立，<br />咖啡直營店開幕，直至 <strong>成立喜伯國際餐飲開發顧問公司</strong>，<br />一路走來，長年茹素的林總經理秉持著獨特前瞻的眼光，<br />跳脫市場產品區隔，企圖將餐飲文化提升至更高品質的感官享受。</p>\r\n</div>\r\n<div class=\"col-sm-6 hidden-xs\"><img src=\"images/com_aedes/hecto/icon/pioneer_icon-1.png\" alt=\"\" /></div>\r\n</div>',6,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (108,84,'咖啡原料與設備','','<div class=\"container\"><!-- image at left -->\r\n<div class=\"col-sm-6 hidden-xs text-right\"><img src=\"images/com_aedes/hecto/icon/coffee_icon-2.png\" alt=\"\" width=\"264\" height=\"142\" /></div>\r\n<div class=\"col-sm-6\">\r\n<h3>咖啡原料與設備</h3>\r\n<p>哈里歐 <strong>提供</strong> 新鮮烘焙咖啡豆、全自動咖啡機、咖啡吧檯周邊器材、<br />法國原裝果露糖漿、優質濃縮果汁、精選茶品......等，<br />各類原料專業設備，歡迎訂購。</p>\r\n</div>\r\n</div>',6,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (109,85,'法式蔬食咖啡館','','<div class=\"container\"><!-- image at right -->\r\n<div class=\"col-sm-6 text-right\">\r\n<h3>法式蔬食咖啡館</h3>\r\n<p>換個心情，選擇私密不受干擾的空間，<br /> 來到河堤邊的 <strong>哈里歐式蔬食咖啡館</strong><br /> 來一份精緻的法式蔬食餐點，道地的西餐服務品質，<br /> 讓您吃得浪漫優雅又養生。</p>\r\n</div>\r\n<div class=\"col-sm-6 hidden-xs\"><img src=\"images/com_aedes/hecto/icon/vegan_icon-3.png\" alt=\"\" /></div>\r\n</div>',6,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (110,86,'userProject4','','<div class=\"container\"><!-- image at left -->\r\n<div class=\"row wow fadeInRight\">\r\n<div class=\"col-sm-6 hidden-xs text-right\"><img src=\"images/upload/product_1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-6\">\r\n<h3><strong>專業</strong>不言而喻，企業產品網站。</h3>\r\n<p>仍在浪費紙張寄送沒用的廣告目錄嗎？<br /> 完善的企業服務導引、線上客服等系統，<br /> 搭配產品分類管理系統，讓您的網路門面成為真正創造營收的通路來源。</p>\r\n<h4>可<strong>選擇</strong>，高貴不貴以上方案。</h4>\r\n</div>\r\n</div>\r\n</div>',7,'masthead',584,'2014-10-15 05:00:22','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (111,87,'userProject5','','<div class=\"container\"><!-- image at right -->\r\n<div class=\"row wow fadeInLeft\">\r\n<div class=\"col-sm-6 text-right\">\r\n<h3>咖啡原料與販賣。</h3>\r\n<p>小資本玩出大事業，拋開設定複雜又惱人的購物車系統吧！<br /> 我們為您設計了簡潔明快又低成本、高效率的購物方案，<br /> 輕輕鬆鬆就能上架開始做生意！</p>\r\n</div>\r\n<div class=\"col-sm-6 hidden-xs\"><img src=\"images/upload/store_1.png\" alt=\"\" /></div>\r\n</div>\r\n</div>',8,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (112,88,'userProject6','','<div class=\"container\"><!-- image at left -->\r\n<div class=\"row wow fadeInRight\">\r\n<div class=\"col-sm-6 hidden-xs text-right\"><img src=\"images/upload/customer_1.png\" alt=\"\" /></div>\r\n<div class=\"col-sm-6\">\r\n<h3>極致完美，客製化方案。</h3>\r\n<p>如果以上方案皆不能滿足您的需求，我們也提供量身訂做的服務，<br /> 替您從品牌形象、網路行銷策略等各方面進行完整規劃，<br /> 並建置符合您需求的特色網站。</p>\r\n<h4>可<strong>選擇</strong>，客製化方案。</h4>\r\n</div>\r\n</div>\r\n</div>',9,'masthead',584,'2014-10-05 13:53:25','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (113,89,'price','','<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<h3>價目表</h3>\r\n<p><img src=\"images/upload/price_list.png\" alt=\"\" /></p>\r\n</div>\r\n</div>',10,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (114,90,'setup','','<div class=\"container\">\r\n<div class=\"page-header text-center\">\r\n<h2 class=\"wow zoomIn\">製作流程</h2>\r\n</div>\r\n</div>\r\n<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<div class=\"col-md-3 wow fadeInRight\">\r\n<h3>第一步 <small>Setup 1</small></h3>\r\n<h4>選擇版型，方案。</h4>\r\n<p><img src=\"images/upload/icon/select.png\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-md-3 wow fadeInRight\" data-wow-delay=\"0.08s\">\r\n<h3>第二步 <small>Setup 2</small></h3>\r\n<h4>簽約，定金。</h4>\r\n<p><img src=\"images/upload/icon/list.png\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-md-3 wow fadeInRight\" data-wow-delay=\"0.18s\">\r\n<h3>第三步 <small>Setup 3</small></h3>\r\n<h4>製作與上傳資料。</h4>\r\n<p><img src=\"images/upload/icon/updata.png\" alt=\"\" /></p>\r\n</div>\r\n<div class=\"col-md-3 wow fadeInRight\" data-wow-delay=\"0.28s\">\r\n<h3>第四步 <small>Setup 4</small></h3>\r\n<h4>尾款與驗收。</h4>\r\n<p><img src=\"images/upload/icon/accepting.png\" alt=\"\" /></p>\r\n</div>\r\n</div>\r\n</div>',11,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (115,91,'contact','','<div id=\"contact-form-src\" class=\"contact-option\">http://goo.gl/forms/8E3poRucG9</div>\r\n<div id=\"address-position-x\" class=\"contact-option\">24.1846204</div>\r\n<div id=\"address-position-y\" class=\"contact-option\">120.6991823</div>\r\n<div id=\"address-label\" class=\"contact-option\">台中市北屯區松竹路二段86巷80號</div>\r\n<div id=\"contact\" class=\"contact-box\">\r\n<div id=\"contact-map\"> </div>\r\n<div id=\"sr-contact\">\r\n<div id=\"sr-contact-grid\">\r\n<div id=\"sr-contact-body\" class=\"wow fadeInRight\">\r\n<div id=\"contact-form\">Loading...</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',20,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (116,92,'contact (2)','','<div id=\"contact\" class=\"contact-box\">\r\n<div id=\"contact-map\"> </div>\r\n<div id=\"sr-contact\">\r\n<div id=\"sr-contact-grid\">\r\n<div id=\"sr-contact-body\" class=\"wow fadeInRight\">\r\n<div id=\"contact-form\">Loading...</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>',14,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (117,93,'Custom CSS','','',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_customcss',1,0,'{\"customcss\":\"\\/* Custom CSS *\\/\\r\\nbody\\r\\n{\\r\\n    backround-color: #ff00;\\r\\n}\",\"browsercss\":\"all\",\"externalcss\":\"0\",\"externalcssfile\":\"\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (118,94,'advantagePage','','<div class=\"container\">\r\n<h2 class=\"wow fadeInDown\">製作或上傳廉價。</h2>\r\n<p class=\"wow fadeInRight\">先撇開，勞資糾紛、人員流動、員工反咬、 低抗壓性、態度極差、公司洩密、員工意外、 勞保、健保、等等出錯的可能性。 您僱用一位資訊人員，大學畢業兩萬多元。 加上面試時間，面試人員的時間薪資，教育訓練， 網站製作相關主管的時間成本，還需將網站上傳完成， 也撇開，技術生疏無法完成，畫面設計時間，調整與美編。 您覺得需要幾個月？ 如果非常幸運，三個月順利完成，沒有發生上面撇開不談的問題， 非常恭喜，您的成本是高於六萬。 而依照我們的經驗，網站製作上年的，大有人在。 這也是我們不願樂見的。 而讓我們合作，最少、最少、最少、能讓您避開人員相關上述的所有風險。</p>\r\n</div>\r\n<div class=\"container\">\r\n<h2 class=\"wow fadeInDown\">合法租用。</h2>\r\n<p class=\"wow fadeInRight\">如果您自行製作網站。 如此繁多的系統， 樣樣都購買合法授權， 或者冒上，有刑事責任風險的法規， 更別提自行聘請人員撰寫（可參閱第一點） 一點也不划算。 而託付給其他業者，還能比我們便宜有品質的， 您能擔心扛上，法律風險嗎？ 我們所有的系統、版型、主機， 皆有合法授權， 且會不定時的更新與購買更多廠商， 我們合作，您可放心。</p>\r\n</div>\r\n<div class=\"container\">\r\n<h2 class=\"wow fadeInDown\">大量版型，且手機平板電腦，皆可瀏覽。</h2>\r\n<p class=\"wow fadeInRight\">我們大量購買版型發布商之合法授權。 您可以隨時更換您喜歡的版性， 在選用精美的版型同時，也能兼顧到其他應體， 如今，手機、平板是現在不可或缺的瀏覽工具。 您難道需要製作兩種版本以上的網站？ 我們網站，經 Responsive 技術， 讓您省去不必要的支出。 共創我們的雙贏局面。</p>\r\n</div>',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (119,110,'Image Show GK4','','',0,'',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_image_show_gk4',1,1,'',0,'*');
INSERT INTO `mp75b_modules` VALUES (120,111,'knife image slide show','','',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_image_show_gk4',1,0,'{\"automatic_module_id\":\"1\",\"module_id\":\"gk-is-1\",\"moduleclass_sfx\":\"\",\"module_style\":\"gk_bikestore\",\"last_modification\":\"1414053588\",\"image_show_data\":\"[{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home2.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home3.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home4.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home5.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"}]\",\"config\":\"{\\\"gk_bikestore\\\":{\\\"gk_bikestore_image_width\\\":\\\"800\\\",\\\"gk_bikestore_image_height\\\":\\\"250\\\",\\\"gk_bikestore_image_bg\\\":\\\"#000000\\\",\\\"gk_bikestore_quality\\\":\\\"95\\\",\\\"gk_bikestore_show_title_block\\\":\\\"0\\\",\\\"gk_bikestore_title_block_position\\\":\\\"bottom\\\",\\\"gk_bikestore_title_block_position_x\\\":\\\"left\\\",\\\"gk_bikestore_title_block_length\\\":\\\"30\\\",\\\"gk_bikestore_pagination\\\":\\\"0\\\",\\\"gk_bikestore_pagination_position\\\":\\\"top\\\",\\\"gk_bikestore_slide_links\\\":\\\"0\\\",\\\"gk_bikestore_animation_speed\\\":\\\"500\\\",\\\"gk_bikestore_animation_interval\\\":\\\"5000\\\",\\\"gk_bikestore_autoanimation\\\":\\\"1\\\"},\\\"gk_bluap\\\":{\\\"gk_bluap_image_width\\\":\\\"640\\\",\\\"gk_bluap_image_height\\\":\\\"320\\\",\\\"gk_bluap_image_bg\\\":\\\"#000000\\\",\\\"gk_bluap_quality\\\":\\\"95\\\",\\\"gk_bluap_text_block_width\\\":\\\"50\\\",\\\"gk_bluap_text_block_position\\\":\\\"left\\\",\\\"gk_bluap_pagination\\\":\\\"1\\\",\\\"gk_bluap_animation_speed\\\":\\\"500\\\",\\\"gk_bluap_animation_interval\\\":\\\"5000\\\",\\\"gk_bluap_autoanimation\\\":\\\"1\\\"},\\\"gk_creativity\\\":{\\\"gk_creativity_image_width\\\":\\\"640\\\",\\\"gk_creativity_image_height\\\":\\\"320\\\",\\\"gk_creativity_image_bg\\\":\\\"#000000\\\",\\\"gk_creativity_quality\\\":\\\"95\\\",\\\"gk_creativity_title_anim\\\":\\\"none\\\",\\\"gk_creativity_text_anim\\\":\\\"none\\\",\\\"gk_creativity_bganim\\\":\\\"opacity\\\",\\\"gk_creativity_pagination\\\":\\\"1\\\",\\\"gk_creativity_animation_speed\\\":\\\"500\\\",\\\"gk_creativity_animation_interval\\\":\\\"5000\\\",\\\"gk_creativity_autoanimation\\\":\\\"1\\\"},\\\"gk_fashion\\\":{\\\"gk_fashion_image_width\\\":\\\"640\\\",\\\"gk_fashion_image_height\\\":\\\"320\\\",\\\"gk_fashion_image_bg\\\":\\\"#000000\\\",\\\"gk_fashion_quality\\\":\\\"95\\\",\\\"gk_fashion_show_title_block\\\":\\\"1\\\",\\\"gk_fashion_title_block_position\\\":\\\"bottom\\\",\\\"gk_fashion_title_block_length\\\":\\\"30\\\",\\\"gk_fashion_pagination\\\":\\\"1\\\",\\\"gk_fashion_pagination_position\\\":\\\"top\\\",\\\"gk_fashion_slide_links\\\":\\\"1\\\",\\\"gk_fashion_animation_speed\\\":\\\"500\\\",\\\"gk_fashion_animation_interval\\\":\\\"5000\\\",\\\"gk_fashion_autoanimation\\\":\\\"1\\\"},\\\"gk_game\\\":{\\\"gk_game_image_width\\\":\\\"2080\\\",\\\"gk_game_image_height\\\":\\\"936\\\",\\\"gk_game_margin_bottom\\\":\\\"430\\\",\\\"gk_game_tablet_image_width\\\":\\\"1040\\\",\\\"gk_game_tablet_image_height\\\":\\\"468\\\",\\\"gk_game_tablet_margin_bottom\\\":\\\"215\\\",\\\"gk_game_mobile_image_width\\\":\\\"570\\\",\\\"gk_game_mobile_image_height\\\":\\\"234\\\",\\\"gk_game_mobile_margin_bottom\\\":\\\"107\\\",\\\"gk_game_image_bg\\\":\\\"#000000\\\",\\\"gk_game_quality\\\":\\\"95\\\",\\\"gk_game_show_title_block\\\":\\\"1\\\",\\\"gk_game_animation_loop\\\":\\\"1\\\",\\\"gk_game_slide_links\\\":\\\"1\\\",\\\"gk_game_animation_speed\\\":\\\"500\\\",\\\"gk_game_animation_interval\\\":\\\"5000\\\"},\\\"gk_musicstate\\\":{\\\"gk_musicstate_image_width\\\":\\\"640\\\",\\\"gk_musicstate_image_height\\\":\\\"320\\\",\\\"gk_musicstate_image_bg\\\":\\\"#000000\\\",\\\"gk_musicstate_quality\\\":\\\"95\\\",\\\"gk_musicstate_show_title_block\\\":\\\"1\\\",\\\"gk_musicstate_title_block_color\\\":\\\"#fff\\\",\\\"gk_musicstate_slide_links\\\":\\\"1\\\",\\\"gk_musicstate_animation_speed\\\":\\\"500\\\",\\\"gk_musicstate_animation_interval\\\":\\\"5000\\\",\\\"gk_musicstate_autoanimation\\\":\\\"1\\\"},\\\"gk_publisher\\\":{\\\"gk_publisher_image_width\\\":\\\"640\\\",\\\"gk_publisher_image_height\\\":\\\"320\\\",\\\"gk_publisher_image_bg\\\":\\\"#000000\\\",\\\"gk_publisher_quality\\\":\\\"95\\\",\\\"gk_publisher_title_block_position\\\":\\\"bottom\\\",\\\"gk_publisher_show_content_block\\\":\\\"1\\\",\\\"gk_publisher_show_title_block\\\":\\\"1\\\",\\\"gk_publisher_show_text_block\\\":\\\"1\\\",\\\"gk_publisher_title_block_length\\\":\\\"30\\\",\\\"gk_publisher_text_block_length\\\":\\\"80\\\",\\\"gk_publisher_pagination\\\":\\\"1\\\",\\\"gk_publisher_pagination_position\\\":\\\"bottom\\\",\\\"gk_publisher_slide_links\\\":\\\"1\\\",\\\"gk_publisher_animation_speed\\\":\\\"500\\\",\\\"gk_publisher_animation_interval\\\":\\\"5000\\\",\\\"gk_publisher_autoanimation\\\":\\\"1\\\"},\\\"gk_rockwall\\\":{\\\"gk_rockwall_image_width\\\":\\\"640\\\",\\\"gk_rockwall_image_height\\\":\\\"320\\\",\\\"gk_rockwall_image_bg\\\":\\\"#000000\\\",\\\"gk_rockwall_quality\\\":\\\"95\\\",\\\"gk_rockwall_show_title_block\\\":\\\"1\\\",\\\"gk_rockwall_title_block_bg\\\":\\\"transparent\\\",\\\"gk_rockwall_title_block_color\\\":\\\"#fff\\\",\\\"gk_rockwall_title_block_position\\\":\\\"left\\\",\\\"gk_rockwall_title_block_padding\\\":\\\"\\\",\\\"gk_rockwall_title_block_width\\\":\\\"\\\",\\\"gk_rockwall_slide_links\\\":\\\"1\\\",\\\"gk_rockwall_animation_speed\\\":\\\"500\\\",\\\"gk_rockwall_animation_interval\\\":\\\"5000\\\",\\\"gk_rockwall_autoanimation\\\":\\\"1\\\"},\\\"gk_shop_and_buy\\\":{\\\"gk_shop_and_buy_image_width\\\":\\\"640\\\",\\\"gk_shop_and_buy_image_height\\\":\\\"320\\\",\\\"gk_shop_and_buy_image_bg\\\":\\\"#000000\\\",\\\"gk_shop_and_buy_quality\\\":\\\"95\\\",\\\"gk_shop_and_buy_show_content_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_title_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_text_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_title_block_length\\\":\\\"30\\\",\\\"gk_shop_and_buy_text_block_length\\\":\\\"80\\\",\\\"gk_shop_and_buy_pagination\\\":\\\"1\\\",\\\"gk_shop_and_buy_pagination_arrows\\\":\\\"1\\\",\\\"gk_shop_and_buy_slide_links\\\":\\\"1\\\",\\\"gk_shop_and_buy_animation_speed\\\":\\\"1000\\\",\\\"gk_shop_and_buy_animation_interval\\\":\\\"6000\\\",\\\"gk_shop_and_buy_autoanimation\\\":\\\"1\\\"},\\\"gk_startup\\\":{\\\"gk_startup_image_bg\\\":\\\"transparent\\\",\\\"gk_startup_quality\\\":\\\"95\\\",\\\"gk_startup_desktop_width\\\":\\\"1000\\\",\\\"gk_startup_image_width\\\":\\\"804\\\",\\\"gk_startup_module_height\\\":\\\"920\\\",\\\"gk_startup_tablet_width\\\":\\\"920\\\",\\\"gk_startup_tablet_image_width\\\":\\\"603\\\",\\\"gk_startup_tablet_module_height\\\":\\\"690\\\",\\\"gk_startup_mobile_width\\\":\\\"580\\\",\\\"gk_startup_mobile_image_width\\\":\\\"338\\\",\\\"gk_startup_mobile_module_height\\\":\\\"386\\\",\\\"gk_startup_pagination\\\":\\\"1\\\",\\\"gk_startup_arrows\\\":\\\"1\\\",\\\"gk_startup_slide_links\\\":\\\"1\\\",\\\"gk_startup_animation_speed\\\":\\\"500\\\",\\\"gk_startup_animation_interval\\\":\\\"5000\\\",\\\"gk_startup_autoanimation\\\":\\\"1\\\"},\\\"gk_storebox\\\":{\\\"gk_storebox_image_width\\\":\\\"640\\\",\\\"gk_storebox_image_height\\\":\\\"320\\\",\\\"gk_storebox_image_bg\\\":\\\"#000000\\\",\\\"gk_storebox_quality\\\":\\\"95\\\",\\\"gk_storebox_show_title_block\\\":\\\"1\\\",\\\"gk_storebox_title_block_bg\\\":\\\"transparent\\\",\\\"gk_storebox_title_block_color\\\":\\\"#fff\\\",\\\"gk_storebox_title_block_position_y\\\":\\\"30\\\",\\\"gk_storebox_title_block_position_x\\\":\\\"30\\\",\\\"gk_storebox_pagination\\\":\\\"1\\\",\\\"gk_storebox_slide_links\\\":\\\"1\\\",\\\"gk_storebox_animation_speed\\\":\\\"500\\\",\\\"gk_storebox_animation_interval\\\":\\\"5000\\\",\\\"gk_storebox_autoanimation\\\":\\\"1\\\"},\\\"gk_storefront\\\":{\\\"gk_storefront_module_height_desktop\\\":\\\"700\\\",\\\"gk_storefront_module_height_tablet\\\":\\\"500\\\",\\\"gk_storefront_module_height_mobile\\\":\\\"300\\\",\\\"gk_storefront_image_width\\\":\\\"640\\\",\\\"gk_storefront_image_height\\\":\\\"320\\\",\\\"gk_storefront_image_bg\\\":\\\"#000000\\\",\\\"gk_storefront_quality\\\":\\\"95\\\",\\\"gk_storefront_show_title_block\\\":\\\"1\\\",\\\"gk_storefront_show_pagination\\\":\\\"1\\\",\\\"gk_storefront_slide_links\\\":\\\"1\\\",\\\"gk_storefront_animation_speed\\\":\\\"500\\\",\\\"gk_storefront_animation_interval\\\":\\\"5000\\\",\\\"gk_storefront_autoanimation\\\":\\\"1\\\"},\\\"gk_university\\\":{\\\"gk_university_image_width\\\":\\\"1720\\\",\\\"gk_university_image_height\\\":\\\"896\\\",\\\"gk_university_tablet_image_width\\\":\\\"1040\\\",\\\"gk_university_tablet_image_height\\\":\\\"542\\\",\\\"gk_university_mobile_image_width\\\":\\\"640\\\",\\\"gk_university_mobile_image_height\\\":\\\"334\\\",\\\"gk_university_image_bg\\\":\\\"#000000\\\",\\\"gk_university_quality\\\":\\\"95\\\",\\\"gk_university_show_title_block\\\":\\\"1\\\",\\\"gk_university_animation_loop\\\":\\\"1\\\",\\\"gk_university_slide_links\\\":\\\"1\\\",\\\"gk_university_animation_speed\\\":\\\"500\\\",\\\"gk_university_animation_interval\\\":\\\"5000\\\"}}\",\"memory_limit\":\"256M\",\"generate_thumbnails\":\"1\",\"random_slides\":\"0\",\"use_style_css\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (121,112,'刀具產品總覽','','',1,'sidebar-1',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_djc2categories',1,1,'{\"moduleclass_sfx\":\"\",\"expand\":\"0\",\"parent_category\":\"2\",\"display_counter\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\" productCatalogTitle \",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (122,113,'法式蔬食','','',3,'sidebar-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_djc2categories',1,1,'{\"moduleclass_sfx\":\"\",\"expand\":\"0\",\"parent_category\":\"6\",\"display_counter\":\"0\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (124,121,'home image slide show','','',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_image_show_gk4',1,0,'{\"automatic_module_id\":\"1\",\"module_id\":\"gk-is-1\",\"moduleclass_sfx\":\"\",\"module_style\":\"gk_bikestore\",\"last_modification\":\"1414053592\",\"image_show_data\":\"[{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home11.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home12.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home13.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/zongknife\\/imageslide\\/home14.jpg\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"}]\",\"config\":\"{\\\"gk_bikestore\\\":{\\\"gk_bikestore_image_width\\\":\\\"1280\\\",\\\"gk_bikestore_image_height\\\":\\\"400\\\",\\\"gk_bikestore_image_bg\\\":\\\"#000000\\\",\\\"gk_bikestore_quality\\\":\\\"95\\\",\\\"gk_bikestore_show_title_block\\\":\\\"0\\\",\\\"gk_bikestore_title_block_position\\\":\\\"bottom\\\",\\\"gk_bikestore_title_block_position_x\\\":\\\"left\\\",\\\"gk_bikestore_title_block_length\\\":\\\"30\\\",\\\"gk_bikestore_pagination\\\":\\\"0\\\",\\\"gk_bikestore_pagination_position\\\":\\\"top\\\",\\\"gk_bikestore_slide_links\\\":\\\"0\\\",\\\"gk_bikestore_animation_speed\\\":\\\"500\\\",\\\"gk_bikestore_animation_interval\\\":\\\"5000\\\",\\\"gk_bikestore_autoanimation\\\":\\\"1\\\"},\\\"gk_bluap\\\":{\\\"gk_bluap_image_width\\\":\\\"640\\\",\\\"gk_bluap_image_height\\\":\\\"320\\\",\\\"gk_bluap_image_bg\\\":\\\"#000000\\\",\\\"gk_bluap_quality\\\":\\\"95\\\",\\\"gk_bluap_text_block_width\\\":\\\"50\\\",\\\"gk_bluap_text_block_position\\\":\\\"left\\\",\\\"gk_bluap_pagination\\\":\\\"1\\\",\\\"gk_bluap_animation_speed\\\":\\\"500\\\",\\\"gk_bluap_animation_interval\\\":\\\"5000\\\",\\\"gk_bluap_autoanimation\\\":\\\"1\\\"},\\\"gk_creativity\\\":{\\\"gk_creativity_image_width\\\":\\\"640\\\",\\\"gk_creativity_image_height\\\":\\\"320\\\",\\\"gk_creativity_image_bg\\\":\\\"#000000\\\",\\\"gk_creativity_quality\\\":\\\"95\\\",\\\"gk_creativity_title_anim\\\":\\\"none\\\",\\\"gk_creativity_text_anim\\\":\\\"none\\\",\\\"gk_creativity_bganim\\\":\\\"opacity\\\",\\\"gk_creativity_pagination\\\":\\\"1\\\",\\\"gk_creativity_animation_speed\\\":\\\"500\\\",\\\"gk_creativity_animation_interval\\\":\\\"5000\\\",\\\"gk_creativity_autoanimation\\\":\\\"1\\\"},\\\"gk_fashion\\\":{\\\"gk_fashion_image_width\\\":\\\"640\\\",\\\"gk_fashion_image_height\\\":\\\"320\\\",\\\"gk_fashion_image_bg\\\":\\\"#000000\\\",\\\"gk_fashion_quality\\\":\\\"95\\\",\\\"gk_fashion_show_title_block\\\":\\\"1\\\",\\\"gk_fashion_title_block_position\\\":\\\"bottom\\\",\\\"gk_fashion_title_block_length\\\":\\\"30\\\",\\\"gk_fashion_pagination\\\":\\\"1\\\",\\\"gk_fashion_pagination_position\\\":\\\"top\\\",\\\"gk_fashion_slide_links\\\":\\\"1\\\",\\\"gk_fashion_animation_speed\\\":\\\"500\\\",\\\"gk_fashion_animation_interval\\\":\\\"5000\\\",\\\"gk_fashion_autoanimation\\\":\\\"1\\\"},\\\"gk_game\\\":{\\\"gk_game_image_width\\\":\\\"2080\\\",\\\"gk_game_image_height\\\":\\\"936\\\",\\\"gk_game_margin_bottom\\\":\\\"430\\\",\\\"gk_game_tablet_image_width\\\":\\\"1040\\\",\\\"gk_game_tablet_image_height\\\":\\\"468\\\",\\\"gk_game_tablet_margin_bottom\\\":\\\"215\\\",\\\"gk_game_mobile_image_width\\\":\\\"570\\\",\\\"gk_game_mobile_image_height\\\":\\\"234\\\",\\\"gk_game_mobile_margin_bottom\\\":\\\"107\\\",\\\"gk_game_image_bg\\\":\\\"#000000\\\",\\\"gk_game_quality\\\":\\\"95\\\",\\\"gk_game_show_title_block\\\":\\\"1\\\",\\\"gk_game_animation_loop\\\":\\\"1\\\",\\\"gk_game_slide_links\\\":\\\"1\\\",\\\"gk_game_animation_speed\\\":\\\"500\\\",\\\"gk_game_animation_interval\\\":\\\"5000\\\"},\\\"gk_musicstate\\\":{\\\"gk_musicstate_image_width\\\":\\\"640\\\",\\\"gk_musicstate_image_height\\\":\\\"320\\\",\\\"gk_musicstate_image_bg\\\":\\\"#000000\\\",\\\"gk_musicstate_quality\\\":\\\"95\\\",\\\"gk_musicstate_show_title_block\\\":\\\"1\\\",\\\"gk_musicstate_title_block_color\\\":\\\"#fff\\\",\\\"gk_musicstate_slide_links\\\":\\\"1\\\",\\\"gk_musicstate_animation_speed\\\":\\\"500\\\",\\\"gk_musicstate_animation_interval\\\":\\\"5000\\\",\\\"gk_musicstate_autoanimation\\\":\\\"1\\\"},\\\"gk_publisher\\\":{\\\"gk_publisher_image_width\\\":\\\"640\\\",\\\"gk_publisher_image_height\\\":\\\"320\\\",\\\"gk_publisher_image_bg\\\":\\\"#000000\\\",\\\"gk_publisher_quality\\\":\\\"95\\\",\\\"gk_publisher_title_block_position\\\":\\\"bottom\\\",\\\"gk_publisher_show_content_block\\\":\\\"1\\\",\\\"gk_publisher_show_title_block\\\":\\\"1\\\",\\\"gk_publisher_show_text_block\\\":\\\"1\\\",\\\"gk_publisher_title_block_length\\\":\\\"30\\\",\\\"gk_publisher_text_block_length\\\":\\\"80\\\",\\\"gk_publisher_pagination\\\":\\\"1\\\",\\\"gk_publisher_pagination_position\\\":\\\"bottom\\\",\\\"gk_publisher_slide_links\\\":\\\"1\\\",\\\"gk_publisher_animation_speed\\\":\\\"500\\\",\\\"gk_publisher_animation_interval\\\":\\\"5000\\\",\\\"gk_publisher_autoanimation\\\":\\\"1\\\"},\\\"gk_rockwall\\\":{\\\"gk_rockwall_image_width\\\":\\\"640\\\",\\\"gk_rockwall_image_height\\\":\\\"320\\\",\\\"gk_rockwall_image_bg\\\":\\\"#000000\\\",\\\"gk_rockwall_quality\\\":\\\"95\\\",\\\"gk_rockwall_show_title_block\\\":\\\"1\\\",\\\"gk_rockwall_title_block_bg\\\":\\\"transparent\\\",\\\"gk_rockwall_title_block_color\\\":\\\"#fff\\\",\\\"gk_rockwall_title_block_position\\\":\\\"left\\\",\\\"gk_rockwall_title_block_padding\\\":\\\"\\\",\\\"gk_rockwall_title_block_width\\\":\\\"\\\",\\\"gk_rockwall_slide_links\\\":\\\"1\\\",\\\"gk_rockwall_animation_speed\\\":\\\"500\\\",\\\"gk_rockwall_animation_interval\\\":\\\"5000\\\",\\\"gk_rockwall_autoanimation\\\":\\\"1\\\"},\\\"gk_shop_and_buy\\\":{\\\"gk_shop_and_buy_image_width\\\":\\\"640\\\",\\\"gk_shop_and_buy_image_height\\\":\\\"320\\\",\\\"gk_shop_and_buy_image_bg\\\":\\\"#000000\\\",\\\"gk_shop_and_buy_quality\\\":\\\"95\\\",\\\"gk_shop_and_buy_show_content_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_title_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_text_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_title_block_length\\\":\\\"30\\\",\\\"gk_shop_and_buy_text_block_length\\\":\\\"80\\\",\\\"gk_shop_and_buy_pagination\\\":\\\"1\\\",\\\"gk_shop_and_buy_pagination_arrows\\\":\\\"1\\\",\\\"gk_shop_and_buy_slide_links\\\":\\\"1\\\",\\\"gk_shop_and_buy_animation_speed\\\":\\\"1000\\\",\\\"gk_shop_and_buy_animation_interval\\\":\\\"6000\\\",\\\"gk_shop_and_buy_autoanimation\\\":\\\"1\\\"},\\\"gk_startup\\\":{\\\"gk_startup_image_bg\\\":\\\"transparent\\\",\\\"gk_startup_quality\\\":\\\"95\\\",\\\"gk_startup_desktop_width\\\":\\\"1000\\\",\\\"gk_startup_image_width\\\":\\\"804\\\",\\\"gk_startup_module_height\\\":\\\"920\\\",\\\"gk_startup_tablet_width\\\":\\\"920\\\",\\\"gk_startup_tablet_image_width\\\":\\\"603\\\",\\\"gk_startup_tablet_module_height\\\":\\\"690\\\",\\\"gk_startup_mobile_width\\\":\\\"580\\\",\\\"gk_startup_mobile_image_width\\\":\\\"338\\\",\\\"gk_startup_mobile_module_height\\\":\\\"386\\\",\\\"gk_startup_pagination\\\":\\\"1\\\",\\\"gk_startup_arrows\\\":\\\"1\\\",\\\"gk_startup_slide_links\\\":\\\"1\\\",\\\"gk_startup_animation_speed\\\":\\\"500\\\",\\\"gk_startup_animation_interval\\\":\\\"5000\\\",\\\"gk_startup_autoanimation\\\":\\\"1\\\"},\\\"gk_storebox\\\":{\\\"gk_storebox_image_width\\\":\\\"640\\\",\\\"gk_storebox_image_height\\\":\\\"320\\\",\\\"gk_storebox_image_bg\\\":\\\"#000000\\\",\\\"gk_storebox_quality\\\":\\\"95\\\",\\\"gk_storebox_show_title_block\\\":\\\"1\\\",\\\"gk_storebox_title_block_bg\\\":\\\"transparent\\\",\\\"gk_storebox_title_block_color\\\":\\\"#fff\\\",\\\"gk_storebox_title_block_position_y\\\":\\\"30\\\",\\\"gk_storebox_title_block_position_x\\\":\\\"30\\\",\\\"gk_storebox_pagination\\\":\\\"1\\\",\\\"gk_storebox_slide_links\\\":\\\"1\\\",\\\"gk_storebox_animation_speed\\\":\\\"500\\\",\\\"gk_storebox_animation_interval\\\":\\\"5000\\\",\\\"gk_storebox_autoanimation\\\":\\\"1\\\"},\\\"gk_storefront\\\":{\\\"gk_storefront_module_height_desktop\\\":\\\"700\\\",\\\"gk_storefront_module_height_tablet\\\":\\\"500\\\",\\\"gk_storefront_module_height_mobile\\\":\\\"300\\\",\\\"gk_storefront_image_width\\\":\\\"640\\\",\\\"gk_storefront_image_height\\\":\\\"320\\\",\\\"gk_storefront_image_bg\\\":\\\"#000000\\\",\\\"gk_storefront_quality\\\":\\\"95\\\",\\\"gk_storefront_show_title_block\\\":\\\"1\\\",\\\"gk_storefront_show_pagination\\\":\\\"1\\\",\\\"gk_storefront_slide_links\\\":\\\"1\\\",\\\"gk_storefront_animation_speed\\\":\\\"500\\\",\\\"gk_storefront_animation_interval\\\":\\\"5000\\\",\\\"gk_storefront_autoanimation\\\":\\\"1\\\"},\\\"gk_university\\\":{\\\"gk_university_image_width\\\":\\\"1720\\\",\\\"gk_university_image_height\\\":\\\"896\\\",\\\"gk_university_tablet_image_width\\\":\\\"1040\\\",\\\"gk_university_tablet_image_height\\\":\\\"542\\\",\\\"gk_university_mobile_image_width\\\":\\\"640\\\",\\\"gk_university_mobile_image_height\\\":\\\"334\\\",\\\"gk_university_image_bg\\\":\\\"#000000\\\",\\\"gk_university_quality\\\":\\\"95\\\",\\\"gk_university_show_title_block\\\":\\\"1\\\",\\\"gk_university_animation_loop\\\":\\\"1\\\",\\\"gk_university_slide_links\\\":\\\"1\\\",\\\"gk_university_animation_speed\\\":\\\"500\\\",\\\"gk_university_animation_interval\\\":\\\"5000\\\"}}\",\"memory_limit\":\"256M\",\"generate_thumbnails\":\"1\",\"random_slides\":\"0\",\"use_style_css\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (125,122,'coffee image slide show','','',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_image_show_gk4',1,0,'{\"automatic_module_id\":\"1\",\"module_id\":\"gk-is-1\",\"moduleclass_sfx\":\"\",\"module_style\":\"gk_bikestore\",\"last_modification\":\"1413338082\",\"image_show_data\":\"[{\\\"name\\\":\\\"\\u56b4\\u9078\\u4e16\\u754c\\u5404\\u5730\\u591a\\u7a2e\\u7cbe\\u54c1\\u5496\\u5561\\u8c46\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/c1.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u5c08\\u696d\\u7684\\u7fa9\\u5927\\u5229\\u5496\\u5561\\u6a5f\\u5c08\\u5bb6\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/c2.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u9187\\u539a\\u67d4\\u9806\\u3001\\u53e3\\u611f\\u7368\\u7279\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/c3.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u8d85\\u904e\\u767e\\u5e74\\u7684\\u54c1\\u8cea\\u4fdd\\u8b49\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/c4.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u5546\\u7528\\u971c\\u6dc7\\u6dcb\\u6a5f\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/c6.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u6bcf\\u65e5\\u65b0\\u9bae\\u70d8\\u57f9\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/tmp\\/3.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"}]\",\"config\":\"{\\\"gk_bikestore\\\":{\\\"gk_bikestore_image_width\\\":\\\"800\\\",\\\"gk_bikestore_image_height\\\":\\\"200\\\",\\\"gk_bikestore_image_bg\\\":\\\"#000000\\\",\\\"gk_bikestore_quality\\\":\\\"95\\\",\\\"gk_bikestore_show_title_block\\\":\\\"1\\\",\\\"gk_bikestore_title_block_position\\\":\\\"bottom\\\",\\\"gk_bikestore_title_block_position_x\\\":\\\"left\\\",\\\"gk_bikestore_title_block_length\\\":\\\"30\\\",\\\"gk_bikestore_pagination\\\":\\\"1\\\",\\\"gk_bikestore_pagination_position\\\":\\\"top\\\",\\\"gk_bikestore_slide_links\\\":\\\"0\\\",\\\"gk_bikestore_animation_speed\\\":\\\"500\\\",\\\"gk_bikestore_animation_interval\\\":\\\"5000\\\",\\\"gk_bikestore_autoanimation\\\":\\\"1\\\"},\\\"gk_bluap\\\":{\\\"gk_bluap_image_width\\\":\\\"640\\\",\\\"gk_bluap_image_height\\\":\\\"320\\\",\\\"gk_bluap_image_bg\\\":\\\"#000000\\\",\\\"gk_bluap_quality\\\":\\\"95\\\",\\\"gk_bluap_text_block_width\\\":\\\"50\\\",\\\"gk_bluap_text_block_position\\\":\\\"left\\\",\\\"gk_bluap_pagination\\\":\\\"1\\\",\\\"gk_bluap_animation_speed\\\":\\\"500\\\",\\\"gk_bluap_animation_interval\\\":\\\"5000\\\",\\\"gk_bluap_autoanimation\\\":\\\"1\\\"},\\\"gk_creativity\\\":{\\\"gk_creativity_image_width\\\":\\\"640\\\",\\\"gk_creativity_image_height\\\":\\\"320\\\",\\\"gk_creativity_image_bg\\\":\\\"#000000\\\",\\\"gk_creativity_quality\\\":\\\"95\\\",\\\"gk_creativity_title_anim\\\":\\\"none\\\",\\\"gk_creativity_text_anim\\\":\\\"none\\\",\\\"gk_creativity_bganim\\\":\\\"opacity\\\",\\\"gk_creativity_pagination\\\":\\\"1\\\",\\\"gk_creativity_animation_speed\\\":\\\"500\\\",\\\"gk_creativity_animation_interval\\\":\\\"5000\\\",\\\"gk_creativity_autoanimation\\\":\\\"1\\\"},\\\"gk_fashion\\\":{\\\"gk_fashion_image_width\\\":\\\"640\\\",\\\"gk_fashion_image_height\\\":\\\"320\\\",\\\"gk_fashion_image_bg\\\":\\\"#000000\\\",\\\"gk_fashion_quality\\\":\\\"95\\\",\\\"gk_fashion_show_title_block\\\":\\\"1\\\",\\\"gk_fashion_title_block_position\\\":\\\"bottom\\\",\\\"gk_fashion_title_block_length\\\":\\\"30\\\",\\\"gk_fashion_pagination\\\":\\\"1\\\",\\\"gk_fashion_pagination_position\\\":\\\"top\\\",\\\"gk_fashion_slide_links\\\":\\\"1\\\",\\\"gk_fashion_animation_speed\\\":\\\"500\\\",\\\"gk_fashion_animation_interval\\\":\\\"5000\\\",\\\"gk_fashion_autoanimation\\\":\\\"1\\\"},\\\"gk_game\\\":{\\\"gk_game_image_width\\\":\\\"2080\\\",\\\"gk_game_image_height\\\":\\\"936\\\",\\\"gk_game_margin_bottom\\\":\\\"430\\\",\\\"gk_game_tablet_image_width\\\":\\\"1040\\\",\\\"gk_game_tablet_image_height\\\":\\\"468\\\",\\\"gk_game_tablet_margin_bottom\\\":\\\"215\\\",\\\"gk_game_mobile_image_width\\\":\\\"570\\\",\\\"gk_game_mobile_image_height\\\":\\\"234\\\",\\\"gk_game_mobile_margin_bottom\\\":\\\"107\\\",\\\"gk_game_image_bg\\\":\\\"#000000\\\",\\\"gk_game_quality\\\":\\\"95\\\",\\\"gk_game_show_title_block\\\":\\\"1\\\",\\\"gk_game_animation_loop\\\":\\\"1\\\",\\\"gk_game_slide_links\\\":\\\"1\\\",\\\"gk_game_animation_speed\\\":\\\"500\\\",\\\"gk_game_animation_interval\\\":\\\"5000\\\"},\\\"gk_musicstate\\\":{\\\"gk_musicstate_image_width\\\":\\\"640\\\",\\\"gk_musicstate_image_height\\\":\\\"320\\\",\\\"gk_musicstate_image_bg\\\":\\\"#000000\\\",\\\"gk_musicstate_quality\\\":\\\"95\\\",\\\"gk_musicstate_show_title_block\\\":\\\"1\\\",\\\"gk_musicstate_title_block_color\\\":\\\"#fff\\\",\\\"gk_musicstate_slide_links\\\":\\\"1\\\",\\\"gk_musicstate_animation_speed\\\":\\\"500\\\",\\\"gk_musicstate_animation_interval\\\":\\\"5000\\\",\\\"gk_musicstate_autoanimation\\\":\\\"1\\\"},\\\"gk_publisher\\\":{\\\"gk_publisher_image_width\\\":\\\"640\\\",\\\"gk_publisher_image_height\\\":\\\"320\\\",\\\"gk_publisher_image_bg\\\":\\\"#000000\\\",\\\"gk_publisher_quality\\\":\\\"95\\\",\\\"gk_publisher_title_block_position\\\":\\\"bottom\\\",\\\"gk_publisher_show_content_block\\\":\\\"1\\\",\\\"gk_publisher_show_title_block\\\":\\\"1\\\",\\\"gk_publisher_show_text_block\\\":\\\"1\\\",\\\"gk_publisher_title_block_length\\\":\\\"30\\\",\\\"gk_publisher_text_block_length\\\":\\\"80\\\",\\\"gk_publisher_pagination\\\":\\\"1\\\",\\\"gk_publisher_pagination_position\\\":\\\"bottom\\\",\\\"gk_publisher_slide_links\\\":\\\"1\\\",\\\"gk_publisher_animation_speed\\\":\\\"500\\\",\\\"gk_publisher_animation_interval\\\":\\\"5000\\\",\\\"gk_publisher_autoanimation\\\":\\\"1\\\"},\\\"gk_rockwall\\\":{\\\"gk_rockwall_image_width\\\":\\\"640\\\",\\\"gk_rockwall_image_height\\\":\\\"320\\\",\\\"gk_rockwall_image_bg\\\":\\\"#000000\\\",\\\"gk_rockwall_quality\\\":\\\"95\\\",\\\"gk_rockwall_show_title_block\\\":\\\"1\\\",\\\"gk_rockwall_title_block_bg\\\":\\\"transparent\\\",\\\"gk_rockwall_title_block_color\\\":\\\"#fff\\\",\\\"gk_rockwall_title_block_position\\\":\\\"left\\\",\\\"gk_rockwall_title_block_padding\\\":\\\"\\\",\\\"gk_rockwall_title_block_width\\\":\\\"\\\",\\\"gk_rockwall_slide_links\\\":\\\"1\\\",\\\"gk_rockwall_animation_speed\\\":\\\"500\\\",\\\"gk_rockwall_animation_interval\\\":\\\"5000\\\",\\\"gk_rockwall_autoanimation\\\":\\\"1\\\"},\\\"gk_shop_and_buy\\\":{\\\"gk_shop_and_buy_image_width\\\":\\\"640\\\",\\\"gk_shop_and_buy_image_height\\\":\\\"320\\\",\\\"gk_shop_and_buy_image_bg\\\":\\\"#000000\\\",\\\"gk_shop_and_buy_quality\\\":\\\"95\\\",\\\"gk_shop_and_buy_show_content_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_title_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_text_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_title_block_length\\\":\\\"30\\\",\\\"gk_shop_and_buy_text_block_length\\\":\\\"80\\\",\\\"gk_shop_and_buy_pagination\\\":\\\"1\\\",\\\"gk_shop_and_buy_pagination_arrows\\\":\\\"1\\\",\\\"gk_shop_and_buy_slide_links\\\":\\\"1\\\",\\\"gk_shop_and_buy_animation_speed\\\":\\\"1000\\\",\\\"gk_shop_and_buy_animation_interval\\\":\\\"6000\\\",\\\"gk_shop_and_buy_autoanimation\\\":\\\"1\\\"},\\\"gk_startup\\\":{\\\"gk_startup_image_bg\\\":\\\"transparent\\\",\\\"gk_startup_quality\\\":\\\"95\\\",\\\"gk_startup_desktop_width\\\":\\\"1000\\\",\\\"gk_startup_image_width\\\":\\\"804\\\",\\\"gk_startup_module_height\\\":\\\"920\\\",\\\"gk_startup_tablet_width\\\":\\\"920\\\",\\\"gk_startup_tablet_image_width\\\":\\\"603\\\",\\\"gk_startup_tablet_module_height\\\":\\\"690\\\",\\\"gk_startup_mobile_width\\\":\\\"580\\\",\\\"gk_startup_mobile_image_width\\\":\\\"338\\\",\\\"gk_startup_mobile_module_height\\\":\\\"386\\\",\\\"gk_startup_pagination\\\":\\\"1\\\",\\\"gk_startup_arrows\\\":\\\"1\\\",\\\"gk_startup_slide_links\\\":\\\"1\\\",\\\"gk_startup_animation_speed\\\":\\\"500\\\",\\\"gk_startup_animation_interval\\\":\\\"5000\\\",\\\"gk_startup_autoanimation\\\":\\\"1\\\"},\\\"gk_storebox\\\":{\\\"gk_storebox_image_width\\\":\\\"640\\\",\\\"gk_storebox_image_height\\\":\\\"320\\\",\\\"gk_storebox_image_bg\\\":\\\"#000000\\\",\\\"gk_storebox_quality\\\":\\\"95\\\",\\\"gk_storebox_show_title_block\\\":\\\"1\\\",\\\"gk_storebox_title_block_bg\\\":\\\"transparent\\\",\\\"gk_storebox_title_block_color\\\":\\\"#fff\\\",\\\"gk_storebox_title_block_position_y\\\":\\\"30\\\",\\\"gk_storebox_title_block_position_x\\\":\\\"30\\\",\\\"gk_storebox_pagination\\\":\\\"1\\\",\\\"gk_storebox_slide_links\\\":\\\"1\\\",\\\"gk_storebox_animation_speed\\\":\\\"500\\\",\\\"gk_storebox_animation_interval\\\":\\\"5000\\\",\\\"gk_storebox_autoanimation\\\":\\\"1\\\"},\\\"gk_storefront\\\":{\\\"gk_storefront_module_height_desktop\\\":\\\"700\\\",\\\"gk_storefront_module_height_tablet\\\":\\\"500\\\",\\\"gk_storefront_module_height_mobile\\\":\\\"300\\\",\\\"gk_storefront_image_width\\\":\\\"640\\\",\\\"gk_storefront_image_height\\\":\\\"320\\\",\\\"gk_storefront_image_bg\\\":\\\"#000000\\\",\\\"gk_storefront_quality\\\":\\\"95\\\",\\\"gk_storefront_show_title_block\\\":\\\"1\\\",\\\"gk_storefront_show_pagination\\\":\\\"1\\\",\\\"gk_storefront_slide_links\\\":\\\"1\\\",\\\"gk_storefront_animation_speed\\\":\\\"500\\\",\\\"gk_storefront_animation_interval\\\":\\\"5000\\\",\\\"gk_storefront_autoanimation\\\":\\\"1\\\"},\\\"gk_university\\\":{\\\"gk_university_image_width\\\":\\\"1720\\\",\\\"gk_university_image_height\\\":\\\"896\\\",\\\"gk_university_tablet_image_width\\\":\\\"1040\\\",\\\"gk_university_tablet_image_height\\\":\\\"542\\\",\\\"gk_university_mobile_image_width\\\":\\\"640\\\",\\\"gk_university_mobile_image_height\\\":\\\"334\\\",\\\"gk_university_image_bg\\\":\\\"#000000\\\",\\\"gk_university_quality\\\":\\\"95\\\",\\\"gk_university_show_title_block\\\":\\\"1\\\",\\\"gk_university_animation_loop\\\":\\\"1\\\",\\\"gk_university_slide_links\\\":\\\"1\\\",\\\"gk_university_animation_speed\\\":\\\"500\\\",\\\"gk_university_animation_interval\\\":\\\"5000\\\"}}\",\"memory_limit\":\"256M\",\"generate_thumbnails\":\"1\",\"random_slides\":\"0\",\"use_style_css\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (128,125,'發展沿革','','<div class=\"container\">\r\n<div class=\"row text-center\">\r\n<h3>發展沿革<small>History</small></h3>\r\n<p><img src=\"images/com_aedes/hecto/history.png\" alt=\"\" /></p>\r\n</div>\r\n</div>',10,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (133,158,'vegan menu','','',1,'sidebar-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,0,'{\"menutype\":\"veganmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (134,159,'pioneer menu','','',1,'sidebar-2',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_menu',1,0,'{\"menutype\":\"pioneermenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (135,160,'pioneer image slide show','','',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',0,'mod_image_show_gk4',1,0,'{\"automatic_module_id\":\"1\",\"module_id\":\"gk-is-1\",\"moduleclass_sfx\":\"\",\"module_style\":\"gk_bikestore\",\"last_modification\":\"1413340761\",\"image_show_data\":\"[{\\\"name\\\":\\\"\\u9802\\u5c16\\u7684\\u5e2b\\u8cc7\\u5718\\u968a\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/p1.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u96c4\\u539a\\u7684\\u4e8b\\u696d\\u5be6\\u529b\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/p2.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u8c50\\u5bcc\\u7684\\u5275\\u696d\\u7d93\\u9a57\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/p3.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u958b\\u5e97\\u898f\\u5283\\uff0e\\u6559\\u5b78\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/p4.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u5e97\\u9762CIS\\u8a2d\\u8a08\\uff0e\\u65bd\\u5de5\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/p5.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"},{\\\"name\\\":\\\"\\u57f9\\u8a13\\u7d93\\u71df\\u5be6\\u52d9\\\",\\\"type\\\":\\\"text\\\",\\\"image\\\":\\\"images\\/com_aedes\\/hecto\\/image_slideshow\\/h7.png\\\",\\\"stretch\\\":\\\"nostretch\\\",\\\"access\\\":\\\"public\\\",\\\"published\\\":\\\"1\\\",\\\"content\\\":\\\"\\\",\\\"url\\\":\\\"\\\",\\\"art_id\\\":\\\"\\\",\\\"art_title\\\":\\\"\\\",\\\"artK2_id\\\":\\\"\\\",\\\"artK2_title\\\":\\\"\\\"}]\",\"config\":\"{\\\"gk_bikestore\\\":{\\\"gk_bikestore_image_width\\\":\\\"800\\\",\\\"gk_bikestore_image_height\\\":\\\"200\\\",\\\"gk_bikestore_image_bg\\\":\\\"#000000\\\",\\\"gk_bikestore_quality\\\":\\\"95\\\",\\\"gk_bikestore_show_title_block\\\":\\\"1\\\",\\\"gk_bikestore_title_block_position\\\":\\\"bottom\\\",\\\"gk_bikestore_title_block_position_x\\\":\\\"left\\\",\\\"gk_bikestore_title_block_length\\\":\\\"30\\\",\\\"gk_bikestore_pagination\\\":\\\"1\\\",\\\"gk_bikestore_pagination_position\\\":\\\"top\\\",\\\"gk_bikestore_slide_links\\\":\\\"0\\\",\\\"gk_bikestore_animation_speed\\\":\\\"500\\\",\\\"gk_bikestore_animation_interval\\\":\\\"5000\\\",\\\"gk_bikestore_autoanimation\\\":\\\"1\\\"},\\\"gk_bluap\\\":{\\\"gk_bluap_image_width\\\":\\\"640\\\",\\\"gk_bluap_image_height\\\":\\\"320\\\",\\\"gk_bluap_image_bg\\\":\\\"#000000\\\",\\\"gk_bluap_quality\\\":\\\"95\\\",\\\"gk_bluap_text_block_width\\\":\\\"50\\\",\\\"gk_bluap_text_block_position\\\":\\\"left\\\",\\\"gk_bluap_pagination\\\":\\\"1\\\",\\\"gk_bluap_animation_speed\\\":\\\"500\\\",\\\"gk_bluap_animation_interval\\\":\\\"5000\\\",\\\"gk_bluap_autoanimation\\\":\\\"1\\\"},\\\"gk_creativity\\\":{\\\"gk_creativity_image_width\\\":\\\"640\\\",\\\"gk_creativity_image_height\\\":\\\"320\\\",\\\"gk_creativity_image_bg\\\":\\\"#000000\\\",\\\"gk_creativity_quality\\\":\\\"95\\\",\\\"gk_creativity_title_anim\\\":\\\"none\\\",\\\"gk_creativity_text_anim\\\":\\\"none\\\",\\\"gk_creativity_bganim\\\":\\\"opacity\\\",\\\"gk_creativity_pagination\\\":\\\"1\\\",\\\"gk_creativity_animation_speed\\\":\\\"500\\\",\\\"gk_creativity_animation_interval\\\":\\\"5000\\\",\\\"gk_creativity_autoanimation\\\":\\\"1\\\"},\\\"gk_fashion\\\":{\\\"gk_fashion_image_width\\\":\\\"640\\\",\\\"gk_fashion_image_height\\\":\\\"320\\\",\\\"gk_fashion_image_bg\\\":\\\"#000000\\\",\\\"gk_fashion_quality\\\":\\\"95\\\",\\\"gk_fashion_show_title_block\\\":\\\"1\\\",\\\"gk_fashion_title_block_position\\\":\\\"bottom\\\",\\\"gk_fashion_title_block_length\\\":\\\"30\\\",\\\"gk_fashion_pagination\\\":\\\"1\\\",\\\"gk_fashion_pagination_position\\\":\\\"top\\\",\\\"gk_fashion_slide_links\\\":\\\"1\\\",\\\"gk_fashion_animation_speed\\\":\\\"500\\\",\\\"gk_fashion_animation_interval\\\":\\\"5000\\\",\\\"gk_fashion_autoanimation\\\":\\\"1\\\"},\\\"gk_game\\\":{\\\"gk_game_image_width\\\":\\\"2080\\\",\\\"gk_game_image_height\\\":\\\"936\\\",\\\"gk_game_margin_bottom\\\":\\\"430\\\",\\\"gk_game_tablet_image_width\\\":\\\"1040\\\",\\\"gk_game_tablet_image_height\\\":\\\"468\\\",\\\"gk_game_tablet_margin_bottom\\\":\\\"215\\\",\\\"gk_game_mobile_image_width\\\":\\\"570\\\",\\\"gk_game_mobile_image_height\\\":\\\"234\\\",\\\"gk_game_mobile_margin_bottom\\\":\\\"107\\\",\\\"gk_game_image_bg\\\":\\\"#000000\\\",\\\"gk_game_quality\\\":\\\"95\\\",\\\"gk_game_show_title_block\\\":\\\"1\\\",\\\"gk_game_animation_loop\\\":\\\"1\\\",\\\"gk_game_slide_links\\\":\\\"1\\\",\\\"gk_game_animation_speed\\\":\\\"500\\\",\\\"gk_game_animation_interval\\\":\\\"5000\\\"},\\\"gk_musicstate\\\":{\\\"gk_musicstate_image_width\\\":\\\"640\\\",\\\"gk_musicstate_image_height\\\":\\\"320\\\",\\\"gk_musicstate_image_bg\\\":\\\"#000000\\\",\\\"gk_musicstate_quality\\\":\\\"95\\\",\\\"gk_musicstate_show_title_block\\\":\\\"1\\\",\\\"gk_musicstate_title_block_color\\\":\\\"#fff\\\",\\\"gk_musicstate_slide_links\\\":\\\"1\\\",\\\"gk_musicstate_animation_speed\\\":\\\"500\\\",\\\"gk_musicstate_animation_interval\\\":\\\"5000\\\",\\\"gk_musicstate_autoanimation\\\":\\\"1\\\"},\\\"gk_publisher\\\":{\\\"gk_publisher_image_width\\\":\\\"640\\\",\\\"gk_publisher_image_height\\\":\\\"320\\\",\\\"gk_publisher_image_bg\\\":\\\"#000000\\\",\\\"gk_publisher_quality\\\":\\\"95\\\",\\\"gk_publisher_title_block_position\\\":\\\"bottom\\\",\\\"gk_publisher_show_content_block\\\":\\\"1\\\",\\\"gk_publisher_show_title_block\\\":\\\"1\\\",\\\"gk_publisher_show_text_block\\\":\\\"1\\\",\\\"gk_publisher_title_block_length\\\":\\\"30\\\",\\\"gk_publisher_text_block_length\\\":\\\"80\\\",\\\"gk_publisher_pagination\\\":\\\"1\\\",\\\"gk_publisher_pagination_position\\\":\\\"bottom\\\",\\\"gk_publisher_slide_links\\\":\\\"1\\\",\\\"gk_publisher_animation_speed\\\":\\\"500\\\",\\\"gk_publisher_animation_interval\\\":\\\"5000\\\",\\\"gk_publisher_autoanimation\\\":\\\"1\\\"},\\\"gk_rockwall\\\":{\\\"gk_rockwall_image_width\\\":\\\"640\\\",\\\"gk_rockwall_image_height\\\":\\\"320\\\",\\\"gk_rockwall_image_bg\\\":\\\"#000000\\\",\\\"gk_rockwall_quality\\\":\\\"95\\\",\\\"gk_rockwall_show_title_block\\\":\\\"1\\\",\\\"gk_rockwall_title_block_bg\\\":\\\"transparent\\\",\\\"gk_rockwall_title_block_color\\\":\\\"#fff\\\",\\\"gk_rockwall_title_block_position\\\":\\\"left\\\",\\\"gk_rockwall_title_block_padding\\\":\\\"\\\",\\\"gk_rockwall_title_block_width\\\":\\\"\\\",\\\"gk_rockwall_slide_links\\\":\\\"1\\\",\\\"gk_rockwall_animation_speed\\\":\\\"500\\\",\\\"gk_rockwall_animation_interval\\\":\\\"5000\\\",\\\"gk_rockwall_autoanimation\\\":\\\"1\\\"},\\\"gk_shop_and_buy\\\":{\\\"gk_shop_and_buy_image_width\\\":\\\"640\\\",\\\"gk_shop_and_buy_image_height\\\":\\\"320\\\",\\\"gk_shop_and_buy_image_bg\\\":\\\"#000000\\\",\\\"gk_shop_and_buy_quality\\\":\\\"95\\\",\\\"gk_shop_and_buy_show_content_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_title_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_show_text_block\\\":\\\"1\\\",\\\"gk_shop_and_buy_title_block_length\\\":\\\"30\\\",\\\"gk_shop_and_buy_text_block_length\\\":\\\"80\\\",\\\"gk_shop_and_buy_pagination\\\":\\\"1\\\",\\\"gk_shop_and_buy_pagination_arrows\\\":\\\"1\\\",\\\"gk_shop_and_buy_slide_links\\\":\\\"1\\\",\\\"gk_shop_and_buy_animation_speed\\\":\\\"1000\\\",\\\"gk_shop_and_buy_animation_interval\\\":\\\"6000\\\",\\\"gk_shop_and_buy_autoanimation\\\":\\\"1\\\"},\\\"gk_startup\\\":{\\\"gk_startup_image_bg\\\":\\\"transparent\\\",\\\"gk_startup_quality\\\":\\\"95\\\",\\\"gk_startup_desktop_width\\\":\\\"1000\\\",\\\"gk_startup_image_width\\\":\\\"804\\\",\\\"gk_startup_module_height\\\":\\\"920\\\",\\\"gk_startup_tablet_width\\\":\\\"920\\\",\\\"gk_startup_tablet_image_width\\\":\\\"603\\\",\\\"gk_startup_tablet_module_height\\\":\\\"690\\\",\\\"gk_startup_mobile_width\\\":\\\"580\\\",\\\"gk_startup_mobile_image_width\\\":\\\"338\\\",\\\"gk_startup_mobile_module_height\\\":\\\"386\\\",\\\"gk_startup_pagination\\\":\\\"1\\\",\\\"gk_startup_arrows\\\":\\\"1\\\",\\\"gk_startup_slide_links\\\":\\\"1\\\",\\\"gk_startup_animation_speed\\\":\\\"500\\\",\\\"gk_startup_animation_interval\\\":\\\"5000\\\",\\\"gk_startup_autoanimation\\\":\\\"1\\\"},\\\"gk_storebox\\\":{\\\"gk_storebox_image_width\\\":\\\"640\\\",\\\"gk_storebox_image_height\\\":\\\"320\\\",\\\"gk_storebox_image_bg\\\":\\\"#000000\\\",\\\"gk_storebox_quality\\\":\\\"95\\\",\\\"gk_storebox_show_title_block\\\":\\\"1\\\",\\\"gk_storebox_title_block_bg\\\":\\\"transparent\\\",\\\"gk_storebox_title_block_color\\\":\\\"#fff\\\",\\\"gk_storebox_title_block_position_y\\\":\\\"30\\\",\\\"gk_storebox_title_block_position_x\\\":\\\"30\\\",\\\"gk_storebox_pagination\\\":\\\"1\\\",\\\"gk_storebox_slide_links\\\":\\\"1\\\",\\\"gk_storebox_animation_speed\\\":\\\"500\\\",\\\"gk_storebox_animation_interval\\\":\\\"5000\\\",\\\"gk_storebox_autoanimation\\\":\\\"1\\\"},\\\"gk_storefront\\\":{\\\"gk_storefront_module_height_desktop\\\":\\\"700\\\",\\\"gk_storefront_module_height_tablet\\\":\\\"500\\\",\\\"gk_storefront_module_height_mobile\\\":\\\"300\\\",\\\"gk_storefront_image_width\\\":\\\"640\\\",\\\"gk_storefront_image_height\\\":\\\"320\\\",\\\"gk_storefront_image_bg\\\":\\\"#000000\\\",\\\"gk_storefront_quality\\\":\\\"95\\\",\\\"gk_storefront_show_title_block\\\":\\\"1\\\",\\\"gk_storefront_show_pagination\\\":\\\"1\\\",\\\"gk_storefront_slide_links\\\":\\\"1\\\",\\\"gk_storefront_animation_speed\\\":\\\"500\\\",\\\"gk_storefront_animation_interval\\\":\\\"5000\\\",\\\"gk_storefront_autoanimation\\\":\\\"1\\\"},\\\"gk_university\\\":{\\\"gk_university_image_width\\\":\\\"1720\\\",\\\"gk_university_image_height\\\":\\\"896\\\",\\\"gk_university_tablet_image_width\\\":\\\"1040\\\",\\\"gk_university_tablet_image_height\\\":\\\"542\\\",\\\"gk_university_mobile_image_width\\\":\\\"640\\\",\\\"gk_university_mobile_image_height\\\":\\\"334\\\",\\\"gk_university_image_bg\\\":\\\"#000000\\\",\\\"gk_university_quality\\\":\\\"95\\\",\\\"gk_university_show_title_block\\\":\\\"1\\\",\\\"gk_university_animation_loop\\\":\\\"1\\\",\\\"gk_university_slide_links\\\":\\\"1\\\",\\\"gk_university_animation_speed\\\":\\\"500\\\",\\\"gk_university_animation_interval\\\":\\\"5000\\\"}}\",\"memory_limit\":\"256M\",\"generate_thumbnails\":\"1\",\"random_slides\":\"0\",\"use_style_css\":\"1\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (136,161,'home vegan menu','','',1,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_menu',1,0,'{\"menutype\":\"veganmenu\",\"base\":\"\",\"startLevel\":\"1\",\"endLevel\":\"0\",\"showAllChildren\":\"1\",\"tag_id\":\"\",\"class_sfx\":\"\",\"window_open\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"itemid\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (137,162,'footer','','<p><img src=\"images/com_aedes/zongknife/aboutlogo.png\" alt=\"\" width=\"100\" /></p>\r\n<p><strong>台中保國菜刀王網路經銷商</strong><br />台中市北屯區松竹路二段86巷80號<br />TEL:0985-040438</p>',1,'footer',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,1,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (138,163,'關於中刀2','','<div class=\"col-sm-6 wow fadeInLeft \">\r\n<div class=\"page-header text-right\"><img src=\"images/com_aedes/zongknife/knife-s.png\" alt=\"\" width=\"226\" height=\"800\" /></div>\r\n</div>\r\n<div class=\"col-sm-6 wow fadeInDown\" data-wow-delay=\"0.3s\">\r\n<div class=\"page-header text-left\">\r\n<h2>關於中刀</h2>\r\n<img src=\"images/com_aedes/zongknife/aboutlogo.png\" alt=\"\" width=\"150\" />\r\n<p>何以取名為: 中 磨刀 ，<br />乃取自中庸意涵，磨刀就像做人，過與不及都不行，<br />剛好就好如何磨出一把好刀練的是人的性、情、毅力技巧故然重要，<br />但堅心、耐心卻是最根本的條件，而刀非利就夠，是要合用、合宜、合適，<br />然而於磨刀、賣刀中找到人生的另一遵行的方向更是如獲至寶。<br /> 因為對刀的一分堅持，所以對於刀材的選擇是首要考量重點，<br />嚴選進口日本武生鍊鋼廠生產鋼材，加上至今已製刀超過半世紀，<br />70年老店菜刀王製刀公司所生產的刀具，只為滿足對刀的偏執。</p>\r\n<p> </p>\r\n<p>菜刀、廚刀是指在處理食物時所使用的刀具。<br />在市面上有許多針對不同目的所設計的特殊菜刀，<br />用來製造菜刀的材料也會有所不同。</p>\r\n<p> </p>\r\n<p>菜刀有非常多的種類，除了依據各種目的設計的菜刀之外，<br />也可分為中式菜刀、日式菜刀和洋式菜刀。<br />日式菜刀通常是搭配在砧板上使用，切斷食材後砧板可防止刀刃受損。<br />而洋式菜刀則是大部份可直接在調理台上使用。</p>\r\n<p> </p>\r\n<p>剁刀：砍、剁肉類，也可將骨頭剁成小塊。刀片較厚，重量也較重。<br />片刀：切肉絲、將瓜果類切成片、切蔬菜皆宜。<br />水果刀：切水果與較小型的食物。<br />鋸齒刀：適合切較多水分的水果。</p>\r\n</div>\r\n</div>',2,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',-2,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\"\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"0\"}',0,'*');
INSERT INTO `mp75b_modules` VALUES (139,164,'菜刀王四大鋼材材質介紹','','<div class=\"container\">\r\n<div class=\"row\" style=\"margin-bottom: 72px;\">\r\n<div class=\"col-sm-12 text-center\">\r\n<h2>菜刀王四大鋼材材質介紹</h2>\r\n</div>\r\n<div class=\"col-sm-3 wow fadeInRight text-center\">\r\n<h3>武生特製鋼-vg10</h3>\r\n<p>菜刀王vg10系列刀具皆採自日本專產優質刀具的武生煉鋼廠鋼板，品質優異 是目前時下最夯的高質量鋼材。 日本武生煉鋼廠網址:http://www.e-tokko.com/ 日本「武生特製鋼」之「V金10號」不銹鋼材，乃「V金」系鋼材之最優級別，含碳量約1％，含鉬1.2％及鈷1.5％，經熱處理後可達HRc60-62之硬度。VG-10加工性優，韌性及耐蝕性皆強，多被應用於日製之優質刀具。</p>\r\n</div>\r\n<div class=\"col-sm-3 wow fadeInRight text-center\" data-wow-delay=\"0.3s\"><br />\r\n<h3>武生特製鋼VG-1<small>V Gold 1</small></h3>\r\n<p>由武生特殊鋼有限公司開發的一種高碳高鉬不銹鋼在鍛造過程中，鉬和鈷在鋼材中形成了堅硬的雙重碳化晶粒結構，這有助於提高鋼材的耐磨損和耐腐蝕的，在經過熱處理後這種鋼材通常能達到58-61HRC的硬度。</p>\r\n</div>\r\n<div class=\"col-sm-3 wow fadeInRight text-center\" data-wow-delay=\"0.5s\"><br />\r\n<h3>日立A2鋼</h3>\r\n<p>日本進口高韌性中碳鉻鋼. 耐磨性介于油鋼和 D2 鋼之間，而韌性則比 兩者都好 有耐磨耗及耐衝擊的特性 精磨後鋒利無比 適合營業用刀</p>\r\n</div>\r\n<div class=\"col-sm-3 wow fadeInRight text-center\" data-wow-delay=\"0.7s\"><br />\r\n<h3>日本進口青紙鋼<small>高碳鋼</small></h3>\r\n<p>材質:日本進口青紙鋼(高碳鋼).不是不銹鋼(會鏽) 在刀具鋒利度來講，以會鏽的碳鋼為最，因刀具的鋒利性，在於刀鋒的「微鋸齒」，含碳量高的刀具，天然微鋸齒越多，可以研磨的程度也越高，不鏽鋼刀具來講，含鉻量高，表面平滑，如研磨至較高系數，結構支撐不住「碳化物」即使研磨至鏡面程度，也失去其鋒利性，所以碳鋼會鏽，不鏽鋼不利，在之間取捨就看個人，以專業廚師以及專業職人，習慣使用鍛造碳鋼刀具來操作，因長時間的使用下，需要極鋒利及超高耐久度的刀具。館</p>\r\n</div>\r\n</div>\r\n</div>',5,'masthead',0,'0000-00-00 00:00:00','0000-00-00 00:00:00','0000-00-00 00:00:00',1,'mod_custom',1,0,'{\"prepare_content\":\"0\",\"backgroundimage\":\"\",\"layout\":\"_:default\",\"moduleclass_sfx\":\" row-feature-content\",\"cache\":\"1\",\"cache_time\":\"900\",\"cachemode\":\"static\",\"module_tag\":\"div\",\"bootstrap_size\":\"0\",\"header_tag\":\"h3\",\"header_class\":\"\",\"style\":\"System-html5\"}',0,'*');
UNLOCK TABLES;

-- Table structure for table `mp75b_modules_menu`

DROP TABLE IF EXISTS `mp75b_modules_menu`;
CREATE TABLE `mp75b_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_modules_menu`

LOCK TABLES `mp75b_modules_menu` WRITE;
INSERT INTO `mp75b_modules_menu` VALUES (1,0);
INSERT INTO `mp75b_modules_menu` VALUES (2,0);
INSERT INTO `mp75b_modules_menu` VALUES (3,0);
INSERT INTO `mp75b_modules_menu` VALUES (4,0);
INSERT INTO `mp75b_modules_menu` VALUES (6,0);
INSERT INTO `mp75b_modules_menu` VALUES (7,0);
INSERT INTO `mp75b_modules_menu` VALUES (8,0);
INSERT INTO `mp75b_modules_menu` VALUES (9,0);
INSERT INTO `mp75b_modules_menu` VALUES (10,0);
INSERT INTO `mp75b_modules_menu` VALUES (12,0);
INSERT INTO `mp75b_modules_menu` VALUES (13,0);
INSERT INTO `mp75b_modules_menu` VALUES (14,0);
INSERT INTO `mp75b_modules_menu` VALUES (15,0);
INSERT INTO `mp75b_modules_menu` VALUES (16,164);
INSERT INTO `mp75b_modules_menu` VALUES (16,165);
INSERT INTO `mp75b_modules_menu` VALUES (17,0);
INSERT INTO `mp75b_modules_menu` VALUES (79,0);
INSERT INTO `mp75b_modules_menu` VALUES (86,0);
INSERT INTO `mp75b_modules_menu` VALUES (94,0);
INSERT INTO `mp75b_modules_menu` VALUES (95,0);
INSERT INTO `mp75b_modules_menu` VALUES (96,101);
INSERT INTO `mp75b_modules_menu` VALUES (96,169);
INSERT INTO `mp75b_modules_menu` VALUES (97,101);
INSERT INTO `mp75b_modules_menu` VALUES (98,101);
INSERT INTO `mp75b_modules_menu` VALUES (99,0);
INSERT INTO `mp75b_modules_menu` VALUES (100,101);
INSERT INTO `mp75b_modules_menu` VALUES (101,101);
INSERT INTO `mp75b_modules_menu` VALUES (103,101);
INSERT INTO `mp75b_modules_menu` VALUES (104,101);
INSERT INTO `mp75b_modules_menu` VALUES (106,101);
INSERT INTO `mp75b_modules_menu` VALUES (107,101);
INSERT INTO `mp75b_modules_menu` VALUES (108,101);
INSERT INTO `mp75b_modules_menu` VALUES (109,101);
INSERT INTO `mp75b_modules_menu` VALUES (110,101);
INSERT INTO `mp75b_modules_menu` VALUES (111,101);
INSERT INTO `mp75b_modules_menu` VALUES (112,101);
INSERT INTO `mp75b_modules_menu` VALUES (113,101);
INSERT INTO `mp75b_modules_menu` VALUES (114,101);
INSERT INTO `mp75b_modules_menu` VALUES (115,101);
INSERT INTO `mp75b_modules_menu` VALUES (115,169);
INSERT INTO `mp75b_modules_menu` VALUES (116,101);
INSERT INTO `mp75b_modules_menu` VALUES (116,125);
INSERT INTO `mp75b_modules_menu` VALUES (117,0);
INSERT INTO `mp75b_modules_menu` VALUES (118,128);
INSERT INTO `mp75b_modules_menu` VALUES (120,169);
INSERT INTO `mp75b_modules_menu` VALUES (121,164);
INSERT INTO `mp75b_modules_menu` VALUES (121,171);
INSERT INTO `mp75b_modules_menu` VALUES (122,155);
INSERT INTO `mp75b_modules_menu` VALUES (122,156);
INSERT INTO `mp75b_modules_menu` VALUES (122,157);
INSERT INTO `mp75b_modules_menu` VALUES (122,158);
INSERT INTO `mp75b_modules_menu` VALUES (122,159);
INSERT INTO `mp75b_modules_menu` VALUES (122,165);
INSERT INTO `mp75b_modules_menu` VALUES (123,135);
INSERT INTO `mp75b_modules_menu` VALUES (123,137);
INSERT INTO `mp75b_modules_menu` VALUES (123,138);
INSERT INTO `mp75b_modules_menu` VALUES (123,139);
INSERT INTO `mp75b_modules_menu` VALUES (123,140);
INSERT INTO `mp75b_modules_menu` VALUES (123,141);
INSERT INTO `mp75b_modules_menu` VALUES (124,101);
INSERT INTO `mp75b_modules_menu` VALUES (124,155);
INSERT INTO `mp75b_modules_menu` VALUES (124,156);
INSERT INTO `mp75b_modules_menu` VALUES (124,157);
INSERT INTO `mp75b_modules_menu` VALUES (124,158);
INSERT INTO `mp75b_modules_menu` VALUES (124,159);
INSERT INTO `mp75b_modules_menu` VALUES (125,164);
INSERT INTO `mp75b_modules_menu` VALUES (128,101);
INSERT INTO `mp75b_modules_menu` VALUES (133,155);
INSERT INTO `mp75b_modules_menu` VALUES (133,156);
INSERT INTO `mp75b_modules_menu` VALUES (133,157);
INSERT INTO `mp75b_modules_menu` VALUES (133,158);
INSERT INTO `mp75b_modules_menu` VALUES (133,159);
INSERT INTO `mp75b_modules_menu` VALUES (133,165);
INSERT INTO `mp75b_modules_menu` VALUES (134,161);
INSERT INTO `mp75b_modules_menu` VALUES (134,162);
INSERT INTO `mp75b_modules_menu` VALUES (134,163);
INSERT INTO `mp75b_modules_menu` VALUES (134,166);
INSERT INTO `mp75b_modules_menu` VALUES (134,167);
INSERT INTO `mp75b_modules_menu` VALUES (135,161);
INSERT INTO `mp75b_modules_menu` VALUES (135,162);
INSERT INTO `mp75b_modules_menu` VALUES (135,163);
INSERT INTO `mp75b_modules_menu` VALUES (135,166);
INSERT INTO `mp75b_modules_menu` VALUES (135,167);
INSERT INTO `mp75b_modules_menu` VALUES (136,101);
INSERT INTO `mp75b_modules_menu` VALUES (136,155);
INSERT INTO `mp75b_modules_menu` VALUES (136,156);
INSERT INTO `mp75b_modules_menu` VALUES (136,157);
INSERT INTO `mp75b_modules_menu` VALUES (136,158);
INSERT INTO `mp75b_modules_menu` VALUES (136,159);
INSERT INTO `mp75b_modules_menu` VALUES (137,0);
INSERT INTO `mp75b_modules_menu` VALUES (138,169);
INSERT INTO `mp75b_modules_menu` VALUES (139,101);
INSERT INTO `mp75b_modules_menu` VALUES (139,169);
UNLOCK TABLES;

-- Table structure for table `mp75b_newsfeeds`

DROP TABLE IF EXISTS `mp75b_newsfeeds`;
CREATE TABLE `mp75b_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `link` varchar(200) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(10) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(10) unsigned NOT NULL DEFAULT '3600',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`published`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_newsfeeds`

LOCK TABLES `mp75b_newsfeeds` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_overrider`

DROP TABLE IF EXISTS `mp75b_overrider`;
CREATE TABLE `mp75b_overrider` (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `constant` varchar(255) NOT NULL,
  `string` text NOT NULL,
  `file` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_overrider`

LOCK TABLES `mp75b_overrider` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_postinstall_messages`

DROP TABLE IF EXISTS `mp75b_postinstall_messages`;
CREATE TABLE `mp75b_postinstall_messages` (
  `postinstall_message_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `extension_id` bigint(20) NOT NULL DEFAULT '700' COMMENT 'FK to #__extensions',
  `title_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for the title',
  `description_key` varchar(255) NOT NULL DEFAULT '' COMMENT 'Lang key for description',
  `action_key` varchar(255) NOT NULL DEFAULT '',
  `language_extension` varchar(255) NOT NULL DEFAULT 'com_postinstall' COMMENT 'Extension holding lang keys',
  `language_client_id` tinyint(3) NOT NULL DEFAULT '1',
  `type` varchar(10) NOT NULL DEFAULT 'link' COMMENT 'Message type - message, link, action',
  `action_file` varchar(255) DEFAULT '' COMMENT 'RAD URI to the PHP file containing action method',
  `action` varchar(255) DEFAULT '' COMMENT 'Action method name or URL',
  `condition_file` varchar(255) DEFAULT NULL COMMENT 'RAD URI to file holding display condition method',
  `condition_method` varchar(255) DEFAULT NULL COMMENT 'Display condition method, must return boolean',
  `version_introduced` varchar(50) NOT NULL DEFAULT '3.2.0' COMMENT 'Version when this message was introduced',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`postinstall_message_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_postinstall_messages`

LOCK TABLES `mp75b_postinstall_messages` WRITE;
INSERT INTO `mp75b_postinstall_messages` VALUES (1,700,'PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_TITLE','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_BODY','PLG_TWOFACTORAUTH_TOTP_POSTINSTALL_ACTION','plg_twofactorauth_totp',1,'action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_action','site://plugins/twofactorauth/totp/postinstall/actions.php','twofactorauth_postinstall_condition','3.2.0',1);
INSERT INTO `mp75b_postinstall_messages` VALUES (2,700,'COM_CPANEL_MSG_EACCELERATOR_TITLE','COM_CPANEL_MSG_EACCELERATOR_BODY','COM_CPANEL_MSG_EACCELERATOR_BUTTON','com_cpanel',1,'action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_action','admin://components/com_admin/postinstall/eaccelerator.php','admin_postinstall_eaccelerator_condition','3.2.0',1);
INSERT INTO `mp75b_postinstall_messages` VALUES (3,700,'COM_CPANEL_WELCOME_BEGINNERS_TITLE','COM_CPANEL_WELCOME_BEGINNERS_MESSAGE','','com_cpanel',1,'message','','','','','3.2.0',1);
INSERT INTO `mp75b_postinstall_messages` VALUES (4,700,'COM_CPANEL_MSG_PHPVERSION_TITLE','COM_CPANEL_MSG_PHPVERSION_BODY','','com_cpanel',1,'message','','','admin://components/com_admin/postinstall/phpversion.php','admin_postinstall_phpversion_condition','3.2.2',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_quickcontent_lists`

DROP TABLE IF EXISTS `mp75b_quickcontent_lists`;
CREATE TABLE `mp75b_quickcontent_lists` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `menutype` varchar(255) NOT NULL,
  `content` mediumtext NOT NULL,
  `delete_existing` int(3) NOT NULL,
  `category_menutype` varchar(255) NOT NULL,
  `list` text NOT NULL,
  `blog` text NOT NULL,
  `article` text NOT NULL,
  `generated` tinyint(4) NOT NULL DEFAULT '0',
  `restore` text NOT NULL,
  `alias` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_alias` (`alias`),
  KEY `idx_checkout` (`checked_out`),
  KEY `cat_index` (`published`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_quickcontent_lists`

LOCK TABLES `mp75b_quickcontent_lists` WRITE;
INSERT INTO `mp75b_quickcontent_lists` VALUES (9,'veganMenu','veganMenu','<ul><li><strong>形象特色</strong></li><li><strong>環境介紹</strong></li><li><strong>餐點管理</strong></li><li><strong>營業句點</strong></li><li><strong>促銷活動</strong></li></ul>',1,'list','{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}','{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}',1,'{\"categories\":[],\"articles\":[19,20,21,22,23],\"menus\":[155,156,157,158,159],\"menutype\":[\"veganMenu\"]}','veganmenu','2014-10-05 18:24:23',584,'2014-10-05 18:24:37',584,1,0,1,'2014-10-05 18:24:23','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','{}');
INSERT INTO `mp75b_quickcontent_lists` VALUES (10,'pioneerMenu','pioneerMenu','<ul><li><strong>形象特色</strong></li><li><strong>教學課程</strong></li><li><strong>師資團隊</strong></li><li><strong>加盟規劃培訓</strong></li></ul>',1,'list','{\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_category_heading_title\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"show_pagination_limit\":\"\",\"filter_field\":\"\",\"show_headings\":\"\",\"list_show_date\":\"\",\"date_format\":\"\",\"list_show_hits\":\"\",\"list_show_author\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"display_num\":\"10\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}','{\"layout_type\":\"blog\",\"show_category_heading_title_text\":\"\",\"show_category_title\":\"\",\"show_description\":\"\",\"show_description_image\":\"\",\"maxLevel\":\"\",\"show_empty_categories\":\"\",\"show_no_articles\":\"\",\"show_subcat_desc\":\"\",\"show_cat_num_articles\":\"\",\"show_cat_tags\":\"\",\"page_subheading\":\"\",\"num_leading_articles\":\"\",\"num_intro_articles\":\"\",\"num_columns\":\"\",\"num_links\":\"\",\"multi_column_order\":\"\",\"show_subcategory_content\":\"\",\"orderby_pri\":\"\",\"orderby_sec\":\"\",\"order_date\":\"\",\"show_pagination\":\"\",\"show_pagination_results\":\"\",\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_readmore\":\"\",\"show_readmore_title\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_noauth\":\"\",\"show_feed_link\":\"\",\"feed_summary\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}','{\"show_title\":\"\",\"link_titles\":\"\",\"show_intro\":\"\",\"info_block_position\":\"\",\"show_category\":\"\",\"link_category\":\"\",\"show_parent_category\":\"\",\"link_parent_category\":\"\",\"show_author\":\"\",\"link_author\":\"\",\"show_create_date\":\"\",\"show_modify_date\":\"\",\"show_publish_date\":\"\",\"show_item_navigation\":\"\",\"show_vote\":\"\",\"show_icons\":\"\",\"show_print_icon\":\"\",\"show_email_icon\":\"\",\"show_hits\":\"\",\"show_tags\":\"\",\"show_noauth\":\"\",\"urls_position\":\"\",\"menu-anchor_title\":\"\",\"menu-anchor_css\":\"\",\"menu_image\":\"\",\"menu_text\":\"1\",\"page_title\":\"\",\"show_page_heading\":\"0\",\"page_heading\":\"\",\"pageclass_sfx\":\"\",\"menu-meta_description\":\"\",\"menu-meta_keywords\":\"\",\"robots\":\"\",\"secure\":\"0\"}',1,'{\"categories\":[],\"articles\":[24,25,26,27],\"menus\":[160,161,162,163],\"menutype\":[\"pioneerMenu\"]}','pioneermenu','2014-10-07 04:02:40',584,'2014-10-07 04:04:45',584,2,0,1,'2014-10-07 04:02:40','0000-00-00 00:00:00',0,'0000-00-00 00:00:00','{}');
UNLOCK TABLES;

-- Table structure for table `mp75b_redirect_links`

DROP TABLE IF EXISTS `mp75b_redirect_links`;
CREATE TABLE `mp75b_redirect_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `old_url` varchar(255) NOT NULL,
  `new_url` varchar(255) NOT NULL,
  `referer` varchar(150) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(4) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_link_old` (`old_url`),
  KEY `idx_link_modifed` (`modified_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_redirect_links`

LOCK TABLES `mp75b_redirect_links` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_component_type_fields`

DROP TABLE IF EXISTS `mp75b_rsform_component_type_fields`;
CREATE TABLE `mp75b_rsform_component_type_fields` (
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_component_type_fields`

LOCK TABLES `mp75b_rsform_component_type_fields` WRITE;
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'SIZE','textbox',20,4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'MAXSIZE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'ADDITIONALATTRIBUTES','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'DEFAULTVALUE','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'DESCRIPTION','textarea','',11);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'COMPONENTTYPE','hidden',1,15);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (1,'VALIDATIONEXTRA','textbox','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'COLS','textbox',50,4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'ROWS','textbox',5,5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'ADDITIONALATTRIBUTES','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'DEFAULTVALUE','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'DESCRIPTION','textarea','',10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'COMPONENTTYPE','hidden',2,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'WYSIWYG','select','NO\r\nYES',11);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (2,'VALIDATIONEXTRA','textbox','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'SIZE','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'MULTIPLE','select','NO\r\nYES',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'ITEMS','textarea','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'REQUIRED','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'DESCRIPTION','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'COMPONENTTYPE','hidden',3,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (3,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'ITEMS','textarea','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'FLOW','select','HORIZONTAL\r\nVERTICAL',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'REQUIRED','select','NO\r\nYES',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'DESCRIPTION','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'COMPONENTTYPE','hidden',4,7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (4,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'ITEMS','textarea','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'FLOW','select','HORIZONTAL\r\nVERTICAL',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'REQUIRED','select','NO\r\nYES',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'DESCRIPTION','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'COMPONENTTYPE','hidden',5,7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (5,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'DATEFORMAT','textbox','DDMMYYYY',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'CALENDARLAYOUT','select','FLAT\r\nPOPUP',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'DESCRIPTION','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'COMPONENTTYPE','hidden',6,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'READONLY','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'POPUPLABEL','textbox','...',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'MINDATE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'MAXDATE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (6,'DEFAULTVALUE','textarea','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'LABEL','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'RESET','select','NO\r\nYES',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'RESETLABEL','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'ADDITIONALATTRIBUTES','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'DESCRIPTION','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'COMPONENTTYPE','hidden',7,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (7,'BUTTONTYPE','select','TYPEINPUT\nTYPEBUTTON',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'LENGTH','textbox',4,3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'BACKGROUNDCOLOR','textbox','#FFFFFF',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'TEXTCOLOR','textbox','#000000',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'TYPE','select','ALPHA\r\nNUMERIC\r\nALPHANUMERIC',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'ADDITIONALATTRIBUTES','textarea','style=\"text-align:center;width:75px;\"',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'DESCRIPTION','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'COMPONENTTYPE','hidden',8,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'FLOW','select','VERTICAL\r\nHORIZONTAL',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'SHOWREFRESH','select','NO\r\nYES',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'REFRESHTEXT','textbox','REFRESH',11);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'SIZE','textbox',15,12);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (8,'IMAGETYPE','select','FREETYPE\r\nNOFREETYPE\r\nINVISIBLE',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'FILESIZE','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'REQUIRED','select','NO\r\nYES',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'ACCEPTEDFILES','textarea','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'DESTINATION','textbox','//<code>\r\nreturn JPATH_SITE.\'/components/com_rsform/uploads/\';\r\n//</code>',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'DESCRIPTION','textarea','',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'COMPONENTTYPE','hidden',9,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'PREFIX','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (9,'EMAILATTACH','emailattach','',102);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (10,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (10,'TEXT','textarea','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (10,'COMPONENTTYPE','hidden',10,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'DEFAULTVALUE','textarea','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'ADDITIONALATTRIBUTES','textarea','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (11,'COMPONENTTYPE','hidden',11,9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'COMPONENTTYPE','hidden',12,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'ADDITIONALATTRIBUTES','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'RESETLABEL','textbox','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'RESET','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'IMAGERESET','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'IMAGEBUTTON','textbox','',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'LABEL','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (12,'DESCRIPTION','textarea','',10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'CAPTION','textbox','',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'LABEL','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'RESET','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'RESETLABEL','textbox','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'ADDITIONALATTRIBUTES','textarea','',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'COMPONENTTYPE','hidden',13,10);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'BUTTONTYPE','select','TYPEINPUT\nTYPEBUTTON',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'PREVBUTTON','textbox','//<code>\r\nreturn JText::_(\'PREV\');\r\n//</code>',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'DISPLAYPROGRESS','select','NO\r\nYES',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (13,'DISPLAYPROGRESSMSG','textarea','<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>',8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'CAPTION','textbox','',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'REQUIRED','select','NO\r\nYES',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'SIZE','textbox','',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'MAXSIZE','textbox','',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'DEFAULTVALUE','textarea','',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'COMPONENTTYPE','hidden',14,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'DESCRIPTION','textarea','',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'VALIDATIONMESSAGE','textarea','INVALIDINPUT',100);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (14,'VALIDATIONRULE','select','//<code>\r\nreturn RSgetValidationRules();\r\n//</code>',9);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'LENGTH','textbox',8,4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'ADDITIONALATTRIBUTES','textarea','',7);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'COMPONENTTYPE','hidden',15,8);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (15,'CHARACTERS','select','ALPHANUMERIC\r\nALPHA\r\nNUMERIC',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'NAME','textbox','',1);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'COMPONENTTYPE','hidden',41,5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'NEXTBUTTON','textbox','//<code>\r\nreturn JText::_(\'NEXT\');\r\n//</code>',2);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'PREVBUTTON','textbox','//<code>\r\nreturn JText::_(\'PREV\');\r\n//</code>',3);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'ADDITIONALATTRIBUTES','textarea','',4);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'VALIDATENEXTPAGE','select','NO\r\nYES',5);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'DISPLAYPROGRESS','select','NO\r\nYES',6);
INSERT INTO `mp75b_rsform_component_type_fields` VALUES (41,'DISPLAYPROGRESSMSG','textarea','<div>\r\n <p><em>Page <strong>{page}</strong> of {total}</em></p>\r\n <div class=\"rsformProgressContainer\">\r\n  <div class=\"rsformProgressBar\" style=\"width: {percent}%;\"></div>\r\n </div>\r\n</div>',7);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_component_types`

DROP TABLE IF EXISTS `mp75b_rsform_component_types`;
CREATE TABLE `mp75b_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_component_types`

LOCK TABLES `mp75b_rsform_component_types` WRITE;
INSERT INTO `mp75b_rsform_component_types` VALUES (1,'textBox');
INSERT INTO `mp75b_rsform_component_types` VALUES (2,'textArea');
INSERT INTO `mp75b_rsform_component_types` VALUES (3,'selectList');
INSERT INTO `mp75b_rsform_component_types` VALUES (4,'checkboxGroup');
INSERT INTO `mp75b_rsform_component_types` VALUES (5,'radioGroup');
INSERT INTO `mp75b_rsform_component_types` VALUES (6,'calendar');
INSERT INTO `mp75b_rsform_component_types` VALUES (7,'button');
INSERT INTO `mp75b_rsform_component_types` VALUES (8,'captcha');
INSERT INTO `mp75b_rsform_component_types` VALUES (9,'fileUpload');
INSERT INTO `mp75b_rsform_component_types` VALUES (10,'freeText');
INSERT INTO `mp75b_rsform_component_types` VALUES (11,'hidden');
INSERT INTO `mp75b_rsform_component_types` VALUES (12,'imageButton');
INSERT INTO `mp75b_rsform_component_types` VALUES (13,'submitButton');
INSERT INTO `mp75b_rsform_component_types` VALUES (14,'password');
INSERT INTO `mp75b_rsform_component_types` VALUES (15,'ticket');
INSERT INTO `mp75b_rsform_component_types` VALUES (41,'pageBreak');
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_components`

DROP TABLE IF EXISTS `mp75b_rsform_components`;
CREATE TABLE `mp75b_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_components`

LOCK TABLES `mp75b_rsform_components` WRITE;
INSERT INTO `mp75b_rsform_components` VALUES (1,1,1,2,1);
INSERT INTO `mp75b_rsform_components` VALUES (2,1,10,1,1);
INSERT INTO `mp75b_rsform_components` VALUES (3,1,1,3,1);
INSERT INTO `mp75b_rsform_components` VALUES (4,1,3,4,1);
INSERT INTO `mp75b_rsform_components` VALUES (5,1,5,5,1);
INSERT INTO `mp75b_rsform_components` VALUES (6,1,4,6,1);
INSERT INTO `mp75b_rsform_components` VALUES (7,1,6,7,1);
INSERT INTO `mp75b_rsform_components` VALUES (8,1,13,8,1);
INSERT INTO `mp75b_rsform_components` VALUES (9,1,10,9,1);
INSERT INTO `mp75b_rsform_components` VALUES (10,2,1,2,1);
INSERT INTO `mp75b_rsform_components` VALUES (11,2,10,1,1);
INSERT INTO `mp75b_rsform_components` VALUES (12,2,1,3,1);
INSERT INTO `mp75b_rsform_components` VALUES (13,2,3,6,1);
INSERT INTO `mp75b_rsform_components` VALUES (14,2,5,7,1);
INSERT INTO `mp75b_rsform_components` VALUES (15,2,4,10,1);
INSERT INTO `mp75b_rsform_components` VALUES (16,2,6,11,1);
INSERT INTO `mp75b_rsform_components` VALUES (17,2,13,12,1);
INSERT INTO `mp75b_rsform_components` VALUES (18,2,10,13,1);
INSERT INTO `mp75b_rsform_components` VALUES (19,2,41,4,1);
INSERT INTO `mp75b_rsform_components` VALUES (20,2,41,8,1);
INSERT INTO `mp75b_rsform_components` VALUES (21,2,10,5,1);
INSERT INTO `mp75b_rsform_components` VALUES (22,2,10,9,1);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_condition_details`

DROP TABLE IF EXISTS `mp75b_rsform_condition_details`;
CREATE TABLE `mp75b_rsform_condition_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `condition_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `operator` varchar(16) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `condition_id` (`condition_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_condition_details`

LOCK TABLES `mp75b_rsform_condition_details` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_conditions`

DROP TABLE IF EXISTS `mp75b_rsform_conditions`;
CREATE TABLE `mp75b_rsform_conditions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `action` varchar(16) NOT NULL,
  `block` tinyint(1) NOT NULL,
  `component_id` int(11) NOT NULL,
  `condition` varchar(16) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `component_id` (`component_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_conditions`

LOCK TABLES `mp75b_rsform_conditions` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_config`

DROP TABLE IF EXISTS `mp75b_rsform_config`;
CREATE TABLE `mp75b_rsform_config` (
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`SettingName`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_config`

LOCK TABLES `mp75b_rsform_config` WRITE;
INSERT INTO `mp75b_rsform_config` VALUES ('global.register.code','');
INSERT INTO `mp75b_rsform_config` VALUES ('global.debug.mode',0);
INSERT INTO `mp75b_rsform_config` VALUES ('global.iis',0);
INSERT INTO `mp75b_rsform_config` VALUES ('global.editor',1);
INSERT INTO `mp75b_rsform_config` VALUES ('global.codemirror',0);
INSERT INTO `mp75b_rsform_config` VALUES ('auto_responsive',1);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_emails`

DROP TABLE IF EXISTS `mp75b_rsform_emails`;
CREATE TABLE `mp75b_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_emails`

LOCK TABLES `mp75b_rsform_emails` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_forms`

DROP TABLE IF EXISTS `mp75b_rsform_forms`;
CREATE TABLE `mp75b_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_forms`

LOCK TABLES `mp75b_rsform_forms` WRITE;
INSERT INTO `mp75b_rsform_forms` VALUES (1,'RSformPro example','<h2>{global:formtitle}</h2>\r\n{error}\r\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\r\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_1_page_0\">\r\n	<div class=\"rsform-block rsform-block-header\">\r\n		<div class=\"formControlLabel\">{Header:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Header:body}<span class=\"formValidation\">{Header:validation}</span></div>\r\n		<p class=\"formDescription\">{Header:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-fullname\">\r\n		<div class=\"formControlLabel\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{FullName:body}<span class=\"formValidation\">{FullName:validation}</span></div>\r\n		<p class=\"formDescription\">{FullName:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-email\">\r\n		<div class=\"formControlLabel\">{Email:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Email:body}<span class=\"formValidation\">{Email:validation}</span></div>\r\n		<p class=\"formDescription\">{Email:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-companysize\">\r\n		<div class=\"formControlLabel\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{CompanySize:body}<span class=\"formValidation\">{CompanySize:validation}</span></div>\r\n		<p class=\"formDescription\">{CompanySize:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-position\">\r\n		<div class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Position:body}<span class=\"formValidation\">{Position:validation}</span></div>\r\n		<p class=\"formDescription\">{Position:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactby\">\r\n		<div class=\"formControlLabel\">{ContactBy:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactBy:body}<span class=\"formValidation\">{ContactBy:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactBy:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-contactwhen\">\r\n		<div class=\"formControlLabel\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{ContactWhen:body}<span class=\"formValidation\">{ContactWhen:validation}</span></div>\r\n		<p class=\"formDescription\">{ContactWhen:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-submit\">\r\n		<div class=\"formControlLabel\">{Submit:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Submit:body}<span class=\"formValidation\">{Submit:validation}</span></div>\r\n		<p class=\"formDescription\">{Submit:description}</p>\r\n		</div>\r\n	</div>\r\n	<div class=\"rsform-block rsform-block-footer\">\r\n		<div class=\"formControlLabel\">{Footer:caption}</div>\r\n		<div class=\"formControls\">\r\n		<div class=\"formBody\">{Footer:body}<span class=\"formValidation\">{Footer:validation}</span></div>\r\n		<p class=\"formDescription\">{Footer:description}</p>\r\n		</div>\r\n	</div>\r\n</fieldset>\r\n','responsive',1,'','','RSForm! Pro example',1,'','',1,'<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>',1,'<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>','{Email:value}','','','your@email.com','','Your Company','Contact confirmation',1,0,'','<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>','youradminemail@email.com','','','{Email:value}','','Your Company','Contact',1,'','','','','','',0,'','','(*)','',', ',1,'','userForm','','','',0,'',1,0,0);
INSERT INTO `mp75b_rsform_forms` VALUES (2,'RSformPro Multipage example','<h2>{global:formtitle}</h2>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_0\">\n	<div class=\"rsform-block rsform-block-header\">\n		<div class=\"formControlLabel\">{Header:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Header:body}<span class=\"formValidation\">{Header:validation}</span></div>\n		<p class=\"formDescription\">{Header:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-fullname\">\n		<div class=\"formControlLabel\">{FullName:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{FullName:body}<span class=\"formValidation\">{FullName:validation}</span></div>\n		<p class=\"formDescription\">{FullName:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-email\">\n		<div class=\"formControlLabel\">{Email:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Email:body}<span class=\"formValidation\">{Email:validation}</span></div>\n		<p class=\"formDescription\">{Email:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-page1\">\n		<div class=\"formControlLabel\">&nbsp;</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Page1:body}</div>\n		</div>\n	</div>\n	</fieldset>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_1\">\n	<div class=\"rsform-block rsform-block-companyheader\">\n		<div class=\"formControlLabel\">{CompanyHeader:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{CompanyHeader:body}<span class=\"formValidation\">{CompanyHeader:validation}</span></div>\n		<p class=\"formDescription\">{CompanyHeader:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-companysize\">\n		<div class=\"formControlLabel\">{CompanySize:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{CompanySize:body}<span class=\"formValidation\">{CompanySize:validation}</span></div>\n		<p class=\"formDescription\">{CompanySize:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-position\">\n		<div class=\"formControlLabel\">{Position:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Position:body}<span class=\"formValidation\">{Position:validation}</span></div>\n		<p class=\"formDescription\">{Position:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-page2\">\n		<div class=\"formControlLabel\">&nbsp;</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Page2:body}</div>\n		</div>\n	</div>\n	</fieldset>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<fieldset class=\"formHorizontal formContainer\" id=\"rsform_2_page_2\">\n	<div class=\"rsform-block rsform-block-contactheader\">\n		<div class=\"formControlLabel\">{ContactHeader:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{ContactHeader:body}<span class=\"formValidation\">{ContactHeader:validation}</span></div>\n		<p class=\"formDescription\">{ContactHeader:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-contactby\">\n		<div class=\"formControlLabel\">{ContactBy:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{ContactBy:body}<span class=\"formValidation\">{ContactBy:validation}</span></div>\n		<p class=\"formDescription\">{ContactBy:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-contactwhen\">\n		<div class=\"formControlLabel\">{ContactWhen:caption}<strong class=\"formRequired\">(*)</strong></div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{ContactWhen:body}<span class=\"formValidation\">{ContactWhen:validation}</span></div>\n		<p class=\"formDescription\">{ContactWhen:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-submit\">\n		<div class=\"formControlLabel\">{Submit:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Submit:body}<span class=\"formValidation\">{Submit:validation}</span></div>\n		<p class=\"formDescription\">{Submit:description}</p>\n		</div>\n	</div>\n	<div class=\"rsform-block rsform-block-footer\">\n		<div class=\"formControlLabel\">{Footer:caption}</div>\n		<div class=\"formControls\">\n		<div class=\"formBody\">{Footer:body}<span class=\"formValidation\">{Footer:validation}</span></div>\n		<p class=\"formDescription\">{Footer:description}</p>\n		</div>\n	</div>\n</fieldset>\n','responsive',1,'','','RSForm! Pro Multipage example',1,'','',0,'<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>',1,'<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>','{Email:value}','','','your@email.com','','Your Company','Contact confirmation',1,0,'','<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>','youradminemail@email.com','','','{Email:value}','','Your Company','Contact',1,'','','','','','',0,'This is the meta description of your form. You can use it for SEO purposes.','rsform, contact, form, joomla','(*)','<p class=\"formRed\">Please complete all required fields!</p>',', ',1,'','userForm','','','',0,'',1,0,0);
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_mappings`

DROP TABLE IF EXISTS `mp75b_rsform_mappings`;
CREATE TABLE `mp75b_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_mappings`

LOCK TABLES `mp75b_rsform_mappings` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_posts`

DROP TABLE IF EXISTS `mp75b_rsform_posts`;
CREATE TABLE `mp75b_rsform_posts` (
  `form_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `silent` tinyint(1) NOT NULL,
  `url` text NOT NULL,
  PRIMARY KEY (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_posts`

LOCK TABLES `mp75b_rsform_posts` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_properties`

DROP TABLE IF EXISTS `mp75b_rsform_properties`;
CREATE TABLE `mp75b_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM AUTO_INCREMENT=145 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_properties`

LOCK TABLES `mp75b_rsform_properties` WRITE;
INSERT INTO `mp75b_rsform_properties` VALUES (1,1,'NAME','FullName');
INSERT INTO `mp75b_rsform_properties` VALUES (2,1,'CAPTION','Full Name');
INSERT INTO `mp75b_rsform_properties` VALUES (3,1,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (4,1,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (5,1,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (6,1,'VALIDATIONRULE','none');
INSERT INTO `mp75b_rsform_properties` VALUES (7,1,'VALIDATIONMESSAGE','Please type your full name.');
INSERT INTO `mp75b_rsform_properties` VALUES (8,1,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (9,1,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (10,1,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (11,2,'NAME','Header');
INSERT INTO `mp75b_rsform_properties` VALUES (12,2,'TEXT','<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `mp75b_rsform_properties` VALUES (13,3,'NAME','Email');
INSERT INTO `mp75b_rsform_properties` VALUES (14,3,'CAPTION','E-mail');
INSERT INTO `mp75b_rsform_properties` VALUES (15,3,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (16,3,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (17,3,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (18,3,'VALIDATIONRULE','email');
INSERT INTO `mp75b_rsform_properties` VALUES (19,3,'VALIDATIONMESSAGE','Invalid email address.');
INSERT INTO `mp75b_rsform_properties` VALUES (20,3,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (21,3,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (22,3,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (23,4,'NAME','CompanySize');
INSERT INTO `mp75b_rsform_properties` VALUES (24,4,'CAPTION','Number of Employees');
INSERT INTO `mp75b_rsform_properties` VALUES (25,4,'SIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (26,4,'MULTIPLE','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (27,4,'ITEMS','|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `mp75b_rsform_properties` VALUES (28,4,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (29,4,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (30,4,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (31,4,'VALIDATIONMESSAGE','Please tell us how big is your company.');
INSERT INTO `mp75b_rsform_properties` VALUES (32,5,'NAME','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (33,5,'CAPTION','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (34,5,'ITEMS','CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `mp75b_rsform_properties` VALUES (35,5,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (36,5,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (37,5,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (38,5,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (39,5,'VALIDATIONMESSAGE','Please specify your position in the company');
INSERT INTO `mp75b_rsform_properties` VALUES (40,6,'NAME','ContactBy');
INSERT INTO `mp75b_rsform_properties` VALUES (41,6,'CAPTION','How should we contact you?');
INSERT INTO `mp75b_rsform_properties` VALUES (42,6,'ITEMS','E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `mp75b_rsform_properties` VALUES (43,6,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (44,6,'REQUIRED','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (45,6,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (46,6,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (47,6,'VALIDATIONMESSAGE','');
INSERT INTO `mp75b_rsform_properties` VALUES (48,7,'NAME','ContactWhen');
INSERT INTO `mp75b_rsform_properties` VALUES (49,7,'CAPTION','When would you like to be contacted?');
INSERT INTO `mp75b_rsform_properties` VALUES (50,7,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (51,7,'DATEFORMAT','dd.mm.yyyy');
INSERT INTO `mp75b_rsform_properties` VALUES (52,7,'CALENDARLAYOUT','POPUP');
INSERT INTO `mp75b_rsform_properties` VALUES (53,7,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (54,7,'READONLY','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (55,7,'POPUPLABEL','...');
INSERT INTO `mp75b_rsform_properties` VALUES (56,7,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (57,7,'VALIDATIONMESSAGE','Please select a date when we should contact you.');
INSERT INTO `mp75b_rsform_properties` VALUES (58,8,'NAME','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (59,8,'LABEL','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (60,8,'CAPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (61,8,'RESET','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (62,8,'RESETLABEL','Reset');
INSERT INTO `mp75b_rsform_properties` VALUES (63,8,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (64,9,'NAME','Footer');
INSERT INTO `mp75b_rsform_properties` VALUES (65,9,'TEXT','This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"http://www.rsjoomla.com/\" target=\"_blank\">http://www.rsjoomla.com/</a>');
INSERT INTO `mp75b_rsform_properties` VALUES (66,10,'NAME','FullName');
INSERT INTO `mp75b_rsform_properties` VALUES (67,10,'CAPTION','Full Name');
INSERT INTO `mp75b_rsform_properties` VALUES (68,10,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (69,10,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (70,10,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (71,10,'VALIDATIONRULE','none');
INSERT INTO `mp75b_rsform_properties` VALUES (72,10,'VALIDATIONMESSAGE','Please type your full name.');
INSERT INTO `mp75b_rsform_properties` VALUES (73,10,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (74,10,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (75,10,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (76,10,'VALIDATIONEXTRA','');
INSERT INTO `mp75b_rsform_properties` VALUES (77,11,'NAME','Header');
INSERT INTO `mp75b_rsform_properties` VALUES (78,11,'TEXT','<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `mp75b_rsform_properties` VALUES (79,12,'NAME','Email');
INSERT INTO `mp75b_rsform_properties` VALUES (80,12,'CAPTION','E-mail');
INSERT INTO `mp75b_rsform_properties` VALUES (81,12,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (82,12,'SIZE',20);
INSERT INTO `mp75b_rsform_properties` VALUES (83,12,'MAXSIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (84,12,'VALIDATIONRULE','email');
INSERT INTO `mp75b_rsform_properties` VALUES (85,12,'VALIDATIONMESSAGE','Invalid email address.');
INSERT INTO `mp75b_rsform_properties` VALUES (86,12,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (87,12,'DEFAULTVALUE','');
INSERT INTO `mp75b_rsform_properties` VALUES (88,12,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (89,12,'VALIDATIONEXTRA','');
INSERT INTO `mp75b_rsform_properties` VALUES (90,13,'NAME','CompanySize');
INSERT INTO `mp75b_rsform_properties` VALUES (91,13,'CAPTION','Number of Employees');
INSERT INTO `mp75b_rsform_properties` VALUES (92,13,'SIZE','');
INSERT INTO `mp75b_rsform_properties` VALUES (93,13,'MULTIPLE','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (94,13,'ITEMS','|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `mp75b_rsform_properties` VALUES (95,13,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (96,13,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (97,13,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (98,13,'VALIDATIONMESSAGE','Please tell us how big is your company.');
INSERT INTO `mp75b_rsform_properties` VALUES (99,14,'NAME','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (100,14,'CAPTION','Position');
INSERT INTO `mp75b_rsform_properties` VALUES (101,14,'ITEMS','CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `mp75b_rsform_properties` VALUES (102,14,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (103,14,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (104,14,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (105,14,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (106,14,'VALIDATIONMESSAGE','Please specify your position in the company');
INSERT INTO `mp75b_rsform_properties` VALUES (107,15,'NAME','ContactBy');
INSERT INTO `mp75b_rsform_properties` VALUES (108,15,'CAPTION','How should we contact you?');
INSERT INTO `mp75b_rsform_properties` VALUES (109,15,'ITEMS','E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `mp75b_rsform_properties` VALUES (110,15,'FLOW','HORIZONTAL');
INSERT INTO `mp75b_rsform_properties` VALUES (111,15,'REQUIRED','NO');
INSERT INTO `mp75b_rsform_properties` VALUES (112,15,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (113,15,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (114,15,'VALIDATIONMESSAGE','');
INSERT INTO `mp75b_rsform_properties` VALUES (115,16,'NAME','ContactWhen');
INSERT INTO `mp75b_rsform_properties` VALUES (116,16,'CAPTION','When would you like to be contacted?');
INSERT INTO `mp75b_rsform_properties` VALUES (117,16,'REQUIRED','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (118,16,'DATEFORMAT','dd.mm.yyyy');
INSERT INTO `mp75b_rsform_properties` VALUES (119,16,'CALENDARLAYOUT','POPUP');
INSERT INTO `mp75b_rsform_properties` VALUES (120,16,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (121,16,'READONLY','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (122,16,'POPUPLABEL','...');
INSERT INTO `mp75b_rsform_properties` VALUES (123,16,'DESCRIPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (124,16,'VALIDATIONMESSAGE','Please select a date when we should contact you.');
INSERT INTO `mp75b_rsform_properties` VALUES (125,17,'NAME','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (126,17,'LABEL','Submit');
INSERT INTO `mp75b_rsform_properties` VALUES (127,17,'CAPTION','');
INSERT INTO `mp75b_rsform_properties` VALUES (128,17,'RESET','YES');
INSERT INTO `mp75b_rsform_properties` VALUES (129,17,'RESETLABEL','Reset');
INSERT INTO `mp75b_rsform_properties` VALUES (130,17,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (131,18,'NAME','Footer');
INSERT INTO `mp75b_rsform_properties` VALUES (132,18,'TEXT','This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href=\"http://www.rsjoomla.com/\" target=\"_blank\">http://www.rsjoomla.com/</a>');
INSERT INTO `mp75b_rsform_properties` VALUES (133,19,'NAME','Page1');
INSERT INTO `mp75b_rsform_properties` VALUES (134,19,'NEXTBUTTON','Next >');
INSERT INTO `mp75b_rsform_properties` VALUES (135,19,'PREVBUTTON','Prev');
INSERT INTO `mp75b_rsform_properties` VALUES (136,19,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (137,20,'NAME','Page2');
INSERT INTO `mp75b_rsform_properties` VALUES (138,20,'NEXTBUTTON','Next >');
INSERT INTO `mp75b_rsform_properties` VALUES (139,20,'PREVBUTTON','Prev');
INSERT INTO `mp75b_rsform_properties` VALUES (140,20,'ADDITIONALATTRIBUTES','');
INSERT INTO `mp75b_rsform_properties` VALUES (141,21,'NAME','CompanyHeader');
INSERT INTO `mp75b_rsform_properties` VALUES (142,21,'TEXT','Please tell us a little about your company.');
INSERT INTO `mp75b_rsform_properties` VALUES (143,22,'NAME','ContactHeader');
INSERT INTO `mp75b_rsform_properties` VALUES (144,22,'TEXT','Please let us know how and when to contact you.');
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_submission_columns`

DROP TABLE IF EXISTS `mp75b_rsform_submission_columns`;
CREATE TABLE `mp75b_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_submission_columns`

LOCK TABLES `mp75b_rsform_submission_columns` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_submission_values`

DROP TABLE IF EXISTS `mp75b_rsform_submission_values`;
CREATE TABLE `mp75b_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_submission_values`

LOCK TABLES `mp75b_rsform_submission_values` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_submissions`

DROP TABLE IF EXISTS `mp75b_rsform_submissions`;
CREATE TABLE `mp75b_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_submissions`

LOCK TABLES `mp75b_rsform_submissions` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_rsform_translations`

DROP TABLE IF EXISTS `mp75b_rsform_translations`;
CREATE TABLE `mp75b_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_rsform_translations`

LOCK TABLES `mp75b_rsform_translations` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_schemas`

DROP TABLE IF EXISTS `mp75b_schemas`;
CREATE TABLE `mp75b_schemas` (
  `extension_id` int(11) NOT NULL,
  `version_id` varchar(20) NOT NULL,
  PRIMARY KEY (`extension_id`,`version_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_schemas`

LOCK TABLES `mp75b_schemas` WRITE;
INSERT INTO `mp75b_schemas` VALUES (700,'3.3.0-2014-04-02');
INSERT INTO `mp75b_schemas` VALUES (10003,'3.4');
UNLOCK TABLES;

-- Table structure for table `mp75b_session`

DROP TABLE IF EXISTS `mp75b_session`;
CREATE TABLE `mp75b_session` (
  `session_id` varchar(200) NOT NULL DEFAULT '',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `guest` tinyint(4) unsigned DEFAULT '1',
  `time` varchar(14) DEFAULT '',
  `data` mediumtext,
  `userid` int(11) DEFAULT '0',
  `username` varchar(150) DEFAULT '',
  PRIMARY KEY (`session_id`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_session`

LOCK TABLES `mp75b_session` WRITE;
INSERT INTO `mp75b_session` VALUES ('9cb29jjq9p3oa9n72ulpqcro00',0,1,1436160839,'__default|a:8:{s:15:\"session.counter\";i:5;s:19:\"session.timer.start\";i:1436160798;s:18:\"session.timer.last\";i:1436160837;s:17:\"session.timer.now\";i:1436160839;s:22:\"session.client.browser\";s:102:\"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36\";s:8:\"registry\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:4:\"user\";O:5:\"JUser\":25:{s:9:\"\\0\\0\\0isRoot\";N;s:2:\"id\";i:0;s:4:\"name\";N;s:8:\"username\";N;s:5:\"email\";N;s:8:\"password\";N;s:14:\"password_clear\";s:0:\"\";s:5:\"block\";N;s:9:\"sendEmail\";i:0;s:12:\"registerDate\";N;s:13:\"lastvisitDate\";N;s:10:\"activation\";N;s:6:\"params\";N;s:6:\"groups\";a:1:{i:0;s:1:\"9\";}s:5:\"guest\";i:1;s:13:\"lastResetTime\";N;s:10:\"resetCount\";N;s:12:\"requireReset\";N;s:10:\"\\0\\0\\0_params\";O:24:\"Joomla\\Registry\\Registry\":1:{s:7:\"\\0\\0\\0data\";O:8:\"stdClass\":0:{}}s:14:\"\\0\\0\\0_authGroups\";N;s:14:\"\\0\\0\\0_authLevels\";a:3:{i:0;i:1;i:1;i:1;i:2;i:5;}s:15:\"\\0\\0\\0_authActions\";N;s:12:\"\\0\\0\\0_errorMsg\";N;s:10:\"\\0\\0\\0_errors\";a:0:{}s:3:\"aid\";i:0;}s:13:\"session.token\";s:32:\"07dafb8ba06ab31e1cd449c7072bb63d\";}',0,'');
UNLOCK TABLES;

-- Table structure for table `mp75b_tags`

DROP TABLE IF EXISTS `mp75b_tags`;
CREATE TABLE `mp75b_tags` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `level` int(10) unsigned NOT NULL DEFAULT '0',
  `path` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `note` varchar(255) NOT NULL DEFAULT '',
  `description` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `metadesc` varchar(1024) NOT NULL COMMENT 'The meta description for the page.',
  `metakey` varchar(1024) NOT NULL COMMENT 'The meta keywords for the page.',
  `metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `hits` int(10) unsigned NOT NULL DEFAULT '0',
  `language` char(7) NOT NULL,
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `tag_idx` (`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_path` (`path`),
  KEY `idx_left_right` (`lft`,`rgt`),
  KEY `idx_alias` (`alias`),
  KEY `idx_language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_tags`

LOCK TABLES `mp75b_tags` WRITE;
INSERT INTO `mp75b_tags` VALUES (1,0,0,1,0,'','ROOT','root','','',1,0,'0000-00-00 00:00:00',1,'','','','',0,'2011-01-01 00:00:01','',0,'0000-00-00 00:00:00','','',0,'*',1,'0000-00-00 00:00:00','0000-00-00 00:00:00');
UNLOCK TABLES;

-- Table structure for table `mp75b_template_styles`

DROP TABLE IF EXISTS `mp75b_template_styles`;
CREATE TABLE `mp75b_template_styles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `template` varchar(50) NOT NULL DEFAULT '',
  `client_id` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `home` char(7) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_template` (`template`),
  KEY `idx_home` (`home`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_template_styles`

LOCK TABLES `mp75b_template_styles` WRITE;
INSERT INTO `mp75b_template_styles` VALUES (4,'beez3',0,0,'Beez3 - Default','{\"wrapperSmall\":\"53\",\"wrapperLarge\":\"72\",\"logo\":\"images\\/joomla_black.gif\",\"sitetitle\":\"Joomla!\",\"sitedescription\":\"Open Source Content Management\",\"navposition\":\"left\",\"templatecolor\":\"personal\",\"html5\":\"0\"}');
INSERT INTO `mp75b_template_styles` VALUES (5,'hathor',1,0,'Hathor - Default','{\"showSiteName\":\"0\",\"colourChoice\":\"\",\"boldText\":\"0\"}');
INSERT INTO `mp75b_template_styles` VALUES (7,'protostar',0,0,'protostar - Default','{\"templateColor\":\"\",\"logoFile\":\"\",\"googleFont\":\"1\",\"googleFontName\":\"Open+Sans\",\"fluidContainer\":\"0\"}');
INSERT INTO `mp75b_template_styles` VALUES (8,'isis',1,1,'isis - Default','{\"templateColor\":\"\",\"logoFile\":\"\"}');
INSERT INTO `mp75b_template_styles` VALUES (9,'purity_iii',0,1,'purity_III','{\"tpl_article_info_datetime_format\":\"d M Y\",\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":\"\",\"link_titles\":\"\",\"theme\":\"coffee\",\"logotype\":\"image\",\"sitename\":\"\\u53f0\\u4e2d\\u4fdd\\u570b\\u83dc\\u5200\\u738b\\u7db2\\u8def\\u7d93\\u92b7\\u5546\",\"slogan\":\"\",\"logoimage\":\"images\\/com_aedes\\/zongknife\\/homelogo.png\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"blog\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":\"\",\"navigation_animation_duration\":\"400\",\"mm_config\":\"\",\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"0\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":\"\",\"snippet_close_head\":\"<style>\\r\\n.djc_qty_input\\r\\n{\\r\\n    padding: 0px !important;\\r\\n}\\r\\n\\r\\n.djc_qty_input, .djc_update_qty_btn\\r\\n{\\r\\n    display: inline !important;\\r\\n}\\r\\n\\r\\n.contact-option\\r\\n{\\r\\n    display: none;\\r\\n}\\r\\n\\r\\n.logo-image > a\\r\\n{\\r\\n    max-width: 280px;\\r\\n    padding: 0 8px;\\r\\n}\\r\\n\\r\\n.logo-image span\\r\\n{\\r\\n    display: inline;\\r\\n}\\r\\n<\\/style>\",\"snippet_open_body\":\"\",\"snippet_close_body\":\"\",\"snippet_debug\":\"0\"}');
INSERT INTO `mp75b_template_styles` VALUES (10,'purity_iii',0,0,'purity_III - vegan','{\"tpl_article_info_datetime_format\":\"d M Y\",\"t3_template\":\"1\",\"devmode\":\"0\",\"themermode\":\"1\",\"legacy_css\":\"0\",\"responsive\":\"1\",\"non_responsive_width\":\"970px\",\"build_rtl\":\"0\",\"t3-assets\":\"t3-assets\",\"t3-rmvlogo\":\"0\",\"minify\":\"0\",\"minify_js\":\"0\",\"minify_js_tool\":\"jsmin\",\"minify_exclude\":null,\"link_titles\":null,\"theme\":\"vegan\",\"logotype\":\"image\",\"sitename\":\"\",\"slogan\":\"\",\"logoimage\":\"images\\/com_aedes\\/hecto\\/logo3.png\",\"enable_logoimage_sm\":\"0\",\"logoimage_sm\":\"\",\"mainlayout\":\"blog\",\"mm_type\":\"mainmenu\",\"navigation_trigger\":\"hover\",\"navigation_type\":\"megamenu\",\"navigation_animation\":null,\"navigation_animation_duration\":\"400\",\"mm_config\":null,\"navigation_collapse_enable\":\"1\",\"addon_offcanvas_enable\":\"0\",\"addon_offcanvas_effect\":\"off-canvas-effect-4\",\"snippet_open_head\":null,\"snippet_close_head\":\"<style>\\r\\n.djc_qty_input\\r\\n{\\r\\n    padding: 0px !important;\\r\\n}\\r\\n\\r\\n.djc_qty_input, .djc_update_qty_btn\\r\\n{\\r\\n    display: inline !important;\\r\\n}\\r\\n\\r\\n.contact-option\\r\\n{\\r\\n    display: none;\\r\\n}\\r\\n\\r\\n.logo-image > a\\r\\n{\\r\\n    max-width: 280px;\\r\\n    padding: 0 8px;\\r\\n}\\r\\n\\r\\n.logo-image span\\r\\n{\\r\\n    display: inline;\\r\\n}\\r\\n<\\/style>\",\"snippet_open_body\":null,\"snippet_close_body\":null,\"snippet_debug\":\"0\",\"theme_extras_com_community\":null,\"theme_extras_com_easyblog\":null,\"theme_extras_com_easydiscuss\":null,\"theme_extras_com_easysocial\":null,\"theme_extras_com_kunena\":null,\"theme_extras_com_mijoshop\":null,\"theme_extras_layout_glossary\":null}');
UNLOCK TABLES;

-- Table structure for table `mp75b_ucm_base`

DROP TABLE IF EXISTS `mp75b_ucm_base`;
CREATE TABLE `mp75b_ucm_base` (
  `ucm_id` int(10) unsigned NOT NULL,
  `ucm_item_id` int(10) NOT NULL,
  `ucm_type_id` int(11) NOT NULL,
  `ucm_language_id` int(11) NOT NULL,
  PRIMARY KEY (`ucm_id`),
  KEY `idx_ucm_item_id` (`ucm_item_id`),
  KEY `idx_ucm_type_id` (`ucm_type_id`),
  KEY `idx_ucm_language_id` (`ucm_language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_ucm_base`

LOCK TABLES `mp75b_ucm_base` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_ucm_content`

DROP TABLE IF EXISTS `mp75b_ucm_content`;
CREATE TABLE `mp75b_ucm_content` (
  `core_content_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `core_type_alias` varchar(255) NOT NULL DEFAULT '' COMMENT 'FK to the content types table',
  `core_title` varchar(255) NOT NULL,
  `core_alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `core_body` mediumtext NOT NULL,
  `core_state` tinyint(1) NOT NULL DEFAULT '0',
  `core_checked_out_time` varchar(255) NOT NULL DEFAULT '',
  `core_checked_out_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_access` int(10) unsigned NOT NULL DEFAULT '0',
  `core_params` text NOT NULL,
  `core_featured` tinyint(4) unsigned NOT NULL DEFAULT '0',
  `core_metadata` varchar(2048) NOT NULL COMMENT 'JSON encoded metadata properties.',
  `core_created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `core_created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `core_created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_modified_user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Most recent user that modified',
  `core_modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `core_language` char(7) NOT NULL,
  `core_publish_up` datetime NOT NULL,
  `core_publish_down` datetime NOT NULL,
  `core_content_item_id` int(10) unsigned DEFAULT NULL COMMENT 'ID from the individual type table',
  `asset_id` int(10) unsigned DEFAULT NULL COMMENT 'FK to the #__assets table.',
  `core_images` text NOT NULL,
  `core_urls` text NOT NULL,
  `core_hits` int(10) unsigned NOT NULL DEFAULT '0',
  `core_version` int(10) unsigned NOT NULL DEFAULT '1',
  `core_ordering` int(11) NOT NULL DEFAULT '0',
  `core_metakey` text NOT NULL,
  `core_metadesc` text NOT NULL,
  `core_catid` int(10) unsigned NOT NULL DEFAULT '0',
  `core_xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `core_type_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`core_content_id`),
  KEY `tag_idx` (`core_state`,`core_access`),
  KEY `idx_access` (`core_access`),
  KEY `idx_alias` (`core_alias`),
  KEY `idx_language` (`core_language`),
  KEY `idx_title` (`core_title`),
  KEY `idx_modified_time` (`core_modified_time`),
  KEY `idx_created_time` (`core_created_time`),
  KEY `idx_content_type` (`core_type_alias`),
  KEY `idx_core_modified_user_id` (`core_modified_user_id`),
  KEY `idx_core_checked_out_user_id` (`core_checked_out_user_id`),
  KEY `idx_core_created_user_id` (`core_created_user_id`),
  KEY `idx_core_type_id` (`core_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Contains core content data in name spaced fields';

-- Dumping data for table `mp75b_ucm_content`

LOCK TABLES `mp75b_ucm_content` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_ucm_history`

DROP TABLE IF EXISTS `mp75b_ucm_history`;
CREATE TABLE `mp75b_ucm_history` (
  `version_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ucm_item_id` int(10) unsigned NOT NULL,
  `ucm_type_id` int(10) unsigned NOT NULL,
  `version_note` varchar(255) NOT NULL DEFAULT '' COMMENT 'Optional version name',
  `save_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `character_count` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Number of characters in this version.',
  `sha1_hash` varchar(50) NOT NULL DEFAULT '' COMMENT 'SHA1 hash of the version_data column.',
  `version_data` mediumtext NOT NULL COMMENT 'json-encoded string of version data',
  `keep_forever` tinyint(4) NOT NULL DEFAULT '0' COMMENT '0=auto delete; 1=keep',
  PRIMARY KEY (`version_id`),
  KEY `idx_ucm_item_id` (`ucm_type_id`,`ucm_item_id`),
  KEY `idx_save_date` (`save_date`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_ucm_history`

LOCK TABLES `mp75b_ucm_history` WRITE;
INSERT INTO `mp75b_ucm_history` VALUES (18,11,6,'','2014-10-07 03:48:36',584,556,'c6684f055f71a1c3dca8a946d3442527f4c42650','{\"id\":11,\"asset_id\":126,\"parent_id\":\"1\",\"lft\":\"19\",\"rgt\":20,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"\\u6cd5\\u5f0f\\u852c\\u98df\",\"alias\":\"vegan\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"584\",\"created_time\":\"2014-10-07 03:48:36\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (19,12,6,'','2014-10-07 03:48:56',584,570,'70247173ad33251749ddcd7bb09a5d94332e8783','{\"id\":12,\"asset_id\":127,\"parent_id\":\"1\",\"lft\":\"21\",\"rgt\":22,\"level\":1,\"path\":null,\"extension\":\"com_content\",\"title\":\"\\u5275\\u696d\\u52a0\\u76df\\u8f14\\u5c0e\",\"alias\":\"pioneer\",\"note\":\"\",\"description\":\"\",\"published\":\"1\",\"checked_out\":null,\"checked_out_time\":null,\"access\":\"1\",\"params\":\"{\\\"category_layout\\\":\\\"\\\",\\\"image\\\":\\\"\\\",\\\"t3_extrafields\\\":\\\"\\\"}\",\"metadesc\":\"\",\"metakey\":\"\",\"metadata\":\"{\\\"author\\\":\\\"\\\",\\\"robots\\\":\\\"\\\"}\",\"created_user_id\":\"584\",\"created_time\":\"2014-10-07 03:48:56\",\"modified_user_id\":null,\"modified_time\":null,\"hits\":\"0\",\"language\":\"*\",\"version\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (25,6,1,'','2014-10-07 03:50:26',584,1684,'a822c9c81dd253ed5546392a28fd656820688676','{\"id\":6,\"asset_id\":128,\"title\":\"\\u5f62\\u8c61\\u7279\\u8272\",\"alias\":\"pioneer-features\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (26,7,1,'','2014-10-07 03:51:09',584,1662,'9e6fd65dd64f196620798568d7038d107260e97f','{\"id\":7,\"asset_id\":129,\"title\":\"\\u6559\\u5b78\\u8ab2\\u7a0b\",\"alias\":\"pioneer-teach\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":0,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (27,8,1,'','2014-10-07 03:51:49',584,1664,'834505ff1d79f02788105445771fd8cfe1af1e48','{\"id\":8,\"asset_id\":130,\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":0,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (28,9,1,'','2014-10-07 03:52:51',584,1678,'6615b4b26a88a6725efc0d94dcec254874fc6058','{\"id\":9,\"asset_id\":131,\"title\":\"\\u52a0\\u76df\\u898f\\u5283\\u57f9\\u8a13\",\"alias\":\"pioneer-affiliate\",\"introtext\":\"\",\"fulltext\":\"\",\"state\":0,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"\",\"modified_by\":null,\"checked_out\":null,\"checked_out_time\":null,\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":1,\"ordering\":null,\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":null,\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (42,19,1,'','2014-10-07 04:04:50',584,7079,'2e0244ee1c5daf5d0b02a3ae5cd5d85e4959499d','{\"id\":19,\"asset_id\":146,\"title\":\"\\u5f62\\u8c61\\u7279\\u8272\",\"alias\":\"image-features\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (43,20,1,'','2014-10-07 04:04:50',584,7089,'2eedcc147c00d71543ac9ae3fca0f130e6749bf3','{\"id\":20,\"asset_id\":147,\"title\":\"\\u74b0\\u5883\\u4ecb\\u7d39\",\"alias\":\"environment-introduction\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (44,21,1,'','2014-10-07 04:04:50',584,7081,'6814fa2fcaebb7aa89051d41cf15e0df6e039044','{\"id\":21,\"asset_id\":148,\"title\":\"\\u9910\\u9ede\\u7ba1\\u7406\",\"alias\":\"meals-management\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (45,22,1,'','2014-10-07 04:04:50',584,7081,'b877947126c7a9171a9e4f20517e2237f60915dc','{\"id\":22,\"asset_id\":149,\"title\":\"\\u71df\\u696d\\u53e5\\u9ede\",\"alias\":\"operating-period\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (46,23,1,'','2014-10-07 04:04:50',584,7075,'883e87b2ac9540c374c633da13ec55befeb7aee1','{\"id\":23,\"asset_id\":150,\"title\":\"\\u4fc3\\u92b7\\u6d3b\\u52d5\",\"alias\":\"promotions\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (47,24,1,'','2014-10-07 04:04:51',584,7081,'972053c46395939dc26e10c2f0ee8dc1f1cfcfd2','{\"id\":24,\"asset_id\":151,\"title\":\"\\u5f62\\u8c61\\u7279\\u8272\",\"alias\":\"image-features-2\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:51\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (48,25,1,'','2014-10-07 04:04:51',584,7081,'62a32f23e4e0a4b45df62883e61ca1c96819ce8d','{\"id\":25,\"asset_id\":152,\"title\":\"\\u6559\\u5b78\\u8ab2\\u7a0b\",\"alias\":\"teaching-courses\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:51\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (49,26,1,'','2014-10-07 04:04:51',584,7078,'cbab861f28e6d9f48e746d072a75dc8d1cafb444','{\"id\":26,\"asset_id\":153,\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"teaching-team\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:51\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (50,27,1,'','2014-10-07 04:04:51',584,7104,'0837ebd2a350a66c2620d9764a87125f35ea2785','{\"id\":27,\"asset_id\":154,\"title\":\"\\u52a0\\u76df\\u898f\\u5283\\u57f9\\u8a13\",\"alias\":\"affiliate-planning-training\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":1,\"catid\":1,\"created\":\"2014-10-07 04:04:51\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"0000-00-00 00:00:00\",\"modified_by\":\"0\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":null,\"urls\":null,\"attribs\":null,\"version\":\"1\",\"ordering\":\"0\",\"metakey\":null,\"metadesc\":null,\"access\":1,\"hits\":\"0\",\"metadata\":null,\"featured\":\"0\",\"language\":\"*\",\"xreference\":null}',0);
INSERT INTO `mp75b_ucm_history` VALUES (51,23,1,'','2014-10-07 04:10:48',584,7072,'6c426cd42640bee97261e920a0cdb40bdd460f31','{\"id\":\"23\",\"asset_id\":\"150\",\"title\":\"\\u4fc3\\u92b7\\u6d3b\\u52d5\",\"alias\":\"promotions\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":\"1\",\"catid\":11,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:10:48\",\"modified_by\":\"584\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"\",\"urls\":\"\",\"attribs\":\"\",\"version\":\"1\",\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (52,22,1,'','2014-10-07 04:10:48',584,7078,'05b81e5ff044f74b6a985964e3de723503fbb5a8','{\"id\":\"22\",\"asset_id\":\"149\",\"title\":\"\\u71df\\u696d\\u53e5\\u9ede\",\"alias\":\"operating-period\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":\"1\",\"catid\":11,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:10:48\",\"modified_by\":\"584\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"\",\"urls\":\"\",\"attribs\":\"\",\"version\":\"1\",\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (53,21,1,'','2014-10-07 04:10:48',584,7078,'0bf68954946db9982539b9dd623148f570ba255f','{\"id\":\"21\",\"asset_id\":\"148\",\"title\":\"\\u9910\\u9ede\\u7ba1\\u7406\",\"alias\":\"meals-management\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":\"1\",\"catid\":11,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:10:48\",\"modified_by\":\"584\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"\",\"urls\":\"\",\"attribs\":\"\",\"version\":\"1\",\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (54,20,1,'','2014-10-07 04:10:48',584,7086,'81b81ff708522e9ed9a5e80c12a250656945a513','{\"id\":\"20\",\"asset_id\":\"147\",\"title\":\"\\u74b0\\u5883\\u4ecb\\u7d39\",\"alias\":\"environment-introduction\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":\"1\",\"catid\":11,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:10:48\",\"modified_by\":\"584\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"\",\"urls\":\"\",\"attribs\":\"\",\"version\":\"1\",\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (55,19,1,'','2014-10-07 04:10:48',584,7076,'31dbc9fe895c0436bfe1d4998c3e63c5ca30d0f8','{\"id\":\"19\",\"asset_id\":\"146\",\"title\":\"\\u5f62\\u8c61\\u7279\\u8272\",\"alias\":\"image-features\",\"introtext\":\"<p><img src=\'http:\\/\\/placehold.it\\/200x300\' alt=\'placeholder\' width=\'200\' height=\'300\' style=\'margin:0 5px 5px 0;\' align=\'left\'>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"fulltext\":\"<p>\\u5f7c\\u5f97\\uff0c\\u8aaa\\u4f60\\u5728\\u5750\\u8eca\\u88cf\\u5e38\\u5e38\\u4f38\\u51fa\\u4f60\\u7684\\u5c0f\\u624b\\u5728\\u8eca\\u6b04\\u4e0a\\u8ddf\\u8457\\u97f3\\u6a02\\u6309\\u62cd\\uff1b\\u4f60\\u7a0d\\u5927\\u4e9b\\u6703\\u5f97\\u6dd8\\u6c23\\u7684\\u6642\\u5019\\uff0c\\u4f55\\u5617\\u6c92\\u6709\\u7fa8\\u6155\\u7684\\u6642\\u5019\\uff0c\\u4f46\\u60f3\\u8d77\\u6211\\u505a\\u7236\\u89aa\\u7684\\u5f80\\u8ff9\\uff0c\\u8207\\u4f60\\u4e00\\u64ae\\u7684\\u907a\\u7070\\uff0c\\u88dd\\u4e00\\u500b\\u8d70\\u6c5f\\u6e56\\u7684\\u6840\\u535c\\u9583\\u4eba\\uff0c\\u56e0\\u6b64\\u6211\\u6709\\u6642\\u60f3\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p><p>\\u4e0a\\u5c71\\u6216\\u662f\\u4e0b\\u5c71\\uff0c\\u90a3\\u5929\\u5728\\u67cf\\u6797\\u7684\\u6703\\u9928\\u88cf\\uff0c\\u53ea\\u8981\\u628a\\u8a71\\u5323\\u958b\\u4e0a\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u4f46\\u4f60\\u61c9\\u5f97\\u5e36\\u66f8\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u4f60\\u4fbf\\u84cb\\u6c92\\u4e86\\u4f60\\u7684\\u5c0f\\u8033\\uff0c\\u9019\\u554f\\u7684\\u5f8c\\u8eab\\u4fbf\\u662f\\u7121\\u9650\\u7684\\u96b1\\u75db\\uff1b\\u6211\\u4e0d\\u80fd\\u6028\\uff0c\\u8ab0\\u6c92\\u6709\\u60b5\\u60d8\\uff1f\\u4f60\\u662f\\u4e0d\\u8a8d\\u8b58\\u4f60\\u7236\\u89aa\\u7684\\uff0c\\u4e5f\\u4e0d\\u80fd\\u7d66\\u6211\\u5011\\u5229\\u76ca\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u6211\\u5011\\u7684\\u93c8\\u6c38\\u9060\\u662f\\u5236\\u5b9a\\u6211\\u5011\\u884c\\u52d5\\u7684\\u4e0a\\u53f8\\uff01\\u5927\\u5927\\u8a18\\u5f97\\u6700\\u6e05\\u695a\\uff0c\\u53ef\\u4ee5\\u61c2\\u5f97\\u6211\\u8a71\\u88cf\\u610f\\u5473\\u7684\\u6df1\\u6dfa\\uff0c\\u7d04\\u83ab\\u516b\\u4e5d\\u6b72\\u5149\\u666f\\uff0c\\u4f60\\u61c9\\u5f97\\u8eb2\\u907f\\u5979\\u50cf\\u4f60\\u8eb2\\u907f\\u9752\\u8349\\u88e1\\u4e00\\u689d\\u7f8e\\u9e97\\u7684\\u82b1\\u86c7\\uff01<\\/p><p>\\u5047\\u5982\\u4f60\\u9577\\u5927\\u7684\\u8a71\\uff0c\\u6975\\u7aef\\u7684\\u81ea\\u79c1\\uff0c\\u6211\\u5fc3\\u982d\\u4fbf\\u6e67\\u8d77\\u4e86\\u4e0d\\u5c11\\u7684\\u611f\\u60f3\\uff1b\\u6211\\u7684\\u8a71\\u4f60\\u662f\\u6c38\\u9060\\u807d\\u4e0d\\u8457\\u4e86\\uff0c\\u5e76\\u4e14\\u5047\\u5982\\u6211\\u9019\\u756a\\u4e0d\\u5230\\u6b50\\u6d32\\uff0c\\u6d41\\u5165\\u5af5\\u5a9a\\u7684\\u963f\\u8afe\\u6cb3\\u53bb\\u2026\\u2026\\u4e26\\u4e14\\u4f60\\u4e0d\\u4f46\\u4e0d\\u9808\\u61c9\\u4f34\\uff0c\\u90a3\\u624d\\u662f\\u4f60\\u5be6\\u969b\\u9818\\u53d7\\uff0c\\u4ed6\\u5011\\u7684\\u7368\\u5b50\\uff0c\\u90a3\\u908a\\u6bcf\\u682a\\u6a39\\u4e0a\\u90fd\\u662f\\u6eff\\u639b\\u8457\\u8a69\\u60c5\\u6700\\u79c0\\u9038\\u7684\\u679c\\u5be6\\uff0c\\u5c0f\\u9d5d\\uff0c\\u4e00\\u822c\\u7d2b\\u7684\\u7d2b\\u7c50\\uff0c\\u9ad4\\u9b44\\u8207\\u6027\\u9748\\uff0c\\u540c\\u5728\\u4e00\\u500b\\u795e\\u5947\\u7684\\u5b87\\u5b99\\u88e1\\u81ea\\u5f97\\u3002<\\/p>\",\"state\":\"1\",\"catid\":11,\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:10:48\",\"modified_by\":\"584\",\"checked_out\":\"0\",\"checked_out_time\":\"0000-00-00 00:00:00\",\"publish_up\":\"0000-00-00 00:00:00\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"\",\"urls\":\"\",\"attribs\":\"\",\"version\":\"1\",\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (56,22,1,'','2014-10-07 04:11:13',584,2362,'349c8b9c22e8e8cf32ef6818b1d6124677fcf97e','{\"id\":22,\"asset_id\":\"149\",\"title\":\"\\u71df\\u696d\\u53e5\\u9ede\",\"alias\":\"operating-period\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/operating.jpg\\\" alt=\\\"\\\" width=\\\"480\\\" height=\\\"320\\\" \\/><\\/p>\\r\\n<h4>\\u53f0\\u7063\\u5404\\u90fd\\u6703\\u5340<br \\/>\\u852c\\u98df\\u5496\\u5561\\u9928\\u52a0\\u76df\\u52df\\u96c6\\u4e2d<\\/h4>\\r\\n<p>\\u5730\\u5740\\uff1a\\u53f0\\u4e2d\\u5e02\\u897f\\u5340\\u5927\\u5fe0\\u885770\\u865f<br \\/> \\u3000\\u3000\\u3000(\\u516c\\u76ca\\u8def\\u5fe0\\u660e\\u5357\\u8def.\\u5b89\\u6cf0\\u5546\\u696d<br \\/> \\u3000\\u3000\\u3000 \\u00a0\\u9280\\u884c\\u65c1\\u9032\\u516550\\u516c\\u5c3a\\u8655)<br \\/> TEL\\uff1a04-23254337\\u300104-2325433<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:11:13\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:10:55\",\"publish_up\":\"2014-10-07 04:11:13\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (57,22,1,'','2014-10-07 04:11:27',584,2362,'3d80c1471ede47079b3904428053b9cd44b60954','{\"id\":22,\"asset_id\":\"149\",\"title\":\"\\u71df\\u696d\\u64da\\u9ede\",\"alias\":\"operating-period\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/operating.jpg\\\" alt=\\\"\\\" width=\\\"480\\\" height=\\\"320\\\" \\/><\\/p>\\r\\n<h4>\\u53f0\\u7063\\u5404\\u90fd\\u6703\\u5340<br \\/>\\u852c\\u98df\\u5496\\u5561\\u9928\\u52a0\\u76df\\u52df\\u96c6\\u4e2d<\\/h4>\\r\\n<p>\\u5730\\u5740\\uff1a\\u53f0\\u4e2d\\u5e02\\u897f\\u5340\\u5927\\u5fe0\\u885770\\u865f<br \\/> \\u3000\\u3000\\u3000(\\u516c\\u76ca\\u8def\\u5fe0\\u660e\\u5357\\u8def.\\u5b89\\u6cf0\\u5546\\u696d<br \\/> \\u3000\\u3000\\u3000 \\u00a0\\u9280\\u884c\\u65c1\\u9032\\u516550\\u516c\\u5c3a\\u8655)<br \\/> TEL\\uff1a04-23254337\\u300104-2325433<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:11:27\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:11:16\",\"publish_up\":\"2014-10-07 04:11:13\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (58,19,1,'','2014-10-07 04:11:47',584,3629,'c4fb36932c2828344a9e699237a4941c12b39efd','{\"id\":19,\"asset_id\":\"146\",\"title\":\"\\u5f62\\u8c61\\u7279\\u8272\",\"alias\":\"image-features\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p>\\u975c\\u8b10\\u7684\\u5348\\u540e\\uff0c\\u60a0\\u9592\\u7684\\u8d70\\u5728\\u7cbe\\u8aa0\\u8857\\u9053\\u4e0a\\uff0c\\u5fae\\u98a8\\u548c\\u7166\\uff0c\\u6574\\u689d\\u8857\\u986f\\u5f97\\u683c\\u5916\\u6175\\u61f6\\u611c\\u610f\\uff0c\\u4e00\\u80a1\\u81ea\\u5728\\u8f15\\u6d41\\u7de9\\u7de9\\u900f\\u9032\\u4e86\\u5fc3\\u574e\\u88e1\\u3002<\\/p>\\r\\n<p>\\u4f86\\u5230\\u4e86\\u6236\\u5916\\u7da0\\u610f\\u76ce\\u7136\\u7f8e\\u9e97\\u7684\\u9ebb\\u5712\\u982d\\u6cb3\\u7554\\uff0c\\u6cb3\\u5824\\u908a\\u7684 <strong>\\u54c8\\u91cc\\u6b50\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928<\\/strong>\\uff0c\\u5c55\\u958b\\u4e86\\u4e00\\u5834\\u8207\\u6cd5\\u5f0f\\u852c\\u98df\\u7684\\u9082\\u9005......<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/features_2.jpg\\\" alt=\\\"\\\" width=\\\"567\\\" height=\\\"378\\\" \\/><\\/p>\\r\\n<p>\\u6b65\\u5165\\u300e\\u54c8\\u91cc\\u6b50\\u300f\\u7684\\u73bb\\u7483\\u9580\\u8a1d\\u7136\\u767c\\u73fe\\uff0c\\u7f8e\\u4e0d\\u52dd\\u6536\\u7684\\u300e\\u54c8\\u91cc\\u6b50\\u300f\\u5c55\\u73fe\\u4e86\\u4e0d\\u540c\\u5c64\\u6b21\\u7f8e\\u611f\\uff0c\\u4e0d\\u540c\\u7684\\u5ba4\\u5167\\u683c\\u5c40\\u5340\\u5206\\u5448\\u73fe\\u4e0d\\u540c\\u7684\\u98a8\\u60c5\\u6c23\\u8cea\\uff1b\\u53ef\\u4ee5\\u9ede\\u676f\\u7279\\u8abf\\u5496\\u5561\\u501a\\u7a97\\u800c\\u5750\\uff0c\\u6b23\\u8cde\\u53f0\\u7063\\u9e1e\\u6a39\\u3001\\u4e00\\u5e74\\u56db\\u5b63\\u4e0d\\u540c\\u7f8e\\u9e97\\u7684\\u8b8a\\u5316\\u3002\\u73fe\\u4ee3\\u4f11\\u9592\\u683c\\u8abf\\u7684\\u7a7a\\u9593\\u8a2d\\u8a08\\uff0c\\u4f34\\u8457\\u7a97\\u5916\\u900f\\u9032\\u4f86\\u7684\\u6696\\u6696\\u967d\\u5149\\uff0c\\u7368\\u4eab\\u90a3\\u4efd\\u96e3\\u5f97\\u7684\\u5fc3\\u9748\\u9957\\u5bb4\\u3002<\\/p>\\r\\n<p>\\u63db\\u500b\\u5fc3\\u60c5\\uff0c\\u9078\\u64c7\\u79c1\\u5bc6\\u4e0d\\u53d7\\u5e72\\u64fe\\u7684\\u7a7a\\u9593\\uff0c\\u4f86\\u4e00\\u4efd\\u7cbe\\u7dfb\\u7684\\u6cd5\\u5f0f\\u852c\\u98df\\u9910\\u9ede\\uff0c\\u9053\\u5730\\u7684\\u897f\\u9910\\u670d\\u52d9\\u54c1\\u8cea\\uff0c\\u8b93\\u60a8\\u5403\\u5f97\\u6d6a\\u6f2b\\u512a\\u96c5\\u53c8\\u990a\\u751f\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:11:47\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:11:33\",\"publish_up\":\"2014-10-07 04:11:47\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (59,20,1,'','2014-10-07 04:11:59',584,2259,'e8c08f4586dbf7cafefe782bfc8690570f78a13a','{\"id\":20,\"asset_id\":\"147\",\"title\":\"\\u74b0\\u5883\\u4ecb\\u7d39\",\"alias\":\"environment-introduction\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p>\\u5ea7\\u843d\\u74b0\\u5883\\u6e05\\u5e7d\\u3001\\u7da0\\u6a39\\u6210\\u852d\\uff0c\\u53ef\\u89c0\\u8cde\\u5230\\u4e00\\u5e74\\u56db\\u5b63\\u4e0d\\u540c\\u7684\\u666f\\u89c0\\u7279\\u8272\\u3002\\u5e97\\u5167\\u7a7a\\u9593\\u5178\\u96c5\\u8212\\u9069\\uff0c\\u8655\\u8655\\u53ef\\u898b\\u7d93\\u71df\\u8005\\u7684\\u5de7\\u5fc3\\u5b89\\u6392\\u3002<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/environment.jpg\\\" alt=\\\"\\\" width=\\\"800\\\" height=\\\"608\\\" \\/><\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:11:59\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:11:34\",\"publish_up\":\"2014-10-07 04:11:59\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (60,23,1,'','2014-10-07 04:12:13',584,2450,'f46ff3380abd665fe78c99498f6b5e6bfb754af8','{\"id\":23,\"asset_id\":\"150\",\"title\":\"\\u4fc3\\u92b7\\u6d3b\\u52d5\",\"alias\":\"promotions\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<h3>\\u8033\\u639b\\u5f0f\\u6ffe\\u6ce1\\u5496\\u5561 <strong>\\u8cb7\\u4e00\\u76d2\\u9001\\u4e00\\u76d2<\\/strong><\\/h3>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/promotions.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" height=\\\"393\\\" \\/><\\/p>\\r\\n<p>\\u9650\\u6642\\u9650\\u91cf <strong>\\u8cb7\\u4e00\\u76d2\\u9001\\u4e00\\u76d2 <\\/strong><br \\/> A\\u7d1a\\u7d93\\u517899\\u3001\\u7f8e\\u6d32\\u53e4\\u5178\\u98a8\\u3001\\u5357\\u6d0b\\u9ec3\\u91d1\\u5370\\u8c61\\u3001\\u82b1\\u795e\\u4e4b\\u821e\\u3001\\u9ec3\\u91d1\\u71b1\\u5e36\\u98a8\\u60c5\\u3001\\u62c9\\u4e01\\u6eab\\u6cc9\\u98a8\\u5473\\u3001\\u8036\\u52a0\\u85cd\\u8abf\\u4e4b\\u821e<br \\/> \\u4e03\\u6a23\\u53e3\\u5473\\u4efb\\u9078\\u54e6!!<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"11\",\"created\":\"2014-10-07 04:04:50\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 04:12:13\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:11:39\",\"publish_up\":\"2014-10-07 04:12:13\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"0\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (61,6,1,'','2014-10-07 05:05:21',584,3801,'6e2a1c7d07535b085ccfbce063ebdefe20eed120','{\"id\":6,\"asset_id\":\"128\",\"title\":\"\\u5f62\\u8c61\\u7279\\u8272\",\"alias\":\"pioneer-features\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p>\\u4e8c\\u5341\\u5e7e\\u5e74\\u4f86\\uff0c\\u5f9e\\u5496\\u5561\\u8c46\\u9032\\u53e3\\u3001\\u70d8\\u7119\\u3001\\u884c\\u92b7\\u6279\\u767c\\u3001\\u96f6\\u552e\\uff0c\\u9580\\u5e02\\u90e8\\u6210\\u7acb\\uff0c\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u76f4\\u71df\\u5e97\\u958b\\u5e55\\uff0c\\u76f4\\u81f3\\u6210\\u7acb\\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\uff0c\\u6975\\u529b\\u63a8\\u5ee3\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u3001\\u6b50\\u5ef7\\u852c\\u98df\\u52a0\\u76df\\u4e8b\\u696d\\u81f3\\u570b\\u969b\\u5e02\\u5834\\u3002\\u4e00\\u8def\\u8d70\\u4f86\\uff0c\\u9577\\u5e74\\u8339\\u7d20\\u7684\\u6797\\u7e3d\\u7d93\\u7406\\u79c9\\u6301\\u8457\\u7368\\u7279\\u524d\\u77bb\\u7684\\u773c\\u5149\\uff0c\\u8df3\\u812b\\u5e02\\u5834\\u7522\\u54c1\\u5340\\u9694\\uff0c\\u4f01\\u5716\\u5c07\\u7d20\\u98df\\u6587\\u5316\\u63d0\\u5347\\u81f3\\u66f4\\u9ad8\\u54c1\\u8cea\\u7684\\u611f\\u5b98\\u4eab\\u53d7\\u3002<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/pioneer1.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n<p>\\u7a81\\u7834\\u4e86\\u5b97\\u6559\\u7684\\u6846\\u6846\\uff0c<br \\/> \\u5c07\\u990a\\u751f\\u852c\\u98df\\u6210\\u529f\\u7684\\u63a8\\u5ee3\\u81f3\\u4e00\\u822c\\u5927\\u773e\\uff0c<br \\/> \\u6975\\u529b\\u7684\\u63a8\\u5ee3\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u3001\\u6b50\\u6d32\\u852c\\u98df\\u52a0\\u76df\\u4e8b\\u696d\\u81f3\\u570b\\u969b\\u5e02\\u5834\\u3002<\\/p>\\r\\n<p>\\u81ea\\u7136\\u539f\\u5473\\u7684\\u5065\\u5eb7\\u852c\\u98df\\uff0c\\u7cbe\\u9078\\u5929\\u7136\\u852c\\u679c\\u98df\\u6750\\uff0c\\u5f9e\\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5230\\u5e73\\u5be6\\u7684\\u6b50\\u5ef7\\u852c\\u98df\\u591a\\u570b\\u5275\\u4f5c\\u6599\\u7406\\uff0c\\u59cb\\u7d42\\u5805\\u6301\\u6de8\\u98df\\u6587\\u5316\\u7684\\u50b3\\u627f\\uff01<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/pioneer2.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n<p>\\u65b0\\u4e16\\u7d00\\u3001\\u65b0\\u98f2\\u98df\\u6587\\u5316\\u7684\\u9a45\\u52d5\\u8005<br \\/> \\u7d55\\u5c0d\\u662f\\u60a8\\u5065\\u5eb7\\u4e8b\\u696d\\u7684\\u597d\\u5e6b\\u624b\\uff01<br \\/> \\u8b93\\u52a0\\u76df\\u8005\\u8f15\\u9b06\\u7d93\\u71df\\u4e00\\u5bb6\\u5c6c\\u65bc\\u81ea\\u5df1\\u7684\\u4e8b\\u696d<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 05:05:21\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:44:57\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"21\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (62,6,1,'','2014-10-07 05:06:28',584,3805,'214b69e98066c0a2b2ad7032d211b2a5d761672f','{\"id\":6,\"asset_id\":\"128\",\"title\":\"\\u5f62\\u8c61\\u7279\\u8272\",\"alias\":\"pioneer-features\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow fadeInLeft\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p>\\u4e8c\\u5341\\u5e7e\\u5e74\\u4f86\\uff0c\\u5f9e\\u5496\\u5561\\u8c46\\u9032\\u53e3\\u3001\\u70d8\\u7119\\u3001\\u884c\\u92b7\\u6279\\u767c\\u3001\\u96f6\\u552e\\uff0c\\u9580\\u5e02\\u90e8\\u6210\\u7acb\\uff0c\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u76f4\\u71df\\u5e97\\u958b\\u5e55\\uff0c\\u76f4\\u81f3\\u6210\\u7acb\\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\uff0c\\u6975\\u529b\\u63a8\\u5ee3\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u3001\\u6b50\\u5ef7\\u852c\\u98df\\u52a0\\u76df\\u4e8b\\u696d\\u81f3\\u570b\\u969b\\u5e02\\u5834\\u3002\\u4e00\\u8def\\u8d70\\u4f86\\uff0c\\u9577\\u5e74\\u8339\\u7d20\\u7684\\u6797\\u7e3d\\u7d93\\u7406\\u79c9\\u6301\\u8457\\u7368\\u7279\\u524d\\u77bb\\u7684\\u773c\\u5149\\uff0c\\u8df3\\u812b\\u5e02\\u5834\\u7522\\u54c1\\u5340\\u9694\\uff0c\\u4f01\\u5716\\u5c07\\u7d20\\u98df\\u6587\\u5316\\u63d0\\u5347\\u81f3\\u66f4\\u9ad8\\u54c1\\u8cea\\u7684\\u611f\\u5b98\\u4eab\\u53d7\\u3002<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/pioneer1.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n<p>\\u7a81\\u7834\\u4e86\\u5b97\\u6559\\u7684\\u6846\\u6846\\uff0c<br \\/> \\u5c07\\u990a\\u751f\\u852c\\u98df\\u6210\\u529f\\u7684\\u63a8\\u5ee3\\u81f3\\u4e00\\u822c\\u5927\\u773e\\uff0c<br \\/> \\u6975\\u529b\\u7684\\u63a8\\u5ee3\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u3001\\u6b50\\u6d32\\u852c\\u98df\\u52a0\\u76df\\u4e8b\\u696d\\u81f3\\u570b\\u969b\\u5e02\\u5834\\u3002<\\/p>\\r\\n<p>\\u81ea\\u7136\\u539f\\u5473\\u7684\\u5065\\u5eb7\\u852c\\u98df\\uff0c\\u7cbe\\u9078\\u5929\\u7136\\u852c\\u679c\\u98df\\u6750\\uff0c\\u5f9e\\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5230\\u5e73\\u5be6\\u7684\\u6b50\\u5ef7\\u852c\\u98df\\u591a\\u570b\\u5275\\u4f5c\\u6599\\u7406\\uff0c\\u59cb\\u7d42\\u5805\\u6301\\u6de8\\u98df\\u6587\\u5316\\u7684\\u50b3\\u627f\\uff01<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/pioneer2.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n<p>\\u65b0\\u4e16\\u7d00\\u3001\\u65b0\\u98f2\\u98df\\u6587\\u5316\\u7684\\u9a45\\u52d5\\u8005<br \\/> \\u7d55\\u5c0d\\u662f\\u60a8\\u5065\\u5eb7\\u4e8b\\u696d\\u7684\\u597d\\u5e6b\\u624b\\uff01<br \\/> \\u8b93\\u52a0\\u76df\\u8005\\u8f15\\u9b06\\u7d93\\u71df\\u4e00\\u5bb6\\u5c6c\\u65bc\\u81ea\\u5df1\\u7684\\u4e8b\\u696d<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 05:06:28\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 05:05:57\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"3\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"23\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (63,7,1,'','2014-10-07 05:31:04',584,4911,'6c07f19d40aab03c556c6fd1f0543f53ec639fdb','{\"id\":7,\"asset_id\":\"129\",\"title\":\"\\u6559\\u5b78\\u8ab2\\u7a0b\",\"alias\":\"pioneer-teach\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow fadeInLeft\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p>\\u751f\\u6d3b\\u8ddf\\u5496\\u5561\\u7684\\u95dc\\u4fc2\\u76f8\\u7576\\u5bc6\\u5207\\uff0c\\u4ee5\\u57fa\\u790e\\u7684\\u610f\\u5f0f\\u5496\\u5561\\u70f9\\u716e\\u6559\\u5b78\\uff0c\\u611f\\u65bc\\u65e5\\u5e38\\u6ce1\\u5496\\u5561\\u7684\\u7a0b\\u5e8f\\u6709\\u5982\\u4e00\\u689d\\u751f\\u7522\\u7dda\\uff0c\\u5f9e\\u4e2d\\u9818\\u7565\\u5f9e\\u5012\\u4e0b\\u65b0\\u9bae\\u751f\\u8c46\\u3001\\u78e8\\u8c46\\u3001\\u9ad8\\u58d3\\u6ffe\\u51fa\\u5496\\u5561\\u3001\\u6253\\u5976\\u6ce1\\u7684\\u6a19\\u793a\\u4ee5\\u53ca\\u6253\\u9020\\u597d\\u559d\\u5496\\u5561\\u7684\\u8a23\\u7ac5\\uff0c\\u5f9e\\u539f\\u7269\\u6599\\u3001\\u88fd\\u4f5c\\u6559\\u5b78\\u3001\\u5230\\u958b\\u5e97\\u8f14\\u5c0e \\u5c08\\u696d\\u6280\\u8853\\u50b3\\u6388\\uff0c\\u5e6b\\u60a8\\u8f15\\u9b06\\u505a\\u982d\\u5bb6\\uff01\\u4e0d\\u4f46\\u8b93\\u4f60\\u5b78\\u6703\\u716e\\u51fa\\u4e00\\u624b\\u597d\\u5496\\u5561\\uff0c\\u9084\\u6559\\u4f60 \\u5177\\u9ad4\\u7684\\u5be6\\u6230\\u7d93\\u71df\\u7b56\\u7565\\uff0c\\u6436\\u9032\\u5496\\u5561\\u9928\\u5e02\\u5834!<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/teach.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n<h4>\\u6559\\u5b78\\u65b9\\u5f0f<\\/h4>\\r\\n<p>1. \\u63a1\\u5c0f\\u73ed\\u5236\\u3001\\u5faa\\u74b0\\u5f0f\\u6559\\u5b78\\u3002<br \\/> 2. \\u5be6\\u969b\\u64cd\\u4f5c\\u8207\\u7406\\u8ad6\\u4e26\\u91cd\\uff0c\\u63d0\\u4f9b\\u5496\\u5561\\u9928\\u73fe\\u5834\\u5be6\\u7fd2\\u3002<br \\/> 3. \\u4fdd\\u8b49\\u5b78\\u6210\\uff0c\\u8f14\\u5c0e\\u5275\\u696d\\u6216\\u5c31\\u696d\\u3002<\\/p>\\r\\n<h4>\\u6559\\u5b78\\u5167\\u5bb9<\\/h4>\\r\\n<p>1. \\u7fa9\\u5f0f\\u5496\\u5561\\u6c96\\u8abf \\/ \\u82b1\\u5f0f\\u7279\\u8abf \\/ \\u57fa\\u8c46\\u8abf\\u914d\\u3002<br \\/> 2. \\u5404\\u5f0f\\u624b\\u4f5c\\u5496\\u5561\\u8abf\\u88fd \\/ \\u5496\\u5561\\u57fa\\u8c46\\u8a8d\\u8b58\\u3002<br \\/> 3. \\u5404\\u5f0f\\u82b1\\u679c\\u8336\\u985e \\/ \\u98f2\\u6599 \\/ \\u512a\\u683c\\u51b0\\u6c99\\u8abf\\u88fd\\u3002<br \\/> 4. \\u5404\\u985e\\u578b\\u614b\\u5496\\u5561\\u9928 \\/ \\u9910\\u98f2\\u5e97\\u7d93\\u71df\\u7ba1\\u7406\\u5be6\\u52d9 \\/ \\u5e02\\u5834\\u5206\\u6790<br \\/> 5. \\u5496\\u5561\\u9928\\u73fe\\u5834\\u5be6\\u7fd2 \\/ \\u5be6\\u969b\\u64cd\\u4f5c\\u8f03\\u5b78<\\/p>\\r\\n<h4>\\u6559\\u5b78\\u5be6\\u7528<\\/h4>\\r\\n<p>1. \\u751f\\u6d3b\\u624d\\u85dd\\u73ed\\u8cbb\\u7528: NTS\\/ 12000 (\\u542b\\u6750\\u6599\\u8cbb) \\u6bcf\\u671f20\\u5c0f\\u6642<br \\/> 2. \\u958b\\u5e97\\u5275\\u696d\\u5c08\\u4fee\\u73ed: NTS\\/ 24000 (\\u542b\\u6750\\u6599\\u8cbb \\/ \\u73fe\\u5834\\u5be6\\u7fd2) \\u6bcf\\u671f30\\u5c0f\\u6642<br \\/> 3. \\u5496\\u5561\\u70d8\\u57f9\\u5c08\\u4fee\\u73ed: NTS\\/ 60000 (\\u542b\\u6750\\u6599\\u8cbb) \\u6bcf\\u671f40\\u5c0f\\u6642 (\\u6bcf\\u58024\\u5c0f\\u6642)<br \\/>\\u00a0 \\u00a0 \\u7531\\u53f0\\u7063\\u5496\\u5561\\u696d40\\u8cc7\\u6df1\\u5496\\u5561\\u5e2b \\u7b2c\\u4e00\\u9054\\u4eba \\u6797\\u69ae\\u751f \\u89aa\\u81ea\\u6388\\u8ab2<\\/p>\\r\\n<h4>\\u4e0a\\u8ab2\\u6642\\u9593<\\/h4>\\r\\n<p>\\u6bcf\\u661f\\u671f\\u4e09\\u3001\\u4e94<br \\/> \\u4e0b\\u5348 3:00 ~ 5:00<br \\/> \\u665a\\u4e0a 7:00 ~ 9:00<br \\/> \\u6bcf\\u671f\\u6642\\u6578\\uff1a20\\u5c0f\\u6642<\\/p>\\r\\n<p>\\u9910\\u98f2\\u696d\\u754c\\u5982\\u9700\\u4eba\\u624d\\uff0c\\u6b61\\u8fce\\u6d3d\\u8a62<br \\/> \\u958b\\u653e\\u5168\\u7701\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928\\u52a0\\u76df\\u52df\\u96c6\\u4e2d<br \\/> \\u8a73\\u7d30\\u8cc7\\u8a0a\\u8acb\\u6d3dTEL\\uff1a04-2325-4337<br \\/> \\u3000\\u3000\\u3000\\u3000\\u3000\\u3000 \\u00a0 \\u3000 \\u00a004-2325-4332<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 05:31:04\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:44:58\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"3\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (64,8,1,'','2014-10-07 05:45:00',584,4070,'1121e2de6097ed5eaa3f7cf68462ffa4b4a8bb39','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"container\\\"><!-- image at left -->\\r\\n<div class=\\\"row wow fadeInRight\\\">\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<p><strong>\\u6797\\u69ae\\u751f<\\/strong><\\/p>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"container\\\"><!-- image at right -->\\r\\n<div class=\\\"row wow fadeInLeft\\\">\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<p><strong>\\u8521\\u4f69\\u73b2<\\/strong><\\/p>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 05:45:00\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:44:58\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"8\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (65,8,1,'','2014-10-07 05:46:35',584,3991,'83a899558f7282e1b472d2abbe10ba52435cec09','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeInRight\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<p><strong>\\u6797\\u69ae\\u751f<\\/strong><\\/p>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row wow fadeInLeft\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<p><strong>\\u8521\\u4f69\\u73b2<\\/strong><\\/p>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 05:46:35\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 05:45:00\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"11\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (66,8,1,'','2014-10-07 05:48:03',584,4031,'06efbaa842dc50e39602d8cbb10acc2bd733ab26','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeInRight\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<p><strong>\\u6797\\u69ae\\u751f<\\/strong><\\/p>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row wow fadeInLeft\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<p><strong>\\u8521\\u4f69\\u73b2<\\/strong><\\/p>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 05:48:03\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 05:46:35\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"13\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (67,8,1,'','2014-10-07 05:49:56',584,3999,'711674b3424198b537e5408dc975de4b0050adac','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeInRight\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<h5>\\u6797\\u69ae\\u751f<\\/h5>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row wow fadeInLeft\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<h5>\\u8521\\u4f69\\u73b2<\\/h5>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 05:49:56\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 05:48:03\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":5,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"17\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (68,9,1,'','2014-10-07 06:21:23',584,5389,'c74ab83e9eb9d7cecfeb1dccb04ea7e08c246b27','{\"id\":9,\"asset_id\":\"131\",\"title\":\"\\u52a0\\u76df\\u898f\\u5283\\u57f9\\u8a13\",\"alias\":\"pioneer-affiliate\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<h3>\\u52a0\\u76df\\u54c1\\u724c\\u512a\\u52e2<\\/h3>\\r\\n<h4>\\u98a8\\u683c\\u578b\\u614b\\u5177\\u7af6\\u722d\\u529b\\u64c1\\u6709\\u9ad8\\u6210\\u529f\\u7387<\\/h4>\\r\\n<p>\\u00a0\\u52a0\\u76df\\u8005\\u4e0d\\u53ea\\u5099\\u59a5\\u8cc7\\u91d1\\uff0c\\u66f4\\u8981\\u6709\\u6210\\u529f\\u7684\\u3001\\u6709\\u5be6\\u529b\\u7684\\u7d44\\u7e54\\u54c8\\u91cc\\u6b50\\u7e3d\\u90e8\\u70ba\\u5f8c\\u76fe\\u63d0\\u4f9b\\u6c38\\u7e8c\\u7684\\u8f14\\u5c0e\\u3002<\\/p>\\r\\n<h4>\\u9ad8\\u77e5\\u540d\\u5ea6<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u591a\\u5e74\\u7d93\\u71df\\u7684\\u5546\\u8b7d\\u65e9\\u5df2\\u690d\\u5165\\u5728\\u6d88\\u8cbb\\u8005\\u5fc3\\u4e2d\\uff0c\\u66f4\\u65bc2000\\u5e74\\u69ae\\u7372\\u53f0\\u7063\\u512a\\u826f\\u9910\\u98f2\\u4f01\\u696d\\u91d1\\u8cea\\u734e\\u96c6\\u5ba2\\u529b\\u5f37\\uff0c\\u85c9\\u7531\\u9ad8\\u77e5\\u540d\\u5ea6\\u8f15\\u9b06\\u5275\\u9020\\u9ad8\\u71df\\u696d\\u984d\\u3002<\\/p>\\r\\n<h4>\\u5e97\\u540d\\u5bb9\\u6613\\u8a18 \\u6709CIS\\u898f\\u5283<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u6ce8\\u91cd\\u89aa\\u5207\\u670d\\u52d9\\u3001\\u5f62\\u8c61\\u8a2d\\u8a08\\uff0c\\u6613\\u65bc\\u6df1\\u5165\\u6d88\\u8cbb\\u8005\\u5fc3\\u4e2d\\uff0c\\u535a\\u5f97\\u9867\\u5ba2\\u597d\\u611f\\u3002<\\/p>\\r\\n<h4>\\u958b\\u767c\\u6709\\u4e3b\\u984c\\u5546\\u54c1 \\/ \\u63d0\\u4f9b\\u670d\\u52d9\\u6709\\u7279\\u8272<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u4e0d\\u53ea\\u5d07\\u9ad8\\u7684\\u7d93\\u71df\\u7406\\u5ff5\\uff0c\\u66f4\\u4e0d\\u65b7\\u958b\\u767c\\u65b0\\u7522\\u54c1\\u3001\\u65b0\\u83dc\\u55ae\\u7684\\u8b8a\\u5316\\uff0c\\u8b93\\u540c\\u696d\\u4e0d\\u6613\\u6a21\\u4eff\\uff0c\\u4fdd\\u6301\\u7522\\u54c1\\u5e02\\u5834\\u7af6\\u722d\\u529b\\u3002<\\/p>\\r\\n<h4>\\u6709\\u826f\\u597d\\u7684\\u9023\\u9396\\u7d93\\u71df\\u9ad4\\u7cfb\\u53ca KNOW-HOW \\u6280\\u8853<\\/h4>\\r\\n<p>\\u5f9e\\u5546\\u54c1\\u63a1\\u8cfc \\/ \\u6574\\u5408 \\/ \\u767c\\u9001 \\/ \\u88fd\\u4f5c \\/ \\u7ba1\\u7406 \\/ \\u4eba\\u4e8b \\/ \\u8ca1\\u52d9\\uff0c\\u4e43\\u81f3\\u60c5\\u5831\\u8490\\u96c6\\u7684\\u7e3d\\u5408\\uff0c\\u5b8c\\u6574\\u7684\\u7d93\\u71df\\u50b3\\u627f\\u4ee5\\u53ca\\u6280\\u8853\\u7684\\u6307\\u5c0e\\u3002<\\/p>\\r\\n<h4>\\u6c38\\u7e8c\\u7d93\\u71df\\u4e0d\\u65b7\\u7814\\u767c\\u6539\\u5584<\\/h4>\\r\\n<p>\\u672c\\u516c\\u53f8\\u96a8\\u8457\\u793e\\u6703\\u74b0\\u5883\\u8207\\u7d93\\u6fdf\\u578b\\u614b\\u7684\\u8b8a\\u9077\\uff0c\\u4e0d\\u6642\\u5730\\u8b00\\u6c42\\u6539\\u5584\\u4e43\\u81f3\\u7a81\\u7834\\uff0c\\u4ee5\\u61c9\\u96a8\\u6642\\u5728\\u8b8a\\u7684\\u5927\\u74b0\\u5883\\u548c\\u9867\\u5ba2\\u6c38\\u4e0d\\u6eff\\u8db3\\u7684\\u5404\\u7a2e\\u9700\\u6c42\\u3002<\\/p>\\r\\n<h4>\\u57f9\\u8a13\\u5c08\\u696d\\u4eba\\u624d<\\/h4>\\r\\n<p>\\u672c\\u516c\\u53f8\\u4ee5\\u5f37\\u6709\\u529b\\u3001\\u5c08\\u696d\\u7684\\u7d44\\u7e54\\u3001\\u5c08\\u696d\\u4eba\\u624d\\uff0c\\u4e0d\\u65b7\\u7684\\u9032\\u884c\\u52a0\\u76df\\u5e97\\u4eba\\u54e1\\u7684\\u5728\\u8077\\u6559\\u80b2\\u8a13\\u7df4\\u6280\\u8853\\u7684\\u518d\\u63d0\\u5347\\uff0c\\u4f7f\\u52a0\\u76df\\u8005\\u4e0d\\u5fc5\\u70ba\\u4eba\\u4e8b\\u6d41\\u52d5\\u800c\\u7169\\u60f1\\u3002<\\/p>\\r\\n<h3>\\u52a0\\u5165\\u6211\\u5011\\uff0c\\u5c31\\u662f\\u73fe\\u5728\\uff01<\\/h3>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/affiliate.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" height=\\\"315\\\" \\/><\\/p>\\r\\n<p>\\u6211\\u5011\\u64c1\\u6709\\u6700\\u5c08\\u696d\\u7684\\u7d93\\u9a57\\uff0c\\u70ba\\u60a8\\u91cf\\u8eab\\u6253\\u9020\\u5c6c\\u65bc\\u60a8\\u7684\\u4eba\\u751f\\u5922\\uff01<br \\/> \\u672c\\u6848\\u4f01\\u5283\\u57f7\\u884c\\uff1a\\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8<br \\/> \\u5354\\u529b\\u6307\\u5c0e\\uff1a\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8<\\/p>\\r\\n<p>\\u96fb\\u8a71\\uff1a886-4-2325-4337<br \\/> \\u3000\\u3000\\u3000886-4-2325-4332<br \\/> \\u514d\\u4ed8\\u8cbb\\u5c08\\u7dda\\uff1a0800-588338<br \\/> \\u50b3\\u771f\\uff1a886-4-2319-9156<br \\/> \\u5730\\u5740\\uff1a\\u53f0\\u4e2d\\u5e02\\u897f\\u5340\\u7cbe\\u8aa022\\u885733\\u865f<br \\/> E-mail\\uff1aservice@hecto.com.tw<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 06:21:23\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 04:44:59\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":2,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"4\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (69,9,1,'','2014-10-07 06:22:03',584,5515,'745237c0543b567b95adf80e8ad479e0f995b8b9','{\"id\":9,\"asset_id\":\"131\",\"title\":\"\\u52a0\\u76df\\u898f\\u5283\\u57f9\\u8a13\",\"alias\":\"pioneer-affiliate\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<h3>\\u52a0\\u76df\\u54c1\\u724c\\u512a\\u52e2<\\/h3>\\r\\n<h4>\\u98a8\\u683c\\u578b\\u614b\\u5177\\u7af6\\u722d\\u529b\\u64c1\\u6709\\u9ad8\\u6210\\u529f\\u7387<\\/h4>\\r\\n<p>\\u00a0\\u52a0\\u76df\\u8005\\u4e0d\\u53ea\\u5099\\u59a5\\u8cc7\\u91d1\\uff0c\\u66f4\\u8981\\u6709\\u6210\\u529f\\u7684\\u3001\\u6709\\u5be6\\u529b\\u7684\\u7d44\\u7e54\\u54c8\\u91cc\\u6b50\\u7e3d\\u90e8\\u70ba\\u5f8c\\u76fe\\u63d0\\u4f9b\\u6c38\\u7e8c\\u7684\\u8f14\\u5c0e\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u9ad8\\u77e5\\u540d\\u5ea6<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u591a\\u5e74\\u7d93\\u71df\\u7684\\u5546\\u8b7d\\u65e9\\u5df2\\u690d\\u5165\\u5728\\u6d88\\u8cbb\\u8005\\u5fc3\\u4e2d\\uff0c\\u66f4\\u65bc2000\\u5e74\\u69ae\\u7372\\u53f0\\u7063\\u512a\\u826f\\u9910\\u98f2\\u4f01\\u696d\\u91d1\\u8cea\\u734e\\u96c6\\u5ba2\\u529b\\u5f37\\uff0c\\u85c9\\u7531\\u9ad8\\u77e5\\u540d\\u5ea6\\u8f15\\u9b06\\u5275\\u9020\\u9ad8\\u71df\\u696d\\u984d\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u5e97\\u540d\\u5bb9\\u6613\\u8a18 \\u6709CIS\\u898f\\u5283<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u6ce8\\u91cd\\u89aa\\u5207\\u670d\\u52d9\\u3001\\u5f62\\u8c61\\u8a2d\\u8a08\\uff0c\\u6613\\u65bc\\u6df1\\u5165\\u6d88\\u8cbb\\u8005\\u5fc3\\u4e2d\\uff0c\\u535a\\u5f97\\u9867\\u5ba2\\u597d\\u611f\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u958b\\u767c\\u6709\\u4e3b\\u984c\\u5546\\u54c1 \\/ \\u63d0\\u4f9b\\u670d\\u52d9\\u6709\\u7279\\u8272<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u4e0d\\u53ea\\u5d07\\u9ad8\\u7684\\u7d93\\u71df\\u7406\\u5ff5\\uff0c\\u66f4\\u4e0d\\u65b7\\u958b\\u767c\\u65b0\\u7522\\u54c1\\u3001\\u65b0\\u83dc\\u55ae\\u7684\\u8b8a\\u5316\\uff0c\\u8b93\\u540c\\u696d\\u4e0d\\u6613\\u6a21\\u4eff\\uff0c\\u4fdd\\u6301\\u7522\\u54c1\\u5e02\\u5834\\u7af6\\u722d\\u529b\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u6709\\u826f\\u597d\\u7684\\u9023\\u9396\\u7d93\\u71df\\u9ad4\\u7cfb\\u53ca KNOW-HOW \\u6280\\u8853<\\/h4>\\r\\n<p>\\u5f9e\\u5546\\u54c1\\u63a1\\u8cfc \\/ \\u6574\\u5408 \\/ \\u767c\\u9001 \\/ \\u88fd\\u4f5c \\/ \\u7ba1\\u7406 \\/ \\u4eba\\u4e8b \\/ \\u8ca1\\u52d9\\uff0c\\u4e43\\u81f3\\u60c5\\u5831\\u8490\\u96c6\\u7684\\u7e3d\\u5408\\uff0c\\u5b8c\\u6574\\u7684\\u7d93\\u71df\\u50b3\\u627f\\u4ee5\\u53ca\\u6280\\u8853\\u7684\\u6307\\u5c0e\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u6c38\\u7e8c\\u7d93\\u71df\\u4e0d\\u65b7\\u7814\\u767c\\u6539\\u5584<\\/h4>\\r\\n<p>\\u672c\\u516c\\u53f8\\u96a8\\u8457\\u793e\\u6703\\u74b0\\u5883\\u8207\\u7d93\\u6fdf\\u578b\\u614b\\u7684\\u8b8a\\u9077\\uff0c\\u4e0d\\u6642\\u5730\\u8b00\\u6c42\\u6539\\u5584\\u4e43\\u81f3\\u7a81\\u7834\\uff0c\\u4ee5\\u61c9\\u96a8\\u6642\\u5728\\u8b8a\\u7684\\u5927\\u74b0\\u5883\\u548c\\u9867\\u5ba2\\u6c38\\u4e0d\\u6eff\\u8db3\\u7684\\u5404\\u7a2e\\u9700\\u6c42\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u57f9\\u8a13\\u5c08\\u696d\\u4eba\\u624d<\\/h4>\\r\\n<p>\\u672c\\u516c\\u53f8\\u4ee5\\u5f37\\u6709\\u529b\\u3001\\u5c08\\u696d\\u7684\\u7d44\\u7e54\\u3001\\u5c08\\u696d\\u4eba\\u624d\\uff0c\\u4e0d\\u65b7\\u7684\\u9032\\u884c\\u52a0\\u76df\\u5e97\\u4eba\\u54e1\\u7684\\u5728\\u8077\\u6559\\u80b2\\u8a13\\u7df4\\u6280\\u8853\\u7684\\u518d\\u63d0\\u5347\\uff0c\\u4f7f\\u52a0\\u76df\\u8005\\u4e0d\\u5fc5\\u70ba\\u4eba\\u4e8b\\u6d41\\u52d5\\u800c\\u7169\\u60f1\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u52a0\\u5165\\u6211\\u5011\\uff0c\\u5c31\\u662f\\u73fe\\u5728\\uff01<\\/h3>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/affiliate.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" height=\\\"315\\\" \\/><\\/p>\\r\\n<p>\\u6211\\u5011\\u64c1\\u6709\\u6700\\u5c08\\u696d\\u7684\\u7d93\\u9a57\\uff0c\\u70ba\\u60a8\\u91cf\\u8eab\\u6253\\u9020\\u5c6c\\u65bc\\u60a8\\u7684\\u4eba\\u751f\\u5922\\uff01<br \\/> \\u672c\\u6848\\u4f01\\u5283\\u57f7\\u884c\\uff1a\\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8<br \\/> \\u5354\\u529b\\u6307\\u5c0e\\uff1a\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8<\\/p>\\r\\n<p>\\u96fb\\u8a71\\uff1a886-4-2325-4337<br \\/> \\u3000\\u3000\\u3000886-4-2325-4332<br \\/> \\u514d\\u4ed8\\u8cbb\\u5c08\\u7dda\\uff1a0800-588338<br \\/> \\u50b3\\u771f\\uff1a886-4-2319-9156<br \\/> \\u5730\\u5740\\uff1a\\u53f0\\u4e2d\\u5e02\\u897f\\u5340\\u7cbe\\u8aa022\\u885733\\u865f<br \\/> E-mail\\uff1aservice@hecto.com.tw<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 06:22:03\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 06:21:23\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (70,9,1,'','2014-10-07 06:22:26',584,5535,'a6b342b9a8f24cfdf45b5ce8c56b5130c5061ca4','{\"id\":9,\"asset_id\":\"131\",\"title\":\"\\u52a0\\u76df\\u898f\\u5283\\u57f9\\u8a13\",\"alias\":\"pioneer-affiliate\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow zoomIn\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<h3>\\u52a0\\u76df\\u54c1\\u724c\\u512a\\u52e2<\\/h3>\\r\\n<h4>\\u00a0<\\/h4>\\r\\n<h4>\\u98a8\\u683c\\u578b\\u614b\\u5177\\u7af6\\u722d\\u529b\\u64c1\\u6709\\u9ad8\\u6210\\u529f\\u7387<\\/h4>\\r\\n<p>\\u00a0\\u52a0\\u76df\\u8005\\u4e0d\\u53ea\\u5099\\u59a5\\u8cc7\\u91d1\\uff0c\\u66f4\\u8981\\u6709\\u6210\\u529f\\u7684\\u3001\\u6709\\u5be6\\u529b\\u7684\\u7d44\\u7e54\\u54c8\\u91cc\\u6b50\\u7e3d\\u90e8\\u70ba\\u5f8c\\u76fe\\u63d0\\u4f9b\\u6c38\\u7e8c\\u7684\\u8f14\\u5c0e\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u9ad8\\u77e5\\u540d\\u5ea6<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u591a\\u5e74\\u7d93\\u71df\\u7684\\u5546\\u8b7d\\u65e9\\u5df2\\u690d\\u5165\\u5728\\u6d88\\u8cbb\\u8005\\u5fc3\\u4e2d\\uff0c\\u66f4\\u65bc2000\\u5e74\\u69ae\\u7372\\u53f0\\u7063\\u512a\\u826f\\u9910\\u98f2\\u4f01\\u696d\\u91d1\\u8cea\\u734e\\u96c6\\u5ba2\\u529b\\u5f37\\uff0c\\u85c9\\u7531\\u9ad8\\u77e5\\u540d\\u5ea6\\u8f15\\u9b06\\u5275\\u9020\\u9ad8\\u71df\\u696d\\u984d\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u5e97\\u540d\\u5bb9\\u6613\\u8a18 \\u6709CIS\\u898f\\u5283<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u6ce8\\u91cd\\u89aa\\u5207\\u670d\\u52d9\\u3001\\u5f62\\u8c61\\u8a2d\\u8a08\\uff0c\\u6613\\u65bc\\u6df1\\u5165\\u6d88\\u8cbb\\u8005\\u5fc3\\u4e2d\\uff0c\\u535a\\u5f97\\u9867\\u5ba2\\u597d\\u611f\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u958b\\u767c\\u6709\\u4e3b\\u984c\\u5546\\u54c1 \\/ \\u63d0\\u4f9b\\u670d\\u52d9\\u6709\\u7279\\u8272<\\/h4>\\r\\n<p>\\u54c8\\u91cc\\u6b50\\u4e0d\\u53ea\\u5d07\\u9ad8\\u7684\\u7d93\\u71df\\u7406\\u5ff5\\uff0c\\u66f4\\u4e0d\\u65b7\\u958b\\u767c\\u65b0\\u7522\\u54c1\\u3001\\u65b0\\u83dc\\u55ae\\u7684\\u8b8a\\u5316\\uff0c\\u8b93\\u540c\\u696d\\u4e0d\\u6613\\u6a21\\u4eff\\uff0c\\u4fdd\\u6301\\u7522\\u54c1\\u5e02\\u5834\\u7af6\\u722d\\u529b\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u6709\\u826f\\u597d\\u7684\\u9023\\u9396\\u7d93\\u71df\\u9ad4\\u7cfb\\u53ca KNOW-HOW \\u6280\\u8853<\\/h4>\\r\\n<p>\\u5f9e\\u5546\\u54c1\\u63a1\\u8cfc \\/ \\u6574\\u5408 \\/ \\u767c\\u9001 \\/ \\u88fd\\u4f5c \\/ \\u7ba1\\u7406 \\/ \\u4eba\\u4e8b \\/ \\u8ca1\\u52d9\\uff0c\\u4e43\\u81f3\\u60c5\\u5831\\u8490\\u96c6\\u7684\\u7e3d\\u5408\\uff0c\\u5b8c\\u6574\\u7684\\u7d93\\u71df\\u50b3\\u627f\\u4ee5\\u53ca\\u6280\\u8853\\u7684\\u6307\\u5c0e\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u6c38\\u7e8c\\u7d93\\u71df\\u4e0d\\u65b7\\u7814\\u767c\\u6539\\u5584<\\/h4>\\r\\n<p>\\u672c\\u516c\\u53f8\\u96a8\\u8457\\u793e\\u6703\\u74b0\\u5883\\u8207\\u7d93\\u6fdf\\u578b\\u614b\\u7684\\u8b8a\\u9077\\uff0c\\u4e0d\\u6642\\u5730\\u8b00\\u6c42\\u6539\\u5584\\u4e43\\u81f3\\u7a81\\u7834\\uff0c\\u4ee5\\u61c9\\u96a8\\u6642\\u5728\\u8b8a\\u7684\\u5927\\u74b0\\u5883\\u548c\\u9867\\u5ba2\\u6c38\\u4e0d\\u6eff\\u8db3\\u7684\\u5404\\u7a2e\\u9700\\u6c42\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u57f9\\u8a13\\u5c08\\u696d\\u4eba\\u624d<\\/h4>\\r\\n<p>\\u672c\\u516c\\u53f8\\u4ee5\\u5f37\\u6709\\u529b\\u3001\\u5c08\\u696d\\u7684\\u7d44\\u7e54\\u3001\\u5c08\\u696d\\u4eba\\u624d\\uff0c\\u4e0d\\u65b7\\u7684\\u9032\\u884c\\u52a0\\u76df\\u5e97\\u4eba\\u54e1\\u7684\\u5728\\u8077\\u6559\\u80b2\\u8a13\\u7df4\\u6280\\u8853\\u7684\\u518d\\u63d0\\u5347\\uff0c\\u4f7f\\u52a0\\u76df\\u8005\\u4e0d\\u5fc5\\u70ba\\u4eba\\u4e8b\\u6d41\\u52d5\\u800c\\u7169\\u60f1\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h3>\\u52a0\\u5165\\u6211\\u5011\\uff0c\\u5c31\\u662f\\u73fe\\u5728\\uff01<\\/h3>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/affiliate.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" height=\\\"315\\\" \\/><\\/p>\\r\\n<p>\\u6211\\u5011\\u64c1\\u6709\\u6700\\u5c08\\u696d\\u7684\\u7d93\\u9a57\\uff0c\\u70ba\\u60a8\\u91cf\\u8eab\\u6253\\u9020\\u5c6c\\u65bc\\u60a8\\u7684\\u4eba\\u751f\\u5922\\uff01<br \\/> \\u672c\\u6848\\u4f01\\u5283\\u57f7\\u884c\\uff1a\\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8<br \\/> \\u5354\\u529b\\u6307\\u5c0e\\uff1a\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8<\\/p>\\r\\n<p>\\u96fb\\u8a71\\uff1a886-4-2325-4337<br \\/> \\u3000\\u3000\\u3000886-4-2325-4332<br \\/> \\u514d\\u4ed8\\u8cbb\\u5c08\\u7dda\\uff1a0800-588338<br \\/> \\u50b3\\u771f\\uff1a886-4-2319-9156<br \\/> \\u5730\\u5740\\uff1a\\u53f0\\u4e2d\\u5e02\\u897f\\u5340\\u7cbe\\u8aa022\\u885733\\u865f<br \\/> E-mail\\uff1aservice@hecto.com.tw<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 06:22:26\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 06:22:03\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":4,\"ordering\":\"0\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"6\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (71,8,1,'','2014-10-07 06:23:41',584,4017,'4551588fa1ecee7cce1a14f2c2532d04f2adfb4d','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeInRight\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<h5>\\u6797\\u69ae\\u751f<\\/h5>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row wow fadeInLeft\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<h5>\\u8521\\u4f69\\u73b2<\\/h5>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 06:23:41\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 06:23:29\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":7,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"21\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (72,7,1,'','2014-10-07 06:23:53',584,4965,'8d080f2e3349ecf80303fd7847211fb61a2efe91','{\"id\":7,\"asset_id\":\"129\",\"title\":\"\\u6559\\u5b78\\u8ab2\\u7a0b\",\"alias\":\"pioneer-teach\",\"introtext\":\"<div class=\\\"row\\\">\\r\\n<div class=\\\"col-md-12 wow fadeInLeft\\\" data-wow-duration=\\\"0.5s\\\">\\r\\n<p>\\u751f\\u6d3b\\u8ddf\\u5496\\u5561\\u7684\\u95dc\\u4fc2\\u76f8\\u7576\\u5bc6\\u5207\\uff0c\\u4ee5\\u57fa\\u790e\\u7684\\u610f\\u5f0f\\u5496\\u5561\\u70f9\\u716e\\u6559\\u5b78\\uff0c\\u611f\\u65bc\\u65e5\\u5e38\\u6ce1\\u5496\\u5561\\u7684\\u7a0b\\u5e8f\\u6709\\u5982\\u4e00\\u689d\\u751f\\u7522\\u7dda\\uff0c\\u5f9e\\u4e2d\\u9818\\u7565\\u5f9e\\u5012\\u4e0b\\u65b0\\u9bae\\u751f\\u8c46\\u3001\\u78e8\\u8c46\\u3001\\u9ad8\\u58d3\\u6ffe\\u51fa\\u5496\\u5561\\u3001\\u6253\\u5976\\u6ce1\\u7684\\u6a19\\u793a\\u4ee5\\u53ca\\u6253\\u9020\\u597d\\u559d\\u5496\\u5561\\u7684\\u8a23\\u7ac5\\uff0c\\u5f9e\\u539f\\u7269\\u6599\\u3001\\u88fd\\u4f5c\\u6559\\u5b78\\u3001\\u5230\\u958b\\u5e97\\u8f14\\u5c0e \\u5c08\\u696d\\u6280\\u8853\\u50b3\\u6388\\uff0c\\u5e6b\\u60a8\\u8f15\\u9b06\\u505a\\u982d\\u5bb6\\uff01\\u4e0d\\u4f46\\u8b93\\u4f60\\u5b78\\u6703\\u716e\\u51fa\\u4e00\\u624b\\u597d\\u5496\\u5561\\uff0c\\u9084\\u6559\\u4f60 \\u5177\\u9ad4\\u7684\\u5be6\\u6230\\u7d93\\u71df\\u7b56\\u7565\\uff0c\\u6436\\u9032\\u5496\\u5561\\u9928\\u5e02\\u5834!<\\/p>\\r\\n<p><img src=\\\"images\\/com_aedes\\/hecto\\/teach.jpg\\\" alt=\\\"\\\" width=\\\"600\\\" \\/><\\/p>\\r\\n<h4>\\u6559\\u5b78\\u65b9\\u5f0f<\\/h4>\\r\\n<p>1. \\u63a1\\u5c0f\\u73ed\\u5236\\u3001\\u5faa\\u74b0\\u5f0f\\u6559\\u5b78\\u3002<br \\/> 2. \\u5be6\\u969b\\u64cd\\u4f5c\\u8207\\u7406\\u8ad6\\u4e26\\u91cd\\uff0c\\u63d0\\u4f9b\\u5496\\u5561\\u9928\\u73fe\\u5834\\u5be6\\u7fd2\\u3002<br \\/> 3. \\u4fdd\\u8b49\\u5b78\\u6210\\uff0c\\u8f14\\u5c0e\\u5275\\u696d\\u6216\\u5c31\\u696d\\u3002<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u6559\\u5b78\\u5167\\u5bb9<\\/h4>\\r\\n<p>1. \\u7fa9\\u5f0f\\u5496\\u5561\\u6c96\\u8abf \\/ \\u82b1\\u5f0f\\u7279\\u8abf \\/ \\u57fa\\u8c46\\u8abf\\u914d\\u3002<br \\/> 2. \\u5404\\u5f0f\\u624b\\u4f5c\\u5496\\u5561\\u8abf\\u88fd \\/ \\u5496\\u5561\\u57fa\\u8c46\\u8a8d\\u8b58\\u3002<br \\/> 3. \\u5404\\u5f0f\\u82b1\\u679c\\u8336\\u985e \\/ \\u98f2\\u6599 \\/ \\u512a\\u683c\\u51b0\\u6c99\\u8abf\\u88fd\\u3002<br \\/> 4. \\u5404\\u985e\\u578b\\u614b\\u5496\\u5561\\u9928 \\/ \\u9910\\u98f2\\u5e97\\u7d93\\u71df\\u7ba1\\u7406\\u5be6\\u52d9 \\/ \\u5e02\\u5834\\u5206\\u6790<br \\/> 5. \\u5496\\u5561\\u9928\\u73fe\\u5834\\u5be6\\u7fd2 \\/ \\u5be6\\u969b\\u64cd\\u4f5c\\u8f03\\u5b78<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u6559\\u5b78\\u5be6\\u7528<\\/h4>\\r\\n<p>1. \\u751f\\u6d3b\\u624d\\u85dd\\u73ed\\u8cbb\\u7528: NTS\\/ 12000 (\\u542b\\u6750\\u6599\\u8cbb) \\u6bcf\\u671f20\\u5c0f\\u6642<br \\/> 2. \\u958b\\u5e97\\u5275\\u696d\\u5c08\\u4fee\\u73ed: NTS\\/ 24000 (\\u542b\\u6750\\u6599\\u8cbb \\/ \\u73fe\\u5834\\u5be6\\u7fd2) \\u6bcf\\u671f30\\u5c0f\\u6642<br \\/> 3. \\u5496\\u5561\\u70d8\\u57f9\\u5c08\\u4fee\\u73ed: NTS\\/ 60000 (\\u542b\\u6750\\u6599\\u8cbb) \\u6bcf\\u671f40\\u5c0f\\u6642 (\\u6bcf\\u58024\\u5c0f\\u6642)<br \\/>\\u00a0 \\u00a0 \\u7531\\u53f0\\u7063\\u5496\\u5561\\u696d40\\u8cc7\\u6df1\\u5496\\u5561\\u5e2b \\u7b2c\\u4e00\\u9054\\u4eba \\u6797\\u69ae\\u751f \\u89aa\\u81ea\\u6388\\u8ab2<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<h4>\\u4e0a\\u8ab2\\u6642\\u9593<\\/h4>\\r\\n<p>\\u6bcf\\u661f\\u671f\\u4e09\\u3001\\u4e94<br \\/> \\u4e0b\\u5348 3:00 ~ 5:00<br \\/> \\u665a\\u4e0a 7:00 ~ 9:00<br \\/> \\u6bcf\\u671f\\u6642\\u6578\\uff1a20\\u5c0f\\u6642<\\/p>\\r\\n<p>\\u9910\\u98f2\\u696d\\u754c\\u5982\\u9700\\u4eba\\u624d\\uff0c\\u6b61\\u8fce\\u6d3d\\u8a62<br \\/> \\u958b\\u653e\\u5168\\u7701\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928\\u52a0\\u76df\\u52df\\u96c6\\u4e2d<br \\/> \\u8a73\\u7d30\\u8cc7\\u8a0a\\u8acb\\u6d3dTEL\\uff1a04-2325-4337<br \\/> \\u3000\\u3000\\u3000\\u3000\\u3000\\u3000 \\u00a0 \\u3000 \\u00a004-2325-4332<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 06:23:53\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 06:23:28\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":3,\"ordering\":\"2\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"5\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (73,8,1,'','2014-10-07 06:24:52',584,4017,'ed2ac88bddb51667870f38006660ebe401625808','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeInRight\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<h5>\\u6797\\u69ae\\u751f<\\/h5>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"row wow fadeInLeft\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<h5>\\u8521\\u4f69\\u73b2<\\/h5>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 06:24:52\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 06:23:41\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":8,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"22\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (74,8,1,'','2014-10-07 06:28:22',584,4008,'ffb15a21a8154ff47aeab1b51e4ff792de4183f8','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeInRight\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<h5>\\u6797\\u69ae\\u751f<\\/h5>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<p>\\u00a0<\\/p>\\r\\n<div class=\\\"row wow fadeInLeft\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<h5>\\u8521\\u4f69\\u73b2<\\/h5>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-07 06:28:22\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-07 06:27:20\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":10,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"24\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (75,8,1,'','2014-10-08 07:27:36',584,3991,'ef719e90000c080e832c364d56f1d957146b8711','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeIn\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<h5>\\u6797\\u69ae\\u751f<\\/h5>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row wow fadeIn\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<h5>\\u8521\\u4f69\\u73b2<\\/h5>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-08 07:27:36\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-08 07:26:54\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":12,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"32\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
INSERT INTO `mp75b_ucm_history` VALUES (76,8,1,'','2014-10-08 07:28:32',584,4036,'dc4b4da7c464246e14119b1ebf1d55435b2bd6c7','{\"id\":8,\"asset_id\":\"130\",\"title\":\"\\u5e2b\\u8cc7\\u5718\\u968a\",\"alias\":\"pioneer-teacher\",\"introtext\":\"<div class=\\\"row wow fadeIn\\\"><!-- image at left -->\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u5e2b\\u8cc7\\u4ecb\\u7d39<small>\\u89aa\\u81e8\\u6388\\u8ab2<\\/small><\\/h4>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs text-right\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher1.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"col-sm-6\\\">\\r\\n<h5>\\u6797\\u69ae\\u751f<\\/h5>\\r\\n<p>\\u9022\\u7532\\u7ba1\\u7406\\u5b78\\u9662\\u9032\\u4fee\\u73ed\\u7d50\\u696d<br \\/> \\u65e5\\u672c\\u4e00\\u756a\\u5496\\u5561\\u9928\\u7814\\u7fd2\\u7d50\\u696d<br \\/> \\u524d\\u5be6\\u8e10\\u5bb6\\u653f\\u63a8\\u5ee3\\u4e2d\\u5fc3\\u8b1b\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u4e0a\\u6d77\\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u52a0\\u76df\\u4e8b\\u696d\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<div class=\\\"row wow fadeIn\\\"><!-- image at right -->\\r\\n<div class=\\\"col-sm-6 text-right\\\">\\r\\n<h5>\\u8521\\u4f69\\u73b2<\\/h5>\\r\\n<p>\\u524d\\u53f0\\u5317\\u91d1\\u4e16\\u754c\\u897f\\u9910\\u5ef3\\u9818\\u73ed<br \\/> \\u524d\\u4e0a\\u5cf6\\u5496\\u5561\\u9928\\u5427\\u53f0\\u8abf\\u7406\\u5e2b<br \\/> \\u559c\\u4f2f\\u570b\\u969b\\u9910\\u98f2\\u958b\\u767c\\u9867\\u554f\\u516c\\u53f8\\u8ca0\\u8cac\\u4eba (\\u8cc7\\u6b7732\\u5e74)<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u98df\\u54c1\\u6709\\u9650\\u516c\\u53f8 \\u7e3d\\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u6cd5\\u5f0f\\u852c\\u98df\\u5496\\u5561\\u9928 \\u7d93\\u7406<br \\/> \\u54c8\\u91cc\\u6b50\\u5496\\u5561\\u6559\\u5ba4 \\u9996\\u5e2d\\u8b1b\\u5e2b<\\/p>\\r\\n<\\/div>\\r\\n<div class=\\\"col-sm-6 hidden-xs\\\"><img src=\\\"images\\/com_aedes\\/hecto\\/teacher2.jpg\\\" alt=\\\"\\\" \\/><\\/div>\\r\\n<div class=\\\"row wow fadeIn\\\">\\r\\n<div class=\\\"col-sm-12\\\">\\r\\n<h4>\\u53ca\\u6578\\u4f4d\\u8cc7\\u6df1\\u9910\\u98f2\\u5427\\u53f0\\u8abf\\u7406\\u5e2b\\u5085\\u89aa\\u81e8\\u6388\\u8ab2<\\/h4>\\r\\n<p>\\u5f9e\\u5404\\u570b\\u7cbe\\u54c1\\u5496\\u5561\\u7684\\u8a8d\\u8b58\\u3001\\u70d8\\u7119\\u3001\\u676f\\u6e2c\\u3001\\u7814\\u7fd2\\u3001\\u8abf\\u914d\\u3001\\u5404\\u5f0f\\u6c96\\u716e\\u6cd5\\uff0c\\u60f3\\u771f\\u6b63\\u6df1\\u5165\\u5496\\u5561\\u7cbe\\u795e\\u6587\\u5316\\u7684\\u8ffd\\u6c42\\u8005\\uff0c\\u628a\\u771f\\u6b63\\u7684\\u5496\\u5561\\u6168\\u5ff5\\u4f5c\\u6b63\\u78ba\\u50b3\\u627f\\u662f\\u6211\\u5011\\u7684\\u76ee\\u6a19\\u4f7f\\u547d\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"fulltext\":\"\",\"state\":1,\"catid\":\"12\",\"created\":\"2014-10-07 03:50:26\",\"created_by\":\"584\",\"created_by_alias\":\"\",\"modified\":\"2014-10-08 07:28:32\",\"modified_by\":\"584\",\"checked_out\":\"584\",\"checked_out_time\":\"2014-10-08 07:27:36\",\"publish_up\":\"2014-10-07 03:50:26\",\"publish_down\":\"0000-00-00 00:00:00\",\"images\":\"{\\\"image_intro\\\":\\\"\\\",\\\"float_intro\\\":\\\"\\\",\\\"image_intro_alt\\\":\\\"\\\",\\\"image_intro_caption\\\":\\\"\\\",\\\"image_fulltext\\\":\\\"\\\",\\\"float_fulltext\\\":\\\"\\\",\\\"image_fulltext_alt\\\":\\\"\\\",\\\"image_fulltext_caption\\\":\\\"\\\"}\",\"urls\":\"{\\\"urla\\\":false,\\\"urlatext\\\":\\\"\\\",\\\"targeta\\\":\\\"\\\",\\\"urlb\\\":false,\\\"urlbtext\\\":\\\"\\\",\\\"targetb\\\":\\\"\\\",\\\"urlc\\\":false,\\\"urlctext\\\":\\\"\\\",\\\"targetc\\\":\\\"\\\"}\",\"attribs\":\"{\\\"show_title\\\":\\\"\\\",\\\"link_titles\\\":\\\"\\\",\\\"show_tags\\\":\\\"\\\",\\\"show_intro\\\":\\\"\\\",\\\"info_block_position\\\":\\\"\\\",\\\"show_category\\\":\\\"\\\",\\\"link_category\\\":\\\"\\\",\\\"show_parent_category\\\":\\\"\\\",\\\"link_parent_category\\\":\\\"\\\",\\\"show_author\\\":\\\"\\\",\\\"link_author\\\":\\\"\\\",\\\"show_create_date\\\":\\\"\\\",\\\"show_modify_date\\\":\\\"\\\",\\\"show_publish_date\\\":\\\"\\\",\\\"show_item_navigation\\\":\\\"\\\",\\\"show_icons\\\":\\\"\\\",\\\"show_print_icon\\\":\\\"\\\",\\\"show_email_icon\\\":\\\"\\\",\\\"show_vote\\\":\\\"\\\",\\\"show_hits\\\":\\\"\\\",\\\"show_noauth\\\":\\\"\\\",\\\"urls_position\\\":\\\"\\\",\\\"alternative_readmore\\\":\\\"\\\",\\\"article_layout\\\":\\\"\\\",\\\"show_publishing_options\\\":\\\"\\\",\\\"show_article_options\\\":\\\"\\\",\\\"show_urls_images_backend\\\":\\\"\\\",\\\"show_urls_images_frontend\\\":\\\"\\\",\\\"extra-class\\\":\\\"\\\"}\",\"version\":13,\"ordering\":\"1\",\"metakey\":\"\",\"metadesc\":\"\",\"access\":\"1\",\"hits\":\"34\",\"metadata\":\"{\\\"robots\\\":\\\"\\\",\\\"author\\\":\\\"\\\",\\\"rights\\\":\\\"\\\",\\\"xreference\\\":\\\"\\\"}\",\"featured\":\"0\",\"language\":\"*\",\"xreference\":\"\"}',0);
UNLOCK TABLES;

-- Table structure for table `mp75b_update_sites`

DROP TABLE IF EXISTS `mp75b_update_sites`;
CREATE TABLE `mp75b_update_sites` (
  `update_site_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `location` text NOT NULL,
  `enabled` int(11) DEFAULT '0',
  `last_check_timestamp` bigint(20) DEFAULT '0',
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_site_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Update Sites';

-- Dumping data for table `mp75b_update_sites`

LOCK TABLES `mp75b_update_sites` WRITE;
INSERT INTO `mp75b_update_sites` VALUES (1,'Joomla! Core','collection','http://update.joomla.org/core/list.xml',1,1432803903,'');
INSERT INTO `mp75b_update_sites` VALUES (2,'Joomla! Extension Directory','collection','http://update.joomla.org/jed/list.xml',1,1432803903,'');
INSERT INTO `mp75b_update_sites` VALUES (3,'Accredited Joomla! Translations','collection','http://update.joomla.org/language/translationlist_3.xml',1,1432803903,'');
INSERT INTO `mp75b_update_sites` VALUES (4,'','collection','http://update.joomlart.com/service/tracking/list.xml',1,1432803903,'');
INSERT INTO `mp75b_update_sites` VALUES (5,'Asikart Remoteimage Component','extension','http://update.asikart.com/component/com_remoteimage.xml',1,1432803903,'');
INSERT INTO `mp75b_update_sites` VALUES (6,'Asikart Easyset','extension','http://update.asikart.com/plugin/system/asikart_easyset.xml',0,0,'');
INSERT INTO `mp75b_update_sites` VALUES (7,'Asikart Userxtd Component','extension','https://raw.githubusercontent.com/asikart/userxtd/staging/update.xml',1,1432803903,'');
INSERT INTO `mp75b_update_sites` VALUES (8,'Asikart Markdown Plugins','extension','http://update.asikart.com/plugin/plg_akmarkdown.xml',0,0,'');
INSERT INTO `mp75b_update_sites` VALUES (9,'Image Show GK4 Updates','extension','https://www.gavick.com/update_server/joomla30/image_show_gk4.xml',1,1432803903,'');
UNLOCK TABLES;

-- Table structure for table `mp75b_update_sites_extensions`

DROP TABLE IF EXISTS `mp75b_update_sites_extensions`;
CREATE TABLE `mp75b_update_sites_extensions` (
  `update_site_id` int(11) NOT NULL DEFAULT '0',
  `extension_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`update_site_id`,`extension_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Links extensions to update sites';

-- Dumping data for table `mp75b_update_sites_extensions`

LOCK TABLES `mp75b_update_sites_extensions` WRITE;
INSERT INTO `mp75b_update_sites_extensions` VALUES (1,700);
INSERT INTO `mp75b_update_sites_extensions` VALUES (2,700);
INSERT INTO `mp75b_update_sites_extensions` VALUES (3,600);
INSERT INTO `mp75b_update_sites_extensions` VALUES (3,10002);
INSERT INTO `mp75b_update_sites_extensions` VALUES (4,10018);
INSERT INTO `mp75b_update_sites_extensions` VALUES (4,10019);
INSERT INTO `mp75b_update_sites_extensions` VALUES (4,10020);
INSERT INTO `mp75b_update_sites_extensions` VALUES (5,10021);
INSERT INTO `mp75b_update_sites_extensions` VALUES (6,10025);
INSERT INTO `mp75b_update_sites_extensions` VALUES (7,10039);
INSERT INTO `mp75b_update_sites_extensions` VALUES (8,10042);
INSERT INTO `mp75b_update_sites_extensions` VALUES (9,10044);
UNLOCK TABLES;

-- Table structure for table `mp75b_updates`

DROP TABLE IF EXISTS `mp75b_updates`;
CREATE TABLE `mp75b_updates` (
  `update_id` int(11) NOT NULL AUTO_INCREMENT,
  `update_site_id` int(11) DEFAULT '0',
  `extension_id` int(11) DEFAULT '0',
  `name` varchar(100) DEFAULT '',
  `description` text NOT NULL,
  `element` varchar(100) DEFAULT '',
  `type` varchar(20) DEFAULT '',
  `folder` varchar(20) DEFAULT '',
  `client_id` tinyint(3) DEFAULT '0',
  `version` varchar(32) DEFAULT '',
  `data` text NOT NULL,
  `detailsurl` text NOT NULL,
  `infourl` text NOT NULL,
  `extra_query` varchar(1000) DEFAULT '',
  PRIMARY KEY (`update_id`)
) ENGINE=InnoDB AUTO_INCREMENT=324 DEFAULT CHARSET=utf8 COMMENT='Available Updates';

-- Dumping data for table `mp75b_updates`

LOCK TABLES `mp75b_updates` WRITE;
INSERT INTO `mp75b_updates` VALUES (1,1,700,'Joomla','','joomla','file','',0,'3.4.1','','http://update.joomla.org/core/sts/extension_sts.xml','','');
INSERT INTO `mp75b_updates` VALUES (2,3,0,'Malay','','pkg_ms-MY','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ms-MY_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (3,3,0,'Romanian','','pkg_ro-RO','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ro-RO_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (4,3,0,'Flemish','','pkg_nl-BE','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/nl-BE_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (5,3,10002,'Chinese Traditional','','pkg_zh-TW','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/zh-TW_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (6,3,0,'French','','pkg_fr-FR','package','',0,'3.4.1.2','','http://update.joomla.org/language/details3/fr-FR_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (7,3,0,'Galician','','pkg_gl-ES','package','',0,'3.3.1.2','','http://update.joomla.org/language/details3/gl-ES_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (8,3,0,'German','','pkg_de-DE','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/de-DE_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (9,3,0,'Greek','','pkg_el-GR','package','',0,'3.3.3.1','','http://update.joomla.org/language/details3/el-GR_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (10,3,0,'Japanese','','pkg_ja-JP','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ja-JP_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (11,3,0,'Hebrew','','pkg_he-IL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/he-IL_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (12,3,0,'EnglishAU','','pkg_en-AU','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-AU_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (13,3,0,'EnglishUS','','pkg_en-US','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/en-US_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (14,3,0,'Hungarian','','pkg_hu-HU','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/hu-HU_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (15,3,0,'Afrikaans','','pkg_af-ZA','package','',0,'3.2.0.2','','http://update.joomla.org/language/details3/af-ZA_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (16,3,0,'Arabic Unitag','','pkg_ar-AA','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ar-AA_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (17,3,0,'Belarusian','','pkg_be-BY','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/be-BY_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (18,3,0,'Bulgarian','','pkg_bg-BG','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/bg-BG_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (19,3,0,'Catalan','','pkg_ca-ES','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ca-ES_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (20,3,0,'Chinese Simplified','','pkg_zh-CN','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/zh-CN_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (21,3,0,'Croatian','','pkg_hr-HR','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/hr-HR_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (22,3,0,'Czech','','pkg_cs-CZ','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/cs-CZ_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (23,3,0,'Danish','','pkg_da-DK','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/da-DK_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (24,3,0,'Dutch','','pkg_nl-NL','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/nl-NL_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (25,3,0,'Estonian','','pkg_et-EE','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/et-EE_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (26,3,0,'Italian','','pkg_it-IT','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/it-IT_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (27,3,0,'Korean','','pkg_ko-KR','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ko-KR_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (28,3,0,'Latvian','','pkg_lv-LV','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/lv-LV_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (29,3,0,'Macedonian','','pkg_mk-MK','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/mk-MK_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (30,3,0,'Norwegian Bokmal','','pkg_nb-NO','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/nb-NO_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (31,3,0,'Norwegian Nynorsk','','pkg_nn-NO','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/nn-NO_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (32,3,0,'Persian','','pkg_fa-IR','package','',0,'3.4.1.2','','http://update.joomla.org/language/details3/fa-IR_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (33,3,0,'Polish','','pkg_pl-PL','package','',0,'3.4.1.3','','http://update.joomla.org/language/details3/pl-PL_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (34,3,0,'Portuguese','','pkg_pt-PT','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/pt-PT_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (35,3,0,'Russian','','pkg_ru-RU','package','',0,'3.4.1.2','','http://update.joomla.org/language/details3/ru-RU_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (36,3,0,'Slovak','','pkg_sk-SK','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sk-SK_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (37,3,0,'Swedish','','pkg_sv-SE','package','',0,'3.4.1.3','','http://update.joomla.org/language/details3/sv-SE_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (38,3,0,'Syriac','','pkg_sy-IQ','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sy-IQ_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (39,3,0,'Tamil','','pkg_ta-IN','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/ta-IN_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (40,3,0,'Thai','','pkg_th-TH','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/th-TH_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (41,3,0,'Turkish','','pkg_tr-TR','package','',0,'3.4.1.3','','http://update.joomla.org/language/details3/tr-TR_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (42,3,0,'Ukrainian','','pkg_uk-UA','package','',0,'3.3.3.15','','http://update.joomla.org/language/details3/uk-UA_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (43,3,0,'Uyghur','','pkg_ug-CN','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/ug-CN_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (44,3,0,'Albanian','','pkg_sq-AL','package','',0,'3.1.1.1','','http://update.joomla.org/language/details3/sq-AL_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (45,3,0,'Hindi','','pkg_hi-IN','package','',0,'3.3.6.1','','http://update.joomla.org/language/details3/hi-IN_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (46,3,0,'Portuguese Brazil','','pkg_pt-BR','package','',0,'3.4.1.3','','http://update.joomla.org/language/details3/pt-BR_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (47,3,0,'Serbian Latin','','pkg_sr-YU','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sr-YU_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (48,3,0,'Spanish','','pkg_es-ES','package','',0,'3.4.1.2','','http://update.joomla.org/language/details3/es-ES_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (49,3,0,'Bosnian','','pkg_bs-BA','package','',0,'3.4.0.1','','http://update.joomla.org/language/details3/bs-BA_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (50,3,0,'Serbian Cyrillic','','pkg_sr-RS','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sr-RS_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (51,3,0,'Vietnamese','','pkg_vi-VN','package','',0,'3.2.1.1','','http://update.joomla.org/language/details3/vi-VN_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (52,3,0,'Bahasa Indonesia','','pkg_id-ID','package','',0,'3.3.0.2','','http://update.joomla.org/language/details3/id-ID_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (53,3,0,'Finnish','','pkg_fi-FI','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/fi-FI_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (54,3,0,'Swahili','','pkg_sw-KE','package','',0,'3.4.1.1','','http://update.joomla.org/language/details3/sw-KE_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (55,3,0,'Montenegrin','','pkg_srp-ME','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/srp-ME_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (56,3,0,'EnglishCA','','pkg_en-CA','package','',0,'3.3.6.1','','http://update.joomla.org/language/details3/en-CA_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (57,3,0,'FrenchCA','','pkg_fr-CA','package','',0,'3.3.6.1','','http://update.joomla.org/language/details3/fr-CA_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (58,3,0,'Welsh','','pkg_cy-GB','package','',0,'3.3.0.1','','http://update.joomla.org/language/details3/cy-GB_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (59,3,0,'Sinhala','','pkg_si-LK','package','',0,'3.3.1.1','','http://update.joomla.org/language/details3/si-LK_details.xml','','');
INSERT INTO `mp75b_updates` VALUES (60,4,0,'JA Amazon S3 for joomla 16','','com_com_jaamazons3','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/com_com_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (61,4,0,'JA Extenstion Manager Component j16','','com_com_jaextmanager','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/com_com_jaextmanager.xml','','');
INSERT INTO `mp75b_updates` VALUES (62,4,0,'JA Amazon S3 for joomla 2.5 & 3.x','','com_jaamazons3','component','',1,'2.5.6','','http://update.joomlart.com/service/tracking/j16/com_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (63,4,0,'JA Comment Package for Joomla 2.5 & 3.3','','com_jacomment','component','',1,'2.5.4','','http://update.joomlart.com/service/tracking/j16/com_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (64,4,10018,'JA Extenstion Manager Component for J25 & J3','','com_jaextmanager','component','',1,'2.6.0','','http://update.joomlart.com/service/tracking/j16/com_jaextmanager.xml','','');
INSERT INTO `mp75b_updates` VALUES (65,4,0,'JA Google Storage Package for J2.5 & J3.0','','com_jagooglestorage','component','',1,'1.0.0','','http://update.joomlart.com/service/tracking/j16/com_jagooglestorage.xml','','');
INSERT INTO `mp75b_updates` VALUES (66,4,0,'JA Job Board Package For J25','','com_jajobboard','component','',1,'1.0.6','','http://update.joomlart.com/service/tracking/j16/com_jajobboard.xml','','');
INSERT INTO `mp75b_updates` VALUES (67,4,0,'JA K2 Filter Package for J25 & J3.3','','com_jak2filter','component','',1,'1.1.8','','http://update.joomlart.com/service/tracking/j16/com_jak2filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (68,4,0,'JA K2 Filter Package for J25 & J30','','com_jak2fiter','component','',1,'1.0.4','','http://update.joomlart.com/service/tracking/j16/com_jak2fiter.xml','','');
INSERT INTO `mp75b_updates` VALUES (69,4,0,'JA Showcase component for Joomla 1.7','','com_jashowcase','component','',1,'1.1.0','','http://update.joomlart.com/service/tracking/j16/com_jashowcase.xml','','');
INSERT INTO `mp75b_updates` VALUES (70,4,0,'JA Voice Package for Joomla 2.5 & 3.x','','com_javoice','component','',1,'1.1.0','','http://update.joomlart.com/service/tracking/j16/com_javoice.xml','','');
INSERT INTO `mp75b_updates` VALUES (71,4,0,'JA Appolio Theme for EasyBlog','','easyblog_theme_appolio','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_appolio.xml','','');
INSERT INTO `mp75b_updates` VALUES (72,4,0,'JA Biz Theme for EasyBlog','','easyblog_theme_biz','custom','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_biz.xml','','');
INSERT INTO `mp75b_updates` VALUES (73,4,0,'JA Bookshop Theme for EasyBlog','','easyblog_theme_bookshop','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_bookshop.xml','','');
INSERT INTO `mp75b_updates` VALUES (74,4,0,'JA Decor Theme for EasyBlog','','easyblog_theme_decor','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_decor.xml','','');
INSERT INTO `mp75b_updates` VALUES (75,4,0,'Theme Fixel for Easyblog J25 & J34','','easyblog_theme_fixel','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_fixel.xml','','');
INSERT INTO `mp75b_updates` VALUES (76,4,0,'Theme Magz for Easyblog J25 & J34','','easyblog_theme_magz','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_magz.xml','','');
INSERT INTO `mp75b_updates` VALUES (77,4,0,'JA Muzic Theme for EasyBlog','','easyblog_theme_muzic','custom','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_muzic.xml','','');
INSERT INTO `mp75b_updates` VALUES (78,4,0,'JA Obelisk Theme for EasyBlog','','easyblog_theme_obelisk','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_obelisk.xml','','');
INSERT INTO `mp75b_updates` VALUES (79,4,0,'JA Sugite Theme for EasyBlog','','easyblog_theme_sugite','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/easyblog_theme_sugite.xml','','');
INSERT INTO `mp75b_updates` VALUES (80,4,0,'JA Anion template for Joomla 2.5','','ja_anion','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_anion.xml','','');
INSERT INTO `mp75b_updates` VALUES (81,4,0,'JA Appolio Template','','ja_appolio','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_appolio.xml','','');
INSERT INTO `mp75b_updates` VALUES (82,4,0,'JA Argo Template for J3x','','ja_argo','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_argo.xml','','');
INSERT INTO `mp75b_updates` VALUES (83,4,0,'JA Beranis Template','','ja_beranis','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_beranis.xml','','');
INSERT INTO `mp75b_updates` VALUES (84,4,0,'JA Bistro Template for Joomla 2.5','','ja_bistro','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_bistro.xml','','');
INSERT INTO `mp75b_updates` VALUES (85,4,0,'JA Blazes Template for J25 & J31','','ja_blazes','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_blazes.xml','','');
INSERT INTO `mp75b_updates` VALUES (86,4,0,'JA Bookshop Template','','ja_bookshop','template','',0,'1.1.4','','http://update.joomlart.com/service/tracking/j16/ja_bookshop.xml','','');
INSERT INTO `mp75b_updates` VALUES (87,4,0,'JA Brisk Template for J25 & J33','','ja_brisk','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_brisk.xml','','');
INSERT INTO `mp75b_updates` VALUES (88,4,0,'JA Business Template for Joomla 2.5','','ja_business','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_business.xml','','');
INSERT INTO `mp75b_updates` VALUES (89,4,0,'JA Cloris Template for Joomla 2.5.x','','ja_cloris','template','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/ja_cloris.xml','','');
INSERT INTO `mp75b_updates` VALUES (90,4,0,'JA Community PLus Template for Joomla 2.5','','ja_community_plus','template','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/ja_community_plus.xml','','');
INSERT INTO `mp75b_updates` VALUES (91,4,0,'JA Decor Template','','ja_decor','template','',0,'1.1.4','','http://update.joomlart.com/service/tracking/j16/ja_decor.xml','','');
INSERT INTO `mp75b_updates` VALUES (92,4,0,'JA Droid Template for Joomla 2.5','','ja_droid','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_droid.xml','','');
INSERT INTO `mp75b_updates` VALUES (93,4,0,'JA Edenite Template for J25 & J30','','ja_edenite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_edenite.xml','','');
INSERT INTO `mp75b_updates` VALUES (94,4,0,'JA Elastica Template for J25 & J32','','ja_elastica','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_elastica.xml','','');
INSERT INTO `mp75b_updates` VALUES (95,4,0,'JA Erio Template for Joomla 2.5 & 3.1','','ja_erio','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_erio.xml','','');
INSERT INTO `mp75b_updates` VALUES (96,4,0,'Ja Events Template for Joomla 2.5','','ja_events','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_events.xml','','');
INSERT INTO `mp75b_updates` VALUES (97,4,0,'JA Fubix Template for J25 & J33','','ja_fubix','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_fubix.xml','','');
INSERT INTO `mp75b_updates` VALUES (98,4,0,'JA Graphite Template for Joomla 2.5','','ja_graphite','template','',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/ja_graphite.xml','','');
INSERT INTO `mp75b_updates` VALUES (99,4,0,'JA Hawkstore Template','','ja_hawkstore','template','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/ja_hawkstore.xml','','');
INSERT INTO `mp75b_updates` VALUES (100,4,0,'JA Ironis Template for Joomla 2.5 & 3.1','','ja_ironis','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_ironis.xml','','');
INSERT INTO `mp75b_updates` VALUES (101,4,0,'JA Jason template','','ja_jason','template','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/ja_jason.xml','','');
INSERT INTO `mp75b_updates` VALUES (102,4,0,'JA Kranos Template for J25 & J30','','ja_kranos','template','',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/ja_kranos.xml','','');
INSERT INTO `mp75b_updates` VALUES (103,4,0,'JA Lens Template for Joomla 2.5 & 3.1','','ja_lens','template','',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/ja_lens.xml','','');
INSERT INTO `mp75b_updates` VALUES (104,4,0,'Ja Lime Template for Joomla 2.5 & J31','','ja_lime','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_lime.xml','','');
INSERT INTO `mp75b_updates` VALUES (105,4,0,'JA Magz Template for J25 & J34','','ja_magz','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_magz.xml','','');
INSERT INTO `mp75b_updates` VALUES (106,4,0,'JA Medicare Template','','ja_medicare','template','',0,'1.1.3','','http://update.joomlart.com/service/tracking/j16/ja_medicare.xml','','');
INSERT INTO `mp75b_updates` VALUES (107,4,0,'JA Mendozite Template for J25 & J32','','ja_mendozite','template','',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/ja_mendozite.xml','','');
INSERT INTO `mp75b_updates` VALUES (108,4,0,'JA Mero Template for J25 & J3x','','ja_mero','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_mero.xml','','');
INSERT INTO `mp75b_updates` VALUES (109,4,0,'JA Mers Template for J25 & J32','','ja_mers','template','',0,'1.0.7','','http://update.joomlart.com/service/tracking/j16/ja_mers.xml','','');
INSERT INTO `mp75b_updates` VALUES (110,4,0,'JA Methys Template for Joomla 2.5','','ja_methys','template','',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/ja_methys.xml','','');
INSERT INTO `mp75b_updates` VALUES (111,4,0,'Ja Minisite Template for Joomla 2.5','','ja_minisite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_minisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (112,4,0,'JA Mitius Template','','ja_mitius','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_mitius.xml','','');
INSERT INTO `mp75b_updates` VALUES (113,4,0,'JA Mixmaz Template','','ja_mixmaz','template','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/ja_mixmaz.xml','','');
INSERT INTO `mp75b_updates` VALUES (114,4,0,'JA Nex Template for J25 & J30','','ja_nex','template','',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/ja_nex.xml','','');
INSERT INTO `mp75b_updates` VALUES (115,4,0,'JA Nex T3 Template','','ja_nex_t3','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_nex_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (116,4,0,'JA Norite Template for J2.5 & J31','','ja_norite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_norite.xml','','');
INSERT INTO `mp75b_updates` VALUES (117,4,0,'JA Nuevo template','','ja_nuevo','template','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/ja_nuevo.xml','','');
INSERT INTO `mp75b_updates` VALUES (118,4,0,'JA Obelisk Template','','ja_obelisk','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_obelisk.xml','','');
INSERT INTO `mp75b_updates` VALUES (119,4,0,'JA Onepage Template','','ja_onepage','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_onepage.xml','','');
INSERT INTO `mp75b_updates` VALUES (120,4,0,'JA ores template for Joomla 2.5 & 3.1','','ja_ores','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_ores.xml','','');
INSERT INTO `mp75b_updates` VALUES (121,4,0,'JA Orisite Template  for J25 & J32','','ja_orisite','template','',0,'1.1.6','','http://update.joomlart.com/service/tracking/j16/ja_orisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (122,4,0,'JA Playmag Template','','ja_playmag','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_playmag.xml','','');
INSERT INTO `mp75b_updates` VALUES (123,4,0,'JA Portfolio Real Estate template for Joomla 1.6.x','','ja_portfolio','file','',0,'1.0.0 beta','','http://update.joomlart.com/service/tracking/j16/ja_portfolio.xml','','');
INSERT INTO `mp75b_updates` VALUES (124,4,0,'JA Portfolio Template for Joomla 2.5','','ja_portfolio_real_estate','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_portfolio_real_estate.xml','','');
INSERT INTO `mp75b_updates` VALUES (125,4,0,'JA Puresite Template for J25 & J31','','ja_puresite','template','',0,'1.0.7','','http://update.joomlart.com/service/tracking/j16/ja_puresite.xml','','');
INSERT INTO `mp75b_updates` VALUES (126,4,0,'JA Purity II template for Joomla 2.5 & 3.2','','ja_purity_ii','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_purity_ii.xml','','');
INSERT INTO `mp75b_updates` VALUES (127,4,0,'JA Pyro Template for Joomla 2.5','','ja_pyro','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_pyro.xml','','');
INSERT INTO `mp75b_updates` VALUES (128,4,0,'JA Rasite Template for J2.5 & J31','','ja_rasite','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_rasite.xml','','');
INSERT INTO `mp75b_updates` VALUES (129,4,0,'JA Rave Template for Joomla 2.5','','ja_rave','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_rave.xml','','');
INSERT INTO `mp75b_updates` VALUES (130,4,0,'JA Smashboard Template','','ja_smashboard','template','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/ja_smashboard.xml','','');
INSERT INTO `mp75b_updates` VALUES (131,4,0,'JA Social Template for Joomla 2.5','','ja_social','template','',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/ja_social.xml','','');
INSERT INTO `mp75b_updates` VALUES (132,4,0,'JA Social T3 Template for J25 & J33','','ja_social_ii','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_social_ii.xml','','');
INSERT INTO `mp75b_updates` VALUES (133,4,0,'JA Sugite Template','','ja_sugite','template','',0,'1.1.3','','http://update.joomlart.com/service/tracking/j16/ja_sugite.xml','','');
INSERT INTO `mp75b_updates` VALUES (134,4,0,'JA System Pager Plugin for J25 & J30','','ja_system_japager','plugin','ja_system_japager',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/ja_system_japager.xml','','');
INSERT INTO `mp75b_updates` VALUES (135,4,0,'JA T3V2 Blank Template','','ja_t3_blank','template','',0,'2.5.8','','http://update.joomlart.com/service/tracking/j16/ja_t3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (136,4,0,'JA T3 Blank template for joomla 1.6','','ja_t3_blank_j16','template','',0,'1.0.0 Beta','','http://update.joomlart.com/service/tracking/j16/ja_t3_blank_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (137,4,0,'JA Blank Template for T3v3','','ja_t3v3_blank','template','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/ja_t3v3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (138,4,0,'JA Teline III  Template for Joomla 1.6','','ja_teline_iii','file','',0,'1.0.0 Beta','','http://update.joomlart.com/service/tracking/j16/ja_teline_iii.xml','','');
INSERT INTO `mp75b_updates` VALUES (139,4,0,'JA Teline IV Template for J2.5 and J3.2','','ja_teline_iv','template','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/ja_teline_iv.xml','','');
INSERT INTO `mp75b_updates` VALUES (140,4,0,'JA Teline IV T3 Template','','ja_teline_iv_t3','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j16/ja_teline_iv_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (141,4,0,'JA Tiris Template for J25 & J3x','','ja_tiris','template','',0,'2.5.7','','http://update.joomlart.com/service/tracking/j16/ja_tiris.xml','','');
INSERT INTO `mp75b_updates` VALUES (142,4,0,'JA Travel Template for Joomla 2.5 & 3.0','','ja_travel','template','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/ja_travel.xml','','');
INSERT INTO `mp75b_updates` VALUES (143,4,0,'JA University Template for J25 & J32','','ja_university','template','',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/ja_university.xml','','');
INSERT INTO `mp75b_updates` VALUES (144,4,0,'JA University T3 template','','ja_university_t3','template','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/ja_university_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (145,4,0,'JA Vintas Template for J25 & J31','','ja_vintas','template','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/ja_vintas.xml','','');
INSERT INTO `mp75b_updates` VALUES (146,4,0,'JA Wall Template for J25 & J33','','ja_wall','template','',0,'1.2.0','','http://update.joomlart.com/service/tracking/j16/ja_wall.xml','','');
INSERT INTO `mp75b_updates` VALUES (147,4,0,'JA ZiteTemplate','','ja_zite','template','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j16/ja_zite.xml','','');
INSERT INTO `mp75b_updates` VALUES (148,4,0,'JA Bookmark plugin for Joomla 1.6.x','','jabookmark','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jabookmark.xml','','');
INSERT INTO `mp75b_updates` VALUES (149,4,0,'JA Comment plugin for Joomla 1.6.x','','jacomment','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (150,4,0,'JA Comment Off Plugin for Joomla 1.6','','jacommentoff','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/jacommentoff.xml','','');
INSERT INTO `mp75b_updates` VALUES (151,4,0,'JA Comment On Plugin for Joomla 1.6','','jacommenton','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/jacommenton.xml','','');
INSERT INTO `mp75b_updates` VALUES (152,4,0,'JA Content Extra Fields for Joomla 1.6','','jacontentextrafields','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jacontentextrafields.xml','','');
INSERT INTO `mp75b_updates` VALUES (153,4,0,'JA Disqus Debate Echo plugin for Joomla 1.6.x','','jadisqus_debate_echo','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jadisqus_debate_echo.xml','','');
INSERT INTO `mp75b_updates` VALUES (154,4,0,'JA System Google Map plugin for Joomla 1.6.x','','jagooglemap','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jagooglemap.xml','','');
INSERT INTO `mp75b_updates` VALUES (155,4,0,'JA Google Translate plugin for Joomla 1.6.x','','jagoogletranslate','plugin','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jagoogletranslate.xml','','');
INSERT INTO `mp75b_updates` VALUES (156,4,0,'JA Highslide plugin for Joomla 1.6.x','','jahighslide','plugin','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jahighslide.xml','','');
INSERT INTO `mp75b_updates` VALUES (157,4,0,'JA K2 Search Plugin for Joomla 2.5','','jak2_filter','plugin','',0,'1.0.0 Alpha','','http://update.joomlart.com/service/tracking/j16/jak2_filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (158,4,0,'JA K2 Extra Fields Plugin for Joomla 2.5','','jak2_indexing','plugin','',0,'1.0.0 Alpha','','http://update.joomlart.com/service/tracking/j16/jak2_indexing.xml','','');
INSERT INTO `mp75b_updates` VALUES (159,4,0,'JA Load module Plugin for Joomla 2.5','','jaloadmodule','plugin','jaloadmodule',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/jaloadmodule.xml','','');
INSERT INTO `mp75b_updates` VALUES (160,4,0,'JA System Nrain plugin for Joomla 1.6.x','','janrain','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/janrain.xml','','');
INSERT INTO `mp75b_updates` VALUES (161,4,0,'JA Popup plugin for Joomla 1.6','','japopup','file','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/japopup.xml','','');
INSERT INTO `mp75b_updates` VALUES (162,4,0,'JA System Social plugin for Joomla 1.7','','jasocial','file','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/jasocial.xml','','');
INSERT INTO `mp75b_updates` VALUES (163,4,0,'JA T3 System plugin for Joomla 1.6','','jat3','plugin','',0,'1.0.0 Beta','','http://update.joomlart.com/service/tracking/j16/jat3.xml','','');
INSERT INTO `mp75b_updates` VALUES (164,4,0,'JA Tabs plugin for Joomla 1.6.x','','jatabs','plugin','jatabs',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/jatabs.xml','','');
INSERT INTO `mp75b_updates` VALUES (165,4,0,'JA Typo plugin For Joomla 1.6','','jatypo','plugin','jatypo',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jatypo.xml','','');
INSERT INTO `mp75b_updates` VALUES (166,4,0,'Jomsocial Theme 3.x for JA Social','','jomsocial_theme_social','custom','',0,'3.2.x','','http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social.xml','','');
INSERT INTO `mp75b_updates` VALUES (167,4,0,'JA Jomsocial theme for Joomla 2.5','','jomsocial_theme_social_j16','file','',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (168,4,0,'JA Jomsocial theme for Joomla 2.5','','jomsocial_theme_social_j16_26','custom','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/jomsocial_theme_social_j16_26.xml','','');
INSERT INTO `mp75b_updates` VALUES (169,4,0,'JShopping Template for Ja Orisite','','jshopping_theme_orisite','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jshopping_theme_orisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (170,4,0,'JA Tiris Jshopping theme for J25 & J3x','','jshopping_theme_tiris','custom','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris.xml','','');
INSERT INTO `mp75b_updates` VALUES (171,4,0,'Theme for Jshopping j17','','jshopping_theme_tiris_j17','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/jshopping_theme_tiris_j17.xml','','');
INSERT INTO `mp75b_updates` VALUES (172,4,0,'JA Kranos kunena theme for Joomla 2.5','','kunena_theme_kranos_j17','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/kunena_theme_kranos_j17.xml','','');
INSERT INTO `mp75b_updates` VALUES (173,4,0,'Kunena Template for JA Mendozite','','kunena_theme_mendozite','custom','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/kunena_theme_mendozite.xml','','');
INSERT INTO `mp75b_updates` VALUES (174,4,0,'JA Mitius Kunena Theme for Joomla 25 ','','kunena_theme_mitius','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/kunena_theme_mitius.xml','','');
INSERT INTO `mp75b_updates` VALUES (175,4,0,'Kunena theme for JA Nex J2.5','','kunena_theme_nex_j17','custom','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_j17.xml','','');
INSERT INTO `mp75b_updates` VALUES (176,4,0,'Kunena theme for JA Nex T3','','kunena_theme_nex_t3','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/kunena_theme_nex_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (177,4,0,'Kunena Template for Ja Orisite','','kunena_theme_orisite','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/kunena_theme_orisite.xml','','');
INSERT INTO `mp75b_updates` VALUES (178,4,0,'Kunena theme for ja PlayMag','','kunena_theme_playmag','custom','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/kunena_theme_playmag.xml','','');
INSERT INTO `mp75b_updates` VALUES (179,4,0,'Kunena theme for JA Social T3','','kunena_theme_social','custom','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/kunena_theme_social.xml','','');
INSERT INTO `mp75b_updates` VALUES (180,4,0,'Kunena theme for Joomla 2.5','','kunena_theme_social_j16','custom','',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/kunena_theme_social_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (181,4,0,'JA Tiris kunena theme for Joomla 2.5','','kunena_theme_tiris_j16','custom','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/kunena_theme_tiris_j16.xml','','');
INSERT INTO `mp75b_updates` VALUES (182,4,0,'JA Bookshop Theme for Mijoshop V2','','mijoshop_theme_bookshop','custom','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/mijoshop_theme_bookshop.xml','','');
INSERT INTO `mp75b_updates` VALUES (183,4,0,'JA Decor Theme for Mijoshop','','mijoshop_theme_decor','custom','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor.xml','','');
INSERT INTO `mp75b_updates` VALUES (184,4,0,'JA Decor Theme for Mijoshop V3','','mijoshop_theme_decor_v3','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mijoshop_theme_decor_v3.xml','','');
INSERT INTO `mp75b_updates` VALUES (185,4,0,'JA ACM Module','','mod_ja_acm','module','',0,'2.0.6','','http://update.joomlart.com/service/tracking/j16/mod_ja_acm.xml','','');
INSERT INTO `mp75b_updates` VALUES (186,4,0,'JA Jobs Tags module for Joomla 2.5','','mod_ja_jobs_tags','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_ja_jobs_tags.xml','','');
INSERT INTO `mp75b_updates` VALUES (187,4,0,'JA Accordion Module for J25 & J34','','mod_jaaccordion','module','',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/mod_jaaccordion.xml','','');
INSERT INTO `mp75b_updates` VALUES (188,4,0,'JA Animation module for Joomla 2.5 & 3.2','','mod_jaanimation','module','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/mod_jaanimation.xml','','');
INSERT INTO `mp75b_updates` VALUES (189,4,0,'JA Bulletin Module for J25 & J3','','mod_jabulletin','module','',0,'2.6.0','','http://update.joomlart.com/service/tracking/j16/mod_jabulletin.xml','','');
INSERT INTO `mp75b_updates` VALUES (190,4,0,'JA Latest Comment Module for Joomla 2.5 & 3.3','','mod_jaclatest_comments','module','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/mod_jaclatest_comments.xml','','');
INSERT INTO `mp75b_updates` VALUES (191,4,0,'JA Content Popup Module for J25 & J34','','mod_jacontentpopup','module','',0,'1.1.2','','http://update.joomlart.com/service/tracking/j16/mod_jacontentpopup.xml','','');
INSERT INTO `mp75b_updates` VALUES (192,4,0,'JA Content Scroll module for Joomla 1.6','','mod_jacontentscroll','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_jacontentscroll.xml','','');
INSERT INTO `mp75b_updates` VALUES (193,4,0,'JA Contenslider module for Joomla 1.6','','mod_jacontentslide','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_jacontentslide.xml','','');
INSERT INTO `mp75b_updates` VALUES (194,4,0,'JA Content Slider Module for J25 & J34','','mod_jacontentslider','module','',0,'2.7.2','','http://update.joomlart.com/service/tracking/j16/mod_jacontentslider.xml','','');
INSERT INTO `mp75b_updates` VALUES (195,4,0,'JA CountDown Module for Joomla 2.5 & 3.4','','mod_jacountdown','module','',0,'1.0.7','','http://update.joomlart.com/service/tracking/j16/mod_jacountdown.xml','','');
INSERT INTO `mp75b_updates` VALUES (196,4,0,'JA Facebook Activity Module for J25 & J30','','mod_jafacebookactivity','module','',0,'2.5.5','','http://update.joomlart.com/service/tracking/j16/mod_jafacebookactivity.xml','','');
INSERT INTO `mp75b_updates` VALUES (197,4,0,'JA Facebook Like Box Module for J25 & J30','','mod_jafacebooklikebox','module','',0,'2.6.0','','http://update.joomlart.com/service/tracking/j16/mod_jafacebooklikebox.xml','','');
INSERT INTO `mp75b_updates` VALUES (198,4,0,'JA Featured Employer module for Joomla 2.5','','mod_jafeatured_employer','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_jafeatured_employer.xml','','');
INSERT INTO `mp75b_updates` VALUES (199,4,0,'JA Filter Jobs module for Joomla 2.5','','mod_jafilter_jobs','module','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/mod_jafilter_jobs.xml','','');
INSERT INTO `mp75b_updates` VALUES (200,4,0,'JA flowlist module for Joomla 2.5 & 3.0','','mod_jaflowlist','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jaflowlist.xml','','');
INSERT INTO `mp75b_updates` VALUES (201,4,0,'JAEC Halloween Module for Joomla 2.5 & 3','','mod_jahalloween','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jahalloween.xml','','');
INSERT INTO `mp75b_updates` VALUES (202,4,0,'JA Image Hotspot Module for Joomla 2.5 & 3.4','','mod_jaimagehotspot','module','',0,'1.0.8','','http://update.joomlart.com/service/tracking/j16/mod_jaimagehotspot.xml','','');
INSERT INTO `mp75b_updates` VALUES (203,4,0,'JA static module for Joomla 2.5','','mod_jajb_statistic','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jajb_statistic.xml','','');
INSERT INTO `mp75b_updates` VALUES (204,4,0,'JA Jobboard Menu module for Joomla 2.5','','mod_jajobboard_menu','module','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j16/mod_jajobboard_menu.xml','','');
INSERT INTO `mp75b_updates` VALUES (205,4,0,'JA Jobs Counter module for Joomla 2.5','','mod_jajobs_counter','module','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/mod_jajobs_counter.xml','','');
INSERT INTO `mp75b_updates` VALUES (206,4,0,'JA Jobs Map module for Joomla 2.5','','mod_jajobs_map','module','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j16/mod_jajobs_map.xml','','');
INSERT INTO `mp75b_updates` VALUES (207,4,0,'JA K2 Fillter Module for Joomla 2.5','','mod_jak2_filter','module','',0,'1.0.0 Alpha','','http://update.joomlart.com/service/tracking/j16/mod_jak2_filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (208,4,0,'JA K2 Filter Module for J25 & J3.3','','mod_jak2filter','module','',0,'1.1.8','','http://update.joomlart.com/service/tracking/j16/mod_jak2filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (209,4,0,'JA K2 Timeline','','mod_jak2timeline','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jak2timeline.xml','','');
INSERT INTO `mp75b_updates` VALUES (210,4,0,'JA Latest Resumes module for Joomla 2.5','','mod_jalatest_resumes','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_jalatest_resumes.xml','','');
INSERT INTO `mp75b_updates` VALUES (211,4,0,'JA List Employer module for Joomla 2.5','','mod_jalist_employers','module','',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/mod_jalist_employers.xml','','');
INSERT INTO `mp75b_updates` VALUES (212,4,0,'JA List Jobs module for Joomla 2.5','','mod_jalist_jobs','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_jalist_jobs.xml','','');
INSERT INTO `mp75b_updates` VALUES (213,4,0,'JA List Resumes module for Joomla 2.5','','mod_jalist_resumes','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_jalist_resumes.xml','','');
INSERT INTO `mp75b_updates` VALUES (214,4,0,'JA Login module for J25 & J3x','','mod_jalogin','module','',0,'2.6.5','','http://update.joomlart.com/service/tracking/j16/mod_jalogin.xml','','');
INSERT INTO `mp75b_updates` VALUES (215,4,0,'JA Masshead Module for J25 & J34','','mod_jamasshead','module','',0,'2.6.1','','http://update.joomlart.com/service/tracking/j16/mod_jamasshead.xml','','');
INSERT INTO `mp75b_updates` VALUES (216,4,0,'JA News Featured Module for J25 & J34','','mod_janews_featured','module','',0,'2.6.1','','http://update.joomlart.com/service/tracking/j16/mod_janews_featured.xml','','');
INSERT INTO `mp75b_updates` VALUES (217,4,0,'JA Newsflash module for Joomla 1.6.x','','mod_janewsflash','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_janewsflash.xml','','');
INSERT INTO `mp75b_updates` VALUES (218,4,0,'JA Newsmoo module for Joomla 1.6.x','','mod_janewsmoo','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_janewsmoo.xml','','');
INSERT INTO `mp75b_updates` VALUES (219,4,0,'JA News Pro Module for J25 & J3x','','mod_janewspro','module','',0,'2.6.2','','http://update.joomlart.com/service/tracking/j16/mod_janewspro.xml','','');
INSERT INTO `mp75b_updates` VALUES (220,4,0,'JA Newsticker Module for J3x','','mod_janewsticker','module','',0,'2.6.2','','http://update.joomlart.com/service/tracking/j16/mod_janewsticker.xml','','');
INSERT INTO `mp75b_updates` VALUES (221,4,0,'JA Quick Contact Module for J25 & J34','','mod_jaquickcontact','module','',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/mod_jaquickcontact.xml','','');
INSERT INTO `mp75b_updates` VALUES (222,4,0,'JA Recent Viewed Jobs module for Joomla 2.5','','mod_jarecent_viewed_jobs','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/mod_jarecent_viewed_jobs.xml','','');
INSERT INTO `mp75b_updates` VALUES (223,4,0,'JA SideNews Module for J25 & J34','','mod_jasidenews','module','',0,'2.6.7','','http://update.joomlart.com/service/tracking/j16/mod_jasidenews.xml','','');
INSERT INTO `mp75b_updates` VALUES (224,4,0,'JA Slideshow Module for Joomla 2.5 & 3.4','','mod_jaslideshow','module','',0,'2.7.5','','http://update.joomlart.com/service/tracking/j16/mod_jaslideshow.xml','','');
INSERT INTO `mp75b_updates` VALUES (225,4,0,'JA Slideshow Lite Module for J25 & J3.4','','mod_jaslideshowlite','module','',0,'1.2.3','','http://update.joomlart.com/service/tracking/j16/mod_jaslideshowlite.xml','','');
INSERT INTO `mp75b_updates` VALUES (226,4,0,'JA Soccerway Module for J25 & J33','','mod_jasoccerway','module','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j16/mod_jasoccerway.xml','','');
INSERT INTO `mp75b_updates` VALUES (227,4,0,'JA Social Locker module','','mod_jasocial_locker','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/mod_jasocial_locker.xml','','');
INSERT INTO `mp75b_updates` VALUES (228,4,0,'JA Tab module for Joomla 2.5','','mod_jatabs','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_jatabs.xml','','');
INSERT INTO `mp75b_updates` VALUES (229,4,0,'JA Toppanel Module for Joomla 2.5 & Joomla 3.3','','mod_jatoppanel','module','',0,'2.5.7','','http://update.joomlart.com/service/tracking/j16/mod_jatoppanel.xml','','');
INSERT INTO `mp75b_updates` VALUES (230,4,0,'JA Twitter Module for J25 & J3.4','','mod_jatwitter','module','',0,'2.6.3','','http://update.joomlart.com/service/tracking/j16/mod_jatwitter.xml','','');
INSERT INTO `mp75b_updates` VALUES (231,4,0,'JA List of Voices Module for J2.5 & J3.x','','mod_javlist_voices','module','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/mod_javlist_voices.xml','','');
INSERT INTO `mp75b_updates` VALUES (232,4,0,'JA VMProducts Module','','mod_javmproducts','module','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j16/mod_javmproducts.xml','','');
INSERT INTO `mp75b_updates` VALUES (233,4,0,'JA Voice  Work Flow Module for J2.5 & J3.x','','mod_javwork_flow','module','',0,'1.1.0','','http://update.joomlart.com/service/tracking/j16/mod_javwork_flow.xml','','');
INSERT INTO `mp75b_updates` VALUES (234,4,0,'JA Amazon S3 Button Plugin for joomla 2.5 & 3.1','','jaamazons3','plugin','button',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/plg_button_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (235,4,0,'JA AVTracklist Button plugin for J2.5 & J3.3','','jaavtracklist','plugin','button',0,'1.0.1','','http://update.joomlart.com/service/tracking/j16/plg_button_jaavtracklist.xml','','');
INSERT INTO `mp75b_updates` VALUES (236,4,0,'JA Comment Off Plugin for Joomla 2.5 & 3.3','','jacommentoff','plugin','button',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/plg_button_jacommentoff.xml','','');
INSERT INTO `mp75b_updates` VALUES (237,4,0,'JA Comment On Plugin for Joomla 2.5 & 3.3','','jacommenton','plugin','button',0,'2.5.2','','http://update.joomlart.com/service/tracking/j16/plg_button_jacommenton.xml','','');
INSERT INTO `mp75b_updates` VALUES (238,4,0,'JA Amazon S3 System plugin for joomla 2.5 & 3.1','','plg_jaamazons3','plugin','plg_jaamazons3',0,'2.5.2','','http://update.joomlart.com/service/tracking/j16/plg_jaamazons3.xml','','');
INSERT INTO `mp75b_updates` VALUES (239,4,0,'JA AVTracklist plugin for J2.5 & J3.3','','plg_jaavtracklist','plugin','plg_jaavtracklist',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/plg_jaavtracklist.xml','','');
INSERT INTO `mp75b_updates` VALUES (240,4,0,'JA Bookmark plugin for J3.x','','plg_jabookmark','plugin','plg_jabookmark',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/plg_jabookmark.xml','','');
INSERT INTO `mp75b_updates` VALUES (241,4,0,'JA Comment Plugin for Joomla 2.5 & 3.3','','plg_jacomment','plugin','plg_jacomment',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (242,4,0,'JA Disqus Debate Echo plugin for J3x','','debate_echo','plugin','jadisqus',0,'2.6.3','','http://update.joomlart.com/service/tracking/j16/plg_jadisqus_debate_echo.xml','','');
INSERT INTO `mp75b_updates` VALUES (243,4,0,'JA Google Storage Plugin for j25 & j30','','plg_jagooglestorage','plugin','plg_jagooglestorage',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_jagooglestorage.xml','','');
INSERT INTO `mp75b_updates` VALUES (244,4,0,'JA Translate plugin for Joomla 1.6.x','','plg_jagoogletranslate','file','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_jagoogletranslate.xml','','');
INSERT INTO `mp75b_updates` VALUES (245,4,0,'JA Thumbnail Plugin for J25 & J3','','plg_jathumbnail','plugin','plg_jathumbnail',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/plg_jathumbnail.xml','','');
INSERT INTO `mp75b_updates` VALUES (246,4,0,'JA Tooltips plugin for Joomla 1.6.x','','plg_jatooltips','plugin','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_jatooltips.xml','','');
INSERT INTO `mp75b_updates` VALUES (247,4,0,'JA Typo Button Plugin for J25 & J3x','','plg_jatypobutton','plugin','plg_jatypobutton',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/plg_jatypobutton.xml','','');
INSERT INTO `mp75b_updates` VALUES (248,4,0,'JA K2 Filter Plg for J25 & J3.2','','jak2filter','plugin','k2',0,'1.1.8','','http://update.joomlart.com/service/tracking/j16/plg_k2_jak2filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (249,4,0,'JA K2 Timeline Plugin','','jak2timeline','plugin','k2',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_k2_jak2timeline.xml','','');
INSERT INTO `mp75b_updates` VALUES (250,4,0,'Multi Capcha Engine Plugin for J25 & J32','','captcha_engine','plugin','multiple',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/plg_multiple_captcha_engine.xml','','');
INSERT INTO `mp75b_updates` VALUES (251,4,0,'JA JobBoard Payment Plugin Authorize for Joomla 2.5','','plg_payment_jajb_authorize_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_authorize_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (252,4,0,'JA JobBoard Payment Plugin MoneyBooker for Joomla 2.5','','plg_payment_jajb_moneybooker_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_moneybooker_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (253,4,0,'JA JobBoard Payment Plugin Paypal for Joomla 2.5','','plg_payment_jajb_paypal_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_paypal_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (254,4,0,'JA JobBoard Payment Plugin BankWire for Joomla 2.5','','plg_payment_jajb_wirebank_25','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_payment_jajb_wirebank_25.xml','','');
INSERT INTO `mp75b_updates` VALUES (255,4,0,'JA Search Comment Plugin for Joomla J2.5 & 3.0','','jacomment','plugin','search',0,'2.5.2','','http://update.joomlart.com/service/tracking/j16/plg_search_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (256,4,0,'JA Search Jobs plugin for Joomla 2.5','','jajob','plugin','search',0,'1.0.0 stable','','http://update.joomlart.com/service/tracking/j16/plg_search_jajob.xml','','');
INSERT INTO `mp75b_updates` VALUES (257,4,0,'JA System Comment Plugin for Joomla 2.5 & 3.3','','jacomment','plugin','system',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_system_jacomment.xml','','');
INSERT INTO `mp75b_updates` VALUES (258,4,0,'JA Content Extra Fields for Joomla 2.5','','jacontentextrafields','plugin','system',0,'2.5.1','','http://update.joomlart.com/service/tracking/j16/plg_system_jacontentextrafields.xml','','');
INSERT INTO `mp75b_updates` VALUES (259,4,0,'JA System Google Map plugin for Joomla 2.5 & J3.4','','jagooglemap','plugin','system',0,'2.5.9','','http://update.joomlart.com/service/tracking/j16/plg_system_jagooglemap.xml','','');
INSERT INTO `mp75b_updates` VALUES (260,4,0,'JAEC PLG System Jobboad Jomsocial Synchonization','','jajb_jomsocial','plugin','system',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/plg_system_jajb_jomsocial.xml','','');
INSERT INTO `mp75b_updates` VALUES (261,4,0,'JA System Lazyload Plugin for J25 & J3x','','jalazyload','plugin','system',0,'1.0.6','','http://update.joomlart.com/service/tracking/j16/plg_system_jalazyload.xml','','');
INSERT INTO `mp75b_updates` VALUES (262,4,0,'JA System Nrain Plugin for Joomla 2.5 & 3.3','','janrain','plugin','system',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_system_janrain.xml','','');
INSERT INTO `mp75b_updates` VALUES (263,4,0,'JA Popup Plugin for J25 & J33','','japopup','plugin','system',0,'2.6.2','','http://update.joomlart.com/service/tracking/j16/plg_system_japopup.xml','','');
INSERT INTO `mp75b_updates` VALUES (264,4,0,'JA System Social Plugin for Joomla 2.5 & 3.0','','jasocial','plugin','system',0,'2.5.4','','http://update.joomlart.com/service/tracking/j16/plg_system_jasocial.xml','','');
INSERT INTO `mp75b_updates` VALUES (265,4,0,'JA System Social Feed Plugin for Joomla 2.5 & 3.4','','jasocial_feed','plugin','system',0,'1.2.2','','http://update.joomlart.com/service/tracking/j16/plg_system_jasocial_feed.xml','','');
INSERT INTO `mp75b_updates` VALUES (266,4,0,'JA T3v2 System Plugin for J25 & J3x','','jat3','plugin','system',0,'2.7.1','','http://update.joomlart.com/service/tracking/j16/plg_system_jat3.xml','','');
INSERT INTO `mp75b_updates` VALUES (267,4,0,'JA T3v3 System Plugin','','jat3v3','plugin','system',0,'1.0.3','','http://update.joomlart.com/service/tracking/j16/plg_system_jat3v3.xml','','');
INSERT INTO `mp75b_updates` VALUES (268,4,0,'JA Tabs Plugin for J25 & J3.4','','jatabs','plugin','system',0,'2.6.6','','http://update.joomlart.com/service/tracking/j16/plg_system_jatabs.xml','','');
INSERT INTO `mp75b_updates` VALUES (269,4,0,'JA Typo Plugin for J25 & J32','','jatypo','plugin','system',0,'2.5.6','','http://update.joomlart.com/service/tracking/j16/plg_system_jatypo.xml','','');
INSERT INTO `mp75b_updates` VALUES (270,4,10019,'T3 System Plugin','','t3','plugin','system',0,'2.4.8','','http://update.joomlart.com/service/tracking/j16/plg_system_t3.xml','','');
INSERT INTO `mp75b_updates` VALUES (271,4,0,'T3 Blank Template','','t3_blank','template','',0,'2.1.9','','http://update.joomlart.com/service/tracking/j16/t3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (272,4,0,'T3 B3 Blank Template','','t3_bs3_blank','template','',0,'2.1.4','','http://update.joomlart.com/service/tracking/j16/t3_bs3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (273,4,0,'JA Teline III Template for Joomla 2.5','','teline_iii','template','',0,'2.5.3','','http://update.joomlart.com/service/tracking/j16/teline_iii.xml','','');
INSERT INTO `mp75b_updates` VALUES (274,4,0,'Thirdparty Extensions Compatibility Bundle','','thirdparty_exts_compatibility','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j16/thirdparty_exts_compatibility.xml','','');
INSERT INTO `mp75b_updates` VALUES (275,4,0,'Uber Template','','uber','template','',0,'2.1.1','','http://update.joomlart.com/service/tracking/j16/uber.xml','','');
INSERT INTO `mp75b_updates` VALUES (276,4,0,'T3 B3 Blank Template','','t3_bs3_blank','template','',0,'2.1.9','','http://update.joomlart.com/service/tracking/j30/t3_bs3_blank.xml','','');
INSERT INTO `mp75b_updates` VALUES (277,4,0,'JA K2 v3 Filter package for J33','','com_jak2v3filter','component','',1,'3.0.0 preview ','','http://update.joomlart.com/service/tracking/j31/com_jak2v3filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (278,4,0,'JA Multilingual Component for J25 & J3','','com_jalang','component','',1,'1.0.6','','http://update.joomlart.com/service/tracking/j31/com_jalang.xml','','');
INSERT INTO `mp75b_updates` VALUES (279,4,0,'JA Sugite Theme for EasyBlog','','easyblog_theme_sugite','custom','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j31/easyblog_theme_sugite.xml','','');
INSERT INTO `mp75b_updates` VALUES (280,4,0,'JA Biz Template','','ja_biz','template','',0,'1.1.3','','http://update.joomlart.com/service/tracking/j31/ja_biz.xml','','');
INSERT INTO `mp75b_updates` VALUES (281,4,0,'JA Cago template','','ja_cago','template','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/ja_cago.xml','','');
INSERT INTO `mp75b_updates` VALUES (282,4,0,'JA Cagox template','','ja_cagox','template','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j31/ja_cagox.xml','','');
INSERT INTO `mp75b_updates` VALUES (283,4,0,'JA Charity template','','ja_charity','template','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/ja_charity.xml','','');
INSERT INTO `mp75b_updates` VALUES (284,4,0,'JA Fixel Template','','ja_fixel','template','',0,'1.1.3','','http://update.joomlart.com/service/tracking/j31/ja_fixel.xml','','');
INSERT INTO `mp75b_updates` VALUES (285,4,0,'JA Hotel Template','','ja_hotel','template','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j31/ja_hotel.xml','','');
INSERT INTO `mp75b_updates` VALUES (286,4,0,'JA Muzic Template for J25 & J33','','ja_muzic','template','',0,'1.1.1','','http://update.joomlart.com/service/tracking/j31/ja_muzic.xml','','');
INSERT INTO `mp75b_updates` VALUES (287,4,0,'JA Teline V Template','','ja_teline_v','template','',0,'1.0.4','','http://update.joomlart.com/service/tracking/j31/ja_teline_v.xml','','');
INSERT INTO `mp75b_updates` VALUES (288,4,0,'JA Wall Template for J25 & J34','','ja_wall','template','',0,'1.2.1','','http://update.joomlart.com/service/tracking/j31/ja_wall.xml','','');
INSERT INTO `mp75b_updates` VALUES (289,4,0,'Theme Fixel for JShopping J25 & J30','','jshopping_theme_fixel','custom','',0,'1.0.5','','http://update.joomlart.com/service/tracking/j31/jshopping_theme_fixel.xml','','');
INSERT INTO `mp75b_updates` VALUES (290,4,0,'JA Tiris Kunena Theme for Joomla 3x','','kunena_theme_mitius_j31','custom','',0,'2.5.4','','http://update.joomlart.com/service/tracking/j31/kunena_theme_mitius_j31.xml','','');
INSERT INTO `mp75b_updates` VALUES (291,4,0,'Mijoshop Modules Accordion','','mijoshop_mod_accordion','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion.xml','','');
INSERT INTO `mp75b_updates` VALUES (292,4,0,'Mijoshop V3 Modules Accordion','','mijoshop_mod_accordion_v3','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/mijoshop_mod_accordion_v3.xml','','');
INSERT INTO `mp75b_updates` VALUES (293,4,0,'Mijoshop Modules Slider','','mijoshop_mod_slider','custom','',0,'1.0.2','','http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider.xml','','');
INSERT INTO `mp75b_updates` VALUES (294,4,0,'Mijoshop V3 Modules Slider','','mijoshop_mod_slider_v3','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/mijoshop_mod_slider_v3.xml','','');
INSERT INTO `mp75b_updates` VALUES (295,4,0,'JA Bookshop Theme for Mijoshop V3','','mijoshop_theme_bookshop_v3','custom','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/mijoshop_theme_bookshop_v3.xml','','');
INSERT INTO `mp75b_updates` VALUES (296,4,0,'JA Google Chart Module','','mod_jagooglechart','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/mod_jagooglechart.xml','','');
INSERT INTO `mp75b_updates` VALUES (297,4,0,'JA K2 v3 Filter Module for J33','','mod_jak2v3filter','module','',0,'3.0.0 preview ','','http://update.joomlart.com/service/tracking/j31/mod_jak2v3filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (298,4,0,'JA Promo Bar module','','mod_japromobar','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/mod_japromobar.xml','','');
INSERT INTO `mp75b_updates` VALUES (299,4,0,'Ja Yahoo Finance','','mod_jayahoo_finance','module','',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/mod_jayahoo_finance.xml','','');
INSERT INTO `mp75b_updates` VALUES (300,4,0,'Ja Yahoo Weather','','mod_jayahoo_weather','module','',0,'1.0.1','','http://update.joomlart.com/service/tracking/j31/mod_jayahoo_weather.xml','','');
INSERT INTO `mp75b_updates` VALUES (301,4,0,'Plugin Ajax JA Content Type','','jacontenttype','plugin','ajax',0,'1.0.0','','http://update.joomlart.com/service/tracking/j31/plg_ajax_jacontenttype.xml','','');
INSERT INTO `mp75b_updates` VALUES (302,4,0,'Plgin JA K2 import to Joomla Content','','plg_jak2tocontent','plugin','plg_jak2tocontent',0,'1.0.0 beta','','http://update.joomlart.com/service/tracking/j31/plg_jak2tocontent.xml','','');
INSERT INTO `mp75b_updates` VALUES (303,4,0,'JA K2 v3 Filter Plugin for J33','','jak2v3filter','plugin','k2',0,'3.0.0 preview ','','http://update.joomlart.com/service/tracking/j31/plg_k2_jak2v3filter.xml','','');
INSERT INTO `mp75b_updates` VALUES (304,4,0,'Plugin JA Content Type','','jacontenttype','plugin','system',0,'1.0.3','','http://update.joomlart.com/service/tracking/j31/plg_system_jacontenttype.xml','','');
INSERT INTO `mp75b_updates` VALUES (305,4,10020,'Purity III Template','','purity_iii','template','',0,'1.1.3','','http://update.joomlart.com/service/tracking/j31/purity_iii.xml','','');
INSERT INTO `mp75b_updates` VALUES (306,4,0,'Sample package for Uber App','','uber_app','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_app.xml','','');
INSERT INTO `mp75b_updates` VALUES (307,4,0,'Sample package for Uber Bookstore','','uber_bookstore','sample_package','',0,'2.1.1','','http://update.joomlart.com/service/tracking/j31/uber_bookstore.xml','','');
INSERT INTO `mp75b_updates` VALUES (308,4,0,'Sample package for Uber Business','','uber_business','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_business.xml','','');
INSERT INTO `mp75b_updates` VALUES (309,4,0,'Sample package for Uber Charity','','uber_charity','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_charity.xml','','');
INSERT INTO `mp75b_updates` VALUES (310,4,0,'Sample package for Uber Church','','uber_church','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_church.xml','','');
INSERT INTO `mp75b_updates` VALUES (311,4,0,'Sample package for Uber Construction','','uber_construction','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_construction.xml','','');
INSERT INTO `mp75b_updates` VALUES (312,4,0,'Sample package for Uber Corporate','','uber_corporate','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_corporate.xml','','');
INSERT INTO `mp75b_updates` VALUES (313,4,0,'Sample package for Uber Gym','','uber_gym','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_gym.xml','','');
INSERT INTO `mp75b_updates` VALUES (314,4,0,'Sample package for Uber Home','','uber_home','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_home.xml','','');
INSERT INTO `mp75b_updates` VALUES (315,4,0,'Sample package for Landing page','','uber_landing','sample_package','',0,'2.1.0','','http://update.joomlart.com/service/tracking/j31/uber_landing.xml','','');
INSERT INTO `mp75b_updates` VALUES (316,4,0,'Sample package for Uber Lawyer','','uber_lawyer','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_lawyer.xml','','');
INSERT INTO `mp75b_updates` VALUES (317,4,0,'Sample package for Uber Medicare','','uber_medicare','sample_package','',0,'2.1.0','','http://update.joomlart.com/service/tracking/j31/uber_medicare.xml','','');
INSERT INTO `mp75b_updates` VALUES (318,4,0,'Sample package for Uber Music','','uber_music','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_music.xml','','');
INSERT INTO `mp75b_updates` VALUES (319,4,0,'Sample package for Uber Restaurant','','uber_restaurant','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_restaurant.xml','','');
INSERT INTO `mp75b_updates` VALUES (320,4,0,'Sample package for Uber Spa','','uber_spa','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_spa.xml','','');
INSERT INTO `mp75b_updates` VALUES (321,4,0,'Sample package for Uber University','','uber_university','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_university.xml','','');
INSERT INTO `mp75b_updates` VALUES (322,4,0,'Sample package for Uber Wedding','','uber_wedding','sample_package','',0,'2.0.2','','http://update.joomlart.com/service/tracking/j31/uber_wedding.xml','','');
INSERT INTO `mp75b_updates` VALUES (323,7,10039,'Asikart UserXTD','','com_userxtd','component','',1,'1.0.2','','https://raw.githubusercontent.com/asikart/userxtd/staging/update.xml','http://ext.asikart.com','');
UNLOCK TABLES;

-- Table structure for table `mp75b_user_keys`

DROP TABLE IF EXISTS `mp75b_user_keys`;
CREATE TABLE `mp75b_user_keys` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `series` varchar(255) NOT NULL,
  `invalid` tinyint(4) NOT NULL,
  `time` varchar(200) NOT NULL,
  `uastring` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `series` (`series`),
  UNIQUE KEY `series_2` (`series`),
  UNIQUE KEY `series_3` (`series`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_user_keys`

LOCK TABLES `mp75b_user_keys` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_user_notes`

DROP TABLE IF EXISTS `mp75b_user_notes`;
CREATE TABLE `mp75b_user_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `subject` varchar(100) NOT NULL DEFAULT '',
  `body` text NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(10) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `created_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_user_id` int(10) unsigned NOT NULL,
  `modified_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `review_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  KEY `idx_user_id` (`user_id`),
  KEY `idx_category_id` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_user_notes`

LOCK TABLES `mp75b_user_notes` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_user_profiles`

DROP TABLE IF EXISTS `mp75b_user_profiles`;
CREATE TABLE `mp75b_user_profiles` (
  `user_id` int(11) NOT NULL,
  `profile_key` varchar(100) NOT NULL,
  `profile_value` varchar(255) NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_user_id_profile_key` (`user_id`,`profile_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Simple user profile storage table';

-- Dumping data for table `mp75b_user_profiles`

LOCK TABLES `mp75b_user_profiles` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_user_usergroup_map`

DROP TABLE IF EXISTS `mp75b_user_usergroup_map`;
CREATE TABLE `mp75b_user_usergroup_map` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__users.id',
  `group_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Foreign Key to #__usergroups.id',
  PRIMARY KEY (`user_id`,`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_user_usergroup_map`

LOCK TABLES `mp75b_user_usergroup_map` WRITE;
INSERT INTO `mp75b_user_usergroup_map` VALUES (584,8);
INSERT INTO `mp75b_user_usergroup_map` VALUES (585,7);
UNLOCK TABLES;

-- Table structure for table `mp75b_usergroups`

DROP TABLE IF EXISTS `mp75b_usergroups`;
CREATE TABLE `mp75b_usergroups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'Adjacency List Reference Id',
  `lft` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set lft.',
  `rgt` int(11) NOT NULL DEFAULT '0' COMMENT 'Nested set rgt.',
  `title` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_usergroup_parent_title_lookup` (`parent_id`,`title`),
  KEY `idx_usergroup_title_lookup` (`title`),
  KEY `idx_usergroup_adjacency_lookup` (`parent_id`),
  KEY `idx_usergroup_nested_set_lookup` (`lft`,`rgt`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_usergroups`

LOCK TABLES `mp75b_usergroups` WRITE;
INSERT INTO `mp75b_usergroups` VALUES (1,0,1,18,'Public');
INSERT INTO `mp75b_usergroups` VALUES (2,1,8,15,'Registered');
INSERT INTO `mp75b_usergroups` VALUES (3,2,9,14,'Author');
INSERT INTO `mp75b_usergroups` VALUES (4,3,10,13,'Editor');
INSERT INTO `mp75b_usergroups` VALUES (5,4,11,12,'Publisher');
INSERT INTO `mp75b_usergroups` VALUES (6,1,4,7,'Manager');
INSERT INTO `mp75b_usergroups` VALUES (7,6,5,6,'Administrator');
INSERT INTO `mp75b_usergroups` VALUES (8,1,16,17,'Super Users');
INSERT INTO `mp75b_usergroups` VALUES (9,1,2,3,'Guest');
UNLOCK TABLES;

-- Table structure for table `mp75b_users`

DROP TABLE IF EXISTS `mp75b_users`;
CREATE TABLE `mp75b_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `lastResetTime` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT 'Date of last password reset',
  `resetCount` int(11) NOT NULL DEFAULT '0' COMMENT 'Count of password resets since lastResetTime',
  `otpKey` varchar(1000) NOT NULL DEFAULT '' COMMENT 'Two factor authentication encrypted keys',
  `otep` varchar(1000) NOT NULL DEFAULT '' COMMENT 'One time emergency passwords',
  `requireReset` tinyint(4) NOT NULL DEFAULT '0' COMMENT 'Require user to reset password on next login',
  PRIMARY KEY (`id`),
  KEY `idx_name` (`name`),
  KEY `idx_block` (`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=586 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_users`

LOCK TABLES `mp75b_users` WRITE;
INSERT INTO `mp75b_users` VALUES (584,'Super User','sense','sense.katherine@gmail.com','$2y$10$9END94DwB7tqxzU7OeZNuuJvsNY6llfzRj83ciO2q3YI500HrMdJi',0,1,'2014-08-08 10:03:19','2015-05-28 09:05:20',0,'','0000-00-00 00:00:00',0,'','',0);
INSERT INTO `mp75b_users` VALUES (585,'zongknife','zongknife','your@email.com','$2y$10$YngHpg7PUw2NdtwG0BdXDeq4LOz1kZ7klYDUyQEak.tiDyy9lAl0K',0,0,'2015-03-11 10:51:02','2015-03-15 17:28:31','','{\"admin_style\":\"\",\"admin_language\":\"\",\"language\":\"\",\"editor\":\"\",\"helpsite\":\"\",\"timezone\":\"\"}','0000-00-00 00:00:00',0,'','',0);
UNLOCK TABLES;

-- Table structure for table `mp75b_userxtd_fields`

DROP TABLE IF EXISTS `mp75b_userxtd_fields`;
CREATE TABLE `mp75b_userxtd_fields` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `label` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `attrs` text NOT NULL,
  `field_type` char(20) NOT NULL,
  `required` int(1) NOT NULL,
  `element` mediumtext NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL,
  `language` char(7) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_createdby` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_checkout` (`checked_out`),
  KEY `cat_index` (`published`,`access`,`catid`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_userxtd_fields`

LOCK TABLES `mp75b_userxtd_fields` WRITE;
INSERT INTO `mp75b_userxtd_fields` VALUES (1,98,9,'Avatar','Avatar','BASIC_AVATAR','{\"name\":\"BASIC_AVATAR\",\"label\":\"Avatar\",\"description\":\"Upload your Avatar\",\"default\":\"\",\"required\":\"0\",\"width\":\"\",\"height\":\"\",\"crop\":\"0\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"1\"}','uploadimage',0,'<fieldname=\"BASIC_AVATAR\"label=\"Avatar\"description=\"Upload your Avatar\"hide_in_registration=\"1\"type=\"uploadimage\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:32',584,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (2,99,9,'Career','Career','BASIC_CAREER','{\"name\":\"BASIC_CAREER\",\"label\":\"Career\",\"description\":\"Your Career\",\"default\":\"\",\"required\":\"true\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"BASIC_CAREER\"label=\"Career\"description=\"Your Career\"required=\"true\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:46',584,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (3,100,9,'Telephone','Tel','BASIC_TEL','{\"name\":\"BASIC_TEL\",\"label\":\"Tel\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"BASIC_TEL\"label=\"Tel\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:48',584,3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (4,101,9,'Ages','Ages','BASIC_AGES','{\"name\":\"BASIC_AGES\",\"label\":\"Ages\",\"description\":\"Your Ages\",\"default\":\"\",\"required\":\"true\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',1,'<fieldname=\"BASIC_AGES\"label=\"Ages\"description=\"Your Ages\"required=\"true\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 15:04:12',584,5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (5,102,9,'About','About Me','BASIC_ABOUT','{\"name\":\"BASIC_ABOUT\",\"label\":\"About Me\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"cols\":60,\"rows\":10,\"class\":\"\",\"filter\":\"safehtml\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','textarea',0,'<fieldname=\"BASIC_ABOUT\"label=\"About Me\"cols=\"60\"rows=\"10\"filter=\"safehtml\"type=\"textarea\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:10',584,6,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (6,103,9,'Website','Website','BASIC_WEBSITE','{\"name\":\"BASIC_WEBSITE\",\"label\":\"Website\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"BASIC_WEBSITE\"label=\"Website\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:56:55',584,7,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (7,104,9,'Birth Day','Birth Day','BASIC_BIRTHDAY','{\"name\":\"BASIC_BIRTHDAY\",\"label\":\"Birth Day\",\"description\":\"\",\"default\":\"\",\"required\":\"true\",\"format\":\"%Y-%m-%d %H:%M:%S\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','calendar',1,'<fieldname=\"BASIC_BIRTHDAY\"label=\"Birth Day\"required=\"true\"format=\"%Y-%m-%d %H:%M:%S\"type=\"calendar\"></field>','2014-09-07 09:58:40',584,'2013-03-22 15:31:55',584,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (8,105,10,'Country','Country','LIVING_COUNTRY','{\"name\":\"LIVING_COUNTRY\",\"label\":\"Country\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_COUNTRY\"label=\"Country\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:24',584,1,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (9,106,10,'Zip Code','Zip Code','LIVING_ZIPCODE','{\"name\":\"LIVING_ZIPCODE\",\"label\":\"Zip Code\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"4\",\"class\":\"input-small\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_ZIPCODE\"label=\"Zip Code\"size=\"4\"class=\"input-small\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:36',584,3,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (10,107,10,'City','City','LIVING_CITY','{\"name\":\"LIVING_CITY\",\"label\":\"City\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_CITY\"label=\"City\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:41',584,4,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (11,108,10,'Address','Address','LIVING_ADDRESS','{\"name\":\"LIVING_ADDRESS\",\"label\":\"Address\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"40\",\"class\":\"input-xlarge\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_ADDRESS\"label=\"Address\"size=\"40\"class=\"input-xlarge\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:47',584,5,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
INSERT INTO `mp75b_userxtd_fields` VALUES (12,109,10,'Region','Region','LIVING_REGION','{\"name\":\"LIVING_REGION\",\"label\":\"Region\",\"description\":\"\",\"default\":\"\",\"required\":\"0\",\"maxlength\":\"\",\"size\":\"\",\"class\":\"\",\"filter\":\"\",\"readonly\":\"0\",\"disabled\":\"0\",\"hide_in_registration\":\"0\"}','text',0,'<fieldname=\"LIVING_REGION\"label=\"Region\"type=\"text\"></field>','2014-09-07 09:58:40',584,'2013-03-22 14:57:30',584,2,1,'0000-00-00 00:00:00','0000-00-00 00:00:00',0,'0000-00-00 00:00:00',1,'*','{}');
UNLOCK TABLES;

-- Table structure for table `mp75b_userxtd_profiles`

DROP TABLE IF EXISTS `mp75b_userxtd_profiles`;
CREATE TABLE `mp75b_userxtd_profiles` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `key` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `ordering` int(11) NOT NULL,
  `access` int(10) unsigned NOT NULL,
  `language` char(7) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_language` (`language`),
  KEY `cat_index` (`access`),
  KEY `idx_value` (`value`),
  KEY `user_id` (`user_id`),
  KEY `key` (`key`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_userxtd_profiles`

LOCK TABLES `mp75b_userxtd_profiles` WRITE;
INSERT INTO `mp75b_userxtd_profiles` VALUES (1,585,'BASIC_AVATAR','','0000-00-00 00:00:00','0000-00-00 00:00:00',1,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (2,585,'BASIC_CAREER','zongknife','0000-00-00 00:00:00','0000-00-00 00:00:00',2,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (3,585,'BASIC_TEL','','0000-00-00 00:00:00','0000-00-00 00:00:00',3,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (4,585,'BASIC_BIRTHDAY','2015-03-11 18:48:00','0000-00-00 00:00:00','0000-00-00 00:00:00',4,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (5,585,'BASIC_AGES',1,'0000-00-00 00:00:00','0000-00-00 00:00:00',5,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (6,585,'BASIC_ABOUT','','0000-00-00 00:00:00','0000-00-00 00:00:00',6,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (7,585,'BASIC_WEBSITE','','0000-00-00 00:00:00','0000-00-00 00:00:00',7,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (8,585,'LIVING_COUNTRY','','0000-00-00 00:00:00','0000-00-00 00:00:00',8,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (9,585,'LIVING_REGION','','0000-00-00 00:00:00','0000-00-00 00:00:00',9,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (10,585,'LIVING_ZIPCODE','','0000-00-00 00:00:00','0000-00-00 00:00:00',10,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (11,585,'LIVING_CITY','','0000-00-00 00:00:00','0000-00-00 00:00:00',11,0,'','');
INSERT INTO `mp75b_userxtd_profiles` VALUES (12,585,'LIVING_ADDRESS','','0000-00-00 00:00:00','0000-00-00 00:00:00',12,0,'','');
UNLOCK TABLES;

-- Table structure for table `mp75b_viewlevels`

DROP TABLE IF EXISTS `mp75b_viewlevels`;
CREATE TABLE `mp75b_viewlevels` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `title` varchar(100) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rules` varchar(5120) NOT NULL COMMENT 'JSON encoded access control.',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_assetgroup_title_lookup` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_viewlevels`

LOCK TABLES `mp75b_viewlevels` WRITE;
INSERT INTO `mp75b_viewlevels` VALUES (1,'Public',0,'[1]');
INSERT INTO `mp75b_viewlevels` VALUES (2,'Registered',1,'[6,2,8]');
INSERT INTO `mp75b_viewlevels` VALUES (3,'Special',2,'[6,3,8]');
INSERT INTO `mp75b_viewlevels` VALUES (5,'Guest',0,'[9]');
INSERT INTO `mp75b_viewlevels` VALUES (6,'Super Users',0,'[8]');
UNLOCK TABLES;

-- Table structure for table `mp75b_webgallery_items`

DROP TABLE IF EXISTS `mp75b_webgallery_items`;
CREATE TABLE `mp75b_webgallery_items` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `asset_id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `tags` varchar(255) NOT NULL,
  `introtext` mediumtext NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '1',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access` int(10) unsigned NOT NULL,
  `language` char(7) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_alias` (`alias`),
  KEY `idx_createdby` (`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_checkout` (`checked_out`),
  KEY `cat_index` (`published`,`access`,`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_webgallery_items`

LOCK TABLES `mp75b_webgallery_items` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_webgallery_queues`

DROP TABLE IF EXISTS `mp75b_webgallery_queues`;
CREATE TABLE `mp75b_webgallery_queues` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_webgallery_queues`

LOCK TABLES `mp75b_webgallery_queues` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_webgallery_thumbnails`

DROP TABLE IF EXISTS `mp75b_webgallery_thumbnails`;
CREATE TABLE `mp75b_webgallery_thumbnails` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `path` varchar(255) NOT NULL,
  `item_id` int(11) NOT NULL,
  `url` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `scanned` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_path` (`path`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_webgallery_thumbnails`

LOCK TABLES `mp75b_webgallery_thumbnails` WRITE;
UNLOCK TABLES;

-- Table structure for table `mp75b_weblinks`

DROP TABLE IF EXISTS `mp75b_weblinks`;
CREATE TABLE `mp75b_weblinks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  `state` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `language` char(7) NOT NULL DEFAULT '',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(10) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(10) unsigned NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `featured` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'Set if link is featured.',
  `xreference` varchar(50) NOT NULL COMMENT 'A reference to enable linkages to external data sets.',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `version` int(10) unsigned NOT NULL DEFAULT '1',
  `images` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`),
  KEY `idx_featured_catid` (`featured`,`catid`),
  KEY `idx_language` (`language`),
  KEY `idx_xreference` (`xreference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Dumping data for table `mp75b_weblinks`

LOCK TABLES `mp75b_weblinks` WRITE;
UNLOCK TABLES;

-- Completed on: 2015-07-06T07:05:18+00:00
