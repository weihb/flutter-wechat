import 'package:flutter/material.dart';
import './WeigetData.dart';
import './WidgetsItem.dart';

class MaterialWeigets extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<MaterialWeigets> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('Material Components'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10.0),
        child: Wrap(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'App结构和导航',
                style: TextStyle(fontSize: 30.0),
              ),
            ),
            ItemWidget(
              title: 'Scaffold',
              describe:
                  'Material Design布局结构的基本实现。此类提供了用于显示drawer、snackbar和底部sheet的API。',
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
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '按钮',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            ItemWidget(
              title: 'RaisedButton',
              describe: 'Material Design中的button， 一个凸起的材质矩形按钮',
              imagePath: 'images/button.png',
            ),
            ItemWidget(
              title: 'FloatingActionButton',
              describe: '一个圆形图标按钮，它悬停在内容之上，以展示应用程序中的主要动作。',
              imagePath: 'images/FloatingActionButton.png',
            ),
            ItemWidget(
              title: 'FlatButton',
              describe: '一个扁平的Material按钮',
              imagePath: 'images/FlatButton.png',
            ),
            ItemWidget(
              title: 'IconButton',
              describe: '一个Material图标按钮，点击时会有水波动画',
              imagePath: 'images/IconButton.png',
            ),
            ItemWidget(
              title: 'PopupMenuButton',
              describe: '当菜单隐藏式，点击或调用onSelected时显示一个弹出式菜单列表',
              imagePath: 'images/PopupMenuButton.png',
            ),
            ItemWidget(
              title: 'ButtonBar',
              describe: '水平排列的按钮组',
              imagePath: 'images/flutter.png',
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '输入框和选择框',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            ItemWidget(
              title: 'TextField',
              describe: '文本输入框',
              imagePath: 'images/TextField.png',
            ),
            ItemWidget(
              title: 'Checkbox',
              describe: '复选框，允许用户从一组中选择多个选项。',
              imagePath: 'images/Checkbox.png',
            ),
            ItemWidget(
              title: 'Radio',
              describe: '单选框，允许用户从一组中选择一个选项。',
              imagePath: 'images/Radio.png',
            ),
            ItemWidget(
              title: 'Switch',
              describe: 'On/off 用于切换一个单一状态',
              imagePath: 'images/Switch.png',
            ),
            ItemWidget(
              title: 'Slider',
              describe: '滑块，允许用户通过滑动滑块来从一系列值中选择。',
              imagePath: 'images/Slider.png',
            ),
            ItemWidget(
              title: 'Date & Time Pickers',
              describe: '日期&时间选择器',
              imagePath: 'images/TimePicker.png',
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '对话框、Alert、Panel',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            ItemWidget(
              title: 'SimpleDialog',
              describe: '简单对话框可以显示附加的提示或操作',
              imagePath: 'images/SimpleDialog.png',
            ),
            ItemWidget(
              title: 'AlertDialog',
              describe: '一个会中断用户操作的对话款，需要用户确认',
              imagePath: 'images/AlertDialog.png',
            ),
            ItemWidget(
              title: 'BottomSheet',
              describe:
                  'BottomSheet是一个从屏幕底部滑起的列表（以显示更多的内容）。你可以调用showBottomSheet()或showModalBottomSheet弹出',
              imagePath: 'images/BottomSheet.png',
            ),
            ItemWidget(
              title: 'ExpansionPanel',
              describe: '扩展面板包含创建流，允许对元素进行轻量级的编辑。expanpanel小部件实现这个组件。',
              imagePath: 'images/ExpansionPanel.png',
            ),
            ItemWidget(
              title: 'SnackBar',
              describe: '具有可选操作的轻量级消息提示，在屏幕的底部显示。',
              imagePath: 'images/SnackBar.png',
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '信息展示',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            ItemWidget(
              title: 'Image',
              describe: '一个显示图片的widget',
              imagePath: 'images/image.png',
            ),
            ItemWidget(
              title: 'Icon',
              describe: 'A Material Design icon.',
              imagePath: 'images/md_icon.png',
            ),
            ItemWidget(
              title: 'Chip',
              describe: '标签，一个Material widget。 它可以将一个复杂内容实体展现在一个小块中，如联系人。',
              imagePath: 'images/Chip.png',
            ),
            ItemWidget(
              title: 'Tooltip',
              describe: '一个文本提示工具，帮助解释一个按钮或其他用户界面，当widget长时间按下时（当用户采取其他适当操作时）显示一个提示标签。',
              imagePath: 'images/Tooltip.png',
            ),
            ItemWidget(
              title: 'DataTable',
              describe: '数据表显示原始数据集。它们通常出现在桌面企业产品中。DataTable Widget实现这个组件',
              imagePath: 'images/DataTable.png',
            ),
            ItemWidget(
              title: 'Card',
              describe: '一个 Material Design 卡片。拥有一个圆角和阴影',
              imagePath: 'images/Card.png',
            ),
            ItemWidget(
              title: 'LinearProgressIndicator',
              describe: '一个线性进度条，另外还有一个圆形进度条CircularProgressIndicator',
              imagePath: 'images/LinearProgressIndicator.png',
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    '布局',
                    style: TextStyle(fontSize: 30.0),
                  ),
                ),
              ],
            ),
            ItemWidget(
              title: 'ListTile',
              describe: '一个固定高度的行，通常包含一些文本，以及一个行前或行尾图标',
              imagePath: 'images/ListTile.png',
            ),
            ItemWidget(
              title: 'Stepper',
              describe: '一个Material Design 步骤指示器，显示一系列步骤的过程',
              imagePath: 'images/Stepper.png',
            ),
            ItemWidget(
              title: 'Divider',
              describe: '一个逻辑1像素厚的水平分割线，两边都有填充',
              imagePath: 'images/Divider.png',
            ),
          ],
        ),
      ),
    );
  }
}
