import 'package:logger/logger.dart';
import 'package:welcome_flutter/bean/user_info_entity.dart';
import 'package:welcome_flutter/config/http_config.dart';
import 'package:welcome_flutter/global/dio/dio_manager.dart';
import 'package:welcome_flutter/global/dio/dio_method.dart';
import 'package:welcome_flutter/global/dio/dio_response.dart';

void sendLoginRequest(String phone, String password) async {
  DioManager().request(LOGIN_URL,
      method: DioMethod.POST, data: {"Password": password, "Phone": phone}).then((value) => print(value.toString()));
}
