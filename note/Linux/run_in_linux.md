
# Run In Linux
## apt和apt-get的区别
`apt` 更被推荐使用，`apt-ge`t 是较为旧的命令
## Latex
使`aligned`或者`split`环境可以避免编号的出现
## Commad
输入tab键 而不是命令补全
`ctr+v; tab`

###  help file
在Option中`[]`之间的字符内容可选。`<>`之间的内容必选。书写时需要去掉括号  
### Open file
```bash
evince *.pdf
libreoffice *.docx
xdg-open *.*  # use defualt applications
```

### grep

```bash
grep -v  'string' # not
```



```bash
ls .| grep '.*.tex' # correct
ls .| grep '*.tex'  # error
# * 匹配0个或多个先前字符
# .* 匹配任意个字符
```



### rm
慎用删除命令，尽可能先备份后删除
## VIM
### `:s` 命令中

用符号`&`引用匹配内容

`\t` 换行符号

### 左侧打开文件管理器Lexplore
`[N]Lexplore` 在左侧打开文件管理器。其中

- `-` 上一级
- `x` 默认程序打开文件
- `r`  逆序排列
-  `s` 不同排序方式跳转
-  `R` 重命名
- `Entry` vim 打开

## better Code c
使用C和C++中的简单部分（而不是类）会更容易实现算法细节。其中一个原因是因为算法接口确定以后，不必每个部分都写class type
建立一个数据结构，应当要构建测试数据，以及一些查看结构内数据的方法。
使用 `catgs -R`生成tag文件跳转

## shortcuts

`Alt + \``
同一应用程序中切换

`Alt+Tab` `Super + Tab` 不同的应用之间切换

`Ctrl + Alt + 箭头` 工作环境切换

`Super + Num` 启动Launcher列表中的的第n程序（n = 1,2,...,9)

`Super`  窗口并排预览；搜索

## ibus 输入符号
` \``可以调用出几个常用的符号，然后键入和目标符号相似的字符，使用上下箭头切换查找。

## linux file struct
`/tmp/` 中的文件 会在机器关闭时自动清除
