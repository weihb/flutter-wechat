import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:local_notifications/local_notifications.dart';

import './http/dioApi.dart';

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

  String sharedPreferencesText = '';
  Future _saveDate(values) async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    await spf.setString('test', values);
  }

  Future _readDate() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    setState(() {
      sharedPreferencesText = spf.get('test') ?? '暂无数据';
    });
  }

  Future _deleteDate() async {
    SharedPreferences spf = await SharedPreferences.getInstance();
    setState(() {
      spf
          .remove('test')
          .then((bool s) => sharedPreferencesText = s ? '删除成功' : '删除失败');
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

  static const AndroidNotificationChannel channel =
      const AndroidNotificationChannel(
          id: 'default_notification',
          name: 'Default',
          description: 'Grant this app the ability to show notifications',
          importance: AndroidNotificationChannelImportance.HIGH);

  showAndroidNotification() async {
    await LocalNotifications.createAndroidNotificationChannel(channel: channel);
    await LocalNotifications.createNotification(
      title: "F计划",
      content: "创建通知" + new DateTime.now().toString(),
      id: 0,
      androidSettings: new AndroidSettings(
        channel: channel,
        priority:
            AndroidNotificationPriority.HIGH, // default value for constructor
        vibratePattern:
            AndroidVibratePatterns.DEFAULT, // default value for constructor
      ),
    );
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
              child: ListTile(
                leading: Icon(Icons.data_usage),
                title: Text('shared_preferences:简单的数据持久化'),
              )),
          Row(
            children: <Widget>[
              RaisedButton(
                child: new Text('保存'),
                onPressed: () => _saveDate('test date'),
              ),
              RaisedButton(
                child: new Text('读取'),
                onPressed: _readDate,
              ),
              RaisedButton(
                child: new Text('删除'),
                onPressed: _deleteDate,
              ),
              Text(sharedPreferencesText),
            ],
          ),
          Divider(
            color: Colors.black45,
            height: 1.0,
          ),
          GestureDetector(
              onTap: showAndroidNotification,
              child: ListTile(
                leading: Icon(Icons.web),
                title: Text('Flutter创建通知Notifications'),
              )),
          Divider(
            color: Colors.black45,
            height: 1.0,
          ),
          GestureDetector(
              child: ListTile(
                leading: Icon(Icons.http),
                title: Text('Flutter dio 网络请求'),
              )),
          new Row(
            children: <Widget>[
              RaisedButton(
                child: new Text('test1'),
                onPressed: () => DioApi.get('test1'),
              ),
              RaisedButton(
                child: new Text('test2'),
                onPressed: () => DioApi.get('test2'),
              ),
              RaisedButton(
                child: new Text('get'),
                onPressed: (){
                  DioApi.get('/v2/movie/in_theaters');
                }
              ),
              RaisedButton(
                child: new Text('post'),
                onPressed: () => DioApi.get('test4'),
              ),
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
