import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:welcome_flutter/view/achievement_view.dart';
import 'package:welcome_flutter/view/function_view.dart';
import 'package:welcome_flutter/view/person_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;
  List<Widget> pages = [];

  @override
  void initState() {
    pages.add( FunctionPage());
    pages.add( AchievePage());
    pages.add( PersonPage());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "业绩"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "我的"),
        ],
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
