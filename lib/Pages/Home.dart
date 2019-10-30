import 'package:flutter/material.dart';

// import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:myapp/Components/CourseCard.dart';
import 'package:myapp/Pages/Category.dart';
import 'package:myapp/Pages/Search.dart';

class PageHome extends StatelessWidget {

  static final planBlock = Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.only(bottom: 10),
    color: Color(0xffffffff),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset('assets/Icon_ZhongJi.png', width: 40, height: 40),
            ),
            Text('中级会计', style: TextStyle(height: 1.5),)
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset('assets/Icon_ChuJi.png', width: 40, height: 40),
            ),
            Text('初级会计', style: TextStyle(height: 1.5),)
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset('assets/Icon_CMA.png', width: 40, height: 40),
            ),
            Text('CMA', style: TextStyle(height: 1.5),)
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(5),
              child: Image.asset('assets/Icon_Enterprise.png', width: 40, height: 40),
            ),
            Text('校企专区', style: TextStyle(height: 1.5),)
          ],
        )
      ],
    ),
  );

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

  final _carouselList = [
    Image(image: NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/da4cd42cf5a64a29a5ff7bcea6855f09.jpg'), fit: BoxFit.fill,),
    Image(image: NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/8bb5a68e445b4d869788d2845f1506d2.jpg'), fit: BoxFit.fill,),
    Image(image: NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/183d2d513e2a4136ae6d614e06b15ca2.jpg'), fit: BoxFit.fill,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: false,
        elevation: 2,
        title: Row(
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.menu),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => PageCategory()));
              },
            ),

            Expanded(
              child: GestureDetector(
                onTap: () {Navigator.push(context, MaterialPageRoute(builder: (context) => PageSearch()));},
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
            ),
          ],
        )
      ),
      body: RefreshIndicator(
        onRefresh: () {
          print('123');
          return ;
        },
        child: ListView(
          children: <Widget>[
            Container(
              height: 180,
              child: Swiper(
                itemBuilder: (BuildContext context,int index){
                  return _carouselList[index];
                },
                itemCount: _carouselList.length,
                pagination: SwiperPagination(),
              ),
            ),
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
        ),
      // bottomNavigationBar: bottomBar
    );
  }
}