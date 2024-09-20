import 'package:flutter/material.dart';
import 'package:shop_app/fetures/home_screen/data_layer/models/product_model.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/rateing_row.dart';

class ProductInformation extends StatelessWidget {
   ProductInformation({super.key, required this.product});
   ProductModel product;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 8, vertical:8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            product.title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          Text("EGP  ${product.price}"),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              RateingRow(rate: product.rating,),
              const Icon(Icons.add_circle_rounded, color: Color(0xff1c4087),)
            ],
          )
        ],
      ),
    );
  }
}

