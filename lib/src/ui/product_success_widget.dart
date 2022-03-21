import 'package:flutter/material.dart';

import '../http_client/models/models.dart';
import 'product_item.dart';
import 'product_item_details.dart';

class ProductsSuccessWidget extends StatelessWidget {
  const ProductsSuccessWidget({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Product>? items;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: items!.length,
        separatorBuilder: (BuildContext context, int item) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Divider(height: 3),
            ),
        itemBuilder: (BuildContext context, int index) {
          final item = items![index];

          return InkWell(
            child: ProductItem(product: item),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductItemDetails(
                    product: item,
                  ),
                ),
              );
            },
          );
        });
  }
}
