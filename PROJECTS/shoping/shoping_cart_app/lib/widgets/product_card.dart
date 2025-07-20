import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductCard extends StatelessWidget {
  final Product product_;
  final VoidCallback onFavtoggle;
  ProductCard({required this.product_, required this.onFavtoggle});

  @override
  Widget build(BuildContext contex) {
    return Card(
      margin: EdgeInsets.all(15),
      child: ListTile(
        leading: Image.network(product_.imgUrl, width: 50, height: 50),
        title: Text(product_.name),
        trailing: IconButton(
          onPressed: onFavtoggle,
          icon: Icon(
            product_.isFav ? Icons.favorite : Icons.favorite_border,
            color: product_.isFav ? Colors.red : null,
          ),
        ),
      ),
    );
  }
}
