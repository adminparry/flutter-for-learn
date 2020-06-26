# Introduction

Flutter是谷歌的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 Flutter可以与现有的代码一起工作。在全世界，Flutter正在被越来越多的开发者和组织使用，并且Flutter是完全免费、开源的。


中国 https://flutterchina.club/

官网 https://flutter.dev

## 国内安装flutter环境
git clone -b stable https://github.com/flutter/flutter.git


``` bash
flutter doctor
```

windows 中报错
``` bash
Downloading Dart SDK from Flutter engine ee76268252c22f5c11e82a7b87423ca3982e51a7...
Unknown operating system. Cannot install Dart SDK.
```

解决方式
``` bash
flutter.bat doctor
```

## 运行Android平台配置
运行时会卡在Running 'gradle assembleDebug, 因为Gradle的Maven仓库在国外, 可以使用阿里云的镜像地址。

修改项目中 Android/build.gradle
和Flutter安装目录/packages/flutter_tools/gradle/flutter.gradle
```
//google()
//jcenter()
    全都替换成
maven { url 'https://maven.aliyun.com/repository/google' }
maven { url 'https://maven.aliyun.com/repository/jcenter' }
maven { url 'http://maven.aliyun.com/nexus/content/groups/public' }
```
