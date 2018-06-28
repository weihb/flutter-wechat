import 'package:flutter/material.dart';
import './WeigetData.dart';

class MaterialWeigets extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MaterialWeigets> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Material Components'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          children: materialData,
        ),
      ),
    );
  }
}
