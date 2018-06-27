import 'package:flutter/material.dart';
// import './splashPage.dart';
import './app.dart';
import './widgets/MaterialWeigets.dart';
import './widgets/BasicsWeigets.dart';
import './widgets/FlutterUI.dart';
import './found/CallNative.dart';
import './home/search.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

/*
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
void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'wechat',
      theme: mDefaultTheme,
      routes: <String, WidgetBuilder>{
        'app': (BuildContext context) => new App(),
        'flutterUI': (BuildContext context) => new FlutterUI(),
        'flutterTest': (BuildContext context) => new CallNative(),
        '/widget': (_) => new WebviewScaffold(
            url: "https://flutter.io",
            appBar: new AppBar(
              title: new Text("Widget webview"),
            ),
            withZoom: true,
            withLocalStorage: true),
        'search': (BuildContext context) => new Search(),
        'BasicsWeigets': (BuildContext context) => new BasicsWeigets(),
        'MaterialWeigets': (BuildContext context) => new MaterialWeigets(),
      },
      home: new App(), //new SplashPage(),//启动页
    ));

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
  cardColor: Color(0xff393a3f), //卡片颜色
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
