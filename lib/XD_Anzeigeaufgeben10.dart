import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_AnzeigeanschauenEigeneAnzeige.dart';
import './XD_TopKomponente.dart';

class XD_Anzeigeaufgeben10 extends StatelessWidget {
  XD_Anzeigeaufgeben10({
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
            Pin(size: 97.0, middle: 0.5),
            Pin(size: 25.0, middle: 0.2773),
            child: Text.rich(
              TextSpan(
                style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20,
                  color: const Color(0xffffffff),
                ),
                children: [
                  TextSpan(
                    text: 'Artikelinfo',
                    style: TextStyle(
                      color: const Color(0xffffb420),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              textHeightBehavior:
                  TextHeightBehavior(applyHeightToFirstAscent: false),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 45.0, end: 85.0),
            child:
                // Adobe XD layer: 'Hochladen' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XD_AnzeigeanschauenEigeneAnzeige(),
                      ),
                    ],
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
                ),
                Pinned.fromPins(
                  Pin(size: 79.0, middle: 0.4981),
                  Pin(size: 20.0, middle: 0.52),
                  child: Text(
                    'Hochladen',
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
          Pinned.fromPins(
            Pin(start: 30.0, end: 29.0),
            Pin(size: 141.0, middle: 0.5684),
            child:
                // Adobe XD layer: 'Beschreibung' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Suchbegriff ' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: TextFormField(
                          cursorColor: Color(0xffffb420),
                          decoration: InputDecoration(
                              labelText: "Beschreibung",
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 29.0),
            Pin(size: 40.0, middle: 0.7368),
            child:
                // Adobe XD layer: 'Adresse' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: TextFormField(
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        labelText: "Adresse",
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
                Pinned.fromPins(
                  Pin(size: 20.0, end: 20.5),
                  Pin(size: 20.0, middle: 0.5),
                  child:
                      // Adobe XD layer: 'Symbol' (group)
                      Stack(
                    children: <Widget>[
                      Transform.translate(
                        offset: Offset(3.5, 3.5),
                        child: Container(
                          width: 13.0,
                          height: 13.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                                Radius.elliptical(9999.0, 9999.0)),
                            border: Border.all(
                                width: 2.0, color: const Color(0xffffc857)),
                          ),
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.5263),
                        Pin(size: 4.0, start: 0.0),
                        child: SvgPicture.string(
                          _svg_f5hfaw,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 4.0, end: 0.0),
                        Pin(size: 1.0, middle: 0.5526),
                        child: SvgPicture.string(
                          _svg_5dlebi,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 1.0, middle: 0.5263),
                        Pin(size: 4.0, end: 0.0),
                        child: SvgPicture.string(
                          _svg_e17dtw,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromPins(
                        Pin(size: 4.0, start: 0.0),
                        Pin(size: 1.0, middle: 0.5526),
                        child: SvgPicture.string(
                          _svg_s8u8si,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 30.0, end: 29.0),
            Pin(size: 40.0, middle: 0.378),
            child:
                // Adobe XD layer: 'Titel' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child:
                      // Adobe XD layer: 'Suchbegriff ' (group)
                      Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: TextFormField(
                          cursorColor: Color(0xffffb420),
                          decoration: InputDecoration(
                              labelText: "Titel",
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
const String _svg_f5hfaw =
    '<svg viewBox="313.5 467.5 1.0 4.0" ><path transform="translate(313.5, 467.5)" d="M 0 4 L 0 0" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_5dlebi =
    '<svg viewBox="319.5 478.0 4.0 1.0" ><path transform="translate(319.5, 478.0)" d="M 0 0 L 4 0" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_e17dtw =
    '<svg viewBox="313.5 483.5 1.0 4.0" ><path transform="translate(313.5, 483.5)" d="M 0 0 L 0 4" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_s8u8si =
    '<svg viewBox="303.5 478.0 4.0 1.0" ><path transform="translate(303.5, 478.0)" d="M 4 0 L 0 0" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
