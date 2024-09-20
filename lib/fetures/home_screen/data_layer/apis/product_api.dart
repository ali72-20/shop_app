import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:shop_app/fetures/home_screen/data_layer/models/product_model.dart';

class ProductApi{
  final Dio dio;
   ProductApi(this.dio);
   final  api = "https://fakestoreapi.com/products";
   Future<List<ProductModel>?> getProducts() async{
     try{
         Response response = await dio.get(api);
         List<ProductModel>? products = [];
         for(dynamic item in response.data){
            products.add(ProductModel.fromJson(item));
         }
         return products;
     }on DioException catch(e){
       log('Error status: ${e.response?.statusCode}');

       log('Error message: ${e.response?.statusMessage}');

       log('Error data: ${e.response?.data}');
     } catch(e){
       log("some thing went wrong in api: $e");
     }
   }
}
