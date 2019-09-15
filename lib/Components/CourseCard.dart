import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network('http://cache9.edufe.cn/b2c/static/upload/photos_pack/31e0cff98d0c46fc901391ada8175ae6.jpeg'),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text('2019年中级会计无忧通关班', textAlign: TextAlign.left),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.access_time, size: 16, color: Color(0xff898989)),
                  Text('11 门课', style: TextStyle(color: Color(0xff898989)))
                ],
              ),
              Text('￥ 2180', style: TextStyle(color: Color(0xffF99403)))
            ],
          )
        ],
      ),
    );
  }
}