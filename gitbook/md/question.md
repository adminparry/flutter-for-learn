# Waiting for another flutter command to release the startup lock...

解决办法：

当你的项目异常关闭，或者android studio用任务管理器强制关闭，下次启动就会出现上面的一行话，

此时需要打开 flutter/bin/cache/lockfile，删除就行了

或者直接用下面的命令：rm ./flutter/bin/cache/lockfile


## 字符串转义问题

``` dart
String h = "美女<\/strong>服务员被喝醉酒的男子强暴!";

print(h);
<!-- 你会发现转移成了类似\^E之类的字符 -->
json.decode('{"key":$h}');
<!-- 到这里就出错了无法进行序列化 -->
```


## TabBarView内无法设置宽高

使用PageView 替代

## ListView不能嵌套ListView

引用同一个controller

## GestureDetector点击问题

GestureDetector 包裹一个Container 设置高度 如果没有内容则点击不到 
解决办法设置container的color: Colors.transparent
