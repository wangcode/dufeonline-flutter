import 'package:flutter/material.dart';
import 'package:myapp/Widgets/CourseCard.dart';

import 'HomePanel.dart';

class HomePlate extends StatelessWidget {

  final List list;
  const HomePlate ({Key key, @required this.list}) : super (key: key);

  List _buildPlateList(BuildContext context, List list) {
    List<Widget> plateList = [];
    for(var item in list) {
      plateList.add(
        HomePanel(
          title: item['plateName'],
          more: '更多 >',
          link: 'link',
          child: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: _buildCourseList(context, item['children'])
          ),
        )
      );
    }
    return plateList;
  }

  List _buildCourseList(BuildContext context, List list){
    List<Widget> courseList = [];
    for(var item in list) {
      courseList.add(
        Container(
          width: MediaQuery.of(context).size.width*0.5-20,
          child: CourseCard(
            courseName: item['name'],
            picUrl: item['picUrl'],
            timeLength: int.parse(item['timeLength']),
            price: double.parse(item['price']),
          ),
        )
      );
    }
    return courseList;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildPlateList(context, this.list)
    );
  }
}