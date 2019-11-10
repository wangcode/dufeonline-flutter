import 'package:flutter/material.dart';

import './widget/HomeAppBar.dart';
import 'package:myapp/Widgets/Carousel.dart';
import './widget/HomeKaoFu.dart';

class PageHome extends StatelessWidget {

  final List carouselList = [
    NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/da4cd42cf5a64a29a5ff7bcea6855f09.jpg'),
    NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/8bb5a68e445b4d869788d2845f1506d2.jpg'),
    NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/183d2d513e2a4136ae6d614e06b15ca2.jpg'),
  ];
  final List kaoFulist = [
    {'name': '中级会计', 'image': 'assets/Icon_ZhongJi.png'},
    {'name': '初级会计', 'image': 'assets/Icon_ChuJi.png'},
    {'name': 'CMA', 'image': 'assets/Icon_CMA.png'},
    {'name': '校企专区', 'image': 'assets/Icon_Enterprise.png'}
  ];

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
          HomeKaoFu(list: kaoFulist)
        ],
      )
    );
  }
}