import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

import 'XD_Favoriten.dart';
import 'XD_Home.dart';

class XD_AnzeigeaufgebenStraenfund3 extends StatelessWidget {
  XD_AnzeigeaufgebenStraenfund3({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xffffffff),
        appBar: AppBar(
          title: IconButton(
            icon: Image.asset("images/UmmelLogo.png"),
            iconSize: 50,
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => XD_Home()));
              //Bestätigen Action
            },
          ),
          backgroundColor: Color(0xffffb420),
          actions: <Widget>[
            IconButton(
              icon: Icon(ummel_icons.favblume_leer),
              iconSize: 35,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => XD_Favoriten()));
                //Bestätigen Action
              },
            ),
          ],
        ),
        body: Container());
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
