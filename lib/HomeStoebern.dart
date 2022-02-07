import 'package:app_ummel/Product_Grid.dart';
import 'package:flutter/material.dart';

class HomeStoebern extends StatelessWidget {
  HomeStoebern({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 13,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          toolbarHeight: 10.0,
          elevation: 0,
          bottom: TabBar(
            indicatorColor: Color(0xffffb420),
            labelColor: Color(0xffffb420),
            isScrollable: true,
            tabs: [
              Tab(
                  text: 'Kein Filter',
                  icon: Icon(Icons.cancel_rounded, size: 45)),
              Tab(
                  text: 'Haus & Garten',
                  icon: Image.asset('images/hausgarten.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Kleidung',
                  icon: Image.asset('images/kleidung.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Sport & Freizeit',
                  icon: Image.asset('images/sportfreizeit.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Unterhaltung',
                  icon: Image.asset('images/unterhaltung.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Technik',
                  icon:
                      Image.asset('images/technik.png', width: 45, height: 45)),
              Tab(
                  text: 'Baby & Kind',
                  icon: Image.asset('images/baby.png', width: 45, height: 45)),
              Tab(
                  text: 'Lebensmittel',
                  icon: Image.asset('images/lebensmittel.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Bauen & Basteln',
                  icon: Image.asset('images/bauenbasteln.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Kosmetik',
                  icon: Image.asset('images/kosmetik.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Tierbedarf',
                  icon: Image.asset('images/tierbedarf.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Fahrzeug',
                  icon: Image.asset('images/fahrzeug.png',
                      width: 45, height: 45)),
              Tab(
                  text: 'Pfand',
                  icon: Image.asset('images/pfand.png', width: 45, height: 45)),
            ],
          ),
        ),
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
