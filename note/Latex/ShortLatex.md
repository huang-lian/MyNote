简单快速了解LaTeX 的笔记。介绍了LaTeX 的一些基本内容，包含作者遇到的一些问题的总结和资料推荐。
<!--more-->


# LaTeX快速开始

创建文本文件`hello-latex.tex`，确保扩展名为`.tex`，在文件中录入下列信息。
```latex
% hello-latex.tex
\documentclass{article}
\begin{document}
Hello,\LaTeX
\end{document}
```
运行xelatex 处理源文件（确保已经[安装xelatex](https://cn.bing.com/search?q=%E5%AE%89%E8%A3%85latex&qs=n&form=QBRE&sp=-1&pq=%E5%AE%89%E8%A3%85latex&sc=3-7&sk=&cvid=04E8B99006CA4D6994D6BBB079CC4F0F) ubuntu上可以使用`sudo apt install texlive`）。如果成功，会在当前路径下生成一个同名的`.pdf`文件
```shell
xelatex hello-latex.tex
```
成功的操作，输出结果应当和下面相似，否则请检查拼写是否正确
```shell
Output written on hello-latex.pdf (1 page).
Transcript written on hello-latex.log.
```

# 对hello-latex.tex的解释
`hello-latex.tex`就是一个最简单的`LaTeX`源文件。latex源文件的本质是纯文本文件。


latex文件中的内容可以分为**命令**，**数据**和**注释**。命令以`\ `开始，`%`到行末的内容都是注释。数据就是普通内容。其中命令分为普通命令和环境，二者可以相嵌套，普通命令大多只有一行，环境则包括起始声明和结尾声明。


`hello-latex.tex`中的第一行是一句注释，第二行命令表明这篇文档的类别是`article`，`\begin{document}`，`\end{document}`分别是环境的起始声明和结尾声明。`\LaTeX` 是预定义的字符串。



xelatex处理文档时，首先需要知道作者所要创建的文档类型（以便载入一些默认的设置）。该命令通过`\documentclass[options]{}`提供。`article`类型以外其他常用类型还有`report`，`book`，这里不过多介绍。



`\begin{document}`，`\end{document}`之间则是我们需要书写的内容的位置。另外，在`\documentclass`和`begin{document}`之间的内容也被称为序言，序言部分用来引入一些包（控制排版格式的工具），定义环境，做一些对文档排版的设置。

更多关于文档结构，推荐阅读[这里](http://dralpha.altervista.org/zh/tech/lnotes2.pdf)

```latex
\documentclass{article}
%序言
\begin{document}
% 文档内容
\end{document}
```

# Latex字体设置和使用中文
latex默认处理的语言是英文，所以我们可以引入`fontspec`包来设置字体以及`XeCJK`使用中文。下面是一个解决的例子。
```latex
\documentclass{article}

%设置字体，使用中文
\usepackage{fontspec}
%设置英文默认字体
\setmainfont[Mapping=tex-text]{Times New Roman}
%设置西文无衬线字体，通常用在大标题中
\setsansfont[Mapping=tex-text]{Tahoma}
%设置等宽字体，一般排版程序代码
\setmonofont{Courier New}

%引入xeCJK包处理中文
\usepackage[CJKchecksingle]{xeCJK}
%设置行文中的字体，其中BoldFont和ItlicFont分别指定了行文中的粗体和斜体的替代字体
\setCJKmainfont[BoldFont=SimHei,ItalicFont=KaiTi]{SimSun}
%无衬线字体
\setCJKsansfont{SimHei}
%等宽字体
\setCJKmonofont{FangSong}

\begin{document}
\LaTeX 文档中使用中文
\end{document}
```

需要强调的是，切不可照搬复制上面的代码，因为可能你的机器并没有安装相应的字体。linux上可以使用命令`fc-list`查看本机安装的字体。更多关于字体的设置，推荐阅读[这里](https://www.zhihu.com/question/20563044)

# LaTeX数学公式录入
最开始接触LaTeX就是被ta强大的公式编辑能力吸引的，现在的很多markdown工具中都陆续支持LaTex的公式功能。latex的数学符号和公式分为行内和段落两种模式。行内公式置于`\(`和`\)`之间，段落公式置于数学模式环境中`\begin{math}`和`\end{math}`之间。
需要快速了解数学符号，推荐阅读[常用数学符号的 LaTeX 表示方法](http://mohu.org/info/symbols/symbols.htm)。

- 补充1.数学环境里面的粗体和文本里面的粗体是不同的，在数学环境中正确的使用粗体请参见[这里如何在LaTeX数学模式中更好地使用粗体？](https://www.zhihu.com/question/25290041)。
- 补充2.align环境下的多行公式会产生公式编号；使用aligned或者split环境不会可以避免编号的出现



# LaTeX文档结构和文件包含
一篇完整的文章，除了内容，往往还会又目录，索引之类的东西。逻辑上可以构成这样的结构
- 标题
- 目录
- 正文
- 参考文献

Latex提供了其中层次结构，每个高级层次可以包含若干低级层次
```
\part{...}   % Level -1
\chapter{...} % Level 0  %% article 中没有此层次
\section{...} % Level 1
\subsection{...} % level 2
\subsubsection{...} % level 3
\paragraph{...}  % level 4
\subparagraph{..} % level 5
```

使用`\tableofcontents`可以生成目录
使用`\setcounter[tocdepth]{n}`可以设置显示目录深度。
引入`hyperref`包可以生成pdf索引，但是默认索引是红色的，需要链接和索引调整可以参考[这里](https://www.cnblogs.com/ouyxy/p/6743073.html)
需要强调的是，使用目录和书签需要执行两次编译命令。（原因请参见阅读[推荐2](http://dralpha.altervista.org/zh/tech/lnotes2.pdf)2.2.3逻辑结构。



正文部分可以分为多个小文件而被包含到其中。下面是一个有文章结构包含其他文档的r样例。其中包含了文件`section2.tex`和文件`section3.tex`
```latex
documentclass[a4paper,11pt]{article}
%定义标题
\title{article_title}
\author{author_name}
\begin{document}
%使用标题
\maketitle
%插入目录
\tableofcontents
\section{start}
第一部分
\include{section2}
\include{section3}
\ldots{}
\end{document}
```

# LaTeX学习推荐
边阅读边实践是很好的学习方法，在学习和使用LaTeX的过程中，我建议是先选择一份资料作为主要的学习指导，快速了解要掌握的内容的轮廓以后跟着资料实践，基本知道了有哪些东西了使用过程中再查询具体内容。简单的来说，不要贪求一次学习就掌握全部内容，只要能建立起基本的框架，为以后的使用和实践建立迭代基础就好。
我推荐下面两本书作为Latex的学习资料。
- 推荐1：一份不太简短的 LATEX 2ε 介绍http://www.mohu.org/info/lshort-cn.pdf 。这本书简洁而不失全面的介绍了laxte的很多知识，强烈推荐阅读。
- 包太雷-LATEX NOTES 2：http://dralpha.altervista.org/zh/tech/lnotes2.pdf 作者整理的笔记，相对比较详实，文风幽默，但是其中还是有一些个人觉得遗憾的地方（有几个坑让我摔到了：( ）

以下则是一些相关资源。我暂时没有使用过，罗列与此处希望能有所帮助。
- Latex模板资源-LATEX开源小屋：http://www.latexstudio.net/
- LATEX资源：http://math.ecnu.edu.cn/~latex/links.html

2018年10月11日

