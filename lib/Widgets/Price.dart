import 'package:flutter/material.dart';

class Price extends StatelessWidget {

  final double price;
  final Color color;
  final double fontSize;


  const Price ({
    Key key,
    @required this.price,
    this.color,
    this.fontSize
  }) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final formatPrice = price.toStringAsFixed(2);

    return Text(
      '¥ $formatPrice',
      style: TextStyle(
        color: color,
        fontSize: fontSize
      ),
    );
  }
}