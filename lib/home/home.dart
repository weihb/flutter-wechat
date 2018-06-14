import 'package:flutter/material.dart';
import './Message.dart';
import './MessageItem.dart';

class Home extends StatefulWidget {
  final String title;
  Home({Key key, this.title}) : super(key: key);

  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (BuildContext context, int index) {
        return new MessageItem(messageData[index]);
      },
    ));
  }
}
