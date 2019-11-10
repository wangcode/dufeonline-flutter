import 'package:flutter/material.dart';
import 'package:myapp/Widgets/IconText.dart';
import 'package:myapp/Widgets/Price.dart';

class CourseLine extends StatelessWidget {

  final double height = 80;

  final String picUrl;
  final String courseName;
  final num price;
  final num offPrice;
  final int courseTimelength;
  final int studyUserNum;

  const CourseLine ({
    Key key,
    @required this.courseName,
    @required this.picUrl,
    @required this.price,
    @required this.offPrice,
    @required this.courseTimelength,
    @required this.studyUserNum,
    }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      decoration: BoxDecoration(
        color: Color(0xffffffff),
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
        boxShadow: [BoxShadow(color: Colors.grey[400], blurRadius: 2.0)],
      ),
      child: Row(
        children: [
          Image.network(picUrl, height: height),
          Expanded(
            flex: 6,
            child: Container(
              height: height,
              margin: EdgeInsets.only(left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseName,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                    ),
                    softWrap: true,
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 10.0),
                            child: IconText(text: '$courseTimelength 分钟', icon: Icons.access_time, size: 12.0, color: Color(0xff8a8a8a))
                          ),
                          IconText(text: '$studyUserNum 人已学', icon: Icons.supervisor_account, size: 12.0, color: Color(0xff8a8a8a))
                        ],
                      ),
                      Row(
                        children: <Widget>[
                          Price(price: offPrice, fontSize: 14.0, color: Color(0xfff99403)),
                          Padding(
                            padding: EdgeInsets.only(left: 15),
                            child: Price(price: price, fontSize: 14.0, color: Color(0xff8a8a8a), deleteLine: true)
                          )
                        ],
                      )
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