import 'package:flutter/material.dart';
import './ContactItem.dart';

class ContactHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(children: <Widget>[
      ContactItem(titleName: '新的朋友', imageName: 'images/icon_addfriend.png'),
      ContactItem(titleName: '群聊', imageName: 'images/icon_qunliao.png'),
      ContactItem(titleName: '公众号', imageName: 'images/icon_public.png'),
    ]);
  }
}
