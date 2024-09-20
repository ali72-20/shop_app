

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/core/app_routes.dart';
import 'package:shop_app/cubits%20/get_product_cubit.dart';
void main(){
  runApp(const ShopApp());
}

class ShopApp extends StatelessWidget {
  const ShopApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(
      create: (BuildContext context)=> GetProductCubit(),
      child: MaterialApp.router(
         routerConfig: AppRoutes.router,
         debugShowCheckedModeBanner: false,
      ),
    );
  }
}

