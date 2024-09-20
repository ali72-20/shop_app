

import 'package:flutter/material.dart';

import 'package:shop_app/core/app_routes.dart';

void main(){
  runApp(const ShopApp());
}

class ShopApp extends StatefulWidget {
  const ShopApp({super.key});

  @override
  State<ShopApp> createState() => _ShopAppState();
}

class _ShopAppState extends State<ShopApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
         routerConfig: AppRoutes.router,
         debugShowCheckedModeBanner: false,
    );
  }
}

