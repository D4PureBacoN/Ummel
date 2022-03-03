import 'package:app_ummel/XD_AnzeigeaufgebenStraenfund1.dart';
import 'package:app_ummel/XD_AnzeigeaufgebenStraenfund5.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';

import 'XD_Favoriten.dart';
import 'XD_Home.dart';

class XD_AnzeigeaufgebenStraenfund4 extends StatelessWidget {
  List<Asset>? images = <Asset>[];
  XD_AnzeigeaufgebenStraenfund4({Key? key, @required this.images})
      : super(key: key);

  @override
  Widget buildGridView() {
    return GridView.count(
      crossAxisCount: 3,
      crossAxisSpacing: 10,
      mainAxisSpacing: 20,
      children: List.generate(images!.length, (index) {
        Asset asset = images![index];
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
          images!.length == 0
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
                    images!.length == 6
                        ? Stack(alignment: Alignment.topLeft, children: <
                            Widget>[
                            Positioned(
                              top: 177.0,
                              left: 98,
                              child: ElevatedButton(
                                onPressed: () {
                                  images!.removeAt(0);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenStraenfund4(
                                              images: images)));
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
                                  images!.removeAt(1);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenStraenfund4(
                                              images: images)));
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
                                  images!.removeAt(2);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenStraenfund4(
                                              images: images)));
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
                                  images!.removeAt(3);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenStraenfund4(
                                              images: images)));
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
                                  images!.removeAt(4);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenStraenfund4(
                                              images: images)));
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
                                  images!.removeAt(5);
                                  Navigator.of(context).push(MaterialPageRoute(
                                      builder: (context) =>
                                          XD_AnzeigeaufgebenStraenfund4(
                                              images: images)));
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
                        : images!.length == 5
                            ? Stack(
                                alignment: Alignment.topLeft,
                                children: <Widget>[
                                    Positioned(
                                      top: 177.0,
                                      left: 98,
                                      child: ElevatedButton(
                                        onPressed: () {
                                          images!.removeAt(0);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenStraenfund4(
                                                          images: images)));
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
                                          images!.removeAt(1);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenStraenfund4(
                                                          images: images)));
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
                                          images!.removeAt(2);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenStraenfund4(
                                                          images: images)));
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
                                          images!.removeAt(3);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenStraenfund4(
                                                          images: images)));
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
                                          images!.removeAt(4);
                                          Navigator.of(context).push(
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      XD_AnzeigeaufgebenStraenfund4(
                                                          images: images)));
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
                            : images!.length == 4
                                ? Stack(
                                    alignment: Alignment.topLeft,
                                    children: <Widget>[
                                        Positioned(
                                          top: 177.0,
                                          left: 98,
                                          child: ElevatedButton(
                                            onPressed: () {
                                              images!.removeAt(0);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenStraenfund4(
                                                              images: images)));
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
                                              images!.removeAt(1);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenStraenfund4(
                                                              images: images)));
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
                                              images!.removeAt(2);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenStraenfund4(
                                                              images: images)));
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
                                              images!.removeAt(3);
                                              Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                      builder: (context) =>
                                                          XD_AnzeigeaufgebenStraenfund4(
                                                              images: images)));
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
                                : images!.length == 3
                                    ? Stack(
                                        alignment: Alignment.topLeft,
                                        children: <Widget>[
                                            Positioned(
                                              top: 177.0,
                                              left: 98,
                                              child: ElevatedButton(
                                                onPressed: () {
                                                  images!.removeAt(0);
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              XD_AnzeigeaufgebenStraenfund4(
                                                                  images:
                                                                      images)));
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
                                                  images!.removeAt(1);
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              XD_AnzeigeaufgebenStraenfund4(
                                                                  images:
                                                                      images)));
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
                                                  images!.removeAt(2);
                                                  Navigator.of(context).push(
                                                      MaterialPageRoute(
                                                          builder: (context) =>
                                                              XD_AnzeigeaufgebenStraenfund4(
                                                                  images:
                                                                      images)));
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
                                    : images!.length == 2
                                        ? Stack(
                                            alignment: Alignment.topLeft,
                                            children: <Widget>[
                                                Positioned(
                                                  top: 177.0,
                                                  left: 98,
                                                  child: ElevatedButton(
                                                    onPressed: () {
                                                      images!.removeAt(0);
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  XD_AnzeigeaufgebenStraenfund4(
                                                                      images:
                                                                          images)));
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
                                                      images!.removeAt(1);
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  XD_AnzeigeaufgebenStraenfund4(
                                                                      images:
                                                                          images)));
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
                                                      images!.removeAt(0);
                                                      Navigator.of(context).push(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  XD_AnzeigeaufgebenStraenfund1()));
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
                              builder: (context) =>
                                  XD_AnzeigeaufgebenStraenfund5()));
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
                              builder: (context) =>
                                  XD_AnzeigeaufgebenStraenfund1()));
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
