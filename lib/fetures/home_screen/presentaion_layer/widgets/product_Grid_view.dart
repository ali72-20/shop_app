import 'package:flutter/cupertino.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_grid_view_item.dart';

import '../../data_layer/models/product_model.dart';


class ProductListView extends StatelessWidget {
    ProductListView({super.key, required this.products});
   List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 200,
           childAspectRatio: 1 / 1.7,
           crossAxisSpacing: 6,
          mainAxisSpacing: 20
        ),
        itemCount: products.length,
        itemBuilder: (context,index){
          return  ProductGridViewItem(product: products[index]);
        },
      ),
    );
  }
}
