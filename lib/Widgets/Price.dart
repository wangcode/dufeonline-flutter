import 'package:flutter/material.dart';

class Price extends StatelessWidget {

  final num price;
  final Color color;
  final double fontSize;
  final bool deleteLine;


  const Price ({
    Key key,
    @required this.price,
    this.color,
    this.fontSize,
    this.deleteLine = false
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final formatPrice = price.toStringAsFixed(2);

    return Text(
      '¥ $formatPrice',
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        decoration: deleteLine ? TextDecoration.lineThrough : TextDecoration.none,
      ),
    );
  }
}