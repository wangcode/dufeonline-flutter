import 'package:flutter/material.dart';
import 'package:myapp/Pages/Search.dart';
import 'package:myapp/Widgets/CourseLine.dart';

class PageStudy extends StatelessWidget {

  final courseList = [
    {'courseName': '企业会计准则企业会计准则企业会计准则企业', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
    {'courseName': '企业会计准则', 'picUrl': 'http://cache3.edufe.cn/b2c/static/upload/photos_pack/1a98753a08604964984f46cf9d5e06e7.jpeg'},
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
          children: <Widget>[
            ListView.builder(
              padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 20.0),
              itemCount: courseList.length,
              itemBuilder: (BuildContext _context, int index) {
                return Container(
                  padding: EdgeInsets.only(bottom: 15.0),
                  child: CourseLine(
                    picUrl: courseList[index]['picUrl'],
                    courseName: courseList[index]['courseName'],
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