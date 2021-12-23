import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:welcome_flutter/route/Routes.dart';
import 'package:welcome_flutter/view/SplashView.dart';
import 'package:welcome_flutter/viewmodel/login_view_model.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (BuildContext context) => LoginViewModel())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: routes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
