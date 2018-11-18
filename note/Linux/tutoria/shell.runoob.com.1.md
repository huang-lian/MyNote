# Shell 输入和输出

## read \<arg> 从标准输入读入一行

## 输出

- `echo <string>`
- 行末有换行符号，双引号和单引号不同的控制，其中可包含转义字符和变量
- `printf <format-string> [args...]`
  - 类似c语言中的格式控制语句，但是参数间以空格分离
  - 格式控制与转义和c语言一致（需要验证）

# Shell 流程控制

## if

-  条件需要使用 `[  ]` 包括，括号和表达式间要留有一个空格
-  也可是 使用test 语句，此时不再需要`[ ]`
- 如果存在分支语句，可以接else，形如
  ```
  if [ <condition> ]  
  then <command> 
  else
  <command>
  fi
  ```
- 多分支语句则使用 `elif`
-  结束一定不要忘记使用 `fi`
-  如果 `if `和`then` 写作一行，需要在`then`之前使用分号`;`来隔开

## for
- 一般格式为
  ```
  for <var> in [items...]
  do
    <commamd>
 done
  ```
- 
## while
- 一般格式为
  ```
  while condition
  do
  <command>
  done
  ```

## until
- 格式同`while`
- until 循环执行一系列命令直至条件为 true 时停止。
- until 循环与 while 循环在处理方式上刚好相反。
- 一般 while 循环优于 until 循环，但在某些时候—也只是极少数情况下，until 循环更加有用。

## case

- 一般格式

  ```
  - case <string> in
    <mode1>)
    <command>
    ...
    ;;
    <mode2>)
    <command>
    ...
    ;;
     esac
  
  ```

- 匹配的是字符串，而不仅是数值

- 结尾必须使用esac标记case语句结束
- 每一个模式后面使用一句`;;`作为跳出语句

## break && continue 同C

# Shell 函数

- 定义格式

  ```shell
  <funname>（）
  {
  # writring from here
  [return int;]
  }
  ```

- 参数录入使用`$n`格式
- 参数返回，可以显性加return返回，或者不加，默认返回最后一条语句执行结果。return只能返回0-255

# shell 输入输出重定向

```
> 输出定向至
< 输入定向至
>> 输出追加定向至
a >& b 输出文件a和b合并
a <& b 输入文件a和b合并
<< tag 开始标记和结束标记之间的内容作为输入
```



一般情况下，每个 Unix/Linux 命令运行时都会打开三个文件：

- 标准输入文件(stdin)：stdin的文件描述符为0，Unix程序默认从stdin读取数据。
- 标准输出文件(stdout)：stdout 的文件描述符为1，Unix程序默认向stdout输出数据。
- 标准错误文件(stderr)：stderr的文件描述符为2，Unix程序会向stderr流中写入错误信息。

默认情况下，command > file 将 stdout 重定向到 file，command < file 将stdin 重定向到 file。



- 如果希望执行某个命令，但又不希望在屏幕上显示输出结果，那么可以将输出重定向到 `/dev/null`：

```
$ command > /dev/null
```

/dev/null 是一个特殊的文件，写入到它的内容都会被丢弃；如果尝试从该文件读取内容，那么什么也读不到。但是 /dev/null 文件非常有用，将命令的输出重定向到它，会起到"禁止输出"的效果。经典使用 commd n>&file



# Shell 文件包含

`.filename` 或者 `source filename`即可将目标文件包含到当前















