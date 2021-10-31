import 'package:adobe_xd/pinned.dart';
import 'package:flutter/material.dart';

import './XD_TopKomponente.dart';

class XD_Basiskomponenten extends StatelessWidget {
  XD_Basiskomponenten({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(start: 0.0, end: 0.0),
            Pin(size: 76.0, start: 0.0),
            child:
                // Adobe XD layer: 'Top - Komponente' (component)
                XD_TopKomponente(),
          ),
        ],
      ),
    );
  }
}
