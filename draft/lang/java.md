# Java
## Introduction
Java 编程语言和 Java 平台
<https://www.oracle.com/technetwork/cn/topics/newtojava/downloads/index.html>
> Java 是一种高级语言和独立于硬件的软件平台。  
> Java 平台的两个主要组成部分是 Java 应用程序编程接口 (API) 和 Java 虚拟机 (JVM)。API 是 Java 命令行的库，JVM 将 Java 代码解释成机器语言。  
> API 和 JVM 使程序可以独立于底层硬件  
>
> Java Platform, Standard Edition (Java SE)
> Java SE 让用户可以在桌面和服务器上以及嵌入式环境中开发和部署 Java 应用程序。Java SE 包含 Java 编程语言库的核心。  
>
> JavaFX — Java 用户界面平台  
> JavaFX 是适用于企业业务应用程序的高级 Java 用户界面 (UI) 平台。将 Java 同时用于服务器和客户端的开发人员可以构建更稳健、更可靠的应用。  
>
> Java Platform, Enterprise Edition (Java EE)  
> Java Platform, Enterprise Edition (Java EE) 是构建 Web 应用程序和企业应用程序的行业标准。利用新的轻量级 Java EE 6 Web Profile 创建下一代 Web 应用程序，利用 Java EE 6 平台的强大功能构建企业应用程序。Glassfish 是开源的 Java EE 服务器，可免费下载。用户可以免费使用该软件构建任何类型的业务应用程序。  
>
>  Java Embedded 和 Java ME  
> Embedded；适用于具有 64MB 内存的设备的 Java ME Embedded 以及适用于连接到数据库的设备的 Java Embedded Suite。Java ME 是一个适用于在移动和嵌入式系统上运行的应用程序的环境。  


### Compliers
Compile the Source File into a.class file

javac  
command  
```
javac example.java
```

Run the Program

java  
command  
```
java example [arg1 ...]
```


### Hello World

```
// HelloWordApp.java
/** 
 * The HelloWordApp class implements an application that simply prints
 * "Hello World!" to standard output.
 */

class HelloWordApp {
    public static void main(String[] args) {
	System.out.println("Hello World!");
    }
}
```

每一个java程序都是一个类(class)。
java 类定义范式
```java
class name {
    // ...
}
```

程序入口:main 方法.  
每个程序都需要包含一个main方法作为程序入口，范式如下
```java
public static void main(String[] args)
```

输出语句：
```
System.out.println("Hello World!");
```
这是java的一个输出语句，也是典型的 API 调用实例（也可以叫做接口调用，函数调用）。

### Comment
java 支持cpp风格的注释，即
```java
/* text */
// text
```
除此之外，java还提供了工具javadoc用于提取文档注释，文档注释一般使用下列格式
```java
/** documentation */


/**
 * documentation
 */
```

Source Code Comments <https://docs.oracle.com/javase/tutorial/getStarted/application/index.html>

>   
> `/* text */`  
> The compiler ignores everything from `/*` to `*/`.  
> `/** documentation */`  
> This indicates a documentation comment (doc comment, for short). The compiler ignores this kind of comment, just like it ignores comments that use `/*` and `*/`. The javadoc tool uses doc comments when preparing automatically generated documentation. For more information on javadoc, see the Javadoc™ tool documentation .  
> `// text`  
> The compiler ignores everything from `//` to the end of the line.  
>   

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
