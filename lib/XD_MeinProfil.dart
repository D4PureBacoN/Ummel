import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_TopKomponente.dart';

class XD_MeinProfil extends StatelessWidget {
  XD_MeinProfil({
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
            Pin(start: 0.0, end: 25.0),
            child: SingleChildScrollView(
              child: SizedBox(
                width: 375.0,
                height: 794.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: 0.0),
                      Pin(start: 76.0, end: -174.9),
                      child: SvgPicture.string(
                        _svg_4k78lm,
                        allowDrawingOutsideViewBox: true,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Pinned.fromPins(
                      Pin(size: 52.0, end: 12.5),
                      Pin(size: 18.0, middle: 0.3718),
                      child: Text(
                        '4 Artikel',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 14,
                          color: const Color(0xff000000),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Transform.translate(
                      offset: Offset(138.0, 104.3),
                      child: SizedBox(
                        width: 101.0,
                        height: 120.0,
                        child:
                            // Adobe XD layer: 'Nutzerin' (group)
                            Stack(
                          children: <Widget>[
                            Transform.translate(
                              offset: Offset(7.7, 0.0),
                              child: Container(
                                width: 85.7,
                                height: 85.7,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.all(
                                      Radius.elliptical(9999.0, 9999.0)),
                                  color: const Color(0x80ffffff),
                                  border: Border.all(
                                      width: 0.5,
                                      color: const Color(0x80707070)),
                                ),
                              ),
                            ),
                            Transform.translate(
                              offset: Offset(0.0, 91.7),
                              child: Text(
                                'Angela M.',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 22,
                                  color: const Color(0xffffb420),
                                  fontWeight: FontWeight.w500,
                                ),
                                textAlign: TextAlign.left,
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
        ],
      ),
    );
  }
}

const String _svg_4k78lm =
    '<svg viewBox="0.0 76.0 375.0 740.9" ><path transform="translate(0.0, 76.0)" d="M 0 0 L 375 0 L 375 740.9140625 L 0 740.9140625 L 0 0 Z" fill="#ffffff" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
