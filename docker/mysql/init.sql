--
-- Database: sellca_web_local
--
create database sellca_web_local;
use sellca_web_local;

--
-- User: sellca_admin_local
--
CREATE USER 'sellca_admin_local'@'%' IDENTIFIED WITH mysql_native_password BY 'sellca_admin_local';
GRANT ALL ON sellca_web_local.* TO 'sellca_admin_local'@'%';