# Shell过滤程序
## grep系列
Usage: 
```bash
grep [OPTION]... PATTERN [FILE]...
```
Some Options
```
-n 打印行号
-v 对模式取反
-E 使用扩增表达式
```
Pattern 正则表达式
```
c 任意匹配的非特殊字符c
\c 去掉字符c的任何特殊含义
^ 行首
$ 行末
. 任意字符
[..] ... 中的某一字符
[^...] 不在...只中的某一字符
\n 与第n表达式匹配的字符
r* r出现任意多次
r+ r出现一次以上 （egrep)
r？ r出现任意多次 (egrep)
r1r2 r2紧跟r1
r1|r2 r1或者r2 (egrep)
\(r\) 带括号的表达式(grep)
(r) 表达式（egrep)
\w 匹配字母或数字
\W 匹配任意非单词字符
```

## 其他过滤程序
`sort` 排序
```
-u 相同行只保留一行
```
`comm ` 文件比较
```
-12 答应在两个文件中都出现的行
-23 仅打印第一文件出现，第二文件未出现的
```
`tr` 字符转换
```
tr a-z A-Z 小写转大写
tr A-Z a-z 大写转小写
tr -sc A-Za-z '\012' 非字母转换为换行
```
`uniq` 处理重复行
```
-d 仅打印重复行
-u 打印唯一行
-c 求每行出现的次数
```

## 流编辑程序sed
\#NotAll

Usage:

```
sed [option] 'command' file_name
```
sed是由ed直接派生的。执行过程是一次读入一行，依序将命令应用到每一行，并将编辑过的内容写入标准输出(而不是输入文件).

**注意** 
```
# error demo
sed `commad` file > file
```
是一个错误的实例，这条命令先覆盖了file才接着执行sed，故需要替换文件内容，一定要使用临时文件。

Command
```
's/pattern/destpattern/' 将匹配行的pattern 替换为destpattern
's/!pattern/destpattern/' 将匹配行的pattern 替换为destpattern 作用在不匹配行上
```
page77


## 模式扫描和处理语言awk
\#NotAll
### 字段
### 打印
### BEGIN和END模式
### 算术运算与变量
### 控制流
### 数组
### 关联数组
### 字符串
### 与shell的交互作用
### 基于awk的日历服务
### 附注
### 好的文件和过滤程序

