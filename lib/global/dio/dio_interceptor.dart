import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:logger/logger.dart';
import 'package:welcome_flutter/config/http_config.dart';
import 'package:welcome_flutter/global/dio/dio_manager.dart';
import 'package:welcome_flutter/global/dio/dio_response.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    EasyLoading.show(status: "Loading...");

    if (options.path.isNotEmpty && options.path != LOGIN_URL) {
      options.data = {"UserId": "xxx", "SysId": 4};
    }
    options.baseUrl = base_url;
    options.headers["token"] = "This is header token ";
    options.connectTimeout = DioManager.CONNECT_TIMEOUT;
    options.receiveTimeout = DioManager.RECEIVE_TIMEOUT;
    options.sendTimeout = DioManager.SEND_TIMEOUT;
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    EasyLoading.dismiss();
    try {
      if (response.statusCode == 200) {
        String result = response.data.toString();
        Map<String,dynamic> map = json.decode(result);
        // DioResponse dioResponse = DioResponse.fromJson(json.decode(response.data.toString()));
        DioResponse dioResponse = DioResponse.fromJson(map);
        if (dioResponse.success) {
          response.data = dioResponse.RetData;
        } else {
          throw Exception(dioResponse.Msg);
        }
      }
    } catch (e) {
      throw e;
    }
    handler.next(response);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    EasyLoading.dismiss();
    String msg = "";
    switch (err.type) {
      case DioErrorType.connectTimeout:
        msg = "连接超时";
        break;
      case DioErrorType.receiveTimeout:
        msg = "响应超时";
        break;
      case DioErrorType.sendTimeout:
        msg = "发送超时";
        break;
      case DioErrorType.cancel:
        msg = "请求取消";
        break;
      // 404/503错误
      case DioErrorType.response:
        msg = err.message;
        break;
      // other 其他错误类型
      case DioErrorType.other:
        msg = err.message.toString();
        break;
    }
    EasyLoading.showError(msg);
    // super.onError(err, handler);
  }
}
