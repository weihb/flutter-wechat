import 'package:flutter/material.dart';

class Me extends StatelessWidget {
  itemWidget(icon, title) {
    return Container(
        height: 50.0,
        child: Row(
          children: <Widget>[
            Container(
              child: icon,
              margin: const EdgeInsets.only(left: 22.0, right: 20.0),
            ),
            Text(
              title,
              style: TextStyle(fontSize: 16.0, color: Color(0xFF353535)),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            height: 80.0,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(left: 12.0, right: 15.0),
                  child: Image.network(
                    'http://img5.duitang.com/uploads/item/201504/17/20150417H5529_JuTGY.jpeg',
                    width: 70.0,
                    height: 70.0,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Herbie',
                        style:
                            TextStyle(fontSize: 18.0, color: Color(0xFF353535)),
                      ),
                      Text(
                        '微信号：NMDFCKDDFY',
                        style:
                            TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 20.0),
                  child: Image.asset(
                    'images/ad6.png',
                    width: 24.0,
                    height: 24.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: itemWidget(
                Image.asset(
                  'images/icon_me_money.png',
                  width: 32.0,
                  height: 32.0,
                ),
                '钱包'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                itemWidget(
                    Image.asset(
                      'images/icon_me_collect.png',
                      width: 32.0,
                      height: 32.0,
                    ),
                    '收藏'),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                itemWidget(
                    Image.asset(
                      'images/icon_me_photo.png',
                      width: 32.0,
                      height: 32.0,
                    ),
                    '相册'),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                itemWidget(
                    Image.asset(
                      'images/icon_me_card.png',
                      width: 32.0,
                      height: 32.0,
                    ),
                    '卡包'),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Divider(
                    height: 0.5,
                    color: Color(0xFFd9d9d9),
                  ),
                ),
                itemWidget(
                    Image.asset(
                      'images/icon_me_smail.png',
                      width: 32.0,
                      height: 32.0,
                    ),
                    '表情'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: itemWidget(
                Image.asset(
                  'images/icon_me_setting.png',
                  width: 32.0,
                  height: 32.0,
                ),
                '设置'),
          ),
        ],
      ),
    );
  }
}
