import 'package:dio/dio.dart';
import 'dart:developer';

Dio dio = Dio();

final urlPrefix = 'http://m.dufe.online/api/';

Future getCourseInfo (int courseId) async{
  return await dio.get("${urlPrefix}getCourseInfo", queryParameters: {"courseId": courseId});
}

Future getCarouselList ({int type = 2}) async {
  return await dio.get<List>("${urlPrefix}getCarouselList", queryParameters: {"type": type}).then( (res) => res.data );
}

Future getPlateList () async {
  return await dio.get<List>("${urlPrefix}getPlateList").then( (res) => res.data );
}

Future getPlateCourseList (int plateId, {int page = 0, int size = 4}) async {
  return await dio.get("${urlPrefix}getPlateCourseListV2", queryParameters: {"plateId": plateId, "page": page, "size": size}).then( (res) => res.data );
}