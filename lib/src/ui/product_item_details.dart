import 'package:flutter/material.dart';
import 'package:produts/src/ui/product_item.dart';

import '../../generated/l10n.dart';
import '../http_client/models/models.dart';

/// Displays detailed information about a SampleItem.
class ProductItemDetails extends StatelessWidget {
  const ProductItemDetails({
    required this.product,
    Key? key,
  }) : super(key: key);

  static const routeName = '/product_item';

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(S.current.itemDetails),
      ),
      body: ProductItem(product: product),
    );
  }
}
