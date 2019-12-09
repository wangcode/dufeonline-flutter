import 'package:flutter/material.dart';

class HomePanel extends StatelessWidget {

  final String title;
  final String more;
  final String link;
  final Widget child;

  const HomePanel ({
    Key key,
    @required this.title,
    @required this.link,
    @required this.child,
    this.more,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0, bottom: 10.0),
      color: Colors.white,
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(bottom: 3.0),
            padding: EdgeInsets.only(left: 8.0),
            decoration: BoxDecoration(border: Border(left: BorderSide(width: 2.0, color: Color(0xff29a978)))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[Text(title), Text(more)],
            ),
          ),
          Divider(),
          child
        ],
      ),
    );
  }
}