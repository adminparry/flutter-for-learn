# 获取原生设备信息


主要涉及到原生与flutter之间的通信


``` dart
import 'package:flutter/services.dart';

class Demo {
    MethodChannel methodChannel = MethodChannel('samples.flutter.io/battery');
    EventChannel eventChannel = EventChannel('samples.flutter.io/charging');


    String _batteryLevel = 'Battery level: unknown.';
    String _chargingStatus = 'Battery status: unknown.';

    Future<void> _getBatteryLevel() async {
        String batteryLevel;
        try {
            final int result = await methodChannel.invokeMethod('getBatteryLevel');
            batteryLevel = 'Battery level: $result%.';
        } on PlatformException {
            batteryLevel = 'Failed to get battery level.';
        }
        setState(() {
            _batteryLevel = batteryLevel;
        });
    }
}

```