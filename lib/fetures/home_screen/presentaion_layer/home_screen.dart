import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shop_app/cubits%20/get_prodcut_state.dart';
import 'package:shop_app/cubits%20/get_product_cubit.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/home_screen_body.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: BlocBuilder<GetProductCubit, GetProductState>(
          builder: (BuildContext,state){
            if(state is ProductsLoaded){
               return const HomeScreenBody();
            }else if(state is ProductsLoading){
                 return  const Center(child: CircularProgressIndicator());
            }else{
              return const Text("Some thing went wrong");
            }
          }
        )
      ),
    );
  }
}


