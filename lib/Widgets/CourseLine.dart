import 'package:flutter/material.dart';
import 'package:myapp/Widgets/IconText.dart';
import 'package:myapp/Widgets/Price.dart';

class CourseLine extends StatelessWidget {

  final double height = 80.0;

  final String picUrl;
  final String courseName;
  final double price;
  final double offPrice;

  const CourseLine ({Key key, this.courseName, this.picUrl, this.price, this.offPrice}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: Row(
        children: [
          Expanded(
            flex: 3,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5.0),
              child: Image.network(picUrl, height: height),
            ),
          ),
          Expanded(
            flex: 5,
            child: Container(
              margin: EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(courseName, style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: IconText(text: '9 门课', icon: Icons.insert_chart, size: 14.0, color: Color(0xff8a8a8a))
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: IconText(text: '9 门课', icon: Icons.insert_chart, size: 14.0, color: Color(0xff8a8a8a))
                          )
                        ],
                      ),
                      Price(price: 9.9, fontSize: 14.0, color: Color(0xfff99403),)
                    ],
                  )
                ],
              )
            ),
          )
        ]
      ),
    );
  }
}