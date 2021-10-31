import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_Profil2.dart';
import './XD_TopKomponente.dart';

class XD_Lschen extends StatelessWidget {
  XD_Lschen({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          XD_TopKomponente(),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(start: 0.0, end: 0.0),
            child: SvgPicture.string(
              _svg_94tbul,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
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
                    child: Text('ACCOUNT LÖSCHEN'),
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffff5757),
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
            Pin(size: 46.0, start: 0.0),
            Pin(size: 56.0, start: 90.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Profil2(),
                ),
              ],
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
                    Pin(size: 8.0, middle: 0.5),
                    Pin(size: 21.0, middle: 0.5),
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
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 38.0, end: 37.0),
            Pin(size: 56.0, middle: 0.2913),
            child: Text(
              'Möchtest du deinen Account \nwirklich löschen?',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 22,
                color: const Color(0xffffb420),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_94tbul =
    '<svg viewBox="0.0 0.0 375.0 667.0" ><path transform="translate(0.0, 0.0)" d="M 0 0 L 375 0 L 375 667 L 0 667 L 0 0 Z" fill="#ffffff" stroke="#ffffff" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_gv6fng =
    '<svg viewBox="18.0 334.0 340.0 45.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(18.0, 334.0)" d="M 8 0 L 332 0 C 336.4182739257812 0 340 3.581721782684326 340 8 L 340 37 C 340 41.41827774047852 336.4182739257812 45 332 45 L 274.1224670410156 45 L 8 45 C 3.581721782684326 45 0 41.41827774047852 0 37 L 0 8 C 0 3.581721782684326 3.581721782684326 0 8 0 Z" fill="#fd703c" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
