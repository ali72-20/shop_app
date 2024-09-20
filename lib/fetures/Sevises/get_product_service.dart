import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/fetures/home_screen/data_layer/apis/product_api.dart';
import 'package:shop_app/fetures/home_screen/data_layer/models/product_model.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_Grid_view.dart';


class GetProductService extends StatefulWidget {
  const GetProductService({super.key});

  @override
  State<GetProductService> createState() => _GetProductServiceState();
}

class _GetProductServiceState extends State<GetProductService> {
  var future;
  final pageController = PageController();

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
      builder: (context, snapshot){
        if(snapshot.hasData){
          return ProductListView(products: snapshot.data!,);
        }else if(snapshot.hasError){
          return const Center(child: Text("Error found"));
        }else{
          return const Center(
              child: CircularProgressIndicator(
                color: Colors.blueAccent,
              ),
          );
        }
      },
    );
  }
}
