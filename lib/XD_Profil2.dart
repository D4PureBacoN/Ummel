import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './XD_Anmelden.dart';
import './XD_Ausloggen.dart';
import './XD_Beschmutzername.dart';
import './XD_Email.dart';
import './XD_Lschen.dart';
import './XD_Passwort.dart';
import './XD_TopKomponente.dart';

class XD_Profil2 extends StatelessWidget {
  XD_Profil2({
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
                  pageBuilder: () => XD_Anmelden(),
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
            Pin(size: 70.0, middle: 0.3484),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Beschmutzername(),
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
            Pin(size: 70.0, middle: 0.4673),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Email(),
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
            Pin(size: 70.0, middle: 0.5846),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Passwort(),
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
            Pin(size: 70.0, middle: 0.7018),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Ausloggen(),
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
            Pin(size: 78.0, middle: 0.2525),
            Pin(size: 20.0, middle: 0.6862),
            child: Text(
              'Ausloggen',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 70.0, middle: 0.8191),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Lschen(),
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
            Pin(size: 74.0, middle: 0.2492),
            Pin(size: 20.0, middle: 0.2535),
            child: Text(
              'Anmelden',
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
              'Email ändern',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 174.0, middle: 0.3731),
            Pin(size: 20.0, middle: 0.3617),
            child: Text(
              'Benutzernamen ändern',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 124.0, middle: 0.2988),
            Pin(size: 20.0, middle: 0.5781),
            child: Text(
              'Passwort ändern',
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
            Pin(size: 20.0, middle: 0.7944),
            child: Text(
              'Account löschen',
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
