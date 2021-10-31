import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_Anzeigeanschauen.dart';
import './XD_Chat11.dart';
import './XD_TopKomponente.dart';

class XD_Chat1 extends StatelessWidget {
  XD_Chat1({
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
            Pin(size: 49.0, end: 56.0),
            child:
                // Adobe XD layer: 'Schreiben' (group)
                Stack(
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
                  Pin(size: 309.0, end: 8.0),
                  Pin(start: 7.0, end: 6.0),
                  child:
                      // Adobe XD layer: 'Tippfeld' (shape)
                      Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0x4dffffff),
                      border: Border.all(
                          width: 0.5, color: const Color(0x4d000000)),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 109.0, middle: 0.2895),
                  Pin(size: 18.0, middle: 0.5161),
                  child: Text(
                    'Schreibe etwas ...',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14,
                      color: const Color(0x73000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Transform.translate(
                  offset: Offset(9.0, 5.0),
                  child: SizedBox(
                    width: 38.0,
                    height: 38.0,
                    child:
                        // Adobe XD layer: 'elektronik' (group)
                        Stack(
                      children: <Widget>[
                        SizedBox(
                          width: 38.0,
                          height: 38.0,
                          child:
                              // Adobe XD layer: 'layer1' (group)
                              Stack(
                            children: <Widget>[
                              SizedBox(
                                width: 38.0,
                                height: 38.0,
                                child: SvgPicture.string(
                                  _svg_6kbc4f,
                                  allowDrawingOutsideViewBox: true,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(8.1, 9.3),
                          child: SizedBox(
                            width: 22.0,
                            height: 17.0,
                            child:
                                // Adobe XD layer: 'layer3' (group)
                                Stack(
                              children: <Widget>[
                                SizedBox(
                                  width: 22.0,
                                  height: 17.0,
                                  child:
                                      // Adobe XD layer: 'g897' (group)
                                      Stack(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 22.0,
                                        height: 17.0,
                                        child: SvgPicture.string(
                                          _svg_nwsuo9,
                                          allowDrawingOutsideViewBox: true,
                                        ),
                                      ),
                                    ],
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
                Pinned.fromPins(
                  Pin(size: 52.0, start: 6.0),
                  Pin(start: 1.0, end: 0.0),
                  child: PageLink(
                    links: [
                      PageLinkInfo(
                        transition: LinkTransition.Fade,
                        ease: Curves.easeOut,
                        duration: 0.3,
                        pageBuilder: () => XD_Chat11(),
                      ),
                    ],
                    child: SvgPicture.string(
                      _svg_8uqvlt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 40.0, start: 8.0),
                  Pin(start: 4.0, end: 5.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      color: const Color(0x00ffffff),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffc857)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 55.0, middle: 0.5156),
            Pin(size: 111.0, middle: 0.2734),
            child:
                // Adobe XD layer: 'Datum' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 15.0, end: 0.0),
                  child: Text(
                    '01.06.2021',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      color: const Color(0xff737373),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(size: 15.0, start: 0.0),
                  child: Text(
                    '31.05.2021',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 12,
                      color: const Color(0xff737373),
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 222.0, end: 44.0),
            Pin(size: 173.0, middle: 0.4271),
            child:
                // Adobe XD layer: 'Zeit' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 22.0, end: 0.0),
                  Pin(size: 13.0, start: 0.0),
                  child: Text(
                    '18:46',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 10,
                      color: const Color(0x80737373),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 24.0, start: 0.0),
                  Pin(size: 13.0, middle: 0.6313),
                  child: Text(
                    '09:23',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 10,
                      color: const Color(0x80737373),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 25.0, middle: 0.6853),
                  Pin(size: 13.0, end: 0.0),
                  child: Text(
                    '09:25',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 10,
                      color: const Color(0x80737373),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 8.0, end: 8.0),
            Pin(size: 213.0, middle: 0.3855),
            child:
                // Adobe XD layer: 'Nachrichten' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 292.0, start: 0.0),
                  Pin(size: 52.0, start: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0x66ffffff),
                      border: Border.all(
                          width: 0.5, color: const Color(0x66707070)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x10000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 273.0, end: 0.0),
                  Pin(size: 58.0, middle: 0.6194),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0xffffc857),
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
                  Pin(size: 223.0, start: 0.0),
                  Pin(size: 41.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: const Color(0x66ffffff),
                      border: Border.all(
                          width: 0.5, color: const Color(0x66707070)),
                      boxShadow: [
                        BoxShadow(
                          color: const Color(0x10000000),
                          offset: Offset(0, 3),
                          blurRadius: 6,
                        ),
                      ],
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 266.0, start: 12.0),
                  Pin(size: 36.0, start: 8.0),
                  child: Text(
                    'Hallo ich interessiere mich für das schöne\nblaue Shirt.',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 250.0, end: 9.0),
                  Pin(size: 36.0, middle: 0.6102),
                  child: Text(
                    'Ja klasse, du kannst es gerne abholen \nkommen.',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 204.0, start: 8.0),
                  Pin(size: 18.0, end: 11.0),
                  child: Text(
                    'Jawohl brudi, bis in 10 min, Bild?',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 58.0, start: 90.0),
            child:
                // Adobe XD layer: 'Kontakt' (group)
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
                        pageBuilder: () => XD_Anzeigeanschauen(),
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
                  Pin(size: 45.0, middle: 0.3815),
                  Pin(start: 8.6, end: 4.4),
                  child: Transform.rotate(
                    angle: -0.0175,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0x66ffffff),
                        border: Border.all(
                            width: 1.0, color: const Color(0x66707070)),
                      ),
                    ),
                  ),
                ),
                Pinned.fromPins(
                  Pin(size: 67.0, middle: 0.5925),
                  Pin(size: 18.0, middle: 0.5528),
                  child: Text(
                    'Angela M. ',
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 14,
                      color: const Color(0xff000000),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 24.0, middle: 0.1681),
            Pin(size: 13.0, middle: 0.4908),
            child: Text(
              '09:23',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 10,
                color: const Color(0x80737373),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_6kbc4f =
    '<svg viewBox="0.0 0.0 38.0 38.0" ><path transform="translate(629.61, -197.11)" d="M -591.630126953125 216.1039428710938 C -591.630126953125 226.5922393798828 -600.132568359375 235.0946960449219 -610.6209106445312 235.0946960449219 C -621.1091918945312 235.0946960449219 -629.611572265625 226.5922393798828 -629.611572265625 216.1039428710938 C -629.611572265625 205.6156616210938 -621.1091918945312 197.1132049560547 -610.6209106445312 197.1132049560547 C -600.132568359375 197.1132049560547 -591.630126953125 205.6156616210938 -591.630126953125 216.1039428710938 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_nwsuo9 =
    '<svg viewBox="0.0 0.0 21.8 16.8" ><path transform="translate(600.81, -209.09)" d="M -591.8822631835938 209.0898742675781 L -587.8724975585938 209.0898742675781 C -586.68603515625 209.0898742675781 -585.7308349609375 209.4761810302734 -585.7308349609375 209.9560546875 L -585.7308349609375 212.1566009521484 C -585.7308349609375 212.6364593505859 -586.68603515625 213.0227661132812 -587.8724975585938 213.0227661132812 L -591.8822631835938 213.0227661132812 C -593.0687255859375 213.0227661132812 -594.0238647460938 212.6364593505859 -594.0238647460938 212.1566009521484 L -594.0238647460938 209.9560546875 C -594.0238647460938 209.4761962890625 -593.0687255859375 209.0898742675781 -591.8822631835938 209.0898742675781 Z" fill="#ffffff" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(603.68, -210.1)" d="M -601.5349731445312 212.4853210449219 L -584.0375366210938 212.4853210449219 C -582.85107421875 212.4853210449219 -581.8958740234375 213.508544921875 -581.8958740234375 214.7795104980469 L -581.8958740234375 224.56494140625 C -581.8958740234375 225.8359069824219 -582.85107421875 226.859130859375 -584.0375366210938 226.859130859375 L -601.5349731445312 226.859130859375 C -602.7213745117188 226.859130859375 -603.6765747070312 225.8359069824219 -603.6765747070312 224.56494140625 L -603.6765747070312 214.7795104980469 C -603.6765747070312 213.508544921875 -602.7213745117188 212.4853210449219 -601.5349731445312 212.4853210449219 Z" fill="#ffffff" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(601.03, -211.38)" d="M -585.5074462890625 221.3629455566406 C -585.5074462890625 223.8798828125 -587.5748291015625 225.9202575683594 -590.125 225.9202575683594 C -592.6751708984375 225.9202575683594 -594.7425537109375 223.8798828125 -594.7425537109375 221.3629760742188 C -594.7425537109375 218.8460388183594 -592.6751708984375 216.8056945800781 -590.125 216.8056945800781 C -587.5748291015625 216.8056945800781 -585.5074462890625 218.8460388183594 -585.5074462890625 221.3629455566406 Z" fill="none" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(596.85, -210.74)" d="M -580.398681640625 214.6572570800781 L -577.7816162109375 214.6572570800781 C -577.6408081054688 214.6572570800781 -577.5274047851562 214.7737426757812 -577.5274047851562 214.9184265136719 L -577.5274047851562 216.0183410644531 C -577.5274047851562 216.1630249023438 -577.6408081054688 216.2794952392578 -577.7816162109375 216.2794952392578 L -580.398681640625 216.2794952392578 C -580.5394287109375 216.2794952392578 -580.65283203125 216.1630249023438 -580.65283203125 216.0183410644531 L -580.65283203125 214.9184265136719 C -580.65283203125 214.7737426757812 -580.5394287109375 214.6572570800781 -580.398681640625 214.6572570800781 Z" fill="#ffffff" stroke="#ffc857" stroke-width="0.7833868861198425" stroke-linecap="butt" stroke-linejoin="round" /></svg>';
const String _svg_8uqvlt =
    '<svg viewBox="6.0 549.0 52.0 48.0" ><path transform="translate(6.0, 549.0)" d="M 13.92857074737549 0 L 38.07142639160156 0 C 45.76396560668945 0 52 6.578673362731934 52 14.69387817382812 L 52 33.30612182617188 C 52 41.42132568359375 45.76396560668945 48 38.07142639160156 48 L 13.92857074737549 48 C 6.23603343963623 48 0 41.42132568359375 0 33.30612182617188 L 0 14.69387817382812 C 0 6.578673362731934 6.23603343963623 0 13.92857074737549 0 Z" fill="#ffffff" fill-opacity="0.0" stroke="#707070" stroke-width="1" stroke-opacity="0.0" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
