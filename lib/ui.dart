import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:fluttertoast/fluttertoast.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int countDownTime = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage('assets/images/splash.jpg'),
            fit: BoxFit.fill,
          ),
          GestureDetector(
            child: Align(
              alignment: Alignment(0.85, -0.90),
              child: Text(
                "$countDownTime 秒后跳过",
                textAlign: TextAlign.right,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
            ),
            onTap: () {
              if (countDownTime != 0) return;
              gotoLoginPage();
            },
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    super.initState();
    Timer.periodic(const Duration(seconds: 1), (timer) {
      countDownTime--;
      setState(() {});
      if (countDownTime == 0) {
        timer.cancel();
        gotoLoginPage();
      }
    });
  }

  void gotoLoginPage() {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (BuildContext context) => const LoginPage()));
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
    super.dispose();
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _userController = new TextEditingController();
  TextEditingController _passwordController = new TextEditingController();

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  InputDecoration LoginInputDecoration(String hintText, IconData icon) {
    return InputDecoration(
        hintStyle: TextStyle(
            color: Colors.white70,
            fontSize: 16,
            textBaseline: TextBaseline.alphabetic),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.white, width: .8)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.white, width: .8)),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30)),
            borderSide: BorderSide(color: Colors.white, width: .8)),
        prefixIcon: Icon(icon, color: Colors.white60),
        hintText: hintText);
  }

  @override
  Widget build(BuildContext context) {
    var _userInputWidget = Container(
      margin: EdgeInsets.only(left: 45, right: 45),
      child: TextFormField(
        style: TextStyle(fontSize: 16, color: Colors.white),
        cursorColor: Colors.white70,
        controller: _userController,
        obscureText: false,
        keyboardType: TextInputType.phone,
        decoration: LoginInputDecoration("请输入您的账号", Icons.person),
      ),
    );

    var _passwordWidget = Container(
      margin: EdgeInsets.only(left: 45, right: 45),
      child: TextFormField(
        style: TextStyle(fontSize: 16, color: Colors.white),
        controller: _passwordController,
        obscureText: true,
        decoration: LoginInputDecoration("请输入您的密码", Icons.lock),
      ),
    );

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image(
            image: AssetImage('assets/images/login/bg_login.png'),
            fit: BoxFit.fill,
          ),
          Container(
              alignment: Alignment(0, -.62),
              margin: EdgeInsets.only(left: 65, right: 65),
              child: Image(
                  image: AssetImage('assets/images/login/login_logo.png'))),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _userInputWidget,
                SizedBox(height: 20),
                _passwordWidget,
                SizedBox(height: 20),
                ElevatedButton(
                  child: Text(
                    "登录",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {
                    print(_userController.text);
                    print(_passwordController.text);
                    Fluttertoast.showToast(msg: "点击了登录按钮");
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
