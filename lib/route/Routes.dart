import 'package:flutter/cupertino.dart';
import 'package:welcome_flutter/view/home_view.dart';
import 'package:welcome_flutter/view/login_view.dart';
import 'package:welcome_flutter/view/SplashView.dart';

Map<String, WidgetBuilder> routes = {
  "/": (BuildContext context) => WelcomePage(),
  "login": (BuildContext context) => LoginPage(),
  "home": (BuildContext context) => HomePage()
};