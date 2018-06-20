import 'package:flutter/material.dart';
import './home/home.dart';
import './contacts/contacts.dart';
import './found/found.dart';
import './me/me.dart';

class App extends StatefulWidget {
  @override
  MainState createState() => new MainState();
}

class MainState extends State<App> {
  var _currentIndex = 0;

  currentPage() {
    switch (_currentIndex) {
      case 0:
        return new Home(
          title: 'Flutter UI',
        );
        break;
      case 1:
        return new Contacts();
        break;
      case 2:
        return new Found();
        break;
      case 3:
        return new Me();
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('微信'),
        actions: <Widget>[
          Icon(
            Icons.search,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30.0, right: 20.0),
            child: Icon(
              Icons.add,
            ),
          ),
        ],
      ),
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            new BottomNavigationBarItem(
              title: new Text(
                '首页',
                style: TextStyle(
                    color: _currentIndex == 0
                        ? Color(0xFF46c01b)
                        : Color(0xff999999)),
              ),
              icon: _currentIndex == 0
                  ? Image.asset(
                      'images/weixin_pressed.png',
                      width: 32.0,
                      height: 28.0,
                    )
                  : Image.asset(
                      'images/weixin_normal.png',
                      width: 32.0,
                      height: 28.0,
                    ),
            ),
            new BottomNavigationBarItem(
              title: new Text(
                '通讯录',
                style: TextStyle(
                    color: _currentIndex == 1
                        ? Color(0xFF46c01b)
                        : Color(0xff999999)),
              ),
              backgroundColor:
                  _currentIndex == 1 ? Color(0xFF46c01b) : Color(0xff999999),
              icon: _currentIndex == 1
                  ? Image.asset(
                      'images/contact_list_pressed.png',
                      width: 32.0,
                      height: 28.0,
                    )
                  : Image.asset(
                      'images/contact_list_normal.png',
                      width: 32.0,
                      height: 28.0,
                    ),
            ),
            new BottomNavigationBarItem(
              title: new Text(
                '发现',
                style: TextStyle(
                    color: _currentIndex == 2
                        ? Color(0xFF46c01b)
                        : Color(0xff999999)),
              ),
              backgroundColor:
                  _currentIndex == 2 ? Color(0xFF46c01b) : Color(0xff999999),
              icon: _currentIndex == 2
                  ? Image.asset(
                      'images/find_pressed.png',
                      width: 32.0,
                      height: 28.0,
                    )
                  : Image.asset(
                      'images/find_normal.png',
                      width: 32.0,
                      height: 28.0,
                    ),
            ),
            new BottomNavigationBarItem(
              title: new Text(
                '我的',
                style: TextStyle(
                    color: _currentIndex == 3
                        ? Color(0xFF46c01b)
                        : Color(0xff999999)),
              ),
              backgroundColor:
                  _currentIndex == 3 ? Color(0xFF46c01b) : Color(0xff999999),
              icon: _currentIndex == 3
                  ? Image.asset(
                      'images/profile_pressed.png',
                      width: 32.0,
                      height: 28.0,
                    )
                  : Image.asset(
                      'images/profile_normal.png',
                      width: 32.0,
                      height: 28.0,
                    ),
            ),
          ]),
      body: currentPage(),
    );
  }
}
