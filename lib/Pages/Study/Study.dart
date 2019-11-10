import 'package:flutter/material.dart';
import 'package:myapp/Pages/Course/VideoCourse.dart';
import 'package:myapp/Pages/Search.dart';
import 'package:myapp/Widgets/CourseLine.dart';

class PageStudy extends StatelessWidget {

  final courseList = [
    {"courseId": 293,"courseName": "2020《中级会计实务》","buyNum": 28,"picUrl": "http://cache5.edufe.cn/b2c/static/upload/photos_course/dd6517f9f9984887a03b5d42825e2969.jpeg","timeLength": 0,"price": 1180,"offPrice": 980,},
    {"courseId": 294,"courseName": "2020《中级财务管理》","buyNum": 30,"picUrl": "http://cache5.edufe.cn/b2c/static/upload/photos_course/22f472a0baef4726ad54cf9841e776c1.jpeg","timeLength": 0,"price": 1180,"offPrice": 980,},
    {"courseId": 295, "courseName": "2020《中级经济法》", "buyNum": 29, "picUrl": "http://cache2.edufe.cn/b2c/static/upload/photos_course/826a2bec498d48f98ba76c7b120076ee.jpeg", "timeLength": 0, "price": 1180, "offPrice": 980,},
    {"courseId": 215, "courseName": "2019年初级会计实务 精讲班", "buyNum": 631, "picUrl": "http://cache1.edufe.cn/b2c/static/upload/photos_course/8bfb2434f1f94696a896cdafc69e6596.jpeg", "timeLength": 172654, "price": 400, "offPrice": 300,},
    {"courseId": 217,"courseName": "2019年经济法基础 精讲班","buyNum": 624,"picUrl": "http://cache5.edufe.cn/b2c/static/upload/photos_course/86eb11a53df54eccadb21d10858b2cb4.jpeg","timeLength": 172253,"price": 400,"offPrice": 300,},
    {"courseId": 216,"courseName": "2019年初级会计实务 冲刺班","buyNum": 654,"picUrl": "http://cache6.edufe.cn/b2c/static/upload/photos_course/25a0d3f172ef44c7be1ef5d4ad424671.jpeg","timeLength": 43885,"price": 300.0,"offPrice": 300.0,},
    {"courseId": 218,"courseName": "2019年经济法基础 冲刺班","buyNum": 649,"picUrl": "http://cache3.edufe.cn/b2c/static/upload/photos_course/65681d66729a411aa1d957cc0a66922a.jpeg","timeLength": 39096,"price": 300.0,"offPrice": 300.0,},
    {"courseId": 220,"courseName": "个人所得税热点问题分析——你关心的专项附加扣除","buyNum": 90,"picUrl": "http://cache4.edufe.cn/b2c/static/upload/photos_course/1fc549e5a1dc4445b44865718ae1b396.jpeg","timeLength": 4907,"price": 100,"offPrice": 100,},
    {"courseId": 192,"courseName": "个人所得税热点问题分析——新个人所得税法逐条解析","buyNum": 137,"picUrl": "http://cache2.edufe.cn/b2c/static/upload/photos_course/7ae640ef11c046229e2f99ec6408c319.jpeg","timeLength": 4106,"price": 100,"offPrice": 100,},
    {"courseId": 297,"courseName": "2020年初级会计实务 零基础班","buyNum": 188,"picUrl": "http://cache1.edufe.cn/b2c/static/upload/photos_course/5be0bf873fbe415496318592988ee634.jpeg","timeLength": 76216,"price": 199,"offPrice": 39,},
    {"courseId": 296,"courseName": "2020年经济法基础 零基础班","buyNum": 186,"picUrl": "http://cache3.edufe.cn/b2c/static/upload/photos_course/669fd86ea2ff41a89d0dcb48fb0b658e.jpeg","timeLength": 22173,"price": 199,"offPrice": 39,},
    {"courseId": 223,"courseName": "关键节点管理法应用","buyNum": 34,"picUrl": "http://cache1.edufe.cn/b2c/static/upload/photos_course/f83a224fb666423b9c758220025f0c25.jpeg","timeLength": 869,"price": 10,"offPrice": 10,},
    {"courseId": 273,"courseName": "特定交易之收入确认与计量——无需退回的预收款","buyNum": 48,"picUrl": "http://cache7.edufe.cn/b2c/static/upload/photos_course/0af27b55c255472e81df3e05759b0ade.jpeg","timeLength": 2129,"price": 100,"offPrice": 100,},
    {"courseId": 272,"courseName": "特定交易之收入确认与计量——售后回购","buyNum": 52,"picUrl": "http://cache7.edufe.cn/b2c/static/upload/photos_course/722ce4d865e7455fb84f161368c7a6ac.jpeg","timeLength": 1938,"price": 100,"offPrice": 100,},
    {"courseId": 267,"courseName": "个人所得税热点问题分析——扣缴申报指引","buyNum": 79,"picUrl": "http://cache9.edufe.cn/b2c/static/upload/photos_course/0cf48c1e68b44654ac74c3d4c020e3ed.jpeg","timeLength": 5624,"price": 49,"offPrice": 19.9,},
    {"courseId": 226,"courseName": "excel基础课程","buyNum": 139,"picUrl": "http://cache9.edufe.cn/b2c/static/upload/photos_course/efdd38112eb54b499000d961b6dd8d64.jpeg","timeLength": 1992,"price": 100,"offPrice": 19.9,},
    {"courseId": 228,"courseName": "excel应用——工作当中的excel使用技巧（一）","buyNum": 135,"picUrl": "http://cache4.edufe.cn/b2c/static/upload/photos_course/13fa966260dc473a9f860bc1d339c881.jpeg","timeLength": 4413,"price": 100,"offPrice": 19.9,},
    {"courseId": 229,"courseName": "excel应用——工作当中的excel使用技巧（二）","buyNum": 135,"picUrl": "http://cache8.edufe.cn/b2c/static/upload/photos_course/6b62165439f94a71a56974910c53c2aa.jpeg","timeLength": 4097,"price": 100,"offPrice": 19.9,},
    {"courseId": 230, "courseName": "excel进阶课程——函数使用技巧", "buyNum": 135, "picUrl": "http://cache3.edufe.cn/b2c/static/upload/photos_course/8ccd4d34fffe4ed99734487292464c8a.jpeg", "timeLength": 3327, "price": 100, "offPrice": 19.9,},
    {"courseId": 227, "courseName": "excel进阶课程——lookup函数应用", "buyNum": 147, "picUrl": "http://cache9.edufe.cn/b2c/static/upload/photos_course/6cf098e6788b41039adeaa9e14662ffe.jpeg", "timeLength": 2312, "price": 100, "offPrice": 19.9}
  ];

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
              itemCount: courseList.length,
              itemBuilder: (BuildContext _context, int index) {
                var currentCourse = courseList[index];
                return GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => VideoCourse()));},
                  child:  Container(
                    margin: EdgeInsets.only(bottom: 8.0),
                    child: CourseLine(
                      picUrl: currentCourse['picUrl'],
                      courseName: currentCourse['courseName'],
                      price: currentCourse['price'],
                      offPrice: currentCourse['offPrice'],
                      courseTimelength: currentCourse['timeLength'],
                      studyUserNum: currentCourse['buyNum'],
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