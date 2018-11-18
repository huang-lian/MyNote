# 编程规范-特殊注释：`TODO` `FIXME` `XXX`
- `TODO` 待实现功能
- `FIXME`待修正功能
- `XXX` 待改进功能

for instance
```c
/* TODO: How about auto-correcting small spelling errors? */
/* FIXME: This won't work if the file is missing. */
/* XXX: This method badly needs refactoring: should switch by core type.  */
```
<http://wiki.c2.com/?FixmeComment>

Usage:

1. 注释要使用*全大写*的字符串
2. 在随后的圆括号里写上你的名字, 邮件地址, bug ID, 或其它*身份标识*和与这一 注释*相关的 issue*. 主要目的是让添加注释的人 (也是可以请求提供更多细节的人) 可根据规范的格式进行查找
3. (团队合作中)注释并不意味着你要自己来修正, 因此当你加上带有姓名的注释时, 一般都是写上自己的名字


## `TODO` Comment
对那些临时的, 短期的解决方案, 或已经够好但仍不完美的代码使用 `TODO` 注释.

1. `TODO` 注释要使用全大写的字符串 `TODO`, 
2. 在随后的圆括号里写上你的名字, 邮件地址, bug ID, 或其它身份标识和与这一 `TODO` 相关的 issue. 主要目的是让添加注释的人 (也是可以请求提供更多细节的人) 可根据规范的 `TODO` 格式进行查找. 
3. 添加 `TODO` 注释并不意味着你要自己来修正, 因此当你加上带有姓名的 `TODO` 时, 一般都是写上自己的名字

<https://zh-google-styleguide.readthedocs.io/en/latest/google-cpp-styleguide/comments/#todo>

## `FIXME` Comment
标识处代码需要修正，甚至代码是错误的，不能工作，需要修复
## `XXX` Comment
标识处代码虽然实现了功能，但是实现的方法有待商榷，希望将来能改进
## 弃用注释（`DEPRECATED` comments
标记某接口点已弃用.
## Example
### `C`
```C
/* FIXME(dws) needs to allow for multiple widgets */
```
### `CPP`
```CPP
// TODO(kl@gmail.com): Use a "*" here for concatenation operator.
// TODO(Zeke) change this to use relations.
// TODO(bug 12345): remove the "Last visitors" feature
```
### `Python`
```Python
# TODO(kl@gmail.com): Use a "*" here for string repetition.
# TODO(Zeke) Change this to use relations.
```
