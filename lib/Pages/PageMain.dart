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

  Text _getLabel (String title, { int index, int currentIndex }) {
    return Text(title,style: TextStyle(color: currentIndex==index?Color(0xff2D99ED):Color(0xff444444)));
  }

  Icon _getIcon ({int icon, int activeIcon, int index, int currentIndex}) {
    return Icon(IconData(currentIndex==index?activeIcon:icon, fontFamily: 'DufeIcon'));
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
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
            icon: _getIcon(icon: 0xe607, activeIcon: 0xe603, index: 0, currentIndex: _tabIndex),
            title: _getLabel('首页', index: 0, currentIndex: _tabIndex)
          ),
          BottomNavigationBarItem(
            icon: _getIcon(icon: 0xe60a, activeIcon: 0xe606, index: 1, currentIndex: _tabIndex),
            title: _getLabel('选课', index: 1, currentIndex: _tabIndex)
          ),
          BottomNavigationBarItem(
            icon: _getIcon(icon: 0xe601, activeIcon: 0xe608, index: 2, currentIndex: _tabIndex),
            title: _getLabel('听课', index: 2, currentIndex: _tabIndex)
          ),
          BottomNavigationBarItem(
            icon: _getIcon(icon: 0xe602, activeIcon: 0xe604, index: 3, currentIndex: _tabIndex),
            title: _getLabel('我的', index: 3, currentIndex: _tabIndex)
          )
        ],
      ),
    );
  }
}