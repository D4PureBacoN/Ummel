import 'package:app_ummel/XD_Favoriten.dart';
import 'package:app_ummel/XD_Home.dart';
import 'package:app_ummel/ummel_icons.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import 'XD_SucheKategorien.dart';

class XD_Anzeigeaufgeben10 extends StatefulWidget {
  @override
  _XDAnzeigeaufgeben10 createState() => new _XDAnzeigeaufgeben10();
}

class FormData {
  String name = "";
  String discription = "";
  String images = "";
  int postal = 0;
  String street = "";
  String user = "";
}

class _XDAnzeigeaufgeben10 extends State<XD_Anzeigeaufgeben10> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  AutovalidateMode _autoValidate = AutovalidateMode.disabled;

  FormData _FormData = FormData();


  String? _validatePostal(String postal) {
    if(postal.isEmpty) {
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
    if(value.isEmpty) {
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
                        ),
                      ),
                      keyboardType: TextInputType.name,
                      maxLength: 25,
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
                      maxLength: 100,
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
                      keyboardType: TextInputType.numberWithOptions(decimal:false),
                      maxLength: 5,
                      validator: (postal) => _validatePostal(postal!),
                      onSaved: (postal) => _FormData.postal = int.parse(postal!),
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
                        ),
                      ),
                      keyboardType: TextInputType.streetAddress,
                      maxLength: 50,
                      onSaved: (street) {
                        _FormData.street = street!;
                      },
                    ),
                  ),
                  Container(height: 20),
                  SizedBox(
                    width: 340.0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 45,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => XD_SucheKategorien()));
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
    if(form == null) {
      return null;
    }
    if(!form.validate()) {
      _autoValidate = AutovalidateMode.always;
    } else {
      form.save();
      uploadData();
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => XD_Home()));
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
  Future uploadData() async {
    int ProductCount = await _getProductCount();
    if(ProductCount==0) {
      return Text("Something went wrong.");
    }
    final products = FirebaseFirestore.instance.collection('products').doc('$ProductCount');
    final data = {
      'id': ProductCount,
      'name': _FormData.name,
      'discription': _FormData.discription,
      'street': _FormData.street,
      'user': _FormData.user,
      'postal': _FormData.postal,
      'images': _FormData.images,
      'town': "Teststadt",
    };
    await products.set(data);
    ProductCount=0;
  }
}

