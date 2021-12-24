import 'package:dio/dio.dart';

class DioTransformer extends DefaultTransformer{

  @override
  Future<String> transformRequest(RequestOptions options) async {
    if (options.data is List<String>) {
      throw DioError(
        error: "接口参数错误",
        requestOptions: options,
      );
    } else {
      return super.transformRequest(options);
    }
  }

  @override
  Future transformResponse(RequestOptions options, ResponseBody response) async {
    // 例如我们响应选项里面没有自定义某些头部数据,那我们就可以自行添加
    options.extra['xxx'] = 'xxx';
    return super.transformResponse(options, response);
  }
}