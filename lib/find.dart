import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:shared_preferences/shared_preferences.dart';

class Find extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<Find> {
  File _image;

  Future getImage() async {
    var image = await ImagePicker.pickImage(source: ImageSource.gallery);

    setState(() {
      _image = image;
    });
  }

  var SharedPreferencesText = '';
  Future _saveDate() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    await spf.setString('test', '测试数据');
  }

  Future _readDate() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    setState(() {
      SharedPreferencesText = spf.get('test') ?? '暂无数据';
    });
  }

  Future _deleteDate() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    setState(() {
      spf
          .remove('test')
          .then((bool s) => SharedPreferencesText = s ? '删除成功' : '删除失败');
    });
  }

  static const platform = const MethodChannel('flutter/toast');

  showToast(String msg) async {
    try {
      await platform.invokeMethod("showToast", {"msg": msg});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  showWebView(url) async {
    try {
      await platform.invokeMethod("weiview", {"url": url});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Container(
      child: ListView(
        children: <Widget>[
          GestureDetector(
              onTap: () {
                showToast("我是android系统的toast");
              },
              child: ListTile(
                leading: Icon(Icons.face),
                title: Text('调用android原生toast'),
              )),
          Divider(
            color: Colors.black45,
            height: 1.0,
          ),
          GestureDetector(
              onTap: () {
                showWebView(
                    'https://www.blackglory.me/straightforward-dart-list/');
              },
              child: ListTile(
                leading: Icon(Icons.favorite),
                title: Text('学习Dart基础'),
              )),
          Divider(
            color: Colors.black45,
            height: 1.0,
          ),
          GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/widget');
              },
              child: ListTile(
                leading: Icon(Icons.web),
                title: Text('Flutter webview插件'),
              )),
          Divider(
            color: Colors.black45,
            height: 1.0,
          ),
          GestureDetector(
              onTap: getImage,
              child: ListTile(
                leading: Icon(Icons.image),
                title: Text('点击获取设备相册库中的image'),
              )),
          Container(
            margin: _image != null ? const EdgeInsets.only(bottom: 12.0) : null,
            child: _image != null
                ? new Image.file(
                    _image,
                    width: 70.0,
                    height: 70.0,
                  )
                : null,
          ),
          Divider(
            color: Colors.black45,
            height: 1.0,
          ),
          GestureDetector(
              onTap: getImage,
              child: ListTile(
                leading: Icon(Icons.data_usage),
                title: Text('shared_preferences:简单的数据持久化'),
              )),
          Row(
            children: <Widget>[
              RaisedButton(
                child: new Text('保存'),
                onPressed: _saveDate,
              ),
              RaisedButton(
                child: new Text('读取'),
                onPressed: _readDate,
              ),
              RaisedButton(
                child: new Text('删除'),
                onPressed: _deleteDate,
              ),
              Text(SharedPreferencesText),
            ],
          ),
          Divider(
            color: Colors.black45,
            height: 1.0,
          ),
        ],
      ),
    ));
  }
}
