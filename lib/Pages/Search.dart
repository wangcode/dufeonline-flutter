import 'package:flutter/material.dart';

class PageSearch extends StatefulWidget {
  @override
  _PageSearchState createState() => _PageSearchState();
}

class _PageSearchState extends State<PageSearch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Container(
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  // margin: EdgeInsets.only(top: 10, bottom: 10, right: 15),
                  padding: EdgeInsets.only(left: 15, right: 15),
                  height: 32.0,
                  alignment: Alignment(0, 0),
                  decoration: BoxDecoration(
                    color: Color(0xfff2f2f2),
                    borderRadius: BorderRadius.all(Radius.circular(25)),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(margin: EdgeInsets.only(right: 10),child: Icon(Icons.search, color: Color(0xffaaaaaa))),
                      Expanded(
                        child: TextField(
                          autofocus: true,
                          maxLines: 1,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {Navigator.pop(context);},
                child: Text('取消',style: TextStyle(fontSize: 16, color: Colors.grey)),
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.only(top: 20, left: 10, right: 10),
        color: Color(0xffffffff),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('历史搜索', style: TextStyle(fontSize: 16),),
                Icon(Icons.restore_from_trash)
              ],
            ),
            Wrap(
              spacing: 20,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(top: 6, left: 13, right: 13, bottom: 6),
                  color: Colors.lightGreen,
                  child: Text('测试'),
                ),
                Container(
                  padding: EdgeInsets.only(top: 6, left: 13, right: 13, bottom: 6),
                  color: Colors.lightGreen,
                  child: Text('测试'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}