import 'package:app_ummel/XD_Profil2.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

import 'XD_Favoriten.dart';
import 'XD_Home.dart';
import 'XD_MeinProfil.dart';

class XD_Profil1 extends StatelessWidget {
  XD_Profil1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      appBar: AppBar(
        title: IconButton(
          icon: Image.asset("images/UmmelLogo.png"),
          iconSize: 50,
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => XD_Home()));
            //Bestätigen Action
          },
        ),
        backgroundColor: Color(0xffffb420),
        actions: <Widget>[
          IconButton(
            icon: Icon(ummel_icons.favblume_leer),
            iconSize: 35,
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => XD_Favoriten()));
              //Bestätigen Action
            },
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          Positioned(
            top: 0.0,
            child: Stack(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => XD_Profil2()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Account - Einstellungen',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: const Size(500, 70),
                      primary: Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                    icon:
                        Icon(Icons.person, color: Color(0xffffffff), size: 35)),
              ],
            ),
          ),
          Positioned(
            top: 70.0,
            child: Stack(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => XD_MeinProfil()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Benachrichtigungen',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: const Size(500, 70),
                      primary: Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                    icon:
                        Icon(Icons.person, color: Color(0xffffffff), size: 35)),
              ],
            ),
          ),
          Positioned(
            top: 140.0,
            child: Stack(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => XD_MeinProfil()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Privatsphäre',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      fixedSize: const Size(500, 70),
                      primary: Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                    icon:
                        Icon(Icons.person, color: Color(0xffffffff), size: 35)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
