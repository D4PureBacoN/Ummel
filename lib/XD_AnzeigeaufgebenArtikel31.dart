import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './XD_Chat12.dart';
import './XD_TopKomponente.dart';

class XD_AnzeigeaufgebenArtikel31 extends StatelessWidget {
  XD_AnzeigeaufgebenArtikel31({
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
            Pin(size: 196.0, middle: 0.5028),
            Pin(size: 38.0, middle: 0.5008),
            child: Text(
              'Galerie öffnen',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 30,
                color: const Color(0xffffb420),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          XD_TopKomponente(),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 45.0, end: 85.0),
            child:
                // Adobe XD layer: 'Bestätigen' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Chat12(),
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
        ],
      ),
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
