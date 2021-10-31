import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import './XD_TopKomponente.dart';

class XD_Map_ extends StatelessWidget {
  XD_Map_({
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
            Pin(size: 187.0, end: 0.0),
            Pin(size: 1.0, start: 121.0),
            child:
                // Adobe XD layer: 'Markierungsstrich' (shape)
                SvgPicture.string(
              _svg_4iklmp,
              allowDrawingOutsideViewBox: true,
              fit: BoxFit.fill,
            ),
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}

const String _svg_4iklmp =
    '<svg viewBox="188.0 121.0 187.0 1.0" ><path transform="translate(188.0, 121.0)" d="M 0 0 L 187 0" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
