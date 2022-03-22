import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

import './XD_AnzeigeaufgebenArtikel1.dart';

class XD_Anzeigeaufgeben extends StatelessWidget {
  XD_Anzeigeaufgeben({
    Key? key,
  }) : super(key: key);
  @override
  int n = 0;
  int strassenfund = 0;
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
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 120.0,
            child: Text(
              'Was möchtest du hinzufügen?',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 22,
                color: const Color(0xffffb420),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 250.0,
            child: Text(
              'Du hast einen Artikel, den du verschenken möchtest?',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 270.0,
            child: ElevatedButton(
              onPressed: () {
                strassenfund = 0;
                n = 1;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => XD_AnzeigeaufgebenArtikel1(
                          strassenfund: strassenfund,
                          n: n,
                        )));
                //Bestätigen Action
              },
              child: Text('Artikel'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 45),
                primary: Color(0xffffb420),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
          ),
          Positioned(
            top: 380.0,
            child: Text(
              'Du hast einen Schatz auf der Straße entdeckt \noder möchtest eine Verschenkenbox markieren?',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Positioned(
            top: 417.0,
            child: ElevatedButton(
              onPressed: () {
                strassenfund = 1;
                n = 0;
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => XD_AnzeigeaufgebenArtikel1(
                          strassenfund: strassenfund,
                          n: n,
                        )));
                //Bestätigen Action
              },
              child: Text('Straßenfund'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 45),
                primary: Color(0xffffb420),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
