import 'package:flutter/material.dart';
import './ContactItem.dart';
import 'dart:math';

class Contacts extends StatefulWidget {
  @override
  ContactState createState() => new ContactState();
}

class ContactState extends State<Contacts> {
  List<String> siderBarKey = [
    "#",
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
    "Z"
  ];
  int currentPosition = 0;
  ScrollController _getScrollController() {
    var controller = new ScrollController();
    controller.addListener(() {
      var pixels = controller.offset;
      var newPosition = (pixels / 84).floor();
      print('pixels:$pixels');
      print('newPosition:$newPosition');
      if (newPosition != currentPosition) {
        setState(() {
          currentPosition = newPosition;
        });
      }
    });
    return controller;
  }

  _siderBarController() {
    var controller = new ScrollController();
    controller.addListener(() {
      var pixels = controller.offset;
      var newPosition = (pixels / 84).floor();
      print('pixels:$pixels');
      print('newPosition:$newPosition');
      if (newPosition != currentPosition) {
        setState(() {
          currentPosition = newPosition;
        });
      }
    });
    return controller;
  }

  bool _shouldShowHeader(int position) {
    if (position < 0) {
      return false;
    }

    if (position == 0) {
      return false;
    }

    if (position != 0 &&
        names[position].substring(0, 1) !=
            names[position - 1].substring(0, 1)) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        ListView.builder(
          itemCount: names.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  Offstage(
                    offstage: _shouldShowHeader(index),
                    child: Container(
                      height: 32.0,
                      padding: const EdgeInsets.only(left: 14.0),
                      color: Colors.grey[300],
                      alignment: Alignment.centerLeft,
                      child: Text(
                        names[index].substring(0, 1),
                        style:
                            TextStyle(fontSize: 14.0, color: Color(0xff909090)),
                      ),
                    ),
                  ),
                  Container(
                      height: 52.0,
                      color: Colors.white,
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding:
                                const EdgeInsets.only(left: 14.0, right: 12.0),
                            child: CircleAvatar(
                              backgroundColor:
                                  Color(new Random().nextInt(0xFFFFFFFF)),
                              child: Text(names[index].substring(0, 1)),
                            ),
                          ),
                          Text(
                            names[index],
                            style: TextStyle(
                                fontSize: 18.0, color: Color(0xff353535)),
                          ),
                        ],
                      ))
                ],
              ),
            );
          },
        ),
        // Positioned(
        //   top: 0.0,
        //   child: Container(
        //     width: MediaQuery.of(context).size.width,
        //     height: 32.0,
        //     padding: const EdgeInsets.only(left: 14.0),
        //     color: Colors.grey[300],
        //     alignment: Alignment.centerLeft,
        //     child: Text(
        //       names[currentPosition].substring(0, 1),
        //       style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
        //     ),
        //   ),
        // ),

        Positioned(
          right: 0.0,
          child: Container(
            alignment: Alignment.center,
            height: MediaQuery.of(context).size.height,
            width: 32.0,
            child: ListView.builder(
              controller: _siderBarController(),
              itemCount: siderBarKey.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  height:
                      (MediaQuery.of(context).size.height-160) / siderBarKey.length,
                  child: Text(siderBarKey[index]),
                );
              },
            ),
          ),
        ),
      ],
    ));
  }
}

const names = const <String>[
  'Annie',
  'Arianne',
  'Bertie',
  'Bettina',
  'Bradly',
  'Caridad',
  'Carline',
  'Cassie',
  'Chloe',
  'Christin',
  'Clotilde',
  'Dahlia',
  'Dana',
  'Dane',
  'Darline',
  'Deena',
  'Delphia',
  'Donny',
  'Echo',
  'Else',
  'Ernesto',
  'Fidel',
  'Gayla',
  'Grayce',
  'Henriette',
  'Hermila',
  'Hugo',
  'Irina',
  'Ivette',
  'Jeremiah',
  'Jerica',
  'Joan',
  'Johnna',
  'Jonah',
  'Joseph',
  'Junie',
  'Linwood',
  'Lore',
  'Louis',
  'Merry',
  'Minna',
  'Mitsue',
  'Napoleon',
  'Paris',
  'Ryan',
  'Salina',
  'Shantae',
  'Sonia',
  'Taisha',
  'Zula',
];
