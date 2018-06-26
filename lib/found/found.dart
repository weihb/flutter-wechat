import 'package:flutter/material.dart';
import '../common/wechatItem.dart';

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
            child: WechatItem(
              imagePath: 'images/v2.png',
              title: '朋友圈',
            ),
          ),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(children: <Widget>[
                WechatItem(
                  imagePath: 'images/icon_de_saoyisao.png',
                  title: '扫一扫',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(
                  imagePath: 'images/icon_de_yao.png',
                  title: '摇一摇',
                ),
              ])),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(children: <Widget>[
                WechatItem(
                  imagePath: 'images/icon_k.png',
                  title: '看一看',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(
                  imagePath: 'images/icon_s.png',
                  title: '搜一搜',
                ),
              ])),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(children: <Widget>[
                WechatItem(
                  imagePath: 'images/icon_de_nearby.png',
                  title: '附近的人',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(
                  imagePath: 'images/icon_de_ping.png',
                  title: '漂流瓶',
                ),
              ])),
          Container(
              margin: const EdgeInsets.only(top: 20.0),
              color: Colors.white,
              child: Column(children: <Widget>[
                WechatItem(
                  imagePath: 'images/icon_de_shop.png',
                  title: '购物',
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                WechatItem(
                  imagePath: 'images/ahl.png',
                  title: '游戏',
                ),
              ])),
          Container(
            margin: const EdgeInsets.only(top: 20.0, bottom: 20.0),
            color: Colors.white,
            child: WechatItem(
              imagePath: 'images/icon_link.png',
              title: '小程序',
            ),
          ),
        ],
      ),
    ));
  }
}
