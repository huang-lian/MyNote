# 使用session和viminfo保存编辑环境
会话(session)和viminfo，可以把你编辑环境保存下来，然后你在下次启动vim后，可以再恢复回这个环境

- 会话信息中保存了所有窗口的视图，外加全局设置。
- viminfo信息中保存了命令行历史(history)、搜索字符串历史(search)、输入行历史、非空的寄存器内容(register)、文件的位置标记(mark)、最近搜索/替换的模式、缓冲区列表、全局变量等信息。

## 使用session
- 创建会话文件 `:mksession [file]`  
如果省略文件名的话，会自动创建一个名为Session.vim的会话文件。会话文件，其本质上是一个vim脚本。
- 导入会话文件 `:source <session-file>`  
会话文件是一个脚本，里面保存的是Ex命令，所以`:source`命令只是把会话文件中的Ex命令执行一遍。
## 会话文件中保存的信息
是由`sessionoptions`选项决定的。  
缺省包括
```bash
help     # 帮助窗口
winsize  # 窗口大小
blank    # 空窗口 
tabpages # 标签页
buffers  # 缓存区
curdir   # 当前目录
folds    # 折叠 fold
options  # 选项和映射
```

## 使用viminfo
- 创建viminfo:`wviminfo [file]`  
该命令手动创建了一个viminfo文件。缺省的会自动创建一个.viminfo文件，在关闭窗口时自动更新。
- 载入viminfo:`rviminfo [file]`