import 'package:flutter/material.dart';
import './WidgetsItem.dart';

var basicsData = <Widget>[
  ItemWidget(
    title: 'Container',
    describe: '一个拥有绘制、定位、调整大小的 widget。',
    imagePath: 'images/container.png',
  ),
  ItemWidget(
    title: 'Row',
    describe: '在水平方向上排列子widget的列表。',
    imagePath: 'images/row.png',
  ),
  ItemWidget(
    title: 'Column',
    describe: '在垂直方向上排列子widget的列表。',
    imagePath: 'images/column.png',
  ),
  ItemWidget(
    title: 'Image',
    describe: '一个显示图片的widget',
    imagePath: 'images/image.png',
  ),
  ItemWidget(
    title: 'Text',
    describe: '单一格式的文本',
    imagePath: 'images/text.png',
  ),
  ItemWidget(
    title: 'Icon',
    describe: 'A Material Design icon.',
    imagePath: 'images/md_icon.png',
  ),
  ItemWidget(
    title: 'RaisedButton',
    describe: 'Material Design中的button， 一个凸起的材质矩形按钮',
    imagePath: 'images/button.png',
  ),
  ItemWidget(
    title: 'Scaffold',
    describe: 'Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。',
    imagePath: 'images/scaffold.png',
  ),
  ItemWidget(
    title: 'Appbar',
    describe:
        '一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成。',
    imagePath: 'images/appbar.png',
  ),
  ItemWidget(
    title: 'FlutterLogo',
    describe: 'Flutter logo, 以widget形式. 这个widget遵从IconTheme。',
    imagePath: 'images/flutter.png',
  ),
  ItemWidget(
    title: 'Placeholder',
    describe: '一个绘制了一个盒子的的widget，代表日后有widget将会被添加到该盒子中',
    imagePath: 'images/flutter.png',
  ),
];

var materialData = <Widget>[
  Padding(
    padding: const EdgeInsets.all(10.0),
    child: Text(
      'App结构和导航',
      style: TextStyle(fontSize: 30.0),
    ),
  ),
  ItemWidget(
    title: 'Scaffold',
    describe: 'Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。',
    imagePath: 'images/scaffold.png',
  ),
  ItemWidget(
    title: 'Appbar',
    describe:
        '一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成。',
    imagePath: 'images/appbar.png',
  ),
  ItemWidget(
    title: 'BottomNavigationBar',
    describe: '底部导航条，可以很容易地在tap之间切换和浏览顶级视图。',
    imagePath: 'images/BottomNavigationBar.png',
  ),
  ItemWidget(
    title: 'TabBar',
    describe: '一个显示水平选项卡的Material Design widget。',
    imagePath: 'images/tabbar.png',
  ),
  ItemWidget(
    title: 'TabBarView',
    describe: '显示与当前选中的选项卡相对应的页面视图。通常和TabBar一起使用。',
    imagePath: 'images/TabBarView.png',
  ),
  ItemWidget(
    title: 'MaterialApp',
    describe: '一个方便的widget，它封装了应用程序实现Material Design所需要的一些widget。',
    imagePath: 'images/MaterialApp.png',
  ),
  ItemWidget(
    title: 'WidgetsApp',
    describe: '一个方便的类，它封装了应用程序通常需要的一些widget。',
    imagePath: 'images/flutter.png',
  ),
  ItemWidget(
    title: 'Drawer',
    describe: '从Scaffold边缘水平滑动以显示应用程序中导航链接的Material Design面板。',
    imagePath: 'images/Drawer.png',
  ),
];
