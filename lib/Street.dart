import 'package:app_ummel/Product_Grid.dart';
import 'package:flutter/material.dart';

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
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
            Center(child: ProductGrid()),
          ],
        ),
      ),
    );
  }
}
