import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:welcome_flutter/bean/user_info_entity.dart';
import 'package:welcome_flutter/model/login_model.dart';

import '../main.dart';

class LoginViewModel extends ChangeNotifier {
  void login(String phone, String password) {
    if (phone.isEmpty) {
      return;
    }

    if (password.isEmpty) {
      return;
    }

    sendLoginRequest(phone, password).then((value) {
      if (value != null) {
        saveUserInfo(value);
        Navigator.of(navigatorKey.currentContext!).popAndPushNamed("home");
      }
    });
  }

  void saveUserInfo(UserInfoEntity info) async {
    var sp = await SharedPreferences.getInstance();
    sp.setString("OrgId", info.orgId);
  }
}
