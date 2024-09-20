import 'package:flutter/material.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_Services.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: ProductServices(),
      ),
    );
  }
}
