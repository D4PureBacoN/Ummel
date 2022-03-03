import 'package:app_ummel/XD_Ausloggen.dart';
import 'package:app_ummel/XD_Beschmutzername.dart';
import 'package:app_ummel/XD_Email.dart';
import 'package:app_ummel/XD_Lschen.dart';
import 'package:app_ummel/XD_Passwort.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

import 'XD_Anmelden.dart';
import 'XD_Favoriten.dart';
import 'XD_Home.dart';

class XD_Profil2 extends StatelessWidget {
  XD_Profil2({
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
                          builder: (context) => XD_Anmelden()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Anmelden',
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
                          builder: (context) => XD_Beschmutzername()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Benutzernamen ändern',
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
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => XD_Email()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'E-Mail ändern',
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
            top: 210.0,
            child: Stack(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => XD_Passwort()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Passwort ändern',
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
            top: 280.0,
            child: Stack(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => XD_Ausloggen()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Abmelden',
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
            top: 350.0,
            child: Stack(
              children: <Widget>[
                ElevatedButton.icon(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => XD_Lschen()));
                      //Bestätigen Action
                    },
                    label: Text(
                      'Account löschen',
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
