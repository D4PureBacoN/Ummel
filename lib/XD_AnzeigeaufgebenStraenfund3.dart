import 'package:adobe_xd/page_link.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_AnzeigeaufgebenStraenfund1.dart';
import './XD_AnzeigeaufgebenStraenfund4.dart';
import './XD_TopKomponente.dart';

class XD_AnzeigeaufgebenStraenfund3 extends StatelessWidget {
  XD_AnzeigeaufgebenStraenfund3({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 18.0, end: 17.0),
            Pin(size: 45.0, end: 85.0),
            child:
                // Adobe XD layer: 'Bestätigen' (group)
                Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(size: 350.0, middle: 0.4982),
                  Pin(size: 45.0, middle: 0.52),
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromPins(
                        Pin(start: 0.0, end: 0.0),
                        Pin(start: 0.0, end: 0.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) =>
                                    XD_AnzeigeaufgebenStraenfund4()));
                            //Bestätigen Action
                          },
                          child: Text('Bestätigen'),
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
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 196.0, middle: 0.5028),
            Pin(size: 38.0, middle: 0.4404),
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
          Pinned.fromPins(
            Pin(size: 46.0, start: 0.0),
            Pin(size: 56.0, start: 90.0),
            child: PageLink(
              links: [
                PageLinkInfo(
                  transition: LinkTransition.Fade,
                  ease: Curves.easeOut,
                  duration: 0.3,
                  pageBuilder: () => XD_AnzeigeaufgebenStraenfund1(),
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

          // Adobe XD layer: 'Top - Komponente' (component)
          XD_TopKomponente(),
        ],
      ),
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
