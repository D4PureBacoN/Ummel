import 'package:app_ummel/XD_Anzeigeanschauen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class ProductGrid extends StatefulWidget {
  @override
  _ProductGridState createState() => _ProductGridState();
}

class ProductGridItem {
  final String image;
  final String name;
  final String postal;
  final String location;

  ProductGridItem(this.image, this.name, this.postal, this.location);
}

class _ProductGridState extends State<ProductGrid> {
  final List<ProductGridItem> _productList = [
    ProductGridItem('images/ak-selfie.jpg', 'AK-47', '91113', 'Olvenstedt'),
    ProductGridItem('images/dodge.jpg', 'Dodge', '231123', 'Spandau'),
    ProductGridItem('images/huehnersuppe.jpg', 'Huhn flüssig', '21301', 'Magdeburg'),
    ProductGridItem('images/katze.jpg', 'Katze', '12093', 'Neustedter See'),
    ProductGridItem('images/Melone.jpg', 'Gurke', '123901', 'Neustadt'),
    ProductGridItem('images/milchprodukte.jpg', 'Laktose', '10292', 'Hafen'),
    ProductGridItem('images/oma-mit-waffe.jpg', 'Babysitter', '123123', 'Olvi'),
    ProductGridItem('images/stick.png', 'Stock', '209391', 'Festung Mark'),
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
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => XD_Anzeigeanschauen()));
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
