# Python3

## Introduction
python as shell script
### Python Interpreter 
python 是一门解释型语言，不需要编译，只需要python解释器逐行解释给机器执行即可。
Command  

`python3 example.py`  
Or  
```
chmod +x example.py
./example.py
```

### Hello World
```
#!/bin/python3
# -*- coding: utf-8 -*-
# hello-world.py

print("Hello World!")
```

line 1:  
`#!/bin/python3`  
shell脚本的标准开头

line 2:  
`# -*- coding: utf-8 -*-`  
指定 py 文件编码也可以用  
`#coding=utf-8`

line 3:  
`# hello-world.py`  
注释行，习惯性标明文件名

line 5:  
`print("Hello World!")`  
输出语句，自带换行符号。需要注意，python3 以后的函数都需要括号。py2支持  
`print "Hello World"`

### Comment

```pyrhon
# line comment

""" Documentaion String """
''' block comment '''
```

`my_function.__doc__`
可以获得一个方法内的Documentaion String。

***

## Basics
### Structure of a program
Statement  
不同于c/c++ python 代码的行结束标识`;`是可选的。即一行就是一条语句。python的语句块用缩进来控制。相邻相同缩进的代码是一个代码块。可视作一个整体。空白行和缩进需要谨慎。
一个python 程序从第一行开始运行，第一行运行的代码即程序入口。对于每个程序，编码的指定是推荐的。

### Variables and types
python 是动态数据类型，即，一个变量前后的类型可以发生变化。取名时只需要不和保留字冲突，符合标识符号规范即可。赋值即声明和定义,便可以使用。

`name = value`
- Numbers int / float
    - `/`浮点除法
    - `//`只保留整数部分。
    - 支持复数运算。使用 J 或者 j 代表虚数。
    - Strings
- Strings 使用引号包括值
    - Cpp-string +
    - c-string 下标访问
    - 可以使用标记`r`表明字符串的值。
    - 范围访问。
- List 使用`[]`包括值
- set {}
- Tuples () 或者省略
- dict {k:v}


### Operators
### Basic Input/OutPut
- input();
- print();  
    `str.format()`。在str中使用`{}`作为占位符。或者使用`{lable}`作为占位符。    
    `rjust() ljust() center,zfill()`
    支持c风格的格式控制。
***

## Program Structure
### Control Structure
#### if Statements
```python
if conditon:
    Statement
elif conditon:
    Statement
else:
    ...
```
#### while Statement
```python
while conditon:
    Statements
```

#### for Statements
```
# 0
for i in anyrangx:
    Statements

# 1 
for i in rang(arg):
    Statements

# 2 
for i in rang(start,end):
    Statements
# 3
for i in rang(start,end,step):
    Statements
```

#### break and continue 
#### pass
does nothing

### Functions
```python
def functions(args1,args2...):
    Statements
    ...
    return result
```
- 没参数类型和返回值类型
- 默认参数从最右边开始
- 可以使用关键字参数：调用函数时使用`kwarg=value`
- 任意参数列表
- lambda 表达式。
- `my_function.__doc__`
- `->str:`



***

## Data structures
### More on Lists
```python3
list.append(x)
list.extend(iterable)
list.insert(i,x)
list.remove(x)
list.pop([i])
list.clear()
list.index(x[,start[,end]])
list.count(x)
list.sort(key=None,reverse=False)
list.reverse()
list.copy()
```
deque objects
### The `del` statement
### Tuples and Sequences
'tuple' object does not support item assignment.可以包括多钟类型。
### dictuinaries
键值对形式存在
### Looping Techniques

```
for i,v in  enumerate():
    ...
for q,a in zip():
    ...
for i in reversed():
    ...
```

### More on conditions

### Modules

` from Modules_name inport <[fun|*]> [as new_name]`

Executing modules as scripts
添加以下语句
```
if __name__ == "__main__":
    statement
  
```



***

## Classes
### Polymorphism

***

***

## Library
file

```
f = open(filename,'mode')
# f.read()
for line in f:
    f.readline()
f.write(str)

f.closed()
```
// TODO
