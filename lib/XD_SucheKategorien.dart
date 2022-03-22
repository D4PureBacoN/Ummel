import 'dart:io';

import 'package:app_ummel/XD_Anzeigeaufgeben10.dart';
import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

class XD_SucheKategorien extends StatefulWidget {
  List<Asset>? images2 = <Asset>[];
  File? camimage;
  int? n;
  int? haus;
  int? kleidung;
  int? sport;
  int? unterhaltung;
  int? technik;
  int? baby;
  int? lebensmittel;
  int? bauen;
  int? kosmetik;
  int? tier;
  int? fahrzeug;
  int? pfand;
  int? strassenfund;
  XD_SucheKategorien(
      {required this.images2,
      required this.camimage,
      required this.n,
      required this.haus,
      required this.kleidung,
      required this.sport,
      required this.unterhaltung,
      required this.technik,
      required this.baby,
      required this.lebensmittel,
      required this.bauen,
      required this.kosmetik,
      required this.tier,
      required this.fahrzeug,
      required this.pfand,
      required this.strassenfund});
  _SucheKategorien createState() => _SucheKategorien();
}

class _SucheKategorien extends State<XD_SucheKategorien> {
  late List<Asset>? images2 = images2;
  late File? camimage = camimage;
  late int? n = n;
  late int? haus = haus;
  late int? kleidung = kleidung;
  late int? sport = sport;
  late int? unterhaltung = unterhaltung;
  late int? technik = technik;
  late int? baby = baby;
  late int? lebensmittel = lebensmittel;
  late int? bauen = bauen;
  late int? kosmetik = kosmetik;
  late int? tier = tier;
  late int? fahrzeug = fahrzeug;
  late int? pfand = pfand;
  late int? strassenfund = widget.strassenfund;
  bool _hasBeenPressed1 = false;
  bool _hasBeenPressed2 = false;
  bool _hasBeenPressed3 = false;
  bool _hasBeenPressed4 = false;
  bool _hasBeenPressed5 = false;
  bool _hasBeenPressed6 = false;
  bool _hasBeenPressed7 = false;
  bool _hasBeenPressed8 = false;
  bool _hasBeenPressed9 = false;
  bool _hasBeenPressed10 = false;
  bool _hasBeenPressed11 = false;
  bool _hasBeenPressed12 = false;

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
        body: Stack(alignment: Alignment.centerLeft, children: <Widget>[
          ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Positioned(
                top: 0.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed1 = !_hasBeenPressed1;
                      })
                    },
                    child: Text(
                      '    Haus & Garten',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed1
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 70.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed2 = !_hasBeenPressed2;
                      })
                    },
                    child: Text(
                      '    Kleidung',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed2
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 140.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed3 = !_hasBeenPressed3;
                      })
                    },
                    child: Text(
                      '    Sport & Freizeit',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed3
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 210.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed4 = !_hasBeenPressed4;
                      })
                    },
                    child: Text(
                      '    Unterhaltung',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed4
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 280.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed5 = !_hasBeenPressed5;
                      })
                    },
                    child: Text(
                      '    Technik',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed5
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 350.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed6 = !_hasBeenPressed6;
                      })
                    },
                    child: Text(
                      '    Baby & Kind',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed6
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 420.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed7 = !_hasBeenPressed7;
                      })
                    },
                    child: Text(
                      '    Lebensmittel',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed7
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 490.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed8 = !_hasBeenPressed8;
                      })
                    },
                    child: Text(
                      '    Bauen & Basteln',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed8
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 560.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed9 = !_hasBeenPressed9;
                      })
                    },
                    child: Text(
                      '    Kosmetik',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed9
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 630.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed10 = !_hasBeenPressed10;
                      })
                    },
                    child: Text(
                      '    Tierbedarf',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed10
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 700.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed11 = !_hasBeenPressed11;
                      })
                    },
                    child: Text(
                      '    Fahrzeug',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed11
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 770.0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  child: ElevatedButton(
                    onPressed: () => {
                      setState(() {
                        _hasBeenPressed12 = !_hasBeenPressed12;
                      })
                    },
                    child: Text(
                      '    Pfand',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 16,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      primary: _hasBeenPressed12
                          ? Color(0xffffb420)
                          : Color(0xffffffff),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.0)),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 850,
                child: Container(
                  height: 30,
                ),
              ),
              Positioned(
                top: 880.0,
                child: Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => XD_Anzeigeaufgeben10(
                              images2: images2,
                              camimage: camimage,
                              n: n,
                              haus: haus,
                              kleidung: kleidung,
                              sport: sport,
                              unterhaltung: unterhaltung,
                              technik: technik,
                              baby: baby,
                              lebensmittel: lebensmittel,
                              bauen: bauen,
                              kosmetik: kosmetik,
                              tier: tier,
                              fahrzeug: fahrzeug,
                              pfand: pfand,
                              strassenfund: strassenfund)));
                      //Bestätigen Action
                    },
                    child: Text('Bestätigen'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 45),
                      primary: Color(0xffffb420),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 970,
                child: Container(
                  height: 100,
                ),
              ),
            ],
          ),
        ]));
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
