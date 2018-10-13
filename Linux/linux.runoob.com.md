# Linux 系统目录结构

- 在linux或者unix系统中，所有的目录和文件都被组织成一个以根节点开始的倒置的树状结构。

- 目录介绍

  ```
  /etc 系统配置文件
  /var 日志文件目录
  ```


# 忘记root密码

 

# 远程登录

 

# 文件的基本属性

## 属性与权限介绍

| 文件类型  |      属主权限      |      属组权限      |    其他用户权限    |
| :-------: | :----------------: | :----------------: | :----------------: |
|0|123|456|789|
| <[d-lbc]> | <[r-]><[w-]><[x-]> | <[r-]><[w-]><[x-]> | <[r-]><[w-]><[x-]> |
|     d     |        rwx         |        r-x         |        r-x         |

## 文件的默认和隐藏属性(用于系统安全ext2,ext3文件系统)

umask  默认拿掉新建文件的权限

chattr添加隐





SUID SGID SBIT



## 修改文件权限

 

```
chgrp [-R] group_name file_name
chown [-R] owner_name file_name
chown [-R] group_name:woner_name file_name
chmod [-R] xyz file_name
```

其中 -R 为递归修改该目录下的全部文件
xyz为各个部分权限值的累加和
|421|421|421|
|rwx|rwx|rwx|

另外还可以使用符号来修改文件权限

```
chmod [ugoa] [+-=][wrx] file_name
```

## linux 文件与目录管理

```
pwd [-P] 
	-P 显示确实的当前路径，而非链接档
mkdir [-mp]
	-m 直接配置权限
	-p 直接创建所需的文件路径，包括上级（多层目录）
rmdir [-p]
	-p 包括上级空目录也删除
cp [-adfilprus]
	-a 相当与-pdr
	-d 若来源是连结档，复制链接档属性而非文件本身
	-f force 强制，
	-i 目标存在，覆盖前询问
	-l 硬式链接档创建，而非复制文件
	-p 连同属性复制，而非使用默认属性. 备份常用
	-r 递归复制。用于目录复制
	-s 复制为快捷方式文件。符号链接档
	-u 目标比源旧才升级
rm [-fir]
	-f 强制，忽略不存在
	-i 互动，删除前询问
	-r 递归删除，用于目录
mv -[-fiu]
	-u 仅当源新才升级
```

## 查看文件内容

```
cat
tac
nl [-bnw]
	-b 指定行号指定
        -b a 空行列出行号
        -b t 空行不列出（默认）
    -n 行号表示位置
    	-n ln 左方
    	-n rn 右方，不加0
    	-n rz 右方，加0
    -w 行号宽度
more
less
head
tail
od
```

扩展：

硬链接和软链接

软链接相当与快捷方式，存的是路径位置，删除或者修改目标路径便失效了。

硬链接直接指向硬件存储（innode)位置，允许同一个文件有多个有效路径，只有全部硬链接删除才能删除。

# 用户和用户组管理

## 添加用户

`useradd [-cdgGsu]`  

## 删除用户

`userdel [-r]` 

  

## 修改用户

  `usermod [-cdgGsuo]` 



## 用户口令

`passwd [-ludf]`  



## 用户组管理

`groupadd [-go]`

`groupdel`

`groupmod [-gon]`

`newgrp` 

## 账户相关文件

- /etc/passwd
- /etc/shadow 

## 批量添加用户

# 磁盘管理

## 查看

` df  [-ahikHTm] ` 列出文件系统的整体使用量

`du [-ahskm] ` 检查磁盘空间使用量



## 分区操作  

`fdisk [-l]`

## 格式化

`mkfs [-t]`

磁盘检验

`fsck [-t][-ACay]`

## 磁盘的挂载和卸除

`mount [-t][-L][-o][-n]`

`umount [-fn]`






