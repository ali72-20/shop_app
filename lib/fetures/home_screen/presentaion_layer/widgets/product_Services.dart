import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubits%20/get_product_cubit.dart';
import 'package:shop_app/fetures/home_screen/data_layer/models/product_model.dart';
import '../home_screen.dart';

class ProductServices extends StatefulWidget {
  const ProductServices({super.key});

  @override
  State<ProductServices> createState() => _ProductServicesState();
}

class _ProductServicesState extends State<ProductServices> {
  var futur;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    futur = BlocProvider.of<GetProductCubit>(context).getProducts();
  }
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ProductModel>?>(
      future: futur,
      builder: (BuildContext,snapshot){
        if(snapshot.hasData){
          return const HomeScreen();
        }else if(snapshot.hasError){
          return const Text("Something wrong");
        }else{
          return const Text("error");
        }
      },
    );
  }
}
