import 'package:flutter/material.dart';
import 'package:myapp/Pages/Search.dart';

class PageStudy extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('听课'),
        centerTitle: true,
        elevation: 2,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => PageSearch()));
            },
          )
        ],
      ),
      body: Text('1')
    );
  }
}