import 'package:flutter/material.dart';
import 'package:myapp/Widgets/IconText.dart';
import 'package:myapp/Widgets/Price.dart';

import 'package:dio/dio.dart';

class VideoCourse extends StatefulWidget {

  VideoCourse (this.courseId, {Key key}) : super(key : key);

  final int courseId;

  @override
  _VideoCourseState createState() => _VideoCourseState();
}

class _VideoCourseState extends State<VideoCourse> {
  String courseName = '';
  String picUrl = '';
  num offPrice = 0.0;

  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    getCourseInfo();

  }

  Future getCourseInfo () async{
    var res = await dio.get("http://m.dufe.online/api/getCourseInfo", queryParameters: {"courseId": widget.courseId});
    setState(() {
      courseName = res.data['courseName'];
      picUrl = res.data['picUrl'];
      offPrice = num.parse(res.data['offPrice']);
    });
  }
  
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
              child: Image.network(picUrl),
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
                Text(
                  courseName,
                  style: TextStyle(
                    fontSize: 17.0,
                  ),
                  softWrap: true,
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconText(icon: Icons.access_time, text: '超过一天', size: 15.0, color: Color(0xFF8A8A8A)),
                    Price(price: offPrice, color: Color(0xFFF99403), fontSize: 15.0)
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
                      Text("${widget.courseId}"),
                      Text('1'),
                      Text('1'),
                    ],
                  ),
                )
              ]
            ),
          ),
        ],
      ),
    );
  }
}

