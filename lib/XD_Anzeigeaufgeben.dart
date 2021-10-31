import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './XD_AnzeigeaufgebenArtikel1.dart';
import './XD_AnzeigeaufgebenStraenfund1.dart';
import './XD_TopKomponente.dart';

class XD_Anzeigeaufgeben extends StatelessWidget {
  XD_Anzeigeaufgeben({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          XD_TopKomponente(),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 45.0, middle: 0.7412),
            child:
                // Adobe XD layer: 'Straßenfund' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 350.0, middle: 0.4982),
                  Pin(size: 45.0, middle: 0.52),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    XD_AnzeigeaufgebenStraenfund1()));
                            //Bestätigen Action
                          },
                          child: Text('Straßenfund'),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffffb420),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 45.0, middle: 0.5),
            child:
                // Adobe XD layer: 'Artikel' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 350.0, middle: 0.4982),
                  Pin(size: 45.0, middle: 0.52),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    XD_AnzeigeaufgebenArtikel1()));
                            //Bestätigen Action
                          },
                          child: Text('Artikel'),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xffffb420),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 49.0, end: 42.0),
            Pin(size: 25.0, middle: 0.2773),
            child: Text(
              'Was möchtest du hinzufügen?',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20,
                color: const Color(0xffffb420),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 16.0, end: 15.0),
            Pin(size: 18.0, middle: 0.4438),
            child: Text(
              'Du hast einen Artikel, den du verschenken möchtest? ',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 33.0, end: 32.0),
            Pin(size: 36.0, middle: 0.6656),
            child: Text(
              'Du hast einen Schatz auf der Straße entdeckt \noder möchtest eine Verschenkenbox markieren?',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
