import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_Anzeigeanschauen.dart';
import './XD_Anzeigeanschauen3.dart';
import './XD_Blume.dart';
import './XD_Chat1.dart';
import './XD_MeinProfil.dart';
import './XD_TopKomponente.dart';

class XD_Anzeigeanschauen1 extends StatelessWidget {
  XD_Anzeigeanschauen1({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          XD_TopKomponente(),
          Pinned.fromPins(
            Pin(size: 377.0, middle: 0.5),
            Pin(start: 0.0, end: 56.0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: 377.0,
                height: 747.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 0.0),
                      Pin(start: -18.0, end: -118.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 1.0),
                      Pin(size: 51.0, end: -31.0),
                      child:
                          // Adobe XD layer: 'Profil' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child:
                                // Adobe XD layer: 'Profil des Anzeigen…' (shape)
                                PageLink(
                              links: [
                                PageLinkInfo(
                                  transition: LinkTransition.Fade,
                                  ease: Curves.easeOut,
                                  duration: 0.3,
                                  pageBuilder: () => XD_MeinProfil(),
                                ),
                              ],
                              child: Container(
                                decoration: BoxDecoration(),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 45.0, start: 16.0),
                            Pin(start: 3.0, end: 3.0),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                    Radius.elliptical(9999.0, 9999.0)),
                                color: const Color(0xffffffff),
                                border: Border.all(
                                    width: 1.0, color: const Color(0xff707070)),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 72.0, middle: 0.2401),
                            Pin(size: 19.0, middle: 0.5),
                            child: Text(
                              'Angela M. ',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 15,
                                color: const Color(0xffffb420),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 22.0, end: 28.0),
                      Pin(size: 122.0, end: 47.0),
                      child:
                          // Adobe XD layer: 'Beschreibung' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(size: 106.0, start: 2.0),
                            Pin(size: 15.0, end: 0.0),
                            child: Text(
                              '39108 Stadtfeld Ost',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 12,
                                color: const Color(0xff737373),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 91.0, start: 0.0),
                            Pin(size: 36.0, start: 0.0),
                            child: Text(
                              'Beschreibung \n',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                color: const Color(0xff737373),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 54.0, middle: 0.4265),
                            child: Text(
                              'Ich habe hier ein richtig hübsches blaues Shirt in M \nzu verschenken. Abzuholen in Stadtfeld Ost. \nBei Fragen meldet euch gern bei mir :)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                color: const Color(0xff000000),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 22.0, end: 54.0),
                      Pin(size: 25.0, middle: 0.6348),
                      child: Text(
                        'Ganz hübsches blaues Shirt in M ',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                          color: const Color(0xffffb420),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 1.0),
                      Pin(size: 360.0, start: -18.0),
                      child:
                          // Adobe XD layer: 'Platzhalter' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 55.0, end: 11.0),
                      Pin(size: 54.0, middle: 0.5045),
                      child:
                          // Adobe XD layer: 'Blume' (component)
                          PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XD_Anzeigeanschauen(),
                          ),
                        ],
                        child: XD_Blume(),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 37.0, end: 5.0),
                      Pin(size: 43.0, start: -8.5),
                      child:
                          // Adobe XD layer: 'Einstellungen' (group)
                          PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XD_Anzeigeanschauen3(),
                          ),
                        ],
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child:
                                  // Adobe XD layer: 'Feld' (shape)
                                  SvgPicture.string(
                                _svg_gafptq,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 7.0, middle: 0.4998),
                              Pin(size: 7.0, start: 6.0),
                              child: SvgPicture.string(
                                _svg_3ucz0c,
                                allowDrawingOutsideViewBox: true,
                                fit: BoxFit.fill,
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 7.0, middle: 0.4998),
                              Pin(size: 7.0, middle: 0.4722),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Pinned.fromPins(
                              Pin(size: 7.0, middle: 0.4998),
                              Pin(size: 7.0, middle: 0.7778),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0xffffffff),
                                  boxShadow: [
                                    BoxShadow(
                                      color: const Color(0x29000000),
                                      offset: Offset(0, 3),
                                      blurRadius: 6,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 17.0, end: 18.0),
            Pin(size: 45.0, end: 85.0),
            child:
                // Adobe XD layer: 'Anfragen' (group)
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
                                builder: (context) => XD_Chat1()));
                            //Bestätigen Action
                          },
                          child: Text('Anfragen'),
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
        ],
      ),
    );
  }
}

const String _svg_gafptq =
    '<svg viewBox="328.0 -13.0 37.0 43.0" ><path transform="translate(328.01, -13.0)" d="M 0 0 L 23.1822338104248 0 L 36.98590087890625 0 L 36.98590087890625 43 L 0 43 L 0 0 Z" fill="none" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_3ucz0c =
    '<svg viewBox="343.0 -7.0 7.0 7.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(343.0, -7.0)" d="M 3.5 0 C 5.432996273040771 0 7 1.567003488540649 7 3.5 C 7 5.432996273040771 5.432996273040771 7 3.5 7 C 1.567003488540649 7 0 5.432996273040771 0 3.5 C 0 1.567003488540649 1.567003488540649 0 3.5 0 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
