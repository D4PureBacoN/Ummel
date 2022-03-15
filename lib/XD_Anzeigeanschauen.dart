import 'package:app_ummel/Product_Grid.dart';
import 'package:app_ummel/XD_Chat1.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/XD_Profil.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'XD_Favoriten.dart';

int getImageCount(QuerySnapshot<Object?> data, int index) {
  if (data.docs[index]['image2'] == null) {
    return 1;
  }
  if (data.docs[index]['image3'] == null) {
    return 2;
  }
  if (data.docs[index]['image4'] == null) {
    return 3;
  }
  if (data.docs[index]['image5'] == null) {
    return 4;
  }
  if (data.docs[index]['image6'] == null) {
    return 5;
  }
  return 6;
}

class XD_Anzeigeanschauen extends StatelessWidget {
  const XD_Anzeigeanschauen(
      {Key? key,
      required this.data,
      required this.productindex,
      required this.storage})
      : super(key: key);

  final int productindex;
  final QuerySnapshot<Object?> data;
  final Storage storage;

  //Productname = data.docs[index]['name'];
  //data.docs[index]['image1'];
  //data.docs[index]['postal'];
  //data.docs[index]['town'];
  //index ist immer gleich, index is im prinzip nur die indexstelle vom Grid und Gleichzeitig vom data.docs

  Widget build(BuildContext context) {
    int imageCount = getImageCount(data, productindex);
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
                    child: ListView.separated(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) =>
                          const Divider(),
                      itemCount: imageCount,
                      itemBuilder: (BuildContext context, int index) {
                        return FutureBuilder(
                            future: storage.downloadURL(
                                '${data.docs[productindex]['image${index + 1}']}'),
                            builder: (BuildContext context,
                                AsyncSnapshot<String> snapshot) {
                              if (snapshot.connectionState ==
                                      ConnectionState.done &&
                                  snapshot.hasData) {
                                return Container(
                                    width: 300,
                                    height: 300,
                                    child: Image.network(
                                      snapshot.data!,
                                      fit: BoxFit.cover,
                                    ));
                              }
                              if (snapshot.connectionState ==
                                  ConnectionState.waiting) {
                                return CircularProgressIndicator();
                              }
                              return Container();
                            });
                      },
                    ))),
            SizedBox(
              height: 20,
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Text(
                  data.docs[productindex]['name'],
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
                          child: Text(
                            data.docs[productindex]['discription'],
                            overflow: TextOverflow.ellipsis,
                            maxLines: 7,
                            style: TextStyle(
                              fontFamily: 'Quicksand',
                              fontSize: 16,
                              color: const Color(0xff000000),
                              fontWeight: FontWeight.w500,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            data.docs[productindex]['postal'].toString(),
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
                              data.docs[productindex]['user'],
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
