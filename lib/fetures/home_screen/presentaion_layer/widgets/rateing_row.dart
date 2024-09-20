import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RateingRow extends StatelessWidget {
  const RateingRow({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text('Review  (4.6)'),
        Icon(
          Icons.star_rounded,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
