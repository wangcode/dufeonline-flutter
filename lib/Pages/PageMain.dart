import 'package:flutter/material.dart';

import 'package:myapp/Pages/Home/PageHome.dart';
import 'package:myapp/Pages/Course/Course.dart';
import 'package:myapp/Pages/Study/Study.dart';
import 'package:myapp/Pages/Account/Account.dart';

class PageMain extends StatefulWidget {
  @override
  _PageMainState createState() => _PageMainState();
}

class _PageMainState extends State<PageMain> {

  var _tabIndex = 0;
  var _pageList = [
    PageHome(),
    PageCourse(),
    PageStudy(),
    PageAccount(),
  ];

  BottomNavigationBarItem _getBottomNavigationBarItem(BuildContext context, String title, {String icon, String activeIcon, int, index, int currentIndex}) {
    precacheImage(AssetImage(activeIcon), context);

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
         _tabIndex=index;
        });},
        currentIndex: _tabIndex,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 13,
        unselectedFontSize: 13,
        items: [
          _getBottomNavigationBarItem(
            context,
            '首页',
            icon: 'assets/icon/home.png',
            activeIcon: 'assets/icon/homeActive.png',
            index: 0,
            currentIndex: _tabIndex
          ),
          _getBottomNavigationBarItem(
            context,
            '选课',
            icon: 'assets/icon/light.png',
            activeIcon: 'assets/icon/lightActive.png',
            index: 1,
            currentIndex: _tabIndex
          ),
          _getBottomNavigationBarItem(
            context,
            '听课',
            icon: 'assets/icon/book.png',
            activeIcon: 'assets/icon/bookActive.png',
            index: 2,
            currentIndex: _tabIndex
          ),
          _getBottomNavigationBarItem(
            context,
            '我的',
            icon: 'assets/icon/user.png',
            activeIcon: 'assets/icon/userActive.png',
            index: 3,
            currentIndex: _tabIndex
          ),
        ],
      ),
    );
  }
}