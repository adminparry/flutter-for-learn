import 'dart:io';
import 'dart:convert';


class HttpTools {

  HttpClient httpClient = HttpClient();

  String host = 'http://api.juheapi.com/japi/toh';

  final int port = 80;

  Uri uri(String path, queryParameters){
    return Uri(
        scheme: "https",
        host: "jsonplaceholder.typicode.com",
        path: path,
        queryParameters: queryParameters
    );
  }

  HttpClientResponse httpClientResponse;


  String userAgent = "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_4) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/73.0.3683.103 Safari/537.36";
  String cookie = "aliyungf_tc=AQAAAKpBoUzGHwEAN6UucS7lsBwIyxwn";

//  返回json格式
  dynamic retJson;
//  返回原始字符串
  String responseText;

  dynamic get({String path, Map<String, dynamic /*String|Iterable<String>*/ > queryParameters}) async {
    HttpClient httpClient = HttpClient();
    Uri _uri = uri(path, queryParameters);


    try{

      HttpClientRequest httpClientRequest = await httpClient.getUrl(_uri);

      httpClientRequest.headers.add("user-agent", userAgent);


      HttpClientResponse httpClientResponse = await httpClientRequest.close();


      if (httpClientResponse.statusCode == HttpStatus.ok) {
        responseText = await httpClientResponse.transform(utf8.decoder).join();

        retJson = json.decode(responseText);


        print(retJson.toString());
      }else{
        return httpClientResponse.statusCode;
      }

    }catch(e){
      print("请求失败：$e");
    }

    return retJson;
  }

  dynamic post({String path, Map<String, String> bodyParameters, Map<String, dynamic /*String|Iterable<String>*/ > queryParameters}) async {
    HttpClient httpClient = HttpClient();
    Uri _uri = uri(path, queryParameters);

    httpClient.badCertificateCallback = (X509Certificate cert,String host,int port){
      return true;
    };

    try{

      HttpClientRequest httpClientRequest = await httpClient.postUrl(Uri.parse(host));

      httpClientRequest.headers.add("user-agent", userAgent);
      httpClientRequest.headers.add("cookie", cookie);

      httpClientRequest.add(utf8.encode(json.encode(bodyParameters)));


      
      HttpClientResponse httpClientResponse = await httpClientRequest.close();

      if (httpClientResponse.statusCode == HttpStatus.ok || httpClientResponse.statusCode == HttpStatus.notModified) {
        responseText = await httpClientResponse.transform(utf8.decoder).join();

        retJson = json.decode(responseText);


        print(retJson.toString());
      }else{
        print(httpClientResponse.statusCode);
      }

    }catch(e){
      print("请求失败：$e");
    }

    return retJson;
  }


}
