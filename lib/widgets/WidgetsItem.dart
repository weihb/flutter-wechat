import 'package:flutter/material.dart';
import '../common/ClickFeedback.dart';

class ItemWidget extends StatelessWidget {
  final String title;
  final String describe;
  final String routeName;
  final String imageUrl;
  final String imagePath;
  ItemWidget(
      {Key key,
      this.title,
      this.describe,
      this.routeName,
      this.imageUrl,
      this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      margin: const EdgeInsets.all(5.0),
      child: ClickFeedback(
        onPressed: () {
          if (routeName != null) {
            Navigator.pushNamed(context, routeName);
            // Navigator.push(context, new MaterialPageRoute(builder: (context) {
            //   return new BasicsWeigets();
            // }));
          } else {
            print('缺少跳转的路由名字！');
          }
        },
        child: Container(
          width: MediaQuery.of(context).size.width / 2 - 20,
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                margin: const EdgeInsets.all(10.0),
                height: 100.0,
                alignment: Alignment.center,
                child: imagePath != null
                    ? Image.asset(imagePath)
                    : Image.network(imageUrl),
              ),
              Text(
                '$title',
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                '$describe',
                style: TextStyle(
                    color: Colors.blue,
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          decoration: BoxDecoration(
              border: Border(
            top: BorderSide(width: 1.0, color: Color(0xFFFF9c9c9c)),
            left: BorderSide(width: 1.0, color: Color(0xFFFF9c9c9c)),
            right: BorderSide(width: 1.0, color: Color(0xFFFF9c9c9c)),
            bottom: BorderSide(width: 1.0, color: Color(0xFFFF9c9c9c)),
          )),
        ),
      ),
    );
  }
}
