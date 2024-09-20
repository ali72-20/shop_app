import 'package:flutter/cupertino.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_Grid_view.dart';

import '../../data_layer/models/product_model.dart';

class HomeScreenBody extends StatelessWidget {
   HomeScreenBody({super.key, required this.products});
  List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return  ProductListView(products: products,);
  }
}
