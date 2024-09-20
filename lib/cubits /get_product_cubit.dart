
import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubits%20/get_prodcut_state.dart';
import 'package:shop_app/fetures/home_screen/data_layer/apis/product_api.dart';
import 'package:shop_app/fetures/home_screen/data_layer/models/product_model.dart';

class GetProductCubit extends Cubit<GetProductState>{
  GetProductCubit():super(ProductsLoading());
  static List<ProductModel>? products = [];
  getProducts() async{
    try{
       products = await ProductApi(Dio()).getProducts();
      emit(ProductsLoaded());
    }catch(e){
      emit(ProductsFailed());
    }
  }
}