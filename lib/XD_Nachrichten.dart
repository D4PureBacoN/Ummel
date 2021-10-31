import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_Chat1.dart';
import './XD_TopKomponente.dart';

class XD_Nachrichten extends StatelessWidget {
  XD_Nachrichten({
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
            Pin(start: -0.5, end: 0.5),
            Pin(size: 78.3, start: 76.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Chat1(),
                ),
              ],
              child: SvgPicture.string(
                _svg_ac0ic2,
                allowDrawingOutsideViewBox: true,
                fit: BoxFit.fill,
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, start: 7.5),
            Pin(size: 54.0, start: 86.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x4dffffff),
                border: Border.all(width: 1.0, color: const Color(0x4d707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 167.0, middle: 0.3389),
            Pin(size: 18.0, middle: 0.188),
            child: Text(
              'Jawohl brudi, bis in 10 min',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 72.0, middle: 0.2327),
            Pin(size: 20.0, start: 93.0),
            child: Text(
              'Angela M.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 68.0, end: 13.5),
            Pin(size: 18.0, start: 86.0),
            child: Text(
              'vor 30 min',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 54.0, start: 7.5),
            Pin(size: 54.0, middle: 0.2675),
            child: Container(
              decoration: BoxDecoration(
                borderRadius:
                    BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                color: const Color(0x4dffffff),
                border: Border.all(width: 1.0, color: const Color(0x4d707070)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 258.0, end: 46.5),
            Pin(size: 18.0, middle: 0.3082),
            child: Text(
              'Hallo, ich hätte mal eine Frage zu dem ...',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 66.0, middle: 0.2282),
            Pin(size: 20.0, middle: 0.2643),
            child: Text(
              'Philipp B.',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 76.0, end: 5.5),
            Pin(size: 18.0, middle: 0.2527),
            child: Text(
              'vor 2 Tagen',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 1.0, middle: 0.232),
            child: SvgPicture.string(
              _svg_qhj608,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ac0ic2 =
    '<svg viewBox="-0.5 76.0 375.0 78.3" ><path transform="translate(-0.5, 76.0)" d="M 0 0 L 375 0 L 375 78.337158203125 L 0 78.337158203125 L 0 0 Z" fill="#ffffff" fill-opacity="0.2" stroke="none" stroke-width="1" stroke-opacity="0.2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_qhj608 =
    '<svg viewBox="0.0 154.5 375.0 1.0" ><path transform="translate(0.0, 154.5)" d="M 0 0 L 375 0" fill="none" fill-opacity="0.1" stroke="#000000" stroke-width="0.5" stroke-opacity="0.1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
