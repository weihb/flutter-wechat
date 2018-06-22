import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './ContactSiderList.dart';
import './ContactItem.dart';
import './ContactHeader.dart';
import './ContactObject.dart';

class Contacts extends StatefulWidget {
  @override
  ContactState createState() => new ContactState();
}

class ContactState extends State<Contacts> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: ContactSiderList(
      items: contactData,
      headerBuilder: (BuildContext context, int index) {
        return Container(
          child: ContactHeader(),
        );
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(
          color: Colors.white,
          alignment: Alignment.centerLeft,
          child: ContactItem(item:contactData[index]),
        );
      },
      sectionBuilder: (BuildContext context, int index) {
        return Container(
          height: 32.0,
          padding: const EdgeInsets.only(left: 14.0),
          color: Colors.grey[300],
          alignment: Alignment.centerLeft,
          child: Text(
            contactData[index].seationKey,
            style: TextStyle(fontSize: 14.0, color: Color(0xff909090)),
          ),
        );
      },
    ));
  }
}

// const names = const <String>[
//   'Annie',
//   'Arianne',
//   'Bertie',
//   'Bettina',
//   'Bradly',
//   'Caridad',
//   'Carline',
//   'Cassie',
//   'Chloe',
//   'Christin',
//   'Clotilde',
//   'Dahlia',
//   'Dana',
//   'Dane',
//   'Darline',
//   'Deena',
//   'Delphia',
//   'Donny',
//   'Echo',
//   'Else',
//   'Ernesto',
//   'Fidel',
//   'Gayla',
//   'Grayce',
//   'Henriette',
//   'Hermila',
//   'Hugo',
//   'Irina',
//   'Ivette',
//   'Jeremiah',
//   'Jerica',
//   'Joan',
//   'Johnna',
//   'Jonah',
//   'Joseph',
//   'Junie',
//   'Linwood',
//   'Lore',
//   'Louis',
//   'Merry',
//   'Minna',
//   'Mitsue',
//   'Napoleon',
//   'Paris',
//   'Ryan',
//   'Salina',
//   'Shantae',
//   'Sonia',
//   'Taisha',
//   'Zula',
// ];
