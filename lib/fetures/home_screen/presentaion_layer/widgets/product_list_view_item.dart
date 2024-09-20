import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/assets.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/Product_item_image.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: kItemBorderColor),
      ),
      child: const Column(
        children: [
            ProductItemImage(),
        ],
      ),
    );
  }
}
