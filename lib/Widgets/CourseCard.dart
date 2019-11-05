import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {

  final String courseName;
  final int timeLength;
  final double price;
  final String picUrl;

  const CourseCard({Key key, this.courseName, this.timeLength, this.price, this.picUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(picUrl),
          Padding(
            padding: EdgeInsets.only(top: 5, bottom: 5),
            child: Text(courseName, textAlign: TextAlign.left),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Icon(Icons.access_time, size: 16, color: Color(0xff898989)),
                  Text('$timeLength', style: TextStyle(color: Color(0xff898989)))
                ],
              ),
              Text(price.toString(), style: TextStyle(color: Color(0xffF99403)))
            ],
          )
        ],
      ),
    );
  }
}