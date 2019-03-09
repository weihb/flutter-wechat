import 'package:flutter/material.dart';
import './Message.dart';
import 'package:date_format/date_format.dart';
import '../common/AndroidToast.dart';
import '../common/ClickFeedback.dart';

class MessageItem extends StatelessWidget {
  final Message message;
  MessageItem(this.message);
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      // color: Colors.white,
      height: 64.0,
      child: ClickFeedback(
        // padding: const EdgeInsets.all(0.0),
        onPressed: (){
          Toast.show('${message?.title}');
        },
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(left: 13.0, right: 13.0),
              child: Image.network(
                message.avatar,
                width: 48.0,
                height: 48.0,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    message.title,
                    style: TextStyle(fontSize: 16.0, color: Color(0xFF353535)),
                    maxLines: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                  ),
                  Text(
                    message.subTitle,
                    style: TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            Container(
              alignment: AlignmentDirectional.topStart,
              margin: const EdgeInsets.only(right: 12.0, top: 12.0),
              child: Text(
                formatDate(message.time, [HH, ':', nn, ':', ss]).toString(),
                style: TextStyle(fontSize: 14.0, color: Color(0xFFa9a9a9)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
