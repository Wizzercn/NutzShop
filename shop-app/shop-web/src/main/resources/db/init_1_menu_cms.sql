/* cmsMenu */
UPDATE sys_menu SET location=10 WHERE path='0001';
/* cmsMenu1 */
UPDATE sys_menu SET location=8 WHERE path='0002';
/* cmsMenu2 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('02e86a61e99746bea34236ea73dd52a5','','0003','CMS','CMS','menu','','','','1','0','cms',NULL,'9','1','','1468895671','0');
/* cmsMenu3 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('077cb6be4c7c41cc8955ee045a4f0286','68cdbf694f71445c8587a20234d6fe31','0003000300020001','添加链接','Add','data','','','','0','0','cms.link.link.add',NULL,'47','0','','1468897043','0');
/* cmsMenu4 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('17500ef3a9e44b4fabb240162a164fcb','6075fc0cf0ef441b9d93cc3cab3445bf','0003000200020003','删除文章','Delete','data','','','','0','0','cms.content.article.delete',NULL,'40','0','','1468896170','0');
/* cmsMenu5 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('31ed2243077c44448cce26abfd5ae574','9822bafbe3454dfd8e8b974ebc304d03','0003000300010002','修改分类','Edit','data','','','','0','0','cms.link.class.edit',NULL,'44','0','','1468896957','0');
/* cmsMenu6 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('33aed9298643424783116e0cf0f7fcbe','6075fc0cf0ef441b9d93cc3cab3445bf','0003000200020001','添加文章','Add','data','','','','0','0','cms.content.article.add',NULL,'38','0','','1468896151','0');
/* cmsMenu7 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('36e0faf5062b4f6b95d4167cbb1f8fea','68cdbf694f71445c8587a20234d6fe31','0003000300020002','修改链接','Edit','data','','','','0','0','cms.link.link.edit',NULL,'48','0','','1468897051','0');
/* cmsMenu8 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('3c24111091ad4a70ad2d9cc361311d2f','68cdbf694f71445c8587a20234d6fe31','0003000300020003','删除链接','Delete','data','','','','0','0','cms.link.link.delete',NULL,'49','0','','1468897060','0');
/* cmsMenu9 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('3f330d729ca34dc9825c46122be1bfae','02e86a61e99746bea34236ea73dd52a5','00030003','广告链接','AD','menu','','','ti-link','1','0','cms.link',NULL,'41','1','','1468896230','0');
/* cmsMenu10 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('4781372b00bb4d52b429b58e72b80c68','b2631bbdbf824cc4b74d819c87962c0d','0003000200010001','添加栏目','Add','data','','','','0','0','cms.content.channel.add',NULL,'33','0','','1468896049','0');
/* cmsMenu11 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('50ba60ee650e4c739e6abc3ab71e4960','b2631bbdbf824cc4b74d819c87962c0d','0003000200010004','栏目排序','Sort','data','','','','0','0','cms.content.channel.sort',NULL,'36','0','','1468896092','0');
/* cmsMenu12 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('6075fc0cf0ef441b9d93cc3cab3445bf','6b6de8c720c645a1808e1c3e9ccbfc90','000300020002','文章管理','Article','menu','/platform/cms/article','data-pjax','','1','0','cms.content.article',NULL,'37','0','','1468896141','0');
/* cmsMenu13 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('68cdbf694f71445c8587a20234d6fe31','3f330d729ca34dc9825c46122be1bfae','000300030002','链接管理','Link','menu','/platform/cms/link/link','data-pjax','','1','0','cms.link.link',NULL,'46','0','','1468897031','0');
/* cmsMenu14 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('6b6de8c720c645a1808e1c3e9ccbfc90','02e86a61e99746bea34236ea73dd52a5','00030002','内容管理','Content','menu','','','ti-pencil-alt','1','0','cms.content',NULL,'31','1','','1468895990','0');
/* cmsMenu15 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('7125a72beee34b21ab3df9bf01b7bce6','9822bafbe3454dfd8e8b974ebc304d03','0003000300010003','删除分类','Delete','data','','','','0','0','cms.link.class.delete',NULL,'45','0','','1468896968','0');
/* cmsMenu16 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('73a29d3f99224426b5a87c92da122275','d1e991ad38a8424daf9f7eb000ee27f4','0003000100010001','保存配置','Save','data','','','','0','0','cms.site.settings.save',NULL,'30','0','','1468895899','0');
/* cmsMenu17 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('7db6207d0dab4d6e95a7eee4f2efe875','9822bafbe3454dfd8e8b974ebc304d03','0003000300010001','添加分类','Add','data','','','','0','0','cms.link.class.add',NULL,'43','0','','1468896947','0');
/* cmsMenu18 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('9822bafbe3454dfd8e8b974ebc304d03','3f330d729ca34dc9825c46122be1bfae','000300030001','链接分类','Class','menu','/platform/cms/link/class','data-pjax','','1','0','cms.link.class',NULL,'42','0','','1468896932','0');
/* cmsMenu19 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('b2631bbdbf824cc4b74d819c87962c0d','6b6de8c720c645a1808e1c3e9ccbfc90','000300020001','栏目管理','Channel','menu','/platform/cms/channel','data-pjax','','1','0','cms.content.channel',NULL,'32','0','','1468896018','0');
/* cmsMenu20 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('d1e991ad38a8424daf9f7eb000ee27f4','d920314e925c451da6d881e7a29743b7','000300010001','网站配置','Settings','menu','/platform/cms/site','data-pjax','','1','0','cms.site.settings',NULL,'29','0','','1468895881','0');
/* cmsMenu21 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('d920314e925c451da6d881e7a29743b7','02e86a61e99746bea34236ea73dd52a5','00030001','站点管理','Site','menu','','','ti-world','1','0','cms.site',NULL,'28','1','','1468895821','0');
/* cmsMenu22 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('e461c62a1d5441619cd35612f3b40691','b2631bbdbf824cc4b74d819c87962c0d','0003000200010002','修改栏目','Edit','data','','','','0','0','cms.content.channel.edit',NULL,'34','0','','1468896060','0');
/* cmsMenu23 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('ef9f436c61654ec09efbfa79a40061cf','6075fc0cf0ef441b9d93cc3cab3445bf','0003000200020002','修改文章','Edit','data','','','','0','0','cms.content.article.edit',NULL,'39','0','','1468896159','0');
/* cmsMenu24 */
INSERT INTO sys_menu (id, parentId, path, NAME, aliasName, TYPE, href, target, icon, isShow, disabled, permission, note, location, hasChildren, opBy, opAt, delFlag) VALUES('f6fba69c3b704d79834b8bd2cc753729','b2631bbdbf824cc4b74d819c87962c0d','0003000200010003','删除栏目','Delete','data','','','','0','0','cms.content.channel.delete',NULL,'35','0','','1468896072','0');