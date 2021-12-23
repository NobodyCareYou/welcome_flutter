import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:welcome_flutter/bean/user_info_entity.dart';
import 'package:welcome_flutter/config/http_config.dart';
import 'package:welcome_flutter/generated/json/user_info_entity_helper.dart';
import 'package:welcome_flutter/global/dio_manager.dart';

void sendLoginRequest(String phone, String password) async {
  Response result = await DioManager().businessDio.post(
      service_path["login"].toString(),
      data: {"Password": password, "Phone": phone});
  print(result.toString());

  Map<String, dynamic> a = json.decode(result.toString());
  UserInfoEntity userInfo = UserInfoEntity();


  userInfoEntityFromJson(userInfo, a);
  print("result" + userInfo.retData.orgName.toString());
}
