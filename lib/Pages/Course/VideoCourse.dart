import 'package:flutter/material.dart';
import 'package:myapp/Widgets/IconText.dart';
import 'package:myapp/Widgets/Price.dart';

class VideoCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('课程详情'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.cloud_download),
            onPressed: (){},
          ),
          IconButton(
            color: Colors.pink,
            icon: Icon(true ? Icons.favorite_border : Icons.favorite),
            onPressed: (){},
          )
        ],
      ),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 4/2.25,
            child: Container(
              color: Color(0xff0088cc),
              child: Center(child: Text('Media')),
            ),
          ),
          Container(
            height: 70.0,
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.only(bottom: 10.0),
            color: Color(0xFFFFFFFF),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('2019年初级会计实务 精讲班', style: TextStyle(fontSize: 17.0)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconText(icon: Icons.access_time, text: '超过一天', size: 15.0, color: Color(0xFF8A8A8A)),
                    Price(price: 300, color: Color(0xFFF99403), fontSize: 15.0)
                  ],
                )
              ],
            ),
          ),
          DefaultTabController(
            length: 3,
            child: Column(
              children: <Widget>[
                Container(
                  color: Color(0xFFFFFFFF),
                  child: TabBar(
                    indicatorColor: Color(0xff257abd),
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 2.0,
                    tabs: <Widget>[
                      Tab(text: '章节'),
                      Tab(text: '详情'),
                      Tab(text: '相关课程')
                    ],
                  ),
                ),
                Container(
                  height: 200.0,
                  child: TabBarView(
                    children: <Widget>[
                      Text('1'),
                      Text('1'),
                      Text('1'),
                    ],
                  ),
                )
              ]
            ),
          ),

          // Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),
          // Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),
          // Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),
          // Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),
          // Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),
          // Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),Text('1'),
        ],
      ),
    );
  }
}