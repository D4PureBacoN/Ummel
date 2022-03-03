import 'package:app_ummel/XD_Anzeigeanschauen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductGridStreet extends StatefulWidget {
  @override
  _ProductGridStreetState createState() => _ProductGridStreetState();
}

class ProductGridStreetItem {
  final String image;
  final String name;
  final String postal;
  final String location;

  ProductGridStreetItem(this.image, this.name, this.postal, this.location);
}

class _ProductGridStreetState extends State<ProductGridStreet> {
  final List<ProductGridStreetItem> _productList = [
    ProductGridStreetItem(
        'images/ak-selfie.jpg', 'AK-47', '91113', 'Olvenstedt'),
    ProductGridStreetItem('images/dodge.jpg', 'Dodge', '231123', 'Spandau'),
    ProductGridStreetItem(
        'images/huehnersuppe.jpg', 'Huhn flüssig', '21301', 'Magdeburg'),
    ProductGridStreetItem(
        'images/katze.jpg', 'Katze', '12093', 'Neustedter See'),
    ProductGridStreetItem('images/Melone.jpg', 'Gurke', '123901', 'Neustadt'),
    ProductGridStreetItem(
        'images/milchprodukte.jpg', 'Laktose', '10292', 'Hafen'),
    ProductGridStreetItem(
        'images/oma-mit-waffe.jpg', 'Babysitter', '123123', 'Olvi'),
    ProductGridStreetItem(
        'images/stick.png', 'Stock', '209391', 'Festung Mark'),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: _productList.length,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            elevation: 4.0,
            child: GestureDetector(
              child: InkWell(
                onTap: () {
                  //Navigator.push(
                  //    context,
                   //   MaterialPageRoute(
                    //      builder: (context) => XD_Anzeigeanschauen()));
                },
                child: Column(
                  children: [
                    Image.asset(
                      _productList[index].image,
                      width: 200,
                      height: 150,
                    ),
                    Align(
                      alignment: Alignment(-0.91, 0),
                      child: Text(
                        _productList[index].name,
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
                        _productList[index].postal +
                            '  ' +
                            _productList[index].location,
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
      ),
    );
  }
}
