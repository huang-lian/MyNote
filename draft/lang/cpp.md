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
    return 0;
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
`return 0;`  
as its means.

line 7:  
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

在hello world 部分，可以看到，一个程序可能存在
- `#include` 相关文件
- 程序入口`main(void)`函数
- 注释和空白。
  
其中，main函数中的内容是用`{}`括起来的 *语句块* ,而每一条语句又是以`;`标识结束的。还有，main函数中还包括了一条`return 0;`语句用于返回状态给调用程序。

### Variables and types

#### Fundamantal daya types
cpp 中定义了四组基本类型可以分为
- Character types
- Numberical types
- Floatting-point types
- Boolean type

具体划分如下

| Group | Type names* |
|-| - | - |
| Character types | char |
| Integer types(signed) | *signed* char |
| | *signed* short int |
| | *signed* int |
| | *signed* long *int* |
| | *signed* long long *int* |
| Integer types(unsigned) | unsigned char |
| | unsigned *int* |
| | unsigned long *int* |
| | unsigned long long *int* |
| Floatting-point types | float |
| | double |
| | long double |
| Boolean type | bool |
| Void type | void |
| Null pointer | decltype(nullptr) |

#### Variables
cpp中的命名遵从标识符号命名规则，且不允许与cpp中的保留字重复。

- Declaration of variables 变量声明方式 ：`TypeName VariableName;`  
For example:  
`int a;`  
`float mynumber;`  
- Initialization of variables  变量的初始化在声明时完成，有三种范式
	+ `type identifier = initial_value; `  
For example:  
`int x = 0;`
	+ `type identifier (initial_value); `  
For example:  
`int x (0);`  
	+ `type identifier {initial_value};`   
For example:  
`int x {0};`


在google CPP开源规范中明确限制使用自动变量，这里不再补充。

string 类单独记录，不作为一种基本数据类型。

### Constants
Constants are expressions with a fixed value.

#### literals 字面值  
- number and float

可以通常通过前缀和后缀区别。
> For octal (八进制) literals, the digits are preceded with a 0 (zero) character. And for hexadecimal(十六进制）, they are preceded by the characters 0x (zero, x).

> By default, integer literals are of type int. However, certain suffixes may be appended to an integer literal to specify a different integer type:

| Suffix | Type modifier |
|---|---|
| u *or* U | unsigned |
| l *or* L | long |
| ll *or* LL | long long |

> The default type for floating-point literals is double. Floating-point literals of type float or long double can be specified by adding one of the following suffixes:

| Suffix | Type |
| - | - |
| f *or* F | float |
| l *or* L | long double |

- Character and string literals 字符和字符串
使用`'`和`'`括起来。或者使用`"`和`"`括起来.  
使用过程中需要注意转义字符。

- Other literals
Three keyword literals exist in C++: true, false and nullptr:  
说明：实际编程中可以使用 1 0 来代替，但是不推荐，因为容易产生歧义。

#### Typed constant expressions
类型名前使用`const`关键字即可定义。  
`const type valname = value`  
注意：  
- 声明的同时必须初始化值
- 声明以后就不可修改其值了。

#### Preprocessor definitions (#define)
使用宏定义，本质是编译器在编译阶段执行文本替换，需要注意的是该语句不需要`;`  
`#define identifier replacement `

### Operators
- Assignment operator (=)
- Arithmetic operators ( +, -, *, /, % )
- Compound assignment (+=, -=, *=, /=, %=, >>=, <<=, &=, ^=, |=)
- Increment and decrement (++, --) 符号前先运算，符号后先用旧值。
- Relational and comparison operators ( ==, !=, >, <, >=, <= ) 尽量将不可修改值放置在左侧，便于编译器帮助检测出可能的书写错误。
- Logical operators ( !, &&, || ) 注意其*截断*现象的使用。
- Conditional ternary operator ( ? )
- Comma operator ( , )，only the right-most expression is considered. 只考虑最右边的值。
- Bitwise operators ( &, |, ^, ~, <<, >> )
- Explicit type casting operator 可使用 `(int) f`或者`int (f)`两种模式转换。
- sizeof
- Precedence of operators 优先级序列多使用括号辅助阅读。

### Basic Input/OutPut
| stream | description |
| - | - |
| cin |	standard input stream |
| cout | standard output stream |
| cerr | standard error (output) stream |
| clog | standard logging (output) stream |

***

## Program Structure
### Statements and flow control
语句以`;` 标识结束。 `{` 和`}`之间的内容是一个整体，称为语句块  
`{ statement1; statement2; statement3; }`

#### Selection statements: if and else
`if (condition) statement `  
`if (condition) statement1 else statement2`

#### Iteration statements (loops)
- The while loop  
`while (expression) statement`
- The do-while loop  
`do statement while (condition);`
- The for loop  
`for (initialization; condition; increase) statement;`
- Range-based for loop  
`for ( declaration : range ) statement;`

#### Jump statements
- The break statement `break;`
- The continue statement `continue`
- The goto statement `goto Label`

#### Another selection statement: switch.

```cpp
switch (expression)
{
  case constant1:
     group-of-statements-1;
     break;
  case constant2:
     group-of-statements-2;
     break;
  .
  .
  .
  default:
     default-group-of-statements
}
```
> Notice that switch is limited to compare its evaluated expression against labels that are constant expressions. It is not possible to use variables as labels or ranges, because they are not valid C++ constant expressions.

// ### Control Structure
### Functions
> Functions allow to structure programs in segments of code to perform individual tasks.

函数是可执行单个任务的功能模块。

`type name ( parameter1, parameter2, ...) { statements }`

调用函数时需要带上括号和相应的参数值。

#### Functions with no type. The use of void
#### The return value of main
#### Arguments passed by value and by reference
#### Efficiency considerations and const references 复杂数据类型的时候使用。
#### Inline functions 使用关键字`inline`在返回值前
#### Default values in parameters
#### Declaring functions
#### Recursivity

### Overloads and templates

<http://www.cplusplus.com/doc/tutorial/functions2/>

#### Overloaded functions
> Two overloaded functions (i.e., two functions with the same name) have entirely different definitions; they are, for all purposes, different functions, that only happen to have the same name.
> 
> Note that a function cannot be overloaded only by its return type. At least one of its parameters must have a different type.

#### Function templates

`template <template-parameters> function-declaration`  

`name <template-arguments> (function-arguments)`  

##### Non-type template arguments

### Name visibility
<http://www.cplusplus.com/doc/tutorial/namespaces/>
***

## Compund data types
### Arrays
- Declaration arrays  
`type name [elements];`
- Initializing arrays. initial values in braces `{}`.
- Accessing the values of an array `name[index] `
- Multidimensional arrays
- Arrays as parameters
- Library array. It is a type template (a class template, in fact) defined in header <array>.

### Charater sequences
c风格的字符串本质上是char数组，只是最后一个char 为`\0`(null-terminated character sequences)  
C Strings is null-terminated character sequences.

`String` 类使用 `.c_str()` 转换为c string.

### Pointer
<http://www.cplusplus.com/doc/tutorial/pointers/>

#### Address-of operator (`&`)
取地址符号，用于获得变量的内存地址。示例：  
`foo = &myvar;`
#### Dereference operator (`*`)
地址引用，引用地址中的值。示例：  
`baz = *foo;`
#### Declaring pointers
声明指针：  
`type * name;`
#### Pointer initialization
指针赋值需要指针类型和数据类型相匹配。

#### Pointer arithmetics
指针的算术运算是基于指向的数据类型的大小的。指针每次增加或者减小的是其指向的数据类型的大小。
#### Pointers and const
```
int x;
      int *       p1 = &x;  // non-const pointer to non-const int
const int *       p2 = &x;  // non-const pointer to const int
      int * const p3 = &x;  // const pointer to non-const int
const int * const p4 = &x;  // const pointer to const int
```
```
const int * p2a = &x;  //      non-const pointer to const int
int const * p2b = &x;  // also non-const pointer to const int
```
#### Pointers and string literals
```
const char * foo = "hello";
```
#### Pointers to pointers
#### void pointers
#### Invalid pointers and null pointers
#### Pointers to functions

### Dynamic Memory
### Operators `new` and `new[]`
```cpp
pointer = new type
pointer = new type [number_of_elements]
```
> `p= new (nothrow) int[i];`  
> It is considered good practice for programs to always be able to handle failures to allocate memory, either by checking the pointer value (if nothrow) or by catching the proper exception.

#### Operators `delete` and `delete[]`
```cpp
delete pointer;
delete[] pointer;
```

### Data structures
```
struct type_name {
member_type1 member_name1;
member_type2 member_name2;
member_type3 member_name3;
...
} object_names;

type_name obj_names;
```
使用句点dot(.) 访问对象成员。
指针对象使用->访问。
### Other data types
- Type aliases (typedef / using)
`typedef existing_type new_type_name ;`  
`using new_type_name = existing_type ;`
- union
	- Anonymous unions
- enum
	- Enumerated types with enum class


***

## Classes
### Classes I
#### Format
```
class class_name {
  access_specifier_1:
    member1;
  access_specifier_2:
    member2;
  ...
} object_names;
```
> An access specifier is one of the following three keywords: `private`, `public` or `protected`
> By default, all members of a class declared with the class keyword have private access for all its members.

#### Constructors
#### Overloading constructors
#### Uniform initialization
#### Member initialization in constructors
#### Pointers to classes
#### Classes defined with struct and union

### Classes II
#### Overloading operators
#### The keyword this
#### Static members
#### Const member functions
#### Class templates
#### Template specialization


### Special members

| Member function	|typical form for class C: |
| -- | -- |
| Default constructor	| C::C(); |
| Destructor	| C::~C(); |
| Copy constructor	| C::C (const  C&); |
| Copy assignment	| C& operator= (const  C&); |
| Move constructor	| C::C ( C&&); |
| Move assignment	| C& operator= ( C&&); |

### Friendship and inheritance
Friend functions
Friend classes
Inheritance between classes
What is inherited from the base class?
Multiple inheritance

### Polymorphism

| Statement:	| Explained in: |
| - | - |
| int A::b(int c) { }	| Classes |
| a->b	| Data structures |
| class A: public B {};	| Friendship and inheritance |


Pointers to base class
Virtual members
Abstract base classes

***

## Other language features
### Type conversions
Implicit conversion
Implicit conversions with classes
Keyword explicit
Type casting
dynamic_cast
static_cast
reinterpret_cast
const_cast
typeid
### Exceptions
Exception specification
Standard exceptions

### Preprocessor directives
macro definitions (#define, #undef)
Conditional inclusions (#ifdef, #ifndef, #if, #endif, #else and #elif)
Line control (#line)
Error directive (#error)
Source file inclusion (#include)
Pragma directive (#pragma)
Predefined macro names

***

## Library
### Input/output with files
> C++ provides the following classes to perform output and input of characters to/from files: 
> `ofstream`: Stream class to write on files
> `ifstream`: Stream class to read from files
> `fstream`: Stream class to both read and write from/to files.

#### Open a file
`open (filename, mode);`
#### Closing a file
`myfile.close();`
#### Text files


Checking state flags
get and put stream positioning
Buffers and Synchronization

// TODO
