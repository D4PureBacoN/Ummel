import 'dart:io';

import 'package:app_ummel/XD_Anzeigeaufgeben10.dart';
import 'package:app_ummel/XD_AnzeigeaufgebenArtikel1.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

import 'XD_Favoriten.dart';
import 'XD_Home.dart';

class XD_AnzeigeaufgebenArtikel4 extends StatelessWidget {
  List<Asset>? images2 = <Asset>[];
  File? camimage;
  late int? n = n;
  XD_AnzeigeaufgebenArtikel4(
      {Key? key,
      @required this.images2,
      @required this.camimage,
      @required this.n})
      : super(key: key);

  @override
  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      children: List.generate(images2!.length, (index) {
        Asset asset = images2![index];
        return AssetThumb(
          asset: asset,
          width: 300,
          height: 300,
        );
      }),
    );
  }

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
          images2!.length == 0
              ? Text('keine Bilder')
              : Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: 88,
                      child: Text(
                        'Artikelfotos',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 22,
                          color: const Color(0xffffb420),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 191,
                      child: SizedBox(
                        width: 350.0,
                        height: 230.0,
                        child: buildGridView(),
                      ),
                    ),
                    images2!.length == 6
                        ? Stack(alignment: Alignment.topLeft, children: <
                            Widget>[
                            Positioned(
                              top: 177.0,
                              left: 98,
                              child: ElevatedButton(
                                onPressed: () {
                                  images2!.removeAt(0);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenArtikel4(
                                              images2: images2)));
                                },
                                child: Text('x'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffffb420),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(5),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 177.0,
                              left: 214,
                              child: ElevatedButton(
                                onPressed: () {
                                  images2!.removeAt(1);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenArtikel4(
                                              images2: images2)));
                                },
                                child: Text('x'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffffb420),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(5),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 177.0,
                              left: 330,
                              child: ElevatedButton(
                                onPressed: () {
                                  images2!.removeAt(2);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenArtikel4(
                                              images2: images2)));
                                },
                                child: Text('x'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffffb420),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(5),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 307.0,
                              left: 98,
                              child: ElevatedButton(
                                onPressed: () {
                                  images2!.removeAt(3);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenArtikel4(
                                              images2: images2)));
                                },
                                child: Text('x'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffffb420),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(5),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 307.0,
                              left: 214,
                              child: ElevatedButton(
                                onPressed: () {
                                  images2!.removeAt(4);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenArtikel4(
                                              images2: images2)));
                                },
                                child: Text('x'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffffb420),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(5),
                                ),
                              ),
                            ),
                            Positioned(
                              top: 307.0,
                              left: 330,
                              child: ElevatedButton(
                                onPressed: () {
                                  images2!.removeAt(5);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenArtikel4(
                                              images2: images2)));
                                },
                                child: Text('x'),
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xffffb420),
                                  shape: CircleBorder(),
                                  padding: EdgeInsets.all(5),
                                ),
                              ),
                            ),
                          ])
                        : images2!.length == 5
                            ? Stack(
                                alignment: Alignment.topLeft,
                                children: <Widget>[
                                    Positioned(
                                      top: 177.0,
                                      left: 98,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          images2!.removeAt(0);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenArtikel4(
                                                          images2: images2)));
                                        },
                                        child: Text('x'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffffb420),
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(5),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 177.0,
                                      left: 214,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          images2!.removeAt(1);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenArtikel4(
                                                          images2: images2)));
                                        },
                                        child: Text('x'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffffb420),
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(5),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 177.0,
                                      left: 330,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          images2!.removeAt(2);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenArtikel4(
                                                          images2: images2)));
                                        },
                                        child: Text('x'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffffb420),
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(5),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 307.0,
                                      left: 98,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          images2!.removeAt(3);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenArtikel4(
                                                          images2: images2)));
                                        },
                                        child: Text('x'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffffb420),
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(5),
                                        ),
                                      ),
                                    ),
                                    Positioned(
                                      top: 307.0,
                                      left: 214,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          images2!.removeAt(4);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenArtikel4(
                                                          images2: images2)));
                                        },
                                        child: Text('x'),
                                        style: ElevatedButton.styleFrom(
                                          primary: Color(0xffffb420),
                                          shape: CircleBorder(),
                                          padding: EdgeInsets.all(5),
                                        ),
                                      ),
                                    ),
                                  ])
                            : images2!.length == 4
                                ? Stack(
                                    alignment: Alignment.topLeft,
                                    children: <Widget>[
                                        Positioned(
                                          top: 177.0,
                                          left: 98,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              images2!.removeAt(0);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenArtikel4(
                                                              images2:
                                                                  images2)));
                                            },
                                            child: Text('x'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xffffb420),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(5),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 177.0,
                                          left: 214,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              images2!.removeAt(1);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenArtikel4(
                                                              images2:
                                                                  images2)));
                                            },
                                            child: Text('x'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xffffb420),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(5),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 177.0,
                                          left: 330,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              images2!.removeAt(2);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenArtikel4(
                                                              images2:
                                                                  images2)));
                                            },
                                            child: Text('x'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xffffb420),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(5),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          top: 307.0,
                                          left: 98,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              images2!.removeAt(3);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenArtikel4(
                                                              images2:
                                                                  images2)));
                                            },
                                            child: Text('x'),
                                            style: ElevatedButton.styleFrom(
                                              primary: Color(0xffffb420),
                                              shape: CircleBorder(),
                                              padding: EdgeInsets.all(5),
                                            ),
                                          ),
                                        ),
                                      ])
                                : images2!.length == 3
                                    ? Stack(
                                        alignment: Alignment.topLeft,
                                        children: <Widget>[
                                            Positioned(
                                              top: 177.0,
                                              left: 98,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  images2!.removeAt(0);
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              XD_AnzeigeaufgebenArtikel4(
                                                                  images2:
                                                                      images2)));
                                                },
                                                child: Text('x'),
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xffffb420),
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(5),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 177.0,
                                              left: 214,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  images2!.removeAt(1);
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              XD_AnzeigeaufgebenArtikel4(
                                                                  images2:
                                                                      images2)));
                                                },
                                                child: Text('x'),
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xffffb420),
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(5),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              top: 177.0,
                                              left: 330,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  images2!.removeAt(2);
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              XD_AnzeigeaufgebenArtikel4(
                                                                  images2:
                                                                      images2)));
                                                },
                                                child: Text('x'),
                                                style: ElevatedButton.styleFrom(
                                                  primary: Color(0xffffb420),
                                                  shape: CircleBorder(),
                                                  padding: EdgeInsets.all(5),
                                                ),
                                              ),
                                            ),
                                          ])
                                    : images2!.length == 2
                                        ? Stack(
                                            alignment: Alignment.topLeft,
                                            children: <Widget>[
                                                Positioned(
                                                  top: 177.0,
                                                  left: 98,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      images2!.removeAt(0);
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  XD_AnzeigeaufgebenArtikel4(
                                                                      images2:
                                                                          images2)));
                                                    },
                                                    child: Text('x'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary:
                                                          Color(0xffffb420),
                                                      shape: CircleBorder(),
                                                      padding:
                                                          EdgeInsets.all(5),
                                                    ),
                                                  ),
                                                ),
                                                Positioned(
                                                  top: 177.0,
                                                  left: 214,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      images2!.removeAt(1);
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  XD_AnzeigeaufgebenArtikel4(
                                                                      images2:
                                                                          images2)));
                                                    },
                                                    child: Text('x'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary:
                                                          Color(0xffffb420),
                                                      shape: CircleBorder(),
                                                      padding:
                                                          EdgeInsets.all(5),
                                                    ),
                                                  ),
                                                ),
                                              ])
                                        : Stack(
                                            alignment: Alignment.topLeft,
                                            children: <Widget>[
                                                Positioned(
                                                  top: 177.0,
                                                  left: 98,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      images2!.removeAt(0);
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  XD_AnzeigeaufgebenArtikel1(
                                                                    n: n,
                                                                  )));
                                                    },
                                                    child: Text('x'),
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      primary:
                                                          Color(0xffffb420),
                                                      shape: CircleBorder(),
                                                      padding:
                                                          EdgeInsets.all(5),
                                                    ),
                                                  ),
                                                ),
                                              ]),
                    Positioned(
                      top: 477.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => XD_Anzeigeaufgeben10(
                                    images2: images2,
                                    camimage: camimage,
                                    n: n,
                                  )));
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
                    Positioned(
                      top: 537.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => XD_AnzeigeaufgebenArtikel1(
                                    n: n,
                                  )));
                          //Bestätigen Action
                        },
                        child: Text('Abbrechen'),
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
        ],
      ),
    );
  }
}

const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
