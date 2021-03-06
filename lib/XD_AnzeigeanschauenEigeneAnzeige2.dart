import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_AnzeigeanschauenEigeneAnzeige.dart';
import './XD_MeinProfil.dart';
import './XD_TopKomponente.dart';

class XD_AnzeigeanschauenEigeneAnzeige2 extends StatelessWidget {
  XD_AnzeigeanschauenEigeneAnzeige2({
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
                height: 728.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 1.0, end: 0.0),
                      Pin(start: 6.0, end: -123.0),
                      child: Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: const Color(0xffffffff),
                              ),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(size: 51.0, end: 68.0),
                            child: Container(
                              decoration: BoxDecoration(),
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 45.0, start: 15.0),
                            Pin(size: 45.0, end: 71.0),
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
                            Pin(size: 72.0, middle: 0.2368),
                            Pin(size: 19.0, end: 84.0),
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
                          Pinned.fromPins(
                            Pin(size: 106.0, start: 23.0),
                            Pin(size: 15.0, middle: 0.7952),
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
                            Pin(size: 91.0, start: 21.0),
                            Pin(size: 36.0, middle: 0.6647),
                            child: Text(
                              'Beschreibung \n',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                color: const Color(0xff000000),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 21.0, end: 28.0),
                            Pin(size: 54.0, middle: 0.7255),
                            child: Text(
                              'Ich habe hier ein richtig h??bsches blaues Shirt in M \nzu verschenken. Abzuholen in Stadtfeld Ost. \nBei Fragen meldet euch gern bei mir :)',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 14,
                                color: const Color(0xff000000),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(start: 21.0, end: 54.0),
                            Pin(size: 25.0, middle: 0.5548),
                            child: Text(
                              'Ganz h??bsches blaues Shirt in M ',
                              style: TextStyle(
                                fontFamily: 'Quicksand',
                                fontSize: 20,
                                color: const Color(0xffffb420),
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ),
                          Pinned.fromPins(
                            Pin(size: 37.0, end: 5.0),
                            Pin(size: 43.0, start: 9.5),
                            child:
                                // Adobe XD layer: 'Einstellungen' (group)
                                Stack(
                              children: <Widget>[
                                Pinned.fromPins(
                                  Pin(start: 0.0, end: 0.0),
                                  Pin(start: 0.0, end: 0.0),
                                  child: SvgPicture.string(
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
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 2.0),
                      Pin(size: 360.0, start: 6.0),
                      child:
                          // Adobe XD layer: 'Platzhalter' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.fill,
                            colorFilter: new ColorFilter.mode(
                                Colors.black.withOpacity(0.3), BlendMode.dstIn),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: const Color(0x0c000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 171.0, middle: 0.4951),
                      Pin(size: 30.0, middle: 0.42),
                      child:
                          // Adobe XD layer: 'Abbrechen' (group)
                          PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () =>
                                XD_AnzeigeanschauenEigeneAnzeige(),
                          ),
                        ],
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
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
                              Pin(size: 70.0, middle: 0.5),
                              Pin(size: 18.0, middle: 0.5),
                              child: Text(
                                'Abbrechen',
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
                    ),
                    Pinned.fromPins(
                      Pin(size: 171.0, middle: 0.4951),
                      Pin(size: 30.0, middle: 0.3563),
                      child:
                          // Adobe XD layer: 'L??schen' (group)
                          PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XD_MeinProfil(),
                          ),
                        ],
                        child: Stack(
                          children: <Widget>[
                            Pinned.fromPins(
                              Pin(start: 0.0, end: 0.0),
                              Pin(start: 0.0, end: 0.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
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
                              Pin(size: 53.0, middle: 0.5),
                              Pin(size: 18.0, middle: 0.5),
                              child: Text(
                                'L??schen',
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
                    ),
                    Pinned.fromPins(
                      Pin(start: 24.0, end: 26.0),
                      Pin(size: 25.0, middle: 0.2287),
                      child: Text(
                        'M??chtest du diesen Artikel l??schen?',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 20,
                          color: const Color(0xff000000),
                          shadows: [
                            Shadow(
                              color: const Color(0x29000000),
                              offset: Offset(0, 3),
                              blurRadius: 6,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ],
                ),
              ),
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
