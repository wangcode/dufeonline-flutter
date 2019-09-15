import 'package:flutter/material.dart';

class PageCategory extends StatelessWidget {

  final category1 = [
    '全部',
    '会计考辅',
    '行政事业单位财务',
    '企业财务',
    '财务软技能',
    '学历课程研修',
  ];

  final category2 = [
    '全部',
    'CMA',
    '中级职称考试',
    '初级职称考试',
    '政府会计准则与会计制度',
    '行政事业单位内部控制',
    '税收实务',
    '企业会计政策解读',
    '企业会计实务',
    '财务工具应用',
    '国学、领导力',
    '会计入门',
    '会计高阶',
    '会计进阶',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("分类"),
      ),
      body: Container(
        color: Color(0xfff0f1f3),
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: category1.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xffffffff),
                      border: Border(bottom: Divider.createBorderSide(context, width: 1))
                    ),
                    child: Text(category1[index], style: TextStyle(height: 1.5)),
                  );
                },
              )
            ),
            Expanded(
              flex: 1,
              child: ListView.builder(
                itemCount: category2.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    padding: EdgeInsets.only(top: 15, bottom: 15, left: 10),
                    decoration: BoxDecoration(
                      color: Color(0xfff8f8f8),
                      border: Border(
                        bottom: Divider.createBorderSide(context, width: 1)
                      )
                    ),
                    child: Text(category2[index], style: TextStyle(height: 1.5),),
                  );
                },
              )
            ),
          ],
        )
      )
    );
  }
}