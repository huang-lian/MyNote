Error:
```
fatal: refusing to merge unrelated histories
```

Solution:
ref:<https://blog.csdn.net/lindexi_gd/article/details/52554159>
```
git pull origin master --allow-unrelated-histories
```
or if set default pull branch,use
```
git pull --allow-unrelated-histories
```
