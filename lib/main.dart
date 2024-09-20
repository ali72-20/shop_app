

import 'package:flutter/material.dart';
import 'package:shop_app/core/app_routes.dart';
void main(){
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp.router(
       routerConfig: AppRoutes.router,
       debugShowCheckedModeBanner: false,
    );
  }
}

