import 'package:flutter/material.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/home_screen_body.dart';

import '../data_layer/models/product_model.dart';


class HomeScreen extends StatelessWidget {
   HomeScreen({super.key, required this.products});
   List<ProductModel> products;
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: HomeScreenBody( products: products,)
      ),
    );
  }
}


