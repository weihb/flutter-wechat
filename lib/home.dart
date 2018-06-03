import 'package:flutter/material.dart';
import './widgets/BasicsWeigets.dart';

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
          title: new Text('Flutter学习大纲'),
          titleSpacing: 50.0, //标题间距
          centerTitle: true,
          //   actions: <Widget>[
          //     new GestureDetector(
          //         child: new Container(
          //           child: new Icon(
          //             Icons.map,
          //             color: Colors.green,
          //             semanticLabel: '地图',
          //             textDirection: TextDirection.rtl,
          //           ),
          //           padding: const EdgeInsets.all(10.0),
          //         ),
          //         onTap: () {
          //           showDialog(
          //               context: context,
          //               builder: (BuildContext context) {
          //                 return new AlertDialog(
          //                   title: new Text('点击事件'),
          //                   content: new Text('点击了地图按钮'),
          //                 );
          //               });
          //         }),
          //     new Icon(
          //       Icons.menu,
          //       color: Colors.black,
          //     ),
          //     new Icon(
          //       Icons.more,
          //       color: Colors.yellow,
          //     )
          //   ],
          //   leading: new CircleAvatar(
          //     backgroundColor: Colors.pink[200],
          //     child: new Text('head'),
          //     foregroundColor: Colors.blue,
          //   ),
          //   flexibleSpace: new Text('flexibleSpace'),
          //   bottom: new PreferredSize(
          //       child: new Text('PreferredSize'),
          //       preferredSize: new Size(20.0, 20.0)),
        ),
        bottomNavigationBar: new BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
              print('index: $index');
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
        body: new GridView.count(
          primary: false,
          padding: const EdgeInsets.all(10.0),
          mainAxisSpacing: 10.0,
          crossAxisSpacing: 10.0,
          crossAxisCount: 2,
          children: <Widget>[
            new ItemWidget(
              title: '基础组件',
              describe: '在构建您的第一个Flutter应用程序之前，您绝对需要了解这些widget。',
              routeName: 'BasicsWeigets',
            ),
            new ItemWidget(
              title: 'Material Components',
              describe: '实现了Material Design 指南的视觉、效果、motion-rich的widget。',
              routeName: 'A',
            ),
            new ItemWidget(
              title: 'Cupertino(iOS风格的widget)',
              describe: '用于当前iOS设计语言的美丽和高保真widget。',
            ),
            new ItemWidget(
              title: 'Layout',
              describe: '排列其它widget的columns、rows、grids和其它的layouts。',
            ),
            new ItemWidget(
              title: 'Text',
              describe: '文本显示和样式',
            ),
            new ItemWidget(
              title: 'Assets、图片、Icons',
              describe: '管理assets, 显示图片和Icon。',
            ),
            new ItemWidget(
              title: ' Input',
              describe: 'Material Components 和 Cupertino中获取用户输入的widget。',
            ),
            new ItemWidget(
              title: '动画和Motion',
              describe: '在您的应用中使用动画。查看Flutter中的动画总览',
            ),
            new ItemWidget(
              title: '交互模型',
              describe: '响应触摸事件并将用户路由到不同的页面视图（View）。',
            ),
            new ItemWidget(
              title: '样式',
              describe: '管理应用的主题，使应用能够响应式的适应屏幕尺寸或添加填充。',
            ),
            new ItemWidget(
              title: '绘制和效果',
              describe: 'Widget将视觉效果应用到其子组件，而不改变它们的布局、大小和位置。',
            ),
            new ItemWidget(
              title: 'Async',
              describe: 'Flutter应用的异步模型',
            ),
            new ItemWidget(
              title: '滚动',
              describe: '滚动一个拥有多个子组件的父组件',
            ),
            new ItemWidget(
              title: '辅助功能',
              describe: '给你的App添加辅助功能(这是一个正在进行的工作)',
            ),
          ],
        ));
  }
}

class ItemWidget extends StatelessWidget {
  final String title;
  final String describe;
  final String routeName;
  ItemWidget({Key key, this.title, this.describe, this.routeName})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new GestureDetector(
      onTap: () {
        if (routeName != null) {
          Navigator.pushNamed(context, routeName);
          // Navigator.push(context, new MaterialPageRoute(builder: (context) {
          //   return new BasicsWeigets();
          // }));
        } else {
          print('您需要传参数：路由名');
        }
      },
      child: new Container(
        padding: const EdgeInsets.all(10.0),
        child: new Column(
          children: <Widget>[
            new Text(
              '$title',
              style: new TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold),
            ),
            new Text(
              '$describe',
              style: new TextStyle(
                  color: Colors.blue,
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        decoration: const BoxDecoration(
            border: const Border(
          top: const BorderSide(width: 1.0, color: const Color(0xFFFF9c9c9c)),
          left: const BorderSide(width: 1.0, color: const Color(0xFFFF9c9c9c)),
          right: const BorderSide(width: 1.0, color: const Color(0xFFFF9c9c9c)),
          bottom:
              const BorderSide(width: 1.0, color: const Color(0xFFFF9c9c9c)),
        )),
      ),
    );
  }
}
