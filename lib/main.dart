import 'package:flutter/material.dart';
import 'package:myapp/Pages/PageMain.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '东财在线',
      home: PageMain(),
      theme: ThemeData(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Color(0xffeeeff0),
        appBarTheme: AppBarTheme(
          elevation: 2,
          textTheme: TextTheme(
            title: TextStyle(
              fontSize: 18,
              color: Colors.black
            )
          )
        )
      ),
    );
  }
}