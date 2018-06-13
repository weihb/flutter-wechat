import 'package:flutter/material.dart';

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
            children: <Widget>[],
          ),
        ));
  }
}
