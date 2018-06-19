import 'package:flutter/material.dart';
import './widgets/BasicsWeigets.dart';
import './widgets/FlutterUI.dart';
import './found/CallNative.dart';
import './home/home.dart';
import './contacts/contacts.dart';
import './found/found.dart';
import './me/me.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() => runApp(new MyApp());

final ThemeData mDefaultTheme = new ThemeData(
  // primarySwatch: ,//material风格原色
  primaryColor: Color(0xff303030), //原色
  scaffoldBackgroundColor: Color(0xFFebebeb), //脚手架背景颜色
  // accentColor: Colors.orangeAccent[400],//强调颜色
  // highlightColor: Colors.lightGreenAccent,//突出颜色
  // hintColor: //提示颜色
  // textSelectionHandleColor: //文本选择手柄颜色
  // textSelectionColor: //文字选择颜色
  // backgroundColor: //背景颜色
  // canvasColor: //画布颜色
  // cardColor: //卡片颜色
  // buttonColor: //按钮颜色
  // dialogBackgroundColor: //对话框背景颜色
  // disabledColor: //禁用颜色
  // dividerColor: //分频器颜色
  // errorColor: //错误颜色
  // indicatorColor: //指示灯颜色
  // secondaryHeaderColor: //次标头颜色
  // selectedRowColor: //选择行颜色
  // splashColor: //飞溅颜色
  // unselectedWidgetColor: //未选择的控件颜色
);

class MyApp extends StatefulWidget {
  @override
  MainState createState() => new MainState();
}

class MainState extends State<MyApp> {
  var _currentIndex = 0;

  currentPage() {
    switch (_currentIndex) {
      case 0:
        return new Home(
          title: 'Flutter UI',
        );
        break;
      case 1:
        return new Contacts();
        break;
      case 2:
        return new Found();
        break;
      case 3:
        return new Me();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    /**
    title ： 在任务管理窗口中所显示的应用名字
    theme ： 应用各种 UI 所使用的主题颜色
    color ： 应用的主要颜色值（primary color），也就是安卓任务管理窗口中所显示的应用颜色
    home ： 应用默认所显示的界面 Widget
    routes ： 应用的顶级导航表格，这个是多页面应用用来控制页面跳转的，类似于网页的网址
    initialRoute ：第一个显示的路由名字，默认值为 Window.defaultRouteName
    onGenerateRoute ： 生成路由的回调函数，当导航的命名路由的时候，会使用这个来生成界面
    onLocaleChanged ： 当系统修改语言的时候，会触发å这个回调
    navigatorObservers ： 应用 Navigator 的监听器
    debugShowMaterialGrid ： 是否显示 纸墨设计 基础布局网格，用来调试 UI 的工具
    showPerformanceOverlay ： 显示性能标签，https://flutter.io/debugging/#performanceoverlay
    checkerboardRasterCacheImages 、showSemanticsDebugger、debugShowCheckedModeBanner 各种调试开关
    */
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wechat',
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        'BasicsWeigets': (BuildContext context) => new BasicsWeigets(),
        'flutterUI': (BuildContext context) => new FlutterUI(),
        'flutterTest': (BuildContext context) => new CallNative(),
        "/widget": (_) => new WebviewScaffold(
              url: "https://flutter.io",
              appBar: new AppBar(
                title: new Text("Widget webview"),
              ),
              withZoom: true,
              withLocalStorage: true,
            )
      },
      home: new Scaffold(
        appBar: AppBar(
          title: Text('微信'),
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
        bottomNavigationBar: new BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              new BottomNavigationBarItem(
                title: new Text(
                  '首页',
                  style: TextStyle(
                      color: _currentIndex == 0
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                ),
                icon: _currentIndex == 0
                    ? Image.asset(
                        'images/weixin_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset(
                        'images/weixin_normal.png',
                        width: 32.0,
                        height: 28.0,
                      ),
              ),
              new BottomNavigationBarItem(
                title: new Text(
                  '通讯录',
                  style: TextStyle(
                      color: _currentIndex == 1
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                ),
                backgroundColor:
                    _currentIndex == 1 ? Color(0xFF46c01b) : Color(0xff999999),
                icon: _currentIndex == 1
                    ? Image.asset(
                        'images/contact_list_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset(
                        'images/contact_list_normal.png',
                        width: 32.0,
                        height: 28.0,
                      ),
              ),
              new BottomNavigationBarItem(
                title: new Text(
                  '发现',
                  style: TextStyle(
                      color: _currentIndex == 2
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                ),
                backgroundColor:
                    _currentIndex == 2 ? Color(0xFF46c01b) : Color(0xff999999),
                icon: _currentIndex == 2
                    ? Image.asset(
                        'images/find_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset(
                        'images/find_normal.png',
                        width: 32.0,
                        height: 28.0,
                      ),
              ),
              new BottomNavigationBarItem(
                title: new Text(
                  '我的',
                  style: TextStyle(
                      color: _currentIndex == 3
                          ? Color(0xFF46c01b)
                          : Color(0xff999999)),
                ),
                backgroundColor:
                    _currentIndex == 3 ? Color(0xFF46c01b) : Color(0xff999999),
                icon: _currentIndex == 3
                    ? Image.asset(
                        'images/profile_pressed.png',
                        width: 32.0,
                        height: 28.0,
                      )
                    : Image.asset(
                        'images/profile_normal.png',
                        width: 32.0,
                        height: 28.0,
                      ),
              ),
            ]),
        body: currentPage(),
      ),
    );
  }
}
