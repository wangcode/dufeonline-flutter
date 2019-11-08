import 'package:flutter/material.dart';
import 'package:myapp/Widgets/ExerciseRecordCard.dart';

class AccountCourse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('我的课程'),
          bottom: TabBar(
            indicatorColor: Color(0xff257abd),
            indicatorWeight: 2.0,
            indicatorSize: TabBarIndicatorSize.label,
            tabs: <Widget>[
              Tab(text: '课程'),
              Tab(text: '答题记录')
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: ExerciseRecordCard()
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: ExerciseRecordCard()
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: ExerciseRecordCard()
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: ExerciseRecordCard()
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: ExerciseRecordCard()
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: ExerciseRecordCard()
                ),
              ],
            ),
            ListView(
              children: <Widget>[
                Text('1'),
                Text('2')
              ],
            )
          ],
        ),
      ),
    );
  }
}