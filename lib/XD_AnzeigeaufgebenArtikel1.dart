import 'dart:io';

import 'package:app_ummel/XD_Anzeigeaufgeben10.dart';
import 'package:app_ummel/XD_AnzeigeaufgebenArtikel4.dart';
import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart' as intl;
import 'package:multi_image_picker2/multi_image_picker2.dart';

class XD_AnzeigeaufgebenArtikel1 extends StatefulWidget {
  @override
  _XDAnzeigeaufgebenArtikel1 createState() => new _XDAnzeigeaufgebenArtikel1();
}

class _XDAnzeigeaufgebenArtikel1 extends State<XD_AnzeigeaufgebenArtikel1> {
  static List<Asset> images2 = <Asset>[];
  static File? camimage;
  final formatter = intl.NumberFormat.decimalPattern();
  int i = 2;
  @override
  void initState() {
    super.initState();
  }

  getFromCamera() async {
    PickedFile? pickedFile =
        await ImagePicker().getImage(source: ImageSource.camera);
    if (pickedFile != null) {
      setState(() {
        camimage = File(pickedFile.path);
      });
    }
    i = 3;
  }

  Future<void> loadAssets() async {
    List<Asset> resultList = <Asset>[];
    String error = 'No Error Detected';

    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 6,
        enableCamera: false,
        selectedAssets: images2,
        cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
        materialOptions: MaterialOptions(
          actionBarColor: "#ffb420",
          statusBarColor: "#ffb420",
          actionBarTitle: "Fotos hinzufügen",
          allViewTitle: "Alle Bilder",
          useDetailsView: false,
          selectCircleStrokeColor: "#ffb420",
        ),
      );
    } on Exception catch (e) {
      error = e.toString();
    }

    if (!mounted) return;

    setState(() {
      images2 = resultList;
      // _error = error;
    });
    if (images2!.length != 0)
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => XD_AnzeigeaufgebenArtikel4(images2: images2)),
      );
  }

  Future<void> pickImages() async {
    List<Asset> resultList = List<Asset>.empty();
    try {
      resultList = await MultiImagePicker.pickImages(
        maxImages: 6,
        enableCamera: true,
        selectedAssets: images2,
        materialOptions: MaterialOptions(
          actionBarTitle: "Bilder auswählen",
        ),
      );
    } on Exception catch (e) {
      print(e);
    }
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
        body: Stack(alignment: Alignment.center, children: <Widget>[
          /* Pinned.fromPins(
            Pin(size: 300.0, start: 50.0),
            Pin(size: 400.0, start: 320.0),
            child: Expanded(
              child: buildGridView(),
            ),
          ), */
          i == 2
              ? Stack(alignment: Alignment.center, children: <Widget>[
                  Positioned(
                    top: 108.0,
                    child: Text(
                      'Fotos hochladen',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 22,
                        color: const Color(0xffffb420),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 138.0,
                    child: Text(
                      'Füge bis zu 6 Fotos hinzu',
                      style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 14,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 316.0,
                    child: ElevatedButton.icon(
                      onPressed: loadAssets,
                      label: Text('Galerie'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(350, 45),
                        primary: Color(0xffffb420),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      icon: const Icon(Icons.photo_outlined),
                    ),
                  ),
                  Positioned(
                    top: 241.0,
                    child: ElevatedButton.icon(
                      onPressed: getFromCamera,
                      label: Text('Kamera'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(350, 45),
                        primary: Color(0xffffb420),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                      icon: const Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                ])
              : Stack(
                  alignment: Alignment.center,
                  children: <Widget>[
                    Positioned(
                      top: 40,
                      child: Text(
                        'Artikelfoto',
                        style: TextStyle(
                          fontFamily: 'Quicksand',
                          fontSize: 22,
                          color: const Color(0xffffb420),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Positioned(
                        top: 70,
                        child: Image.file(
                          File(camimage!.path),
                          width: 216,
                          height: 384,
                        )),
                    Positioned(
                      top: 477.0,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => XD_Anzeigeaufgeben10(images2: images2, camimage: camimage)));
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
                          i = 2;
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  XD_AnzeigeaufgebenArtikel1()));
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
                )
        ]));
  }
}

const String _svg_59yh2v =
    '<svg viewBox="0.0 0.0 32.0 23.4" ><path transform="translate(34.4, -4.91)" d="M -32.62741088867188 4.913690090179443 L -4.164186477661133 4.913690090179443 C -3.184498310089111 4.913690090179443 -2.395799398422241 5.702389717102051 -2.395799398422241 6.682075977325439 L -2.395799398422241 26.53956604003906 C -2.395799398422241 27.51924896240234 -3.184498310089111 28.30794906616211 -4.164186477661133 28.30794906616211 L -32.62741088867188 28.30794906616211 C -33.60710144042969 28.30794906616211 -34.39579772949219 27.51924896240234 -34.39579772949219 26.53956604003906 L -34.39579772949219 6.682077884674072 C -34.39579772949219 5.702392578125 -33.60710144042969 4.913692474365234 -32.62741088867188 4.913692474365234 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /><path transform="translate(23.81, -20.03)" d="M -11.11396408081055 24.3163948059082 C -12.21297168731689 24.3163948059082 -13.1038703918457 25.20731353759766 -13.10384750366211 26.30630111694336 C -13.10384750366211 27.40528106689453 -12.2129430770874 28.29617881774902 -11.11396408081055 28.29616546630859 C -10.01496124267578 28.29616546630859 -9.124063491821289 27.40525054931641 -9.12408447265625 26.3062629699707 C -9.12408447265625 25.20727920532227 -10.01499176025391 24.31638145446777 -11.11397075653076 24.3163948059082 Z M -3.32760763168335 24.74749946594238 C -3.576505899429321 24.74745941162109 -3.826508522033691 25.17846488952637 -4.076498508453369 25.60947799682617 L -10.50614738464355 36.69489669799805 L -14.21804523468018 30.28511810302734 C -14.46725845336914 29.85476875305176 -14.71654891967773 29.4244384765625 -14.96511173248291 29.42439460754395 C -15.21367073059082 29.42435455322266 -15.46144580841064 29.85469627380371 -15.70920085906982 30.28511810302734 L -15.70909023284912 30.28511810302734 L -20.80179977416992 39.13279724121094 L 5.188339233398438 39.13279724121094 L -2.583516597747803 25.60948371887207 L -2.5834059715271 25.60948371887207 C -2.831060409545898 25.17854690551758 -3.078708410263062 24.7475471496582 -3.327610015869141 24.74750709533691 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-linecap="round" stroke-linejoin="round" /></svg>';
const String _svg_1accot =
    '<svg viewBox="0.0 0.0 32.0 24.6" ><path transform="translate(604.0, -209.09)" d="M -590.8775024414062 209.0898895263672 L -584.986328125 209.0898895263672 C -583.2432250976562 209.0898895263672 -581.83984375 209.6574401855469 -581.83984375 210.3624572753906 L -581.83984375 213.595458984375 C -581.83984375 214.3004913330078 -583.2432250976562 214.8680419921875 -584.986328125 214.8680419921875 L -590.8775024414062 214.8680419921875 C -592.6205444335938 214.8680419921875 -594.0238037109375 214.3004913330078 -594.0238037109375 213.595458984375 L -594.0238037109375 210.3624572753906 C -594.0238037109375 209.6574554443359 -592.6205444335938 209.0898895263672 -590.8775024414062 209.0898895263672 Z" fill="#ffb420" stroke="#ffffff" stroke-width="1" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(603.68, -208.98)" d="M -600.5301513671875 212.4853515625 L -574.8232421875 212.4853515625 C -573.0800170898438 212.4853515625 -571.6766357421875 213.9886322021484 -571.6766357421875 215.8559265136719 L -571.6766357421875 230.2325439453125 C -571.6766357421875 232.0998382568359 -573.0800170898438 233.6031188964844 -574.8232421875 233.6031188964844 L -600.5301513671875 233.6031188964844 C -602.2732543945312 233.6031188964844 -603.6766357421875 232.0998382568359 -603.6766357421875 230.2325439453125 L -603.6766357421875 215.8559265136719 C -603.6766357421875 213.9886322021484 -602.2732543945312 212.4853515625 -600.5301513671875 212.4853515625 Z" fill="#ffb420" stroke="#ffffff" stroke-width="1" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(603.97, -208.83)" d="M -581.1744995117188 223.5011596679688 C -581.1744995117188 227.1990203857422 -584.2119140625 230.1967163085938 -587.9585571289062 230.1967163085938 C -591.7052001953125 230.1967163085938 -594.7425537109375 227.1990203857422 -594.7425537109375 223.5011901855469 C -594.7425537109375 219.8033447265625 -591.7052001953125 216.8056945800781 -587.9585571289062 216.8056945800781 C -584.2119140625 216.8056945800781 -581.1744995117188 219.8033447265625 -581.1744995117188 223.5011596679688 Z" fill="none" stroke="#ffffff" stroke-width="1" stroke-linecap="butt" stroke-linejoin="round" /><path transform="translate(604.44, -208.9)" d="M -580.2794799804688 214.6572723388672 L -576.4345092773438 214.6572723388672 C -576.2276000976562 214.6572723388672 -576.0610961914062 214.8283996582031 -576.0610961914062 215.0409851074219 L -576.0610961914062 216.6569519042969 C -576.0610961914062 216.8695220947266 -576.2276000976562 217.0406646728516 -576.4345092773438 217.0406646728516 L -580.2794799804688 217.0406646728516 C -580.4862670898438 217.0406646728516 -580.65283203125 216.8695220947266 -580.65283203125 216.6569519042969 L -580.65283203125 215.0409851074219 C -580.65283203125 214.8283996582031 -580.4862670898438 214.6572723388672 -580.2794799804688 214.6572723388672 Z" fill="#ffb420" stroke="#ffffff" stroke-width="1" stroke-linecap="butt" stroke-linejoin="round" /></svg>';
const String _svg_ce8hze =
    '<svg viewBox="0.0 0.0 8.0 21.0" ><path transform="translate(43.43, 43.43)" d="M -35.42630004882812 -43.43030166625977 L -43.42630004882812 -32.93889236450195 L -35.42630004882812 -22.44745635986328" fill="none" stroke="#ffb420" stroke-width="3" stroke-linecap="round" stroke-linejoin="round" /></svg>';
