import 'package:app_ummel/Product_Gridsuche.dart';
import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

class XD_Suche extends StatefulWidget {
  @override
  _XDSucheState createState() => _XDSucheState();
}

class _XDSucheState extends State<XD_Suche> {
  int haus = 0;
  int kleidung = 0;
  int sport = 0;
  int unterhaltung = 0;
  int technik = 0;
  int baby = 0;
  int lebensmittel = 0;
  int bauen = 0;
  int kosmetik = 0;
  int tier = 0;
  int fahrzeug = 0;
  int pfand = 0;
  String suchbegriff = '';

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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 108.0,
            child: Text(
              'Verfeinere deine Suche',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 22,
                color: const Color(0xffffb420),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 200.0,
            child: SizedBox(
              width: 340,
              height: 40,
              child: TextFormField(
                onChanged: (text) {
                  suchbegriff = text;
                },
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
          ),
          /*Positioned(
            top: 280.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  haus = 0;
                  kleidung = 0;
                  sport = 0;
                  unterhaltung = 0;
                  technik = 0;
                  baby = 0;
                  lebensmittel = 0;
                  bauen = 0;
                  kosmetik = 0;
                  tier = 0;
                  fahrzeug = 0;
                  pfand = 0;
                  showModalBottomSheet<void>(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          height: 500,
                          child: Center(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              children: <Widget>[
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  mainAxisSize: MainAxisSize.min,
                                  children: <Widget>[
                                    SizedBox(height: 20),
                                    Text(
                                      '   Kategorie auswählen',
                                      style: TextStyle(
                                        fontFamily: 'Quicksand',
                                        fontSize: 22,
                                        color: const Color(0xffffb420),
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          haus = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Haus & Garten',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          kleidung = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Kleidung',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          sport = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Sport & Freizeit',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          unterhaltung = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Unterhaltung',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          technik = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Technik',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          baby = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Baby & Kind',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          lebensmittel = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Lebensmittel',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          bauen = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Bauen & Basteln',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          kosmetik = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Kosmetik',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          tier = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Tierbedarf',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          fahrzeug = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Fahrzeug',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width,
                                      height: 50,
                                      child: ElevatedButton(
                                        onPressed: () => {
                                          pfand = 1,
                                          Navigator.pop(context),
                                        },
                                        child: Text(
                                          'Pfand',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            fontFamily: 'Quicksand',
                                            fontSize: 14,
                                            color: const Color(0xff000000),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        style: ElevatedButton.styleFrom(
                                          alignment: Alignment.center,
                                          primary: Color(0xffffffff),
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(0.0)),
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    ElevatedButton(
                                      onPressed: () {
                                        haus = 0;
                                        kleidung = 0;
                                        sport = 0;
                                        unterhaltung = 0;
                                        technik = 0;
                                        baby = 0;
                                        lebensmittel = 0;
                                        bauen = 0;
                                        kosmetik = 0;
                                        tier = 0;
                                        fahrzeug = 0;
                                        pfand = 0;
                                        Navigator.pop(context);
                                      },
                                      child: Text(
                                        'Abbrechen',
                                        style: TextStyle(
                                          fontFamily: 'Quicksand',
                                          fontSize: 16,
                                          color: const Color(0xffffffff),
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: const Size(350, 45),
                                        primary: Color(0xffffb420),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      });
                },
                child: Text(
                  'Kategorie auswählen',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontFamily: 'Quicksand',
                    fontSize: 16,
                    color: const Color(0xffffb420),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  primary: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                ),
              ),
            ),
          ),*/
          /*Positioned(
            top: 350.0,
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 70,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => XD_Map1()));
                  //Bestätigen Action
                },
                child: Text(
                  '     Suchort anpassen',
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
                  primary: Color(0xffffffff),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0)),
                ),
              ),
            ),
          ),*/
          Positioned(
            top: 300.0,
            child: ElevatedButton(
              onPressed: () {
                print(suchbegriff);
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) =>
                        ProductGridsuche(suchbegriff: suchbegriff)));
                //Bestätigen Action
              },
              child: Text('Bestätigen'),
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(350, 45),
                primary: Color(0xffffb420),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0)),
              ),
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
