import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RateingRow extends StatelessWidget {
   RateingRow({super.key,required this.rate});
  String rate;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text('Review ($rate)'),
        const Icon(
          Icons.star_rounded,
          color: Colors.yellow,
        ),
      ],
    );
  }
}
