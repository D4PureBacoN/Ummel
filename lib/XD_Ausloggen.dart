import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './XD_Profil2.dart';
import './XD_TopKomponente.dart';

class XD_Ausloggen extends StatelessWidget {
  XD_Ausloggen({
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
            Pin(start: 18.0, end: 17.0),
            Pin(size: 99.0, end: 85.0),
            child:
                // Adobe XD layer: 'Ändern' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 45.0, start: 0.0),
                  child: ElevatedButton(
                    onPressed: () {
                      //Bestätigen Action
                    },
                    child: Text('AUSLOGGEN'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffffb420),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 45.0, end: 0.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XD_Profil2(),
                      ),
                    ],
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => XD_Profil2()));
                        //Bestätigen Action
                      },
                      child: Text('ABBRECHEN'),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xffffb420),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 108.0, middle: 0.5169),
            Pin(size: 28.0, middle: 0.2786),
            child: Text(
              'Ausloggen',
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
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
