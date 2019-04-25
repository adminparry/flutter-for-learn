# image_picker

https://pub.dartlang.org/packages/image_picker#-readme-tab-

IOS #
Add the following keys to your Info.plist file, located in <project root>/ios/Runner/Info.plist:

NSPhotoLibraryUsageDescription - describe why your app needs permission for the photo library. This is called Privacy - Photo Library Usage Description in the visual editor.
NSCameraUsageDescription - describe why your app needs access to the camera. This is called Privacy - Camera Usage Description in the visual editor.
NSMicrophoneUsageDescription - describe why your app needs access to the microphone, if you intend to record videos. This is called Privacy - Microphone Usage Description in the visual editor.

我们需要手动去添加图片和相机的访问描述

``` plist
<key>NSCameraUsageDescription</key>
<string>请允许APP访问您的相机</string>
<key>NSPhotoLibraryAddUsageDescription</key>
<string>请允许APP保存图片到相册</string>
<key>NSPhotoLibraryUsageDescription</key>
<string>请允许APP访问您的相册</string>

```