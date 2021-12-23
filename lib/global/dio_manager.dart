import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:welcome_flutter/config/http_config.dart';

class DioManager {
  Dio businessDio = new Dio();
  static DioManager _instance = DioManager._internal();

  factory DioManager() {
    return _instance;
  }

  void init() {
    businessDio.options = BaseOptions(
        baseUrl: base_url,
        connectTimeout: 1000 * 30,
        receiveTimeout: 1000 * 30,
        sendTimeout: 1000 * 30,
        contentType: Headers.jsonContentType,
        queryParameters: {"SysId": 4});
    businessDio.interceptors.add(
      InterceptorsWrapper(
        onError: (DioError, ErrorInterceptorHandler) {
          print("DioError" + DioError.toString());
        },
        onResponse: (response,callback){
          Map<String, dynamic> a = json.decode(response.toString());
          if (a["Code"]==200) {
            print("2222");
            return a["RetData"];
          }else{
            print("hhhh");
            throw Exception(a["Msg"]);
          }
        },

      ),
    );
  }


  DioManager._internal() {
    init();
  }

}



