import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_Suche.dart';
import './XD_TopKomponente.dart';

class XD_Map1 extends StatelessWidget {
  XD_Map1({
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
            Pin(start: 0.0, end: 56.0),
            child:
                // Adobe XD layer: 'Map' (group)
                SingleChildScrollView(
              child: SizedBox(
                width: 863.0,
                height: 1165.0,
                child: Stack(
                  children: <Widget>[
                    Pinned.fromPins(
                      Pin(start: 0.0, end: -488.0),
                      Pin(start: 0.0, end: -554.0),
                      child:
                          // Adobe XD layer: 'Feed' (shape)
                          Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: const AssetImage(''),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(start: 46.0, end: 21.0),
            Pin(size: 40.0, start: 98.0),
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
                        labelText: "Standort suchen...",
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
            Pin(size: 46.0, start: 0.0),
            Pin(size: 56.0, start: 90.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_Suche(),
                ),
              ],
              child: Stack(
                children: <Widget>[
                  Pinned.fromPins(
                    Pin(start: 0.0, end: 0.0),
                    Pin(start: 0.0, end: 0.0),
                    child: Container(
                      decoration: BoxDecoration(),
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
        ],
      ),
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
