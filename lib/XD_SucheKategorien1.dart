import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_Suche.dart';
import './XD_TopKomponente.dart';

class XD_SucheKategorien1 extends StatelessWidget {
  XD_SucheKategorien1({
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
            Pin(size: 375.0, middle: 0.5),
            Pin(start: 90.0, end: 56.0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: 375.0,
                height: 850.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 18.0, end: 17.0),
                      Pin(size: 45.0, end: -329.0),
                      child:
                          // Adobe XD layer: 'Bestätigen' (group)
                          PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XD_Suche(),
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
                                  color: const Color(0xffffb420),
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
                              Pin(size: 78.0, middle: 0.5),
                              Pin(size: 20.0, middle: 0.52),
                              child: Text(
                                'Bestätigen',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 16,
                                  color: const Color(0xffffffff),
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, middle: 0.5163),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, end: -274.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, end: -212.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, end: -150.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, end: -26.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, end: 36.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, middle: 0.7865),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, middle: 0.6514),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, end: -88.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 60.0, start: 53.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XD_Suche(),
                          ),
                        ],
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffc857),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, middle: 0.2462),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(size: 62.0, middle: 0.3813),
                      child: Container(
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 55.0, middle: 0.2344),
                      Pin(size: 20.0, middle: 0.6387),
                      child: Text(
                        'Technik',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 125.0, middle: 0.3),
                      Pin(size: 20.0, start: 72.0),
                      child: Text(
                        'Haus und Garten',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xffffffff),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 112.0, middle: 0.2852),
                      Pin(size: 20.0, middle: 0.3912),
                      child: Text(
                        'Sport & Freizeit',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 65.0, middle: 0.2419),
                      Pin(size: 20.0, middle: 0.2675),
                      child: Text(
                        'Kleidung',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 97.0, middle: 0.2698),
                      Pin(size: 20.0, middle: 0.515),
                      child: Text(
                        'Unterhaltung',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 91.0, middle: 0.2641),
                      Pin(size: 20.0, middle: 0.7625),
                      child: Text(
                        'Baby & Kind',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 44.0, middle: 0.2266),
                      Pin(size: 20.0, end: -253.0),
                      child: Text(
                        'Pfand',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 46.0, start: 0.0),
                      Pin(size: 52.0, start: 0.0),
                      child: PageLink(
                        links: [
                          PageLinkInfo(
                            transition: LinkTransition.Fade,
                            ease: Curves.easeOut,
                            duration: 0.3,
                            pageBuilder: () => XD_Suche(),
                          ),
                        ],
                        child: Container(
                          decoration: BoxDecoration(
                            color: const Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 8.0, start: 19.0),
                      Pin(size: 21.0, start: 17.5),
                      child:
                          // Adobe XD layer: 'layer1' (group)
                          Stack(
                        children: <Widget>[
                          Pinned.fromPins(
                            Pin(start: 0.0, end: 0.0),
                            Pin(start: 0.0, end: 0.0),
                            child:
                                // Adobe XD layer: 'path835' (shape)
                                SvgPicture.string(
                              _svg_ce8hze,
                              allowDrawingOutsideViewBox: true,
                              fit: BoxFit.fill,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 94.0, middle: 0.2669),
                      Pin(size: 20.0, end: 57.0),
                      child: Text(
                        'Lebensmittel',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 121.0, middle: 0.2953),
                      Pin(size: 20.0, end: -5.0),
                      child: Text(
                        'Bauen & Basteln',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 68.0, middle: 0.2443),
                      Pin(size: 20.0, end: -67.0),
                      child: Text(
                        'Kosmetik',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 78.0, middle: 0.2525),
                      Pin(size: 20.0, end: -129.0),
                      child: Text(
                        'Tierbedarf',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 69.0, middle: 0.2451),
                      Pin(size: 20.0, end: -191.0),
                      child: Text(
                        'Fahrzeug',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 16,
                          color: const Color(0xff000000),
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

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
