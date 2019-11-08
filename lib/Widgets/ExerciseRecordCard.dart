import 'package:flutter/material.dart';
import 'package:myapp/Widgets/IconText.dart';

class ExerciseRecordCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, top: 20.0, right: 15.0),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('名称：行政事业单位内部控制规范'),
                Text('保存时间：2019-09-09 12:03'),
                Text('完成度：100%'),
                Text('分数：80'),
                Text('正确率：80%'),
              ],
            ),
          ),
          Divider(height: 0, color: Color(0xffdedfe0)),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Text(''),
              ),
              DecoratedBox(
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffdedfe0), width: 1.0),
                ),
                child: SizedBox(height: 26.0)
              ),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.all(10.0),
                  child: GestureDetector(
                    onTap: (){print('test');},
                    child: IconText(text: '查看记录', icon: Icons.remove_red_eye,color: Color(0xff257abd), size: 15.0, spacing: 15.0),
                  ),
                )
              )
            ],
          )
        ],
      ),
    );
  }
}