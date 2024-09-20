import 'package:flutter/material.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/rateing_row.dart';

class ProductInformation extends StatelessWidget {
  const ProductInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical:8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Title here",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text("EGP  1,200"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RateingRow(),
              Icon(Icons.add_circle_rounded, color: Color(0xff1c4087),)
            ],
          )
        ],
      ),
    );
  }
}
