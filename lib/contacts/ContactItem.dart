import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: const EdgeInsets.only(left: 14.0, right: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border:
            Border(bottom: BorderSide(width: 0.5, color: Color(0xFFd9d9d9))),
      ),
      height: 52.0,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            'http://img5.duitang.com/uploads/item/201504/17/20150417H5529_JuTGY.jpeg',
            width: 36.0,
            height: 36.0,
          ),
          Container(
            margin: const EdgeInsets.only(left: 12.0),
            child: Text(
              'Alan',
              style: TextStyle(fontSize: 18.0, color: Color(0xFF353535)),
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
