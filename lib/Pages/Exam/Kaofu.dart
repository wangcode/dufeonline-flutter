import 'package:flutter/material.dart';
import 'package:myapp/Pages/Course/VideoCourse.dart';
import 'package:myapp/Pages/Search.dart';
import 'package:myapp/Widgets/CourseLine.dart';
import 'package:myapp/Api/index.dart';

import 'package:dio/dio.dart';

class PageKaofu extends StatefulWidget {
  @override
  _PageKaofuState createState() => _PageKaofuState();
}

class _PageKaofuState extends State<PageKaofu> {
  List _courseList = [];

  Dio dio = Dio();

  @override
  void initState() {
    super.initState();
    getChapterExam();

  }

  Future getChapterExam () async {
    getModuleExamb2capi("000700120001", "B2C201745")
      .then((res){print(res);});
  }

  Future getCourseList () async{
    // var res = await dio.get("http://m.dufe.online/api/getCourseList", queryParameters: {"cateId":89, "page": 0, "size": 100});
    // print(res);
    // setState(() {
    //   _courseList = res.data['courses'];
    // });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        title: Text('章节练习'),
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
            Tab(text: '练习/模拟'),
            Tab(text: '答题记录'),
            Tab(text: '错题强化'),
            Tab(text: '问题收藏'),
          ],
        ),
      ),
      body: Text('123')
    );
  }
}