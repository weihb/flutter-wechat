import 'package:flutter/material.dart';
import '../me/me.dart';

class Found extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Found> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: new Me().itemWidget(
                context,
                Image.asset(
                  'images/find_friends.png',
                  height: 32.0,
                  width: 32.0,
                ),
                '朋友圈'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: new Me().itemWidget(
                context,
                Image.asset(
                  'images/icon_de_saoyisao.png',
                  height: 32.0,
                  width: 32.0,
                ),
                '扫一扫'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: new Me().itemWidget(
                context,
                Icon(
                  Icons.search,
                  color: Colors.red,
                  size: 32.0,
                ),
                '搜一搜'),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(children: <Widget>[
                new Me().itemWidget(
                    context,
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.redAccent,
                      size: 32.0,
                    ),
                    '购物'),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                new Me().itemWidget(
                    context,
                    Image.asset(
                      'images/ahl.png',
                      width: 32.0,
                      height: 32.0,
                    ),
                    '游戏'),
              ])),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: new Me().itemWidget(
                context,
                Icon(
                  Icons.link,
                  color: Colors.blueAccent,
                  size: 32.0,
                ),
                '小程序'),
          ),
        ],
      ),
    ));
  }
}
