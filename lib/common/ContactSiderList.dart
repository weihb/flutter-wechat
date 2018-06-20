import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import '../contacts/ContactObject.dart';

class ContactSiderList extends StatefulWidget {
  final List<ContactObject> items;
  final IndexedWidgetBuilder headerBuilder;
  final IndexedWidgetBuilder itemBuilder;
  final IndexedWidgetBuilder sectionBuilder;
  final double headerHight;
  final double itemHight;
  final double seationHight;

  ContactSiderList({
    Key key,
    @required this.items,
    this.headerHight,
    this.headerBuilder,
    @required this.itemBuilder,
    @required this.sectionBuilder,
    @required this.itemHight,
    @required this.seationHight,
  }) : super(key: key);

  @override
  ContactState createState() => new ContactState();
}

class ContactState extends State<ContactSiderList> implements SectionIndexer {
  double siderBarKeyHight = 17.0; //siderbar行高： siderBarKeyHight =
  // ((MediaQuery.of(context).size.height - 120) / siderBarKey.length)
  //     .roundToDouble();
  Color _pressColor = Colors.transparent; //siderbar背景颜色，默认透明
  bool isShowCenterIndex = true;
  int siderBarIndex = 0;

  final ScrollController _scrollController = new ScrollController();
  bool _onNotification(ScrollNotification notification) {
    //监听listview滑动事件
    // var data = notification.toString();
    // if (notification is ScrollStartNotification) {
    //   print('开始滚动。。。$data');
    // }
    // if (notification is ScrollUpdateNotification) {
    //   // print('滚动中。。。$data');
    //   print('位置1：${_scrollController.position.maxScrollExtent}');
    //   print('位置2：${_scrollController.offset}');
    // }
    // if (notification is ScrollEndNotification) {
    //   print('滚动结束。。。$data');
    // }
    // if (notification is OverscrollNotification) {
    //   print('滚动越界啦。。。$data');
    // }
    return true;
  }

  _isShowHeaderView(index) {
    if (index == 0 && widget.headerHight != null) {
      return Offstage(
        offstage: false,
        child: widget.headerBuilder(context, index),
      );
    }
    return Container();
  }

  GlobalKey _itemKey = new GlobalKey();
  double itemHight;
  _getItemHight() {
    //获取item的行高
    if (_itemKey?.currentContext != null) {
      itemHight = _itemKey?.currentContext?.size?.height;
    }
    return itemHight;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        NotificationListener(
          onNotification: _onNotification,
          child: ListView.builder(
            controller: _scrollController,
            // list里面的内容不足一屏时，list都可以滑动
            physics: const AlwaysScrollableScrollPhysics(),
            itemCount: widget.items.length,
            itemBuilder: (BuildContext context, int index) {
              return Container(
                alignment: Alignment.centerLeft,
                child: Column(
                  children: <Widget>[
                    _isShowHeaderView(index),
                    Offstage(
                      offstage: _shouldShowHeader(index),
                      child: widget.sectionBuilder(context, index),
                    ),
                    Column(
                      key: index == 0 ? _itemKey : null,
                      children: <Widget>[
                        widget.itemBuilder(context, index),
                      ],
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        Positioned(
          right: 0.0,
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: widget.seationHight,
            color: _pressColor,
            child: GestureDetector(
              onTapDown: (TapDownDetails t) {
                //手指按下
                _scrollToPosition(t.globalPosition.dy);
                setState(() {
                  _pressColor = Colors.grey;
                });
              },
              onTapUp: (TapUpDetails t) {
                //手指弹起
                setState(() {
                  _pressColor = Colors.transparent;
                });
              },
              onVerticalDragStart: (DragStartDetails details) {
                //开始垂直滑动
                setState(() {
                  _pressColor = Colors.grey;
                  isShowCenterIndex = false;
                });
              },
              onVerticalDragEnd: (DragEndDetails details) {
                //结束垂直滑动
                setState(() {
                  _pressColor = Colors.transparent;
                  isShowCenterIndex = true;
                });
              },
              onVerticalDragUpdate: (DragUpdateDetails details) {
                //手指垂直滑动时
                _scrollToPosition(details.globalPosition.dy);
              },
              child: ListView.builder(
                controller: ScrollController(), //必须添加controller
                itemCount: siderBarKey.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    alignment: Alignment.center,
                    height: siderBarKeyHight,
                    child: Text(siderBarKey[index]),
                  );
                },
              ),
            ),
          ),
        ),
        Offstage(
          offstage: isShowCenterIndex,
          child: Center(
            child: Container(
              decoration: BoxDecoration(
                color:
                    Color(0x60000000), //设置decoration，必须去掉Container的color属性，不然报错
                borderRadius: BorderRadius.all(new Radius.circular(5.0)), //圆角
              ),
              width: 80.0,
              height: 80.0,
              child: Center(
                child: Text(
                  siderBarKey[siderBarIndex],
                  style: TextStyle(fontSize: 48.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }

  @override
  listScrollToPosition(int index) {
    //重要方法：根据滑动的字母返回listview中的位置。
    for (var i = 0; i < widget.items.length; i++) {
      if (siderBarKey[index] == "☆" || siderBarKey[index] == "↑") {
        _scrollController.jumpTo(0.0);
        setState(() {});
        return -1;
      } else if (widget.items[i].seationKey == siderBarKey[index]) {
        return i;
      } 
    }
    return -1;
  }

  bool _shouldShowHeader(int position) {
    //重要方法：判断是否显示sectionbar， 返回false即显示
    if (position < 0) {
      return false;
    }

    if (position == 0) {
      return false;
    }

    if (position != 0 &&
        widget.items[position].seationKey !=
            widget.items[position - 1].seationKey) {
      return false;
    }
    return true;
  }

/*
 * 关键方法，计算并使listview滑动到具体位置。
 */
  _scrollToPosition(double dy) {
    //屏幕高度-顶部任务栏和导航高度=siderbar的高度
    int y = dy.floor() - 68;
    //滑动的index，通过siderBarKey[index]获得当前滑到的字母
    int index = (y / siderBarKeyHight).floor();

    //siderBarIndex：记录上次滑动位置，不等于上次的滑动位置就刷新listview
    if (index == siderBarIndex) {
      return;
    }
    if (index <= 0) {
      siderBarIndex = 0;
    } else if (index > 0 && index < siderBarKey.length - 1) {
      siderBarIndex = index;
    } else if (index > siderBarKey.length - 1) {
      siderBarIndex = siderBarKey.length - 1;
    }
    //listview中应该滑动的位置
    int listIndex = this.listScrollToPosition(siderBarIndex);
    if (listIndex == -1) return;
    print('listIndex:$listIndex');
    //获取该位置前有多少个字母头部Sectionitem
    int sectionSum = 0;
    for (var i = 0; i < listIndex; i++) {
      if (!_shouldShowHeader(i)) {
        sectionSum++;
      }
    }

    // 计算jumpTo的具体位置 = 头部的高度+总items的高度+总sectionSum高度
    double endPosition = (widget.headerHight ?? 0) +
        (sectionSum * widget.seationHight + listIndex * _getItemHight())
            .roundToDouble();
    //最终滑动的位置必须小于listview的最大高度
    if (endPosition > _scrollController.position.maxScrollExtent) {
      endPosition = _scrollController.position.maxScrollExtent;
    }
    _scrollController.jumpTo(endPosition);
    setState(() {}); //必须setDate界面才会刷新
  }
}

abstract class SectionIndexer {
  listScrollToPosition(int index);
}

const siderBarKey = <String>[
  "↑",
  "☆",
  "A",
  "B",
  "C",
  "D",
  "E",
  "F",
  "G",
  "H",
  "I",
  "J",
  "K",
  "L",
  "M",
  "N",
  "O",
  "P",
  "Q",
  "R",
  "S",
  "T",
  "U",
  "V",
  "W",
  "X",
  "Y",
  "Z",
  "#"
];
