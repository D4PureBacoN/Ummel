import 'package:flutter/material.dart';

import 'Product_Gridstreet.dart';

class Street extends StatelessWidget {
  Street({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13,
      child: Scaffold(
        body: TabBarView(
          children: [
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
            Center(child: ProductGridstreet()),
          ],
        ),
      ),
    );
  }
}
