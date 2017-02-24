# PHP

## 下载

请到 [windows.php.net](http://windows.php.net/download/) 下载最新版的 `PHP for Windows`

因为本项目使用的是 `FastCGI`，所以应该选择 `Non Thread Safe` 的版本

32 位平台选择 `x86`，64 位平台选择 `x64`

## 安装

解压下载包，将目录所有文件复制到 `C:\server\php`

进入 `C:\server\php`，复制 `php.ini-development` 为 `php.ini`

编辑 `php.ini`，修改以下几个参数：

```ini
max_execution_time = 300
max_input_time = 600
extension_dir = "C:/server/php/ext/"
sys_temp_dir = "C:/server/tmp"
upload_max_filesize = 2000M
date.timezone = Asia/Shanghai
session.save_path = "C:/server/tmp"
```

date.timezone 为时区，支持时区列表请查看 [所支持的时区列表](http://php.net/manual/zh/timezones.php)

启用扩展，定位到 `extension`，根据需要取消相关注释
