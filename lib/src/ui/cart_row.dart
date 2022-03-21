import 'package:flutter/material.dart';

import '../../generated/l10n.dart';

class CartRow extends StatelessWidget {
  const CartRow({
    required this.price,
    required this.imageUrl,
    Key? key,
  }) : super(key: key);

  final double? price;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              S.current.from,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w700,
              ),
            ),
            const SizedBox(height: 10),
            Text(
              S.current.price(price!),
              style: const TextStyle(
                color: Colors.black,
                fontSize: 12,
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
              width: 50,
              height: 50,
              child: Stack(
                children: [
                  const SizedBox(
                    width: 50,
                    height: 50,
                    child: Material(
                      color: Colors.black,
                      shape: CircleBorder(),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.center,
                      child: Container(
                        width: 24,
                        height: 24,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Icon(
                          Icons.shopping_cart_outlined,
                          size: 24,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 262,
          height: 375,
          child: FittedBox(
            fit: BoxFit.contain,
            child: Image.network(imageUrl),
          ),
        ),
        const SizedBox(width: 30),
      ],
    );
  }
}
