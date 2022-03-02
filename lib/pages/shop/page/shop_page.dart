import 'package:flutter/material.dart';
import 'package:hyouka/main.dart';

import 'detail_page.dart';
import 'home/grid.dart';
import 'home/list.dart';

class ShopPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            leading: IconButton(
              icon: Icon(Icons.arrow_back_ios_new),
              color: Colors.black,
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyHomePage();
                    },
                  ),
                );
              },
            ),
          ),
          body: LayoutBuilder(
            builder: (BuildContext context, BoxConstraints constraints) {
              if (constraints.maxWidth <= 950) {
                return ProductList();
              } else if (constraints.maxWidth <= 1300) {
                return ProductGrid(2);
              } else {
                return ProductGrid(4);
              }
            },
          ),
        );
      },
    );
  }
}
