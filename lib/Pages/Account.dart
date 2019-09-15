import 'package:flutter/material.dart';
import 'package:myapp/Pages/Account/Setting.dart';

class PageAccount extends StatelessWidget {

  Widget _listItemBuilder(String text, {IconData icon, GestureTapCallback onPress}) {
    return Container(
      height: 52.0,
      child: Container(
        child: GestureDetector(
          onTap: onPress,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(children: <Widget>[Padding(padding: EdgeInsets.only(right: 14),child: Icon(icon, semanticLabel: text)), Text(text)]),
              Icon(Icons.keyboard_arrow_right),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Color(0xfff0f1f3),
        child: ListView(
          children: <Widget>[
            SafeArea(
              top: true,
              child: Container(
                padding: EdgeInsets.all(25),
                height: 120,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Account-Header-Background.png'),
                    fit: BoxFit.cover
                  )
                ),
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 75,
                      width: 75,
                      child: CircleAvatar(backgroundImage: NetworkImage('http://m.dufe.online/img/account/photo.png'))
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 25),
                      child: Text('未登录', style: TextStyle(color: Color(0xff000000), fontSize: 16)),
                    )
                  ],
                ),
              )
            ),
            Padding(
              padding: EdgeInsets.only(left: 10, right: 10),
              child:Column(
                children: <Widget>[
                  _listItemBuilder(
                    '我的专区',
                    icon: Icons.airline_seat_recline_normal,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  Divider(),
                  _listItemBuilder(
                    '我的收藏',
                    icon: Icons.favorite_border,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  _listItemBuilder(
                    '我的订单',
                    icon: Icons.local_offer,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  _listItemBuilder(
                    '我的优惠券',
                    icon: Icons.card_giftcard,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  Divider(),
                  _listItemBuilder(
                    '我的消息',
                    icon: Icons.notifications_none,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  _listItemBuilder(
                    '我的任务',
                    icon: Icons.list,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  _listItemBuilder(
                    '我的积分',
                    icon: Icons.credit_card,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  Divider(),
                  _listItemBuilder(
                    '设置',
                    icon: Icons.settings,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  _listItemBuilder(
                    '帮助中心',
                    icon: Icons.help_outline,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                  _listItemBuilder(
                    '关于我们',
                    icon: Icons.account_circle,
                    onPress: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>PageSetting()));}
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
