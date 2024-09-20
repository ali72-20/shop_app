import 'package:flutter/cupertino.dart';
import 'package:shop_app/core/assets.dart';

class ProductListViewItem extends StatelessWidget {
  const ProductListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(12)),
        border: Border.all(color: kItemBorderColor),
      ),
    );
  }
}
