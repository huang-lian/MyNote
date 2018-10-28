# CPP

## Introduction
<http://www.cplusplus.com/info/description/>
> In order to better communicate to our computers what exactly it is we want them to do, we've developed a wide range of programming languages to make the communication process easier. 
> cpp is an open ISO-standardized language, a compiled language, a strongly-typed unsafe language...  
### Compliers

In a Linux environment the Complier is GCC.(use g++)  
Command:
```shell
g++ -std=c++0x example.cpp -o example_program
```
more info see:<http://www.cplusplus.com/doc/tutorial/introduction/>

### Hello World

The best way to learn a programming language is by writing programs.

```CPP
// hello-world.cpp
#include<iostream>

int main(void) {
    std::cout << "Hello World!" << std::endl;
}

```

Examine this program line by line.

line 1:  
`// hello-world.cpp`  
`//` 到行末的内容是注释

line 2：  
`#include<iostream>`  
以符号`#`开始的内容称为宏，被预处理器 (preprocesss) 识别处理.  
这条语句的含义是让预处理器将名为 `iostream` 的文件包含到本文件中。包含的文件一般是*头文件* （head) 。里面的内容通常是函数或者类型的声明。通常用扩展名 `*.h` 标识。  
`<>`括起来的文件一般是库头文件，由编译器在默认搜索路径下检索。如果是自定义文件一般使用`""`括起来，检索路径在编译命令中添加，更多见`g++ --help`

line 3:  
``  
空白行。对程序没有影响，为了便于阅读代码而添加的。  
在cpp文件中的空白除了用于分隔标识符，最大的作用便是格式化代码，便于阅读。

line 4  
`int main(void) {`  
这里标识了程序的入口，即程序开始的地方，每一个程序都应当且只应当包含这样的一条语句。  
本句定义了一个名叫做 `main` 的函数。`int`表明函数完成功能后返回的数据类型是`int`。括号的内容`void`显式指明了参数列表为空。入口更常见的形式是  
`int main(int args, char *arg)`  
使用`{}`括起来的内容是一个整体，这里标识了一个函数体。`{`和`}`的位置可以是行末，也可以是行首，取决于编程风格的不同。但必须保证二者是匹配的，即数量是一致的。

line 5:  
`    std::cout << "Hello World!" << std::endl;`  
这条语句实现了向控制台输出了 `Hello World`。  
`std::cout` 表明要向标准输出输出内容。标准输出通常是屏幕。  
`<<` 符号（Operator) 表明后面的内容要插入到前面的内容中。  
`std::endl` 等价于换行符号。  
`;` 标识了一条 cpp 语句的结束。语句是 cpp 程序的最小单位。

line 6:  
`}`
语句块边界。

### Comment

cpp 支持c 风格的注释，即  
```c
/* line comment */
/* 
  block comment
  first line
  second line
  ...
*/
```

cpp 有自己的注释风格，以`//`开始，到行末结束。但是只支持行注释，即
```cpp
// line comment
```

如果需要多行注释，则需要在每行使用 `//` 即
```cpp
// first line of block comment
// second line of block comment
// ...
```

除此，也可以借用宏定义来实现多行注释，比如
```cpp
#if 0
 block comment
 first line of block comment
 second line
 ....
#endif
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
