import 'package:flutter/material.dart';
import 'package:myapp/Pages/Account.dart';
import 'package:myapp/Pages/Courses.dart';
import 'package:myapp/Pages/Home.dart';

class PageMain extends StatefulWidget {
  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {

  var _tabIndex = 0;

  var _pageList = [
    PageHome(),
    PageCourses(),
    PageAccount(),
    PageAccount(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageList[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {setState(() {
         _tabIndex=index;
        });},
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('首页'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('选课'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('听课'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('我的'),
          )
        ],
      ),
    );
  }
}