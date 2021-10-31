import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

class XD_Navigation extends StatefulWidget {
  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<XD_Navigation> {
  int _currentIndex = 0;
  /**
      final NavigationTabs = [
      Center(child: XD_Home()),
      Center(child: XD_Suche()),
      Center(child: XD_Anzeigeaufgeben()),
      Center(child: XD_Nachrichten()),
      Center(child: XD_Profil()),
      ];
   **/
  final NavigationTabs = [
    Center(child: Text('Home')),
    Center(child: Text('Suche')),
    Center(child: Text('Anzeigeaufgeben')),
    Center(child: Text('Nachrichten')),
    Center(child: Text('Profil')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Navigationbar'),
      ),
      body: NavigationTabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          iconSize: 32,
          selectedFontSize: 10,
          unselectedFontSize: 10,
          unselectedItemColor: Color(0xffffb420),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(ummel_icons.startseite),
              label: 'Startseite',
            ),
            BottomNavigationBarItem(
              icon: Icon(ummel_icons.suchen),
              label: 'Suchen',
            ),
            BottomNavigationBarItem(
              icon: Icon(ummel_icons.hinzufuegen),
              label: 'Anzeigen',
            ),
            BottomNavigationBarItem(
              icon: Icon(ummel_icons.nachrichten),
              label: 'Nachrichten',
            ),
            BottomNavigationBarItem(
              icon: Icon(ummel_icons.profil),
              label: 'Profil',
            ),
          ],
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          }),
    );
  }
}
