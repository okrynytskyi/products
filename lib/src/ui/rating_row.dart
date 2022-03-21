import 'package:flutter/material.dart';

class RatingRow extends StatelessWidget {
  const RatingRow({
    required this.category,
    required this.rating,
    required this.count,
    Key? key,
  }) : super(key: key);

  final String category;
  final double rating;
  final int count;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            category,
            style: const TextStyle(
                color: Color(0xff0081ca), fontWeight: FontWeight.bold),
          ),
        ),
        Stack(
          children: [
            Container(
              width: 30,
              height: 30,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.black,
              ),
            ),
            Positioned.fill(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '$rating',
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 10),
        SizedBox(
          width: 30,
          height: 18,
          child: Material(
            color: const Color(0xffc4c4c4),
            borderRadius: const BorderRadius.all(Radius.circular(4)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
