import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  @override
  State<Search> createState() => new SearchState();
}

class SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: const InputDecoration(
              labelText: '搜索', labelStyle: TextStyle(color: Colors.white)),
        ),
        actions: <Widget>[
          Icon(Icons.mic),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top: 50.0),
              child: Text('搜索指定文章'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('朋友圈'),
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(width: 1.0, color: Color(0xFFd9d9d9)),
                      right: BorderSide(width: 1.0, color: Color(0xFFd9d9d9)),
                    ),
                  ),
                  child: Text('文章'),
                ),
                Text('公众号'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text('小说'),
                Text('音乐'),
                Text('表情'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
