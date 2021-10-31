import 'package:app_ummel/XD_Anzeigeaufgeben.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/XD_Nachrichten.dart';
import 'package:app_ummel/XD_Profil.dart';
import 'package:app_ummel/XD_Suche.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

class XD_Navigation1 extends StatefulWidget {
  @override
  State createState() {
    return _NavigationState();
  }
}

class _NavigationState extends State {
  int _currentIndex = 0;
  final List _children = [
    XD_Home(),
    XD_Suche(),
    XD_Anzeigeaufgeben(),
    XD_Nachrichten(),
    XD_Profil(),
  ];
  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Navigationbar')),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped, // new
        currentIndex: _currentIndex, // new
        type: BottomNavigationBarType.fixed,
        iconSize: 32,
        selectedFontSize: 10,
        unselectedFontSize: 10,
        unselectedItemColor: Color(0xffffb420),
        items: <BottomNavigationBarItem>[
          new BottomNavigationBarItem(
            icon: Icon(ummel_icons.startseite),
            title: Text('Startseite'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(ummel_icons.suchen),
            title: Text('Suchen'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(ummel_icons.hinzufuegen),
            title: Text('Anzeigen'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(ummel_icons.nachrichten),
            title: Text('Nachrichten'),
          ),
          new BottomNavigationBarItem(
            icon: Icon(ummel_icons.profil),
            title: Text('Profil'),
          ),
        ],
      ),
    );
  }
}
