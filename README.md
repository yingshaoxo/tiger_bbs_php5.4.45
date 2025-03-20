## hu60wap6 - yingshaoxo version

hu60wap6 是一个社区系统

由PHP5编写

界面简洁，十分简洁，特别简洁，就像非智能手机时代的移动端网页

嗯，这个风格确实的从非智能手机时代继承过来的

hu60wap6 的主要功能有：论坛、聊天室、内信、@Ta

它使用GPLv3协议发布


## 安装说明

1. 把文件夹里的全部文件放在网站根目录http://localhost/tiger/。
2. 修改 ```config/db.php``` ，填写好 mysql 信息。
3. 导入 ```db/mysql.sql``` 到数据库。
4. 访问http://localhost/tiger/。注册并登陆一个账号。
5. uid 为 1 的用户会成为系统的管理员用户，可以访问后台（虽然后台只有添加版块这一个功能，修改版块的功能是崩溃的。）
6. 管理员页面: http://localhost/tiger/q.php/admin.index.html


## 支持的PHP版本

PHP 5.4.45。

I recommand 'PHPStudy2016', because it works for xp.

## Install document
### docker-compose
```
version: "3.9"

services:
  old_php:
    image: php:5.4.45-apache
    #network_mode: "host"        
    ports:
      - '7071:80'
    volumes:
      - .:/var/www/html:rw
    restart: always
```

### change folder permission and run it
```
chown www-data:www-data ./
chmod 755 ./
chmod 0777 ./db
```

visit http://127.0.0.1:7071/

### fix mysql connection problem and run it again
```
go to "config/db.php", set mysql name and password. (it is hard to let php visit mysql in the same docker-compose file, if you know, tell me)
go to "db/mysql.sql", use 'phpMyAdmin4.0' or other mysql tool to import that *.sql file into database. (it seems like phpstudy has a built-in mysql management tool, but I don't trust it in linux, so I dropped this project)
```

If you you sqlite, it is also ok. Just change db.php accordingly.

### done
http://127.0.0.1:7071/

> Maybe use virtualbox + xp inside of a linux desktop host is a better option for running this project. But everything you do will need network, otherwise, you can't even install the virtualbox offline.
