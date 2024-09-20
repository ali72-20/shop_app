import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shop_app/core/assets.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/Product_item_image.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_information.dart';

import '../../data_layer/models/product_model.dart';


class ProductGridViewItem extends StatelessWidget {
   ProductGridViewItem({super.key, required this.product});
   ProductModel product;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: kItemBorderColor),
      ),
      child:  Column(
        children: [
          ProductItemImage(image: product.image,),
          ProductInformation(),
        ],
      ),
    );
  }
}
