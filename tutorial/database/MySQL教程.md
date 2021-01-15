# MySQL教程

- [基本内容](#基本内容)
  - [安装](#安装)
  - [登录](#登录)
  - [修改密码](#修改密码)
  - [远程登录](#远程登录)
  - [数据库操作](#库操作)
  - [用户操作](#用户操作)

## 数据库操作

### 安装

在MySQL数据库使用前，请先安装数据库。

（鉴于作者完全是出于兴趣做分享，所以在选取开源软件的时候一般会选取比较新的版本而非比较稳定并被业内广泛使用的版本）

这边使用的mysql版本为8.0，在ubuntu上，安装是十分简单和统一的，以下一行指令可以完成它

```shell
apt install mysql-server-8.0
```

### 登录

```shell
mysql -u root -p
```

在以上指令中，mysql即可视为登录的工具。

> -u 后接要登录的账号(user)
> -p 后接要登录账号的密码(password)

### 修改密码

默认的root账户密码为空，MySQL提示输入密码时，直接回车即可

以下指令可以修改账号密码

```mysql
use mysql;
alter user 'root'@'localhost' identified by 'root';
```

### 远程登录

默认root账号是没有开启远程访问，如果需要远程服务可以通过以下指令开启

```mysql
use mysql;
update user set host='%' where user='root';
flush privileges;
```

### 库操作

登录MySQL后

创建数据库
（kareza 为创建的数据库名）

```mysql
create database kareza;
```

删除数据库
（kareza 为删除的数据库名）

```mysql
drop database kareza;
```

### 用户操作

登录MySQL后

创建用户
（创建可以远程访问MySQL的用户kareza，密码为kareza）

```mysql
use mysql;
create user 'kareza'@'%' identified by 'kareza';
```

用户赋权
（为用户kareza赋予kareza数据库的所有权限）

```mysql
use mysql;
grant all privileges on kareza.* to 'kareza'@'%';
flush privileges;
```
