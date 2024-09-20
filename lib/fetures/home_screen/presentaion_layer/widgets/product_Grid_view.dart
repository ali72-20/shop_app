import 'package:flutter/cupertino.dart';
import 'package:shop_app/cubits%20/get_product_cubit.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_grid_view_item.dart';


class ProductListView extends StatelessWidget {
   const ProductListView({super.key});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
           maxCrossAxisExtent: 200,
           childAspectRatio: 1 / 1.41,
           crossAxisSpacing: 20,
          mainAxisSpacing: 20
        ),
        itemCount: 20,
        itemBuilder: (context,index){
          return  ProductGridViewItem(product: GetProductCubit.products![index]);
        },
      ),
    );
  }
}
