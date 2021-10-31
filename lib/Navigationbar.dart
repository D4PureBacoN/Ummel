import 'package:app_ummel/XD_Anzeigeaufgeben.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/XD_Nachrichten.dart';
import 'package:app_ummel/XD_Profil.dart';
import 'package:app_ummel/XD_Suche.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class Navigationbar extends StatelessWidget {
  const Navigationbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white, // Default is Colors.white.
      handleAndroidBackButtonPress: true, // Default is true.
      resizeToAvoidBottomInset:
          true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true, // Default is true.
      hideNavigationBarWhenKeyboardShows:
          true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style6, // Choose the nav bar style with this property.
    );
  }
}

List<Widget> _buildScreens() {
  return [
    XD_Home(),
    XD_Suche(),
    XD_Anzeigeaufgeben(),
    XD_Nachrichten(),
    XD_Profil(),
  ];
}

List<PersistentBottomNavBarItem> _navBarsItems() {
  return [
    PersistentBottomNavBarItem(
      iconSize: 35,
      icon: Icon(ummel_icons.startseite),
      title: (' '),
      activeColorPrimary: Color(0xffffb420),
    ),
    PersistentBottomNavBarItem(
      iconSize: 35,
      icon: Icon(ummel_icons.suchen),
      title: (' '),
      activeColorPrimary: Color(0xffffb420),
    ),
    PersistentBottomNavBarItem(
      iconSize: 45,
      icon: Icon(ummel_icons.hinzufuegen),
      title: (' '),
      activeColorPrimary: Color(0xffffb420),
    ),
    PersistentBottomNavBarItem(
      iconSize: 35,
      icon: Icon(ummel_icons.nachrichten),
      title: (' '),
      activeColorPrimary: Color(0xffffb420),
    ),
    PersistentBottomNavBarItem(
      iconSize: 35,
      icon: Icon(ummel_icons.profil),
      title: (' '),
      activeColorPrimary: Color(0xffffb420),
    ),
  ];
}
