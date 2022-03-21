import 'package:flutter/material.dart';
import 'package:produts/src/http_client/models/models.dart';

import 'cart_row.dart';
import 'product_description.dart';
import 'product_title.dart';
import 'rating_row.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({required this.product, Key? key}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Column(
        children: [
          CartRow(
            price: product.price,
            imageUrl: product.image,
          ),
          const SizedBox(height: 10),
          RatingRow(
            category: product.category,
            rating: product.rating.rate,
            count: product.rating.count,
          ),
          const SizedBox(height: 8),
          ProductTitle(title: product.title),
          const SizedBox(height: 8),
          ProductDescription(description: product.description),
        ],
      ),
    );
  }
}
