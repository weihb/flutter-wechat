import 'package:flutter/material.dart';
import './WidgetsItem.dart';

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
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(10.0),
        mainAxisSpacing: 10.0,
        crossAxisSpacing: 10.0,
        childAspectRatio: 0.7,
        crossAxisCount: 2,
        children: <Widget>[
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
            describe: '一个Material Design应用程序栏，由工具栏和其他可能的widget（如TabBar和FlexibleSpaceBar）组成。',
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
        ],
      ),
    );
  }
}


