import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: HomeScreenBody(),
      ),
    );
  }
}


