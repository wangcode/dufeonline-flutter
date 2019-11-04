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

  BottomNavigationBarItem _getBottomNavigationBarItem(String title, {String icon, String activeIcon, int, index, int currentIndex}) {
    return BottomNavigationBarItem(
      icon: Image.asset(currentIndex==index?activeIcon:icon, width: 25, height: 25),
      title: Text(title, style: TextStyle(color: currentIndex==index?Color(0xff2D99ED):Color(0xff444444)))
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: _pageList[_tabIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) {setState(() {
         _tabIndex=index+1;
        });},
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        items: [
          _getBottomNavigationBarItem(
            '首页',
            icon: 'assets/icon/home.png',
            activeIcon: 'assets/icon/homeActive.png',
            index: 1,
            currentIndex: _tabIndex
          ),
          _getBottomNavigationBarItem(
            '选课',
            icon: 'assets/icon/light.png',
            activeIcon: 'assets/icon/lightActive.png',
            index: 2,
            currentIndex: _tabIndex
          ),
          _getBottomNavigationBarItem(
            '听课',
            icon: 'assets/icon/book.png',
            activeIcon: 'assets/icon/bookActive.png',
            index: 3,
            currentIndex: _tabIndex
          ),
          _getBottomNavigationBarItem(
            '我的',
            icon: 'assets/icon/user.png',
            activeIcon: 'assets/icon/userActive.png',
            index: 4,
            currentIndex: _tabIndex
          ),
        ],
      ),
    );
  }
}