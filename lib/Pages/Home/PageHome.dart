import 'package:flutter/material.dart';
import 'package:myapp/Api/index.dart';
import 'package:myapp/Pages/Home/widget/HomePlate.dart';

import './widget/HomeAppBar.dart';
import 'package:myapp/Widgets/Carousel.dart';
import './widget/HomeKaoFu.dart';

class PageHome extends StatefulWidget {
  @override
  _PageHomeState createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  List carouselList = [
    NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/da4cd42cf5a64a29a5ff7bcea6855f09.jpg'),
    NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/8bb5a68e445b4d869788d2845f1506d2.jpg'),
    NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/183d2d513e2a4136ae6d614e06b15ca2.jpg'),
  ];

  List plateList = [];

  final List kaoFulist = [
    {'name': '中级会计', 'image': 'assets/Icon_ZhongJi.png'},
    {'name': '初级会计', 'image': 'assets/Icon_ChuJi.png'},
    {'name': 'CMA', 'image': 'assets/Icon_CMA.png'},
    {'name': '校企专区', 'image': 'assets/Icon_Enterprise.png'}
  ];

  final List courseList = [
    {'courseName': 'test', 'picUrl': 'http://cache2.edufe.cn/b2c/static/upload/photos_pack/d07cc527e73f445096c12d52f71fc394.jpeg', 'timeLength': 123, 'price': 9.8},
    {'courseName': 'test', 'picUrl': 'http://cache2.edufe.cn/b2c/static/upload/photos_pack/d07cc527e73f445096c12d52f71fc394.jpeg', 'timeLength': 123, 'price': 9.8},
    {'courseName': 'test', 'picUrl': 'http://cache2.edufe.cn/b2c/static/upload/photos_pack/d07cc527e73f445096c12d52f71fc394.jpeg', 'timeLength': 123, 'price': 9.8},
    {'courseName': 'test', 'picUrl': 'http://cache2.edufe.cn/b2c/static/upload/photos_pack/d07cc527e73f445096c12d52f71fc394.jpeg', 'timeLength': 123, 'price': 9.8}
  ];


  @override
  void initState() {
    super.initState();

    getCarouselList().then((res) {
      setState(() {carouselList = res.map((item)=>NetworkImage(item['pic'])).toList();});
    });

    getAllPlate().then(
      (res) {setState(() {plateList = res;});}
    );

  }

  Future<List> getAllPlate() async {

    List plateList = await getPlateList();

    List<Future> res = plateList.map( (plate) async {
      plate['children'] = await getPlateCourseList(plate['plateId']).then((res)=>res['courses']);
      return plate;
    }).toList();

    return Future.wait(res);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: ListView(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 1/0.48,
            child: Carousel(list: carouselList),
          ),
          HomeKaoFu(list: this.kaoFulist),
          HomePlate(list: this.plateList)
        ],
      )
    );
  }
}