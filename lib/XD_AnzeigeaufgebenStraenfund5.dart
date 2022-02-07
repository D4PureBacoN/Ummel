import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

class XD_AnzeigeaufgebenStraenfund5 extends StatefulWidget {
  @override
  _XDAnzeigeaufgebenStraenfund5 createState() =>
      new _XDAnzeigeaufgebenStraenfund5();
}

class _XDAnzeigeaufgebenStraenfund5
    extends State<XD_AnzeigeaufgebenStraenfund5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
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
      body: new InkWell(
        // to dismiss the keyboard when the user tabs out of the TextField
        splashColor: Colors.transparent,
        onTap: () {
          FocusScope.of(context).requestFocus(FocusNode());
        },
        child: SingleChildScrollView(
          child: Container(
            alignment: Alignment.topCenter,
            child: Column(
              children: <Widget>[
                Container(height: 50),
                Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Quicksand',
                      fontSize: 20,
                      color: const Color(0xffffffff),
                    ),
                    children: [
                      TextSpan(
                        text: 'Artikelinfo',
                        style: TextStyle(
                          color: const Color(0xffffb420),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  textHeightBehavior:
                      TextHeightBehavior(applyHeightToFirstAscent: false),
                  textAlign: TextAlign.left,
                ),
                Container(height: 50),
                SizedBox(
                  height: 40,
                  width: 340,
                  child: TextFormField(
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        labelText: "Titel",
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
                Container(height: 30),
                SizedBox(
                  width: 340,
                  child: TextFormField(
                    maxLines: 7,
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        alignLabelWithHint: true,
                        labelText: "Beschreibung",
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
                Container(height: 30),
                SizedBox(
                  height: 40,
                  width: 340,
                  child: TextFormField(
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        labelText: "Postleitzahl",
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
                Container(height: 30),
                SizedBox(
                  height: 40,
                  width: 340,
                  child: TextFormField(
                    cursorColor: Color(0xffffb420),
                    decoration: InputDecoration(
                        labelText: "Straße & Hausnummer (optional)",
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
                Container(height: 50),
                SizedBox(
                  width: 340,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => XD_Home()));
                      //Bestätigen Action
                    },
                    child: Text('Hochladen'),
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
          ),
        ),
      ),
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_f5hfaw =
    '<svg viewBox="313.5 467.5 1.0 4.0" ><path transform="translate(313.5, 467.5)" d="M 0 4 L 0 0" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_5dlebi =
    '<svg viewBox="319.5 478.0 4.0 1.0" ><path transform="translate(319.5, 478.0)" d="M 0 0 L 4 0" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_e17dtw =
    '<svg viewBox="313.5 483.5 1.0 4.0" ><path transform="translate(313.5, 483.5)" d="M 0 0 L 0 4" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
const String _svg_s8u8si =
    '<svg viewBox="303.5 478.0 4.0 1.0" ><path transform="translate(303.5, 478.0)" d="M 4 0 L 0 0" fill="none" stroke="#ffc857" stroke-width="2" stroke-miterlimit="4" stroke-linecap="round" /></svg>';
