import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:welcome_flutter/viewmodel/login_view_model.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late TextEditingController _userController;

  late TextEditingController _passwordController;

  late LoginViewModel _loginViewModel;

  @override
  void initState() {
    _loginViewModel = context.read<LoginViewModel>();
    _userController = new TextEditingController();
    _passwordController = new TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userController.dispose();
    _passwordController.dispose();
    _loginViewModel.dispose();
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
                    _loginViewModel.login(
                        _userController.text, _passwordController.text);
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
