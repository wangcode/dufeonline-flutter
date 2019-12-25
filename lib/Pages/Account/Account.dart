import 'package:flutter/material.dart';
import 'package:myapp/Components/DufeIcon.dart';
import 'package:myapp/Pages/Account/AccountCourse.dart';
import 'package:myapp/Pages/Search.dart';

import '../Exam/Kaofu.dart';

class PageAccount extends StatelessWidget {

  Widget _listItemBuilder(String text, {IconData icon, GestureTapCallback onPress}) {
    return Container(
      height: 52.0,
      // child: Container(
      //   child: GestureDetector(
      //     onTap: onPress,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //       children: <Widget>[
      //         Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 14),child: Icon(icon, semanticLabel: text)), Text(text)]),
      //         Icon(Icons.keyboard_arrow_right),
      //       ],
      //     ),
      //   ),
      // ),
      child: GestureDetector(
        onTap: onPress,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 14),child: Icon(icon, semanticLabel: text)), Text(text)]),
            Icon(Icons.keyboard_arrow_right),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        // color: Color(0xfff0f1f3),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SafeArea(
              top: true,
              child: Container(
                padding: EdgeInsets.all(25),
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Account-Header-Background.png'),
                    fit: BoxFit.cover
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 75,
                      width: 75,
                      child: CircleAvatar(backgroundImage: NetworkImage('http://m.dufe.online/img/account/photo.png'))
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text('未登录', style: TextStyle(color: Color(0xff000000), fontSize: 16)),
                    )
                  ],
                ),
              )
            ),
            ListTile(
              leading: Icon(dufeIcon(0xe611), size: 20),
              title: Text('我的专区'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            ListTile(
              leading: Icon(dufeIcon(0xe611), size: 20),
              title: Text('我的专区'),
              trailing: Icon(Icons.keyboard_arrow_right),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child:Column(
                children: <Widget>[
                  _listItemBuilder(
                    '我的专区',
                    icon: dufeIcon(0xe60e),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>AccountCourse()));}
                  ),
                  Divider(),
                  _listItemBuilder(
                    '我的收藏',
                    icon: dufeIcon(0xe611),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageKaofu()));}
                  ),
                  _listItemBuilder(
                    '我的订单',
                    icon: dufeIcon(0xe60e),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                  _listItemBuilder(
                    '我的优惠券',
                    icon: dufeIcon(0xe619),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                  Divider(),
                  _listItemBuilder(
                    '我的消息',
                    icon: dufeIcon(0xe60c),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                  _listItemBuilder(
                    '我的任务',
                    icon: dufeIcon(0xe617),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                  _listItemBuilder(
                    '我的积分',
                    icon: dufeIcon(0xe618),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                  Divider(),
                  _listItemBuilder(
                    '设置',
                    icon: dufeIcon(0xe615),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                  _listItemBuilder(
                    '帮助中心',
                    icon: dufeIcon(0xe61a),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                  _listItemBuilder(
                    '关于我们',
                    icon: dufeIcon(0xe616),
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSearch()));}
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
