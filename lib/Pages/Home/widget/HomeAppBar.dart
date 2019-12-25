import 'package:flutter/material.dart';
import 'package:myapp/Widgets/category.dart';
import 'package:myapp/Widgets/Search.dart';

class HomeAppBar extends StatelessWidget implements PreferredSizeWidget {

  const HomeAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: false,
      elevation: 2,
      titleSpacing: 0.0,
      title: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PageCategory()));},
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(right: 10.0),
              child: GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PageSearch()));},
                child: Container(
                  // margin: EdgeInsets.only(top: 5.0, bottom: 5.0),
                  height: 32.0,
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  alignment: Alignment(0, 0),
                  decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.all(Radius.circular(25))
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text('搜索您想要的课程', style: TextStyle(color: Color(0xffaaaaaa), fontSize: 14.0)),
                      Container(child: Icon(Icons.search, color: Color(0xffaaaaaa))),
                    ],
                  ),
                ),
              ),
            )
          )
        ],
      )
    );
  }

  @override
  // Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
  Size get preferredSize => Size.fromHeight(56);

}