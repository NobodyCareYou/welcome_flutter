import 'package:dio/dio.dart';

class DioManager {
  Dio businessDio = new Dio();
  static DioManager _instance = DioManager._internal();

  factory DioManager() {
    return _instance;
  }

  void init() {
    businessDio.options = BaseOptions(
        baseUrl: "http://saas.business.qqinsoft.com",
        connectTimeout: 1000 * 30,
        receiveTimeout: 1000 * 30,
        sendTimeout: 1000 * 30,
        contentType: Headers.jsonContentType,
        queryParameters: {"SysId": 4});
    businessDio.interceptors
        .add(InterceptorsWrapper(onError: (DioError, ErrorInterceptorHandler) {
      print("DioError" + DioError.toString());
    }));
  }

  DioManager._internal() {
    init();
  }
}
