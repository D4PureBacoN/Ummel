import 'package:app_ummel/XD_Anzeigeanschauen.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Storage {
  final firebase_storage.FirebaseStorage storage = firebase_storage.FirebaseStorage.instance;

  Future<firebase_storage.ListResult> listImages() async {
    firebase_storage.ListResult productImages = await storage.ref('products_img').listAll();

    productImages.items.forEach((firebase_storage.Reference ref) {
      print('Found files $ref');
    });
    return productImages;
  }

  Future<String> downloadURL(String imageName) async {
    String downloadURL = await storage.ref('products_img/$imageName').getDownloadURL();
    return downloadURL;
  }
}

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}


class _ProductGridState extends State<ProductGrid> {
  final Stream<QuerySnapshot> products = FirebaseFirestore.instance.collection('products').snapshots();
  final Storage storage = Storage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<QuerySnapshot>(
        stream: products,
        builder: (BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            return Text('Something went wrong.');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('Loading');
          }
          final data = snapshot.requireData;
          return GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemCount: data.size,
            itemBuilder: (context,index) {
              return Card(
                elevation: 4.0,
                child: GestureDetector(
                  child: InkWell(
                    onTap: () async {
                      await Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => XD_Anzeigeanschauen(data: data, index: index,)));
                    },
                    child: Column(
                      children: [
                        //##############
                        FutureBuilder(
                            future: storage.downloadURL('${data.docs[index]['images']}'),
                            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                              if(snapshot.connectionState == ConnectionState.done && snapshot.hasData) {
                                return Container(
                                    width: 200,
                                    height: 150,
                                    child: Image.network(
                                      snapshot.data!,
                                      fit: BoxFit.cover,
                                    )
                                );
                              }
                              if (snapshot.connectionState == ConnectionState.waiting || !snapshot.hasData)  {
                                return CircularProgressIndicator();
                              }
                              return Container();
                            }),
                        //##############
                        Align(
                          alignment: Alignment(-0.91, 0),
                          child: Text(
                            '${data.docs[index]['name']}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15,
                              height: 1.2,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment(-0.86, 0.0),
                          child: Text(
                            '${data.docs[index]['postal']}  ${data.docs[index]['town']}',
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 12,
                              height: 1.5,
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
