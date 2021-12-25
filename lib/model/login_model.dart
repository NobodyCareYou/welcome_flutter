import 'package:welcome_flutter/bean/user_info_entity.dart';
import 'package:welcome_flutter/config/http_config.dart';
import 'package:welcome_flutter/global/dio/dio_manager.dart';
import 'package:welcome_flutter/global/dio/dio_method.dart';

Future sendLoginRequest(String phone, String password) async {
  return DioManager().request<UserInfoEntity>(LOGIN_URL,
      method: DioMethod.POST, data: {"Password": password, "Phone": phone});
}
