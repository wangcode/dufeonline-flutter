import 'package:flutter/material.dart';
import 'package:myapp/Pages/Course/VideoCourse.dart';
import 'package:myapp/Pages/Search.dart';
import 'package:myapp/Widgets/CourseLine.dart';

import 'package:dio/dio.dart';

class PageStudy extends StatefulWidget {
  @override
  _PageStudyState createState() => _PageStudyState();
}

class _PageStudyState extends State<PageStudy> {
  List _courseList = [];

  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    getCourseList();

  }

  Future getCourseList () async{
    var res = await dio.get("http://m.dufe.online/api/getCourseList", queryParameters: {"cateId":89, "page": 0, "size": 100});
    print(res);
    setState(() {
      _courseList = res.data['courses'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 2,
          title: Text('听课'),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => PageSearch()));},
            )
          ],
          bottom: TabBar(
            indicatorColor: Color(0xff257abd),
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: [
              Tab(text: '视频课'),
              Tab(text: '面授课'),
              Tab(text: '直播课'),
              Tab(text: '实训课'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            ListView.builder(
              padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
              itemCount: _courseList.length,
              itemBuilder: (BuildContext _context, int index) {
                var currentCourse = _courseList[index];
                return GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCourse(currentCourse['courseId'])));},
                  child:  Container(
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: CourseLine(
                      picUrl: currentCourse['picUrl'],
                      courseName: currentCourse['courseName'],
                      price: num.parse(currentCourse['price']),
                      offPrice: num.parse(currentCourse['offPrice']),
                      courseTimelength: int.parse(currentCourse['timeLength']),
                      // studyUserNum: int.parse(currentCourse['buyNum']),
                      studyUserNum: 12,
                    )
                  )
                );
              },
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
              ],
            ),
            ListView(
              children: <Widget>[
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
                ListTile(title: Text('123')),
              ],
            )
          ],
        )
      )
    );
  }
}