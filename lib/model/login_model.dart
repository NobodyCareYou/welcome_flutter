import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:welcome_flutter/bean/user_info_entity.dart';
import 'package:welcome_flutter/global/dio_manager.dart';

void sendLoginRequest(String phone, String password) async {

  Response result = await DioManager().businessDio.post("/api/Person/Login",
      data: {"Password": password, "Phone": phone});

  // json.decode(result.toString(),{})
  print("result" + result.toString());
}
