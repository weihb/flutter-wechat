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
        body: Container(
          child: ListView(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                color: Colors.white,
                child: new Me().itemWidget(
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.blue,
                    ),
                    '朋友圈'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                color: Colors.white,
                child: new Me().itemWidget(
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.blue,
                    ),
                    '扫一扫'),
              ),
              Container(
                margin: const EdgeInsets.only(top: 20.0),
                color: Colors.white,
                child: new Me().itemWidget(
                    Icon(
                      Icons.account_balance_wallet,
                      color: Colors.blue,
                    ),
                    '搜一搜'),
              ),
            ],
          ),
        ));
  }
}
