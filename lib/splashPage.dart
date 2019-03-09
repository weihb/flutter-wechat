import 'package:flutter/material.dart';
import 'dart:async';

// 启动页
class SplashPage extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    new Future.delayed(Duration(seconds: 3), () {
      print('启动。。。');
      Navigator.of(context).pushReplacementNamed('app');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset('images/as1.jpg'),
    );
  }
}
