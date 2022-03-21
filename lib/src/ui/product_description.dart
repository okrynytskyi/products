import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    required this.description,
    Key? key,
  }) : super(key: key);

  final String? description;

  @override
  Widget build(BuildContext context) {
    return Text(
      description ??
          'Your perfect pack for everyday use and walks in the forest. Stash your laptop (up to 15 inches) in the padded sleeve, your everyday',
      overflow: TextOverflow.ellipsis,
      maxLines: 10,
      style: Theme.of(context).textTheme.bodyText1!.copyWith(
            fontSize: 14,
          ),
    );
  }
}
