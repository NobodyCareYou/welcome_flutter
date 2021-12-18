import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
    Navigator.pushNamed(context, "login");
  }

  @override
  void dispose() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual);
    super.dispose();
  }
}
