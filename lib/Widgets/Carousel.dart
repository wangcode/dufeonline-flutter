import 'package:flutter/material.dart';

import 'package:flutter_swiper/flutter_swiper.dart';

class Carousel extends StatelessWidget {

  final List list;

  const Carousel ({Key key, this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    for (var image in list) {
      precacheImage(image, context);
    }

    return Swiper(
      itemBuilder: (BuildContext context, int index){
        return Image(image: list[index], fit: BoxFit.fill, gaplessPlayback: true);
      },
      itemCount: list.length,
      pagination: SwiperPagination(),
    );
  }
}