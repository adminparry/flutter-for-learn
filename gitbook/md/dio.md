# dio

提供http 带有cookie 功能

## demo

``` dart
import 'package:dio/dio.dart';
import 'dart:convert';

class HttpUtil {
  static Dio dio = Dio();

  static get(String path, {queryParameters}) async {
    Response response = await dio.get(path, queryParameters: queryParameters);

//    print(response.headers);
    return json.decode(response.data);
  }
  static post(String path, {queryParameters}) async {

    Response response = await dio.post(path, queryParameters: queryParameters);
//    print(response.headers);

    return json.decode(response.data);
  }
}
```