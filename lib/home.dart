import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  HomeState createState() => new HomeState();
}

class HomeState extends State<Home> {
  var _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('基本控件使用'),
        titleSpacing: 50.0, //标题间距
        centerTitle: true,
        actions: <Widget>[
          new GestureDetector(
              child: new Container(
                child: new Icon(
                  Icons.map,
                  color: Colors.green,
                  semanticLabel: '地图',
                  textDirection: TextDirection.rtl,
                ),
                padding: const EdgeInsets.all(10.0),
              ),
              onTap: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return new AlertDialog(
                        title: new Text('点击事件'),
                        content: new Text('点击了地图按钮'),
                      );
                    });
              }),
          new Icon(
            Icons.menu,
            color: Colors.black,
          ),
          new Icon(
            Icons.more,
            color: Colors.yellow,
          )
        ],
        leading: new CircleAvatar(
          backgroundColor: Colors.pink[200],
          child: new Text('head'),
          foregroundColor: Colors.blue,
        ),
        flexibleSpace: new Text('flexibleSpace'),
        bottom: new PreferredSize(
            child: new Text('PreferredSize'),
            preferredSize: new Size(20.0, 20.0)),
      ),
      bottomNavigationBar: new BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
            print('index:${index}');
          },
          items: [
            new BottomNavigationBarItem(
                title: new Text('首页'),
                backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.home,
                )),
            new BottomNavigationBarItem(
                title: new Text('发现'),
                backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.find_in_page,
                )),
            new BottomNavigationBarItem(
                title: new Text('我的'),
                backgroundColor: Colors.blue,
                icon: new Icon(
                  Icons.message,
                )),
          ]),
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
              decoration: const InputDecoration(labelText: '手机号'),
              onChanged: (text) {
                //当正在编辑的文本改变时调用。
                print('onChanged:${text}');
              },
              onSubmitted: (text) {
                //当用户指示他们已经完成编辑字段中的文本时调用。
                print('onSubmitted:${text}');
              }, 
            ),
          ),
          new TextField(
            decoration: const InputDecoration(labelText: '密码'),
            onChanged: (text) {
              print('onChanged:${text}');
            },
            onSubmitted: (text) {
              print('onSubmitted:${text}');
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
