import 'package:dio/dio.dart';
import 'package:flutter_application_1/helper/mystrings.dart';

class CharcterApiSerices {
  late Dio dio;
  CharcterApiSerices() {
    BaseOptions options = BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: 20 * 1000,
        receiveTimeout: 20 * 1000,
        receiveDataWhenStatusError: true);
    Dio(options);
  }

  Future<List<dynamic>> getallCharcter() async {
    try {
      Response respone = await dio.get("characters");
      return respone.data;
    } catch (e) {
      print(e.toString());

      return [];
    }
  }
}
