Tag:note

Date:2018年9月18日22:52:03

Title:第三章 命题演算形式系统（Propositional Calculus）



[TOC]
# 命题逻辑演算形式系统
以下简称命题演算形式系统为PC

## PC的组成
1. 字符集
  - (1) 原子变元符: $p_1,p_2,\cdots,p_n,\cdots$ 
  - (2) 联结词完备集: $\{\rightharpoondown ,\to\}$
  - (3) 辅助符号:圆括号$()$
2. 形成规则
即原子变元符及联结词形成命题公式的规则。即命题公式的定义部分。
3. 公理
从$PC$中挑选出三个最基本的重言式作为公理，作为推导其他所有重言式的依据。
$$
\begin{align} 
&A1:A\to(B\to A) \\
&A2:(A\to(B\to C))\to((A\to B)\to(A\to C)) \\
&A3:(\rightharpoondown A\to\rightharpoondown B)\to(B\to A) \\
\end{align}
$$
4. 推理规则 
在$PC$中仅有一个推理规则，称为分离规则$(r_{mp})$:即若有结论$A$及$A\to B$成立，则必有结论$B$成立。可用形式化的推理序列表示为：
$$
A,A\to B,B
$$
依据规则可以看出，如果$A$及$A\to B$为真，则必有$B$为真；若有$A$及$A\to B$为永真，必有$B$为永真。此属性被称为分离规则的保真性。依据规则可以看出，如果$A$及$A\to B$为真，则必有$B$为真；若有$A$及$A\to B$为永真，必有$B$为永真。此属性被称为分离规则的保真性。
5. 定理推导
包括所有的推理结论及其推理过程。

## PC中的基本定理

**定义1 证明：** 称下列的公式序列为公式$A$在$PC$中的一个证明
$$
A_1,A_2,\cdots,A_m,\cdots(=A)
$$
其中$A_i(i=1,\cdots,m-1)$或为$PC$的公理，或为$A_j(j<i)$,或为$A_j$,$A_k(j,k<i)$使用$r_{mp}$导出的，而$A_m$即为公式$A$。

**定义2 定理：** 如果公式$A$在$PC$中有一个证明序列则称$A$为$PC$的定理，记为$\vdash_{PC}A$或简记为$\vdash A$。其中符号$\vdash$表示其后的公式在$PC$中是可证明的。从语义的角度看就是表示后面的公式为重言式。

**定义3 演绎：** 设$\Gamma$为$PC$中若干公式构成的公式集，称下列的公式序列为公式$A$以$\Gamma$为前提的演绎，即
$$
A_1,A_2,\cdots,A_m(A=A)
$$
其中，$A_i(i=1,\cdots,m-1)$或为$PC$的公理，或为$\Gamma$中的成员，或为$A_j(j<i)$，或为$A_j,A_k(j,k<i)$使用$r_{mp}$导出的，而$A_m$即为公式$A$。记为$\Gamma_{PC}\vdash A$或简记为$\Gamma\vdash A$并称$A$为$\Gamma$的演绎结果。
若$\Gamma$中仅有一个成员，如$\Gamma=\{B\}$，此时，$\Gamma\vdash A$即为$B\vdash A$，表示公式$A$可由前提$B$在$PC$中演绎出来。若此时还有$A\vdash B$则称公式$A$和公式$B$演绎等价，记为$A\vdash\dashv B$。

**定理1：**$\Gamma_{PC}A\to A$ 反应的是实事求是

证明：
$$
\begin{align}
&//需要证明之，则需要找出一个公式序列A_1,A_2,\cdots,A_m(A_m=A)\\
&//并且说明公式A_i(0<i<m)满足【证明】定义中的哪一句条件。\\
&//书写形式可以参考【序号 公式 理由】这样的形式。\\
&//那么该如何寻找这样一个序列呢？可以参考下面的分析\\
&//可以肯定的是，A_1势必是一个公理。A_m势必是公式A\\
&// 首先可以写出已知的公理。\\
&//（待证公式中无否定词出现，姑且可以不考虑公理A3）\\
&1\ A\to(B\to A)&A1\\
&2\ (A\to(B\to C))\to((A\to B)\to(A\to C))&A2\\
\\
&//目的是使得A_i向A_m靠拢,将已知序列推导靠近A_m的形式,\\
&//即将公理中和待证公式不相同的地方逐渐改写掉\\
&//（符合公式定义依旧是公理)\\
&3\ A\to(A\to A)&A1\\
&4\ (A\to((A\to A)\to A))\to((A\to (A\to A))\to(A\to A))&A2\\
&//推理规则的作用是去掉前件，\\
&//在替换字符串的过程中始终要考虑前件可去掉，后件和目标的匹配\\
&5\ A\to((A\to A)\to A)&A1\\
&6\ (A\to(A\to A))\to(A\to A) &5,4,r_{mp}\\
&7\ A\to A&6,5,r_{mp} \\
\end{align}
$$

**定理2：**若$\Gamma_{PC}A\to(B\to C)$，则$\Gamma_{PC}B\to(A\to C)$ 前件互换定理

证明：
$$
\begin{align}
&// 必定存在序列A_1，A_2，\cdots,A_m(=A\to(B\to C))\\
&1\ A\to(B\to C)&已知前提\\
&2\ (A\to(B\to C))\to((A\to B)\to(A\to C))&A2\\
&3\ (A\to B)\to(A\to C)&1,2,r_{mp}\\
&4\ ((A\to B)\to(A\to C))\to(B\to((A\to B)\to(A\to C)))&A1\\
&5\ B\to((A\to B)\to(A\to C))&4,3,r_{mp}\\
&6\ (B\to((A\to B)\to(A\to C)))\to((B\to(A\to B))\to(B\to(A\to C)))&A2\\
&7\ (B\to(A\to B))\to(B\to(A\to C))&6,5,r_{mp}\\
&8\ B\to(A\to B)&A1\\
&9\ B\to(A\to C)&8,7,r_{mp}\\
\end{align}
$$

**定理3:**$\Gamma_{PC}(A\to(B\to C))\to(B\to(A\to C))$ 前件互换定理

证明：
$$
\begin{align}

\end{align}
$$

**定理4：** $\Gamma_{PC}(B\to C)\to((A\to B)\to(A\to C))$ 加前件定理

证明：
$$
\begin{align}
\end{align}
$$

**定理5：**$\Gamma_{PC}(A\to B)\to((B\to C)\to(A\to C))$加后件定理

证明：
$$
\begin{align}
\end{align}
$$

**定理6：**$\Gamma_{PC}\rightharpoondown A\to(A\to B)$

证明：
$$
\begin{align}
\end{align}
$$

