import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:logger/logger.dart';
import 'package:welcome_flutter/config/http_config.dart';
import 'package:welcome_flutter/global/dio/dio_manager.dart';
import 'package:welcome_flutter/global/dio/dio_response.dart';

class DioInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
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
    try{
      if (response.statusCode == 200) {
        var dioResponse = DioResponse.fromJson(json.decode(response.data.toString()));
        if(dioResponse.success){
        // response.data = dioResponse.RetData;
          response.data = dioResponse.getResults();
        }else{
          throw Exception(dioResponse.Msg);
        }
      }
    }catch(e){
      throw e;
    }
    handler.next(response);
  }




  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      // 连接服务器超时
      case DioErrorType.connectTimeout:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/

        }
        break;
      // 响应超时
      case DioErrorType.receiveTimeout:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // 发送超时
      case DioErrorType.sendTimeout:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // 请求取消
      case DioErrorType.cancel:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // 404/503错误
      case DioErrorType.response:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
      // other 其他错误类型
      case DioErrorType.other:
        {
          // 根据自己的业务需求来设定该如何操作,可以是弹出框提示/或者做一些路由跳转处理
        }
        break;
    }
    super.onError(err, handler);
  }
}
