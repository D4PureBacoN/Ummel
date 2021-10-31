import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './XD_Profil.dart';
import './XD_TopKomponente.dart';

class XD_Standort extends StatelessWidget {
  XD_Standort({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          XD_TopKomponente(),
          Pinned.fromPins(
            Pin(start: 18.0, end: 18.0),
            Pin(size: 45.0, end: 85.0),
            child:
                // Adobe XD layer: 'Suchen' (group)
                PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Profil(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => XD_Profil()));
                        //Bestätigen Action
                      },
                      child: Text('Ändern'),
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
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 40.0, middle: 0.5949),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 0.2, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 40.0, middle: 0.4928),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 0.2, color: const Color(0xff000000)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 144.0, middle: 0.5022),
            Pin(size: 28.0, middle: 0.2786),
            child: Text(
              'Dein Standort',
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
            Pin(size: 55.0, start: 32.0),
            Pin(size: 20.0, middle: 0.493),
            child: Text(
              'Straße ',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0x80ffc857),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 86.0, start: 32.0),
            Pin(size: 20.0, middle: 0.592),
            child: Text(
              'Postleitzahl',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0x80ffc857),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_94tbul =
    '<svg viewBox="0.0 0.0 375.0 667.0" ><path transform="translate(0.0, 0.0)" d="M 0 0 L 375 0 L 375 667 L 0 667 L 0 0 Z" fill="#ffffff" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_2svnml =
    '<svg viewBox="-45.0 0.0 339.0 45.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(-45.0, 0.0)" d="M 7.976470470428467 0 L 331.0235290527344 0 C 335.4288024902344 0 339 3.581721782684326 339 8 L 339 37 C 339 41.41827774047852 335.4288024902344 45 331.0235290527344 45 L 7.976470470428467 45 C 3.571187257766724 45 0 41.41827774047852 0 37 L 0 8 C 0 3.581721782684326 3.571187257766724 0 7.976470470428467 0 Z" fill="#ffb420" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
