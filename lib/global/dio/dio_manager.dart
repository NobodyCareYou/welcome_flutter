import 'dart:convert';
import 'dart:io';
import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:welcome_flutter/bean/user_info_entity.dart';
import 'package:welcome_flutter/config/http_config.dart';
import 'package:welcome_flutter/generated/json/base/json_convert_content.dart';

import 'package:welcome_flutter/global/dio/dio_cache_interceptor.dart';
import 'package:welcome_flutter/global/dio/dio_interceptor.dart';
import 'dio_method.dart';
import 'dio_response.dart';
import 'dio_transformer.dart';

class DioManager {
  static const int CONNECT_TIMEOUT = 1000 * 30;
  static const int RECEIVE_TIMEOUT = 1000 * 30;
  static const int SEND_TIMEOUT = 1000 * 30;
  static bool CACHE_ENABLE = false;

  /// 最大缓存时间(按秒), 默认缓存七天,可自行调节
  static int MAX_CACHE_AGE = 7 * 24 * 60 * 60;

  /// 最大缓存条数(默认一百条)
  static int MAX_CACHE_COUNT = 100;

  Dio _dio = Dio();
  static final DioManager _instance = DioManager._internal();

  factory DioManager() {
    return _instance;
  }

  DioManager._internal() {
    init();
  }

  void init() {
    _dio.interceptors.add(DioInterceptor());

    /// 添加转换器
    _dio.transformer = DioTransformer();

    /// 添加cookie管理器
    // _dio.interceptors.add(CookieManager(cookieJar));

    /// 刷新token拦截器(lock/unlock)
    // _dio.interceptors.add(DioTokenInterceptors());

    /// 添加缓存拦截器
    _dio.interceptors.add(DioCacheInterceptors());

    // openLog();
  }

  Future<T> request<T>(String path, {
    DioMethod method = DioMethod.GET,
    Map<String, dynamic>? params,
    Options? options,
    data,
    BuildContext? context,
    CancelToken? cancelToken,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    const _methodValues = {
      DioMethod.GET: 'get',
      DioMethod.POST: 'post',
      DioMethod.PUT: 'put',
      DioMethod.DELETE: 'delete',
      DioMethod.PATCH: 'patch',
      DioMethod.HEAD: 'head'
    };
    options ??= Options(method: _methodValues[method],responseType: ResponseType.plain);
    try {
      Response response;
      response = await _dio.request(path,
          data: data,
          queryParameters: params,
          cancelToken: cancelToken,
          options: options,
          onSendProgress: onSendProgress,
          onReceiveProgress: onReceiveProgress);

      var fromJsonAsT = JsonConvert.fromJsonAsT<T>(response.data);
      if (fromJsonAsT == null) {
        throw Exception("解析数据失败");
      } else {
        return fromJsonAsT;
      }


      // return response.data as T;
    } on DioError catch (e) {
      throw e;
    }
  }

  /// 设置Http代理(设置即开启)
  void setProxy({required String proxyAddress, bool enable = false}) {
    if (enable) {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client) {
        client.findProxy = (uri) {
          return proxyAddress;
        };
        client.badCertificateCallback = (X509Certificate cert, String host, int port) => true;
      };
    }
  }

  /// 设置https证书校验
  void setHttpsCertificateVerification({required String pem, bool enable = false}) {
    if (enable) {
      (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (client) {
        client.badCertificateCallback = (X509Certificate cert, String host, int port) {
          if (cert.pem == pem) {
            // 验证证书
            return true;
          }
          return false;
        };
      };
    }
  }

  /// 开启日志打印
  void openLog() {
    _dio.interceptors.add(LogInterceptor(responseBody: true));
  }
}
