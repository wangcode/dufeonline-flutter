import 'package:flutter/material.dart';

import './widget/HomeAppBar.dart';
import 'package:myapp/Widgets/Carousel.dart';

class PageHome extends StatelessWidget {

  final _carouselList = [
    Image(image: NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/da4cd42cf5a64a29a5ff7bcea6855f09.jpg'), fit: BoxFit.fill,),
    Image(image: NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/8bb5a68e445b4d869788d2845f1506d2.jpg'), fit: BoxFit.fill,),
    Image(image: NetworkImage('http://cache8.edufe.cn/b2c/static/upload/photos_carousel/183d2d513e2a4136ae6d614e06b15ca2.jpg'), fit: BoxFit.fill,),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomeAppBar(),
      body: ListView(
        children: <Widget>[
          Container(
            height: 180,
            child: Carousel(list: _carouselList),
          )
        ],
      )
    );
  }
}