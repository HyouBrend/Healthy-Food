import 'package:flutter/material.dart';
import 'package:hyouka/pages/shop/model/product.dart';
import 'package:hyouka/pages/shop/ui/detail/detail_mobile.dart';
import 'package:hyouka/pages/shop/ui/detail/detail_web.dart';

class DetailPage extends StatelessWidget {
  Product product;

  DetailPage(this.product);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 950) {
          return DetailWebPage(product);
        } else {
          return DetailMobilePage(product);
        }
      },
    );
  }
}

class FavoriteButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FavoriteButton();
}

class _FavoriteButton extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(
          () {
            isFavorite = !isFavorite;
          },
        );
      },
    );
  }
}
