# WNMP

> 在 Windows 上运行 NGINX、MySQL 和 PHP

## 使用

① 下载项目，将目录所有文件复制到 `C:\server`

② 分别进入 `mysql`、`php`、`nginx` 目录，安装说明进行安装

③ 运行 `Start` 启动环境

④ 浏览器访问 `http://localhost/`，出现 `400 Bad Request` 说明 Nignx 配置正常

⑤ 复制 `web` 目录文件到 `C:\WEB`，再次访问 `http://localhost/index.php`，出现 `phpinfo` 信息说明 PHP 配置正常

⑥ 访问 `http://localhost/test.php`，出现 `Connected successfully` 说明数据库配置正常

⑦ 运行 `Start` 重启环境或运行 `Stop` 停止环境


## 全局变量

如果要在其他地方使用 `mysql`、`php`、`nginx`，可以将其加入环境变量

打开控制面板，在搜索栏输入 `环境变量`，点击 `编辑账户的环境变量`，选中 `path`，点击`编辑`，点击`新建`，加入如下 3 条：

```txt
C:\server\mysql

C:\server\php

C:\server\nginx
```

# 协议

[MIT](https://github.com/maicong/WNMP/blob/master/LICENSE)



