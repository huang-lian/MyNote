# shell
## Introduction
### Compliers
*Run*  
Command  
```shell
bash example.sh
```
or

```shell
chmod +x example.sh
./example.sh
```
### Hello World
```shell
#!/bin/bash
# hello_world.sh
echo 'Hello World!'
```
### Comment
start with `#` stop at end of line.

*block-comment*  
shell 中没提供内置的多行注释，可以使用一些技巧实现。但是不推荐使用，因为容易出现语法报错。

- 使用`if`语句
```shell
if false; then
    block comment
fi
```

- 使用`here document
``` shell
:<<block-comment
    block comment.
block-comment

```

- 定义函数
``` shell
block_comment(){
    block comment.
}
```

***

## Basics
### Structure of a program
### Variables and types
### Operators
### Basic Input/OutPut
### 

***

## Program Structure
### Control Structure
### Functions
### Overloads and templates
### Name visibility

***

## Compund data types
### Arrays
### Charater sequences
### Pointer
### Dynamic Memory
### Data structures
### Other data types

***

## Classes
### Classes I
### Classes II
### Special members
### Friendship and inheritance
### Polymorphism

***

## Other language features
### Type conversions
### Exceptions
### Preprocessor directives

***

## Library
// TODO
