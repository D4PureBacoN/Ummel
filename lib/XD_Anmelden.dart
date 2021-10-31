import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_Profil2.dart';
import './XD_TopKomponente.dart';

class XD_Anmelden extends StatelessWidget {
  XD_Anmelden({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          XD_TopKomponente(),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: SvgPicture.string(
              _svg_94tbul,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 40.0, middle: 0.4928),
            child:
                // Adobe XD layer: 'Suchbegriff' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: TextFormField(
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        labelText: "E-Mail",
                        labelStyle: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                          color: const Color(0x80ffc857),
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.black38),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 33.0),
            Pin(size: 54.0, middle: 0.3589),
            child: Text(
              'Ergänze deine E-Mail-Adresse sowie ein Passwort, \num deinen Account auf mehreren Geräten nutzen\nzu können.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 40.0, middle: 0.5949),
            child:
                // Adobe XD layer: 'Suchbegriff' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: TextFormField(
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        labelText: "Passwort",
                        labelStyle: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                          color: const Color(0x80ffc857),
                          fontWeight: FontWeight.w500,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black45),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          borderSide: BorderSide(color: Colors.black38),
                        )),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 104.0, middle: 0.4797),
            Pin(size: 28.0, middle: 0.2786),
            child: Text(
              'Anmelden',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 22,
                color: const Color(0xffffb420),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 45.0, end: 85.0),
            // Adobe XD layer: 'Bestätigen' (group)
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => XD_Profil2()));
                      //Bestätigen Action
                    },
                    child: Text('BESTÄTIGEN'),
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
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 40.0, middle: 0.697),
            child: TextFormField(
              cursorColor: Color(0xffffb420),
              decoration: InputDecoration(
                  labelText: "Passwort wiederholen",
                  labelStyle: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 20,
                    color: const Color(0x80ffc857),
                    fontWeight: FontWeight.w500,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black45),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: BorderSide(color: Colors.black38),
                  )),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_94tbul =
    '<svg viewBox="0.0 0.0 375.0 667.0" ><path transform="translate(0.0, 0.0)" d="M 0 0 L 375 0 L 375 667 L 0 667 L 0 0 Z" fill="#ffffff" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
