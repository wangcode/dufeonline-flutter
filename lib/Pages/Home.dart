import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:myapp/Components/CourseCard.dart';
import 'package:myapp/Pages/Category.dart';

class PageHome extends StatelessWidget {

  final bottomBar = Container(
      color: Colors.white,
      height: 50.0,
      alignment: Alignment.center,
      child: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {print('点击了首页');},
            ),
            IconButton(
              icon: Icon(Icons.book),
              onPressed: () {print('点击了首页');},
            ),
            IconButton(
              icon: Icon(Icons.business_center),
              onPressed: () {print('点击了首页');},
            ),
            IconButton(
              icon: Icon(Icons.person_pin_circle),
              onPressed: () {print('点击了首页');},
            ),
          ],
        ),
      ),
    );

  final carousel = Expanded(
    child: Container(
      height: 180,
      color: Color(0xff0088cc),
      child: Text('Carousel'),
    ),
  );

  static final planBlock = Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(bottom: 10),
    color: Color(0xffffffff),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Icon(Icons.security),
            Text('中级会计')
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.security),
            Text('初级会计')
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.security),
            Text('CMA')
          ],
        ),
        Column(
          children: <Widget>[
            Icon(Icons.security),
            Text('校企专区')
          ],
        )
      ],
    ),
  );

  // Widget _planCourse () {
  //   return  Container(
  //     color: Color(0xffffffff),
  //     padding: EdgeInsets.all(10),
  //     child: Column(
  //       children: <Widget>[
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: <Widget>[Text('会计职称考辅'), Text('更多 >')],
  //         ),
  //         Wrap(
  //           children: <Widget>[
  //             Container(
  //               width: MediaQuery.of(context).size.width *0.5,
  //               child: CourseCard(),
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   )
  // };

  Widget _coursePlan(BuildContext context){
    return  Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 10, bottom: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text('会计职称考辅'), Text('更多 >', style: TextStyle(color: Colors.grey),)],
            ),
          ),
          Divider(),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width*0.5-15,
                child: CourseCard(),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.5-15,
                child: CourseCard(),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.5-15,
                child: CourseCard(),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.5-15,
                child: CourseCard(),
              ),
            ],
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 1.0,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageCategory()));
              },
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(top: 10, bottom: 10),
                padding: EdgeInsets.only(left: 15, right: 15),
                width: 200,
                alignment: Alignment(0, 0),
                decoration: BoxDecoration(
                  color: Color(0xfff2f2f2),
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('搜索您想要的课程', style: TextStyle(color: Color(0xffaaaaaa), fontSize: 13)),
                    Container(child: Icon(Icons.search, color: Color(0xffaaaaaa))),
                  ],
                ),
              ),
            ),
          ],
        )
      ),
      body: ListView(
        children: <Widget>[
          Container(
            color: Color(0xfff0f1f3),
            child: Column(
              children: <Widget>[
                planBlock,
                _coursePlan(context),
                _coursePlan(context),
                _coursePlan(context),
                _coursePlan(context),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: bottomBar
    );
  }
}