import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class Carousel extends StatelessWidget {

  final List list;

  const Carousel ({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context,int index){return list[index];},
      itemCount: list.length,
      pagination: SwiperPagination(),
    );
  }
}