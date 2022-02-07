import 'package:app_ummel/XD_Chat1.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/XD_Profil.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'XD_Favoriten.dart';

class XD_Anzeigeanschauen extends StatelessWidget {
  const XD_Anzeigeanschauen({Key? key, required this.data, required this.index})
      : super(key: key);

  final int index;
  final QuerySnapshot<Object?> data;

  //Productname = data.docs[index]['name'];
  //data.docs[index]['images'];
  //data.docs[index]['postal'];
  //data.docs[index]['town'];
  //index ist immer gleich, index is im prinzip nur die indexstelle vom Grid und Gleichzeitig vom data.docs

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
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: <
            Widget>[
          Expanded(
              child:
              ListView(scrollDirection: Axis.vertical, children: <Widget>[
                Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                        height: 300,
                        width: 300,
                        child: ListView(
                          // This next line does the trick.
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[]))),
                SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      data.docs[index]['name'],
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 22,
                        color: const Color(0xffffb420),
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => XD_Chat1()));
                      //Bestätigen Action
                    },
                    child: Text('Anfragen'),
                    style: ElevatedButton.styleFrom(
                      fixedSize: const Size(350, 45),
                      primary: Color(0xffffb420),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    alignment: Alignment.center,
                    child: Container(
                        width: 327,
                        child: Column(mainAxisSize: MainAxisSize.min, children: [
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                'Beschreibung',
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 16,
                                  color: const Color(0xffffb420),
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Flexible(
                                  child: Text(
                                    data.docs[index]['discription'],
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 7,
                                    style: TextStyle(
                                      fontFamily: 'Quicksand',
                                      fontSize: 16,
                                      color: const Color(0xff000000),
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ))),
                          SizedBox(
                            height: 20,
                          ),
                          Align(
                              alignment: Alignment.topLeft,
                              child: Text(
                                data.docs[index]['postal'].toString(),
                                style: TextStyle(
                                  fontFamily: 'Quicksand',
                                  fontSize: 16,
                                  color: const Color(0xff737373),
                                  fontWeight: FontWeight.w500,
                                ),
                              )),
                          SizedBox(
                            height: 15,
                          ),
                          ButtonTheme(
                            child: FlatButton(
                              padding: EdgeInsets.all(0),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  data.docs[index]['user'],
                                  style: TextStyle(
                                    fontFamily: 'Quicksand',
                                    fontSize: 16,
                                    color: const Color(0xff000000),
                                    fontWeight: FontWeight.w500,
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                              onPressed: () => Navigator.of(context).push(
                                  MaterialPageRoute(
                                      builder: (context) => XD_Profil())),
                            ),
                          ),
                          SizedBox(
                            height: 15,
                          ),
                        ])))
              ]))
        ]));
  }
}
