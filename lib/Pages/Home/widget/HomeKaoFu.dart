import 'package:flutter/material.dart';

class HomeKaoFu extends StatelessWidget {

  final double width = 35.0;
  final double height = 35.0;
  final double textHeight = 1.5;
  final double fontSize = 13.0;

  final List list;
  const HomeKaoFu ({Key key, this.list}) : super (key: key);

  Widget _buildColumn(String title, String image){
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.all(5.0),
          child: Image.asset(image, width: width, height: height),
        ),
        Text(title, style: TextStyle(height: textHeight, fontSize: fontSize))
      ],
    );
  }

  Widget _buildRow(List list){
    List<Widget> line = [];
    for(var item in list) {line.add(_buildColumn(item['name'], item['image']));}
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: line
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0, bottom: 15.0),
      margin: EdgeInsets.only(bottom: 10),
      color: Color(0xffffffff),
      child: _buildRow(list)
    );
  }
}