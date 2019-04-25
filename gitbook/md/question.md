# Waiting for another flutter command to release the startup lock...

解决办法：

当你的项目异常关闭，或者android studio用任务管理器强制关闭，下次启动就会出现上面的一行话，

此时需要打开 flutter/bin/cache/lockfile，删除就行了

或者直接用下面的命令：rm ./flutter/bin/cache/lockfile