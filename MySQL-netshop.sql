CREATE DATABASE IF NOT EXISTS netshop
   DEFAULT CHARACTER SET=gbk
   DEFAULT COLLATE=gbk_chinese_ci
   ENCRYPTION='N';
   
USE netshop;
CREATE TABLE category
(
   TCode char(3) NOT NULL PRIMARY KEY, /*商品分类编码*/
   TName varchar(8) NOT NULL /*商品分类名称*/
   );
   
USE netshop;
SET GLOBAL innodb_file_per_table=ON;
CREATE TABLE supplier
(
   SCode char(8) NOT NULL PRIMARY KEY, /*商家编码*/
   SPassWord varchar(12) NOT NULL DEFAULT'888', /*商家密码*/
   SName varchar(16) NOT NULL, /*商家名称*/
   SWeiXin varchar(16) CHARACTER SET utf8mb4 NOT NULL, /*微信*/
   Tel char(13) NULL, /*电话（手机）*/
   Evaluate float(4,2) DEFAULT 0.00, /*商家综合评价*/
   SLicence mediumblob NULL /*营业执照图片*/
   );