# 开始

运行脚本的两种方式

- 作为可执行程序
  - 需要在第一行添加运行脚本的解释器路径`#!/bin/bash` 。对于php或者python则是 `#!/bin/php`和`#!/bin/python` 其中`#!`是约定的标识
  - 需要将程序的权限改为可执行。`chmod +x ./your_script`  并在该路径下运行 `./your_script`
- 作为解释器参数。即直接运行解释器，参数就是脚本文件名eg：`/bin/bash your_script`

# Shell 变量

## 定义

- shell 变量不需要声明，定义后就可以使用。
- 变量名定义遵循标识符号规则，不能与bash中关键字冲突。系统常使用大写，自定义变量建议小写。
- shell变量的本质是字符串。所以赋值号右边的都是值
- 可以使用 readonly 命令将变量定义为只读变量，不可修改。

## 使用

- 使用时前面添加`$`符号。引用时可以使用{}包裹变量作区分。eg`${val}`



## 删除

- 使用unset命令可以删除变量，变量删除后不能再次使用
- unset命令不可以删除只读变量

## 分类

- 局部变量：在script中或在commd中定义仅在当前shell实例中生效
- 环境变量：所有程序都都可访问。必要时可在shell中修改
- shell变量：shell设置的特殊变量



# Shell 字符串操作

## 定义

- 使用单引号定义
  - 引号里面的任何字符都会原样输出。其中的变量无效。其中不能出现任何的一个单引号，转义的都不可。
- 使用双引号定义
  - 其中的变量会拓展
  - 可以转义字符

## 字符串操作

- 拼接 
  - 重新赋值，并引用旧串
- 获取长度`${#string}`
- 提取子串 `$string:start_index:end_index}`
- 查找子串

# shell 注释

- 以`#`开头的行就是注释

- 多行注释可以采用以下方式

  ```shell
  :<<EOF
  something
  EOF
  ```

  ```Shell
  :<<!
  something
  !
  ```


# Shell 数组

## 定义

- shell 中只有一维数组。

- 使用括号来表示数组，空格或在换行符号分割元素

  ```shell
  arry_name=(val0 val1 val2 ...)
  ```

- 也可以单独定义各个分量。可以不是用连续的下表，且下标没有范围限制不需要声明大小

  ```shell
  arry_name[index]=val
  ```

## 使用

- 一般读取格式是 `${arry_name[index]}`

- 可以使用符号`@`或`*`来作为数组下标获取数组中的全部元素

  `echo ${arry_name[@]}`

- 获得数组大小类似获得字符串大小

  `${#arry_name[@]}`

# Shell 传递参数到脚本

- 脚本内获取参数的方式是 `$n` 其中 n为第n个参数
- `$0`为脚本名
- `$#`传递到脚本的参数个数
- `$$`当前进程ID
- `$?`最后命令的退出状态，0为正常，其余异常。
- `$!`后台运行最后一个ID
- ...

