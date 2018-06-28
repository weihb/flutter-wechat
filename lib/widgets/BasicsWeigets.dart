import 'package:flutter/material.dart';
import './WeigetData.dart';

class BasicsWeigets extends StatefulWidget {
  @override
  BasicState createState() => new BasicState();
}

class BasicState extends State<BasicsWeigets> {
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('基础组件'),
        centerTitle: true,
      ),
      body: GridView.count(
        primary: false,
        // padding: const EdgeInsets.all(10.0),
        // mainAxisSpacing: 10.0,
        // crossAxisSpacing: 10.0,
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        children: basicsData,
      ),
    );
  }
}
