import 'package:flutter/cupertino.dart';
import 'package:shop_app/fetures/home_screen/presentaion_layer/widgets/product_list_view_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const BouncingScrollPhysics(),
      itemCount: 10,
      itemBuilder: (context,index){
         return const ProductListViewItem();
      },
    );
  }
}
