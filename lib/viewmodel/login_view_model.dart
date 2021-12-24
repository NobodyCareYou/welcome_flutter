import 'package:flutter/cupertino.dart';
import 'package:welcome_flutter/model/login_model.dart';

class LoginViewModel extends ChangeNotifier {

  void login(String phone, String password) {
    if(phone.isEmpty){
      return;
    }

    if(password.isEmpty){
      return;
    }


    sendLoginRequest(phone, password);
  }
}
