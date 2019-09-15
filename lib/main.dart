import 'package:flutter/material.dart';
// import 'package:myapp/Pages/Account.dart';
import 'package:myapp/Pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '东财在线',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
     home: PageHome()
      // home: PageAccount(),
    );
  }
}