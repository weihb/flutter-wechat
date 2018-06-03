import 'package:flutter/material.dart';

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
      body: new Container(
          child: new ListView(
        children: <Widget>[
          new Text(
            'TextView',
            style: new TextStyle(
                color: Colors.pink,
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'fontFamily',
                // textBaseline: TextBaseline.alphabetic,
                // locale: new Locale('007'),
                // decoration: TextDecoration.overline,
                debugLabel: 'debugLabel'),
          ),
          new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              new Text('华丽分割线'),
              new Divider(
                color: Colors.black45,
                height: 2.0,
              ),
            ],
          ),
          new RichText(
              maxLines: 3,
              text: new TextSpan(
                text: 'RichText ',
                style: DefaultTextStyle.of(context).style,
                children: <TextSpan>[
                  new TextSpan(
                      text: 'bold',
                      style: new TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0)),
                  new TextSpan(text: ' world!'),
                ],
              )),
          new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              new Text('华丽分割线'),
              new Divider(
                color: Colors.black45,
                height: 2.0,
              ),
            ],
          ),
          // new InputChip(label: new Text('input')),
          new Form(
            child: new TextField(
              textAlign: TextAlign.center,
              decoration: const InputDecoration(labelText: '手机号'),
              onChanged: (text) {
                //当正在编辑的文本改变时调用。
                print('onChanged:$text');
              },
              onSubmitted: (text) {
                //当用户指示他们已经完成编辑字段中的文本时调用。
                print('onSubmitted:$text');
              },
            ),
          ),
          new TextField(
            decoration: const InputDecoration(
                icon: const Icon(Icons.mode_edit), labelText: '密码'),
            onChanged: (text) {
              print('onChanged:$text');
            },
            onSubmitted: (text) {
              print('onSubmitted:$text');
            },
          ),
          new Stack(
            alignment: Alignment.center,
            children: <Widget>[
              new Text('华丽分割线'),
              new Divider(
                color: Colors.black45,
                height: 2.0,
              ),
            ],
          ),
        ],
      )),
    );
  }
}
