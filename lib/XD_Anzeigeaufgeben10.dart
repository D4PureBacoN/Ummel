import 'dart:async';
import 'dart:io';

import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:multi_image_picker2/multi_image_picker2.dart';
import 'package:path_provider/path_provider.dart';

import 'XD_SucheKategorien.dart';

class FormData {
  String name = "";
  String discription = "";
  String image1 = "";
  String image2 = "";
  int postal = 0;
  String street = "";
  String user = "";
}

class XD_Anzeigeaufgeben10 extends StatefulWidget {
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

  XD_Anzeigeaufgeben10(
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

  @override
  _XD_Anzeigeaufgeben10 createState() => _XD_Anzeigeaufgeben10();
}

class _XD_Anzeigeaufgeben10 extends State<XD_Anzeigeaufgeben10> {
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

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  AutovalidateMode _autoValidate = AutovalidateMode.disabled;

  FormData _FormData = FormData();

  String? _validatePostal(String postal) {
    if (postal.isEmpty) {
      return "Bitte füllen Sie alle Felder aus.";
    }
    final postalExp = RegExp(r'^[0-9]+$');
    if (!postalExp.hasMatch(postal)) {
      return "ungültige PLZ";
    }
    _autoValidate = AutovalidateMode.disabled;
    return null;
  }

  String? _validateField(String value) {
    if (value.isEmpty) {
      return "Bitte füllen Sie alle Felder aus.";
    }
    _autoValidate = AutovalidateMode.disabled;
    return null;
  }

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
      body: Form(
        key: _formKey,
        autovalidateMode: _autoValidate,
        child: new InkWell(
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
                      inputFormatters: [
                        new LengthLimitingTextInputFormatter(30),
                      ],
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
                      keyboardType: TextInputType.name,
                      validator: (title) => _validateField(title!),
                      onSaved: (title) {
                        _FormData.name = title!;
                      },
                    ),
                  ),
                  Container(height: 30),
                  SizedBox(
                    width: 340,
                    child: TextFormField(
                      inputFormatters: [
                        new LengthLimitingTextInputFormatter(1000),
                      ],
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
                        ),
                      ),
                      keyboardType: TextInputType.multiline,
                      validator: (discription) => _validateField(discription!),
                      onSaved: (discription) {
                        _FormData.discription = discription!;
                      },
                    ),
                  ),
                  Container(height: 30),
                  SizedBox(
                    height: 40,
                    width: 340,
                    child: TextFormField(
                      inputFormatters: [
                        new LengthLimitingTextInputFormatter(5),
                      ],
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
                        ),
                      ),
                      keyboardType:
                          TextInputType.numberWithOptions(decimal: false),
                      validator: (postal) => _validatePostal(postal!),
                      onSaved: (postal) =>
                          _FormData.postal = int.parse(postal!),
                    ),
                  ),
                  Container(height: 30),
                  SizedBox(
                    height: 40,
                    width: 340,
                    child: TextFormField(
                      inputFormatters: [
                        new LengthLimitingTextInputFormatter(50),
                      ],
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
                        ),
                      ),
                      keyboardType: TextInputType.streetAddress,
                      onSaved: (street) {
                        _FormData.street = street!;
                      },
                    ),
                  ),
                  Container(height: 20),
                  Container(
                    width: 340.0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => XD_SucheKategorien(
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
                  ),
                  Container(height: 20),
                  SizedBox(
                    width: 340,
                    child: ElevatedButton(
                      onPressed: _handleUpload,
                      child: Text('Hochladen'),
                      style: ElevatedButton.styleFrom(
                        fixedSize: const Size(350, 45),
                        primary: Color(0xffffb420),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0)),
                      ),
                    ),
                  ),
                  Container(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _handleUpload() {
    final form = _formKey.currentState;
    if (form == null) {
      return null;
    }
    if (!form.validate()) {
      _autoValidate = AutovalidateMode.always;
    } else {
      form.save();
      uploadData();
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => XD_Home()));
    }
  }

  Future<int> _getProductCount() async {
    var counter = FirebaseFirestore.instance.collection('counter');
    var docSnapshot = await counter.doc('products').get();
    if (docSnapshot.exists) {
      Map<String, dynamic> data = docSnapshot.data()!;
      return data['count'];
    }
    return 0;
  }

  Future _updateProductCount(int count) async {
    final counter =
        FirebaseFirestore.instance.collection('counter').doc('products');
    final counterData = {'count': count};

    await counter.set(counterData);
  }

  Future uploadData() async {
    //just for testpurpose###
    _FormData.user = "testuser";
    //#######################
    int i = 1;
    int images2_len = widget.images2!.length;
    final storage = FirebaseStorage.instance;
    int ProductCount = await _getProductCount();
    if (ProductCount == 0) {
      return ProductCount + 1;
    }
    ProductCount += 1;
    final products =
        FirebaseFirestore.instance.collection('products').doc('$ProductCount');
    final data = {
      'id': ProductCount,
      'name': _FormData.name,
      'discription': _FormData.discription,
      'street': _FormData.street,
      'user': _FormData.user,
      'postal': _FormData.postal,
      'image1': _FormData.user + "_" + _FormData.name + "1",
      'image2': _FormData.user + "_" + _FormData.name + "2",
      'image3': _FormData.user + "_" + _FormData.name + "3",
      'image4': _FormData.user + "_" + _FormData.name + "4",
      'image5': _FormData.user + "_" + _FormData.name + "5",
      'image6': _FormData.user + "_" + _FormData.name + "6",
      'town': "Teststadt",
      'strassenfund': strassenfund,
    };

    String ImageURL;

    if (widget.images2!.isEmpty) {
      var snapshot = await storage
          .ref()
          .child('products_img/${_FormData.user + "_" + _FormData.name + "1"}')
          .putFile(widget.camimage!);
      var downloadURL = await snapshot.ref.getDownloadURL();
      setState(() {
        ImageURL = downloadURL;
      });
    } else {
      while (i <= images2_len) {
        var snapshot = await storage
            .ref()
            .child(
                'products_img/${_FormData.user + "_" + _FormData.name + i.toString()}')
            .putFile(await getImageFileFromAssets(widget.images2!.first));
        var downloadURL = await snapshot.ref.getDownloadURL();
        setState(() {
          ImageURL = downloadURL;
        });
        i += 1;
        widget.images2!.removeAt(0);
      }
    }

    await products.set(data);
    await _updateProductCount(ProductCount);
    ProductCount = 0;
  }

  Future<File> getImageFileFromAssets(Asset asset) async {
    final byteData = await asset.getByteData();

    final tempFile =
        File("${(await getTemporaryDirectory()).path}/${asset.name}");
    final file = await tempFile.writeAsBytes(
      byteData.buffer
          .asUint8List(byteData.offsetInBytes, byteData.lengthInBytes),
    );

    return file;
  }
}
