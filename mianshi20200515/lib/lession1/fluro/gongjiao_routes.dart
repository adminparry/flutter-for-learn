import 'package:mianshi20200515/third/fluro.dart';
import '../routes/input.dart';
import '../routes/timeline.dart';


Handler GongjiaoHandler = Handler(
    handlerFunc:(context, params){
      return MyInput();
    }
);
Handler DetailHandler = Handler(
    handlerFunc:(context, Map<String, List<dynamic>> params){

      return MyTimeLine(routeParams:{
        "name": params["name"].first,
        "id": params['id'].first
      });
    }
);

