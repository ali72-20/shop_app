import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:shop_app/fetures/home_screen/data_layer/apis/product_api.dart';
import 'package:shop_app/fetures/home_screen/data_layer/models/product_model.dart';
import '../home_screen.dart';

class ProductServices extends StatefulWidget {
  const ProductServices({super.key});

  @override
  State<ProductServices> createState() => _ProductServicesState();
}

class _ProductServicesState extends State<ProductServices> {
  var future;
  PageController pageController = PageController();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    future = ProductApi(Dio()).getProducts();
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    pageController.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>?>(
      future: future,
      builder: (context,snapshot){
        if(snapshot.hasData){
          return  HomeScreen(products:snapshot.data!,);
        }else if(snapshot.hasError){
          return const Center(child: Text("Something wrong"));
        }else{
          return const Center(child: Text("error"));
        }
      },
    );
  }
}
