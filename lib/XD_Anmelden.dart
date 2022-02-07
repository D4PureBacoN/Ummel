import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';

class XD_Anmelden extends StatelessWidget {
  XD_Anmelden({
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
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 108.0,
            child: Text(
              'Anmelden',
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 22,
                color: const Color(0xffffb420),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 150.0,
            child: Text(
              'Ergänze deine E-Mail-Adresse sowie ein Passwort,\num deinen Account auf mehreren Geräten\nnutzen zu können',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Quicksand',
                fontSize: 14,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Positioned(
            top: 240.0,
            child: SizedBox(
              width: 340,
              height: 40,
              child: TextFormField(
                cursorColor: Color(0xffffb420),
                decoration: InputDecoration(
                    labelText: "E-Mail",
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
          Positioned(
            top: 304.0,
            child: SizedBox(
              width: 340,
              height: 40,
              child: TextFormField(
                cursorColor: Color(0xffffb420),
                decoration: InputDecoration(
                    labelText: "Passwort",
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
          Positioned(
            top: 368.0,
            child: SizedBox(
              width: 340,
              height: 40,
              child: TextFormField(
                cursorColor: Color(0xffffb420),
                decoration: InputDecoration(
                    labelText: "Passwort wiederholen",
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
          Positioned(
            top: 537.0,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => XD_Home()));
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
