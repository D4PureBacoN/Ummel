import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_SucheKategorien.dart';
import './XD_TopKomponente.dart';

class XD_Suche extends StatelessWidget {
  XD_Suche({
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
            Pin(size: 40.0, middle: 0.4545),
            child:
                // Adobe XD layer: 'Suchbegriff' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: TextFormField(
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        labelText: "Suchbegriff",
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
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 45.0, end: 85.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => XD_Home()));
                      //Bestätigen Action
                    },
                    child: Text('Suchen'),
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
          Pinned.fromPins(
            Pin(size: 218.0, middle: 0.5032),
            Pin(size: 25.0, middle: 0.2804),
            child: Text(
              'Verfeinere deine Suche',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 20,
                color: const Color(0xffffb420),
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 50.0, middle: 0.5543),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_SucheKategorien(),
                ),
              ],
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  border: Border.all(width: 1.0, color: Colors.transparent),
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 164.0, start: 18.0),
            Pin(size: 20.0, middle: 0.5518),
            child: Text(
              'Kategorien auswählen',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 16,
                color: const Color(0xff000000),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromPins(
            Pin(size: 3.5, middle: 0.5168),
            Pin(size: 9.2, middle: 0.5526),
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
                    _svg_d75ej,
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 132.0, start: 18.0),
            Pin(size: 20.0, middle: 0.6275),
            child: Text(
              'Suchort anpassen',
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

const String _svg_71pvzf =
    '<svg viewBox="-45.0 0.0 340.0 45.0" ><defs><filter id="shadow"><feDropShadow dx="0" dy="3" stdDeviation="6"/></filter></defs><path transform="translate(-45.0, 0.0)" d="M 8 0 L 332 0 C 336.4182739257812 0 340 3.581721782684326 340 8 L 340 37 C 340 41.41827774047852 336.4182739257812 45 332 45 L 8 45 C 3.581721782684326 45 0 41.41827774047852 0 37 L 0 8 C 0 3.581721782684326 3.581721782684326 0 8 0 Z" fill="#ffb420" stroke="none" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_d75ej =
    '<svg viewBox="0.0 0.0 3.5 9.2" ><path transform="translate(43.43, 43.43)" d="M -43.42630004882812 -43.43030548095703 L -39.92630004882812 -38.84030532836914 L -43.42630004882812 -34.25030899047852" fill="none" stroke="#000000" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
