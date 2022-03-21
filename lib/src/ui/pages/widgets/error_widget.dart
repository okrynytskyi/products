import 'package:flutter/material.dart';

class BaseErrorWidget extends StatelessWidget {
  const BaseErrorWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Something went wrong',
        style: Theme.of(context).textTheme.headline4!.copyWith(
              color: Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
      ),
    );
  }
}
