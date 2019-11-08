import 'package:flutter/material.dart';

class IconText extends StatelessWidget {

  final String text;
  final IconData icon;
  final Color color;
  final double size;
  final double spacing;

  const IconText ({
    Key key,
    @required this.text,
    @required this.icon,
    this.color,
    this.size = 14.0,
    this.spacing = 3.0
    }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Padding(padding: EdgeInsets.only(right: spacing), child: Icon(icon, size: size, color: color)),
        Text(text, style: TextStyle(fontSize: size, color: color))
      ],
    );
  }
}