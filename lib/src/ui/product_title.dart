import 'package:flutter/material.dart';

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    required this.title,
    Key? key,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Text(
        title ?? 'Fjallraven - Foldsack No. 1 Backpack, Fits 15 Laptops',
        overflow: TextOverflow.ellipsis,
        maxLines: 10,
        style: Theme.of(context).textTheme.bodyText1!.copyWith(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
