import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './XD_Profil2.dart';
import './XD_TopKomponente.dart';

class XD_Profil1 extends StatelessWidget {
  XD_Profil1({
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
            Pin(start: 0.0, end: 0.0),
            Pin(size: 70.0, middle: 0.2328),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Profil2(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0x1affffff),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 70.0, middle: 0.3501),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x1affffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 70.0, middle: 0.4673),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0x1affffff),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 172.0, middle: 0.3695),
            Pin(size: 20.0, middle: 0.2535),
            child: Text(
              'Account - Einstellungen',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 151.0, middle: 0.3348),
            Pin(size: 20.0, middle: 0.3617),
            child: Text(
              'Benachrichtigungen ',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 98.0, middle: 0.2708),
            Pin(size: 20.0, middle: 0.4699),
            child: Text(
              'Privatsphäre ',
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
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
