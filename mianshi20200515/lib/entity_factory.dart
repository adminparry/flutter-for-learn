import 'package:mianshi20200515/bean/gongjiao/r_time_entity.dart';
import 'package:mianshi20200515/bean/gongjiao/search_entity.dart';
import 'package:mianshi20200515/bean/gongjiao/station_entity.dart';
import 'package:mianshi20200515/bean/yunketang/home_page_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "RTimeEntity") {
      return RTimeEntity.fromJson(json) as T;
    } else if (T.toString() == "SearchEntity") {
      return SearchEntity.fromJson(json) as T;
    } else if (T.toString() == "StationEntity") {
      return StationEntity.fromJson(json) as T;
    } else if (T.toString() == "HomePageEntity") {
      return HomePageEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}