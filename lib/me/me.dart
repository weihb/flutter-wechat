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
              style: TextStyle(fontSize: 14.0, color: Color(0xFF353535)),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        backgroundColor: Color(0xff303030),
        actions: <Widget>[
          Icon(
            Icons.search,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xFFebebeb),
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
                    'http://img3.duitang.com/uploads/item/201511/26/20151126164825_uyPsi.thumb.700_0.jpeg',
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
                Icon(
                  Icons.account_balance_wallet,
                  color: Colors.blue,
                ),
                '钱包'),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: Column(
              children: <Widget>[
                itemWidget(
                    Icon(
                      Icons.save,
                      color: Colors.red,
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
                    Icon(
                      Icons.image,
                      color: Colors.blue,
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
                    Icon(
                      Icons.view_day,
                      color: Colors.green,
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
                    Icon(
                      Icons.insert_emoticon,
                      color: Colors.yellow,
                    ),
                    '表情'),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            color: Colors.white,
            child: itemWidget(
                Icon(
                  Icons.settings,
                  color: Colors.blue,
                ),
                '设置'),
          ),
        ],
      ),
    );
  }
}
