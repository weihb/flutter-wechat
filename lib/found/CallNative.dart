import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';

import 'package:shared_preferences/shared_preferences.dart';

import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import '../http/dioApi.dart';
import '../main.dart';

class CallNative extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<CallNative> {
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
      await platform.invokeMethod("webview", {"url": url});
    } on PlatformException catch (e) {
      print(e.toString());
    }
  }

  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      new FlutterLocalNotificationsPlugin();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    var initializationSettingsAndroid =
        new AndroidInitializationSettings('app_icon');
    var initializationSettingsIOS = new IOSInitializationSettings();
    var initializationSettings = new InitializationSettings(
        initializationSettingsAndroid, initializationSettingsIOS);
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    flutterLocalNotificationsPlugin.initialize(initializationSettings,
    selectNotification: onSelectNotification);
  }

  Future onSelectNotification(String payload) async {
    if (payload != null) {
      debugPrint('notification payload: ' + payload);
    }
    await Navigator.push(
      context,
      new MaterialPageRoute(builder: (context) => MyApp()),
    );
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: new Text('知识点'),
          centerTitle: true,
        ),
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
                margin:
                    _image != null ? const EdgeInsets.only(bottom: 12.0) : null,
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
                  onTap: () async {
                    var scheduledNotificationDateTime =
                        new DateTime.now().add(new Duration(seconds: 5));
                    var androidPlatformChannelSpecifics =
                        new AndroidNotificationDetails(
                            'your other channel id',
                            'your other channel name',
                            'your other channel description');
                    var iOSPlatformChannelSpecifics =
                        new IOSNotificationDetails();
                    NotificationDetails platformChannelSpecifics =
                        new NotificationDetails(androidPlatformChannelSpecifics,
                            iOSPlatformChannelSpecifics);
                    await flutterLocalNotificationsPlugin.schedule(
                        0,
                        'scheduled title',
                        'scheduled body',
                        scheduledNotificationDateTime,
                        platformChannelSpecifics);
                  },
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
                      onPressed: () {
                        DioApi.get('/v2/movie/in_theaters');
                      }),
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
